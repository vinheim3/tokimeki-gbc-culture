; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

	or [hl]                                          ; $4000: $b6
	ld d, c                                          ; $4001: $51
	add e                                            ; $4002: $83
	ld bc, $04ff                                     ; $4003: $01 $ff $04
	ld a, l                                          ; $4006: $7d
	ld bc, $0800                                     ; $4007: $01 $00 $08
	dec h                                            ; $400a: $25
	inc c                                            ; $400b: $0c
	rst JumpTable                                          ; $400c: $c7
	daa                                              ; $400d: $27
	inc c                                            ; $400e: $0c
	cp $b5                                           ; $400f: $fe $b5
	sub c                                            ; $4011: $91
	nop                                              ; $4012: $00
	rst $38                                          ; $4013: $ff
	ld [bc], a                                       ; $4014: $02
	ld a, l                                          ; $4015: $7d
	nop                                              ; $4016: $00
	dec e                                            ; $4017: $1d
	ld [$81b1], sp                                   ; $4018: $08 $b1 $81
	rst $38                                          ; $401b: $ff
	ld [bc], a                                       ; $401c: $02
	add hl, de                                       ; $401d: $19
	ld [$14c9], sp                                   ; $401e: $08 $c9 $14
	ld [$bec8], sp                                   ; $4021: $08 $c8 $be
	ld [$1d19], sp                                   ; $4024: $08 $19 $1d
	ld e, $22                                        ; $4027: $1e $22
	daa                                              ; $4029: $27
	cp [hl]                                          ; $402a: $be
	or c                                             ; $402b: $b1
	sub c                                            ; $402c: $91
	rst $38                                          ; $402d: $ff
	ld [bc], a                                       ; $402e: $02
	inc h                                            ; $402f: $24
	ld [$0820], sp                                   ; $4030: $08 $20 $08
	ret                                              ; $4033: $c9


	dec de                                           ; $4034: $1b
	ld [$a1b1], sp                                   ; $4035: $08 $b1 $a1
	rst $38                                          ; $4038: $ff
	ld [bc], a                                       ; $4039: $02
	dec e                                            ; $403a: $1d
	ld [$0819], sp                                   ; $403b: $08 $19 $08
	ret                                              ; $403e: $c9


	cp [hl]                                          ; $403f: $be
	ld [$1416], sp                                   ; $4040: $08 $16 $14
	dec de                                           ; $4043: $1b
	inc d                                            ; $4044: $14
	cp [hl]                                          ; $4045: $be
	or c                                             ; $4046: $b1
	ld [hl], c                                       ; $4047: $71
	rst $38                                          ; $4048: $ff
	inc bc                                           ; $4049: $03
	ld [de], a                                       ; $404a: $12
	ld [$0819], sp                                   ; $404b: $08 $19 $08
	ld [de], a                                       ; $404e: $12
	db $10                                           ; $404f: $10
	or l                                             ; $4050: $b5
	ld d, e                                          ; $4051: $53
	ld bc, $05ff                                     ; $4052: $01 $ff $05
	dec h                                            ; $4055: $25
	inc c                                            ; $4056: $0c
	add $27                                          ; $4057: $c6 $27
	inc b                                            ; $4059: $04
	or l                                             ; $405a: $b5
	and c                                            ; $405b: $a1
	nop                                              ; $405c: $00
	rst $38                                          ; $405d: $ff
	ld [bc], a                                       ; $405e: $02
	inc d                                            ; $405f: $14
	ld [$bec9], sp                                   ; $4060: $08 $c9 $be
	ld [$1d19], sp                                   ; $4063: $08 $19 $1d
	jr nz, jr_034_4085                               ; $4066: $20 $1d

	jr nz, jr_034_4088                               ; $4068: $20 $1e

	ld hl, $be1e                                     ; $406a: $21 $1e $be
	ret z                                            ; $406d: $c8

	dec d                                            ; $406e: $15
	ld [$91b1], sp                                   ; $406f: $08 $b1 $91
	rst $38                                          ; $4072: $ff
	ld [bc], a                                       ; $4073: $02
	add hl, de                                       ; $4074: $19
	ld [$1bca], sp                                   ; $4075: $08 $ca $1b
	ld [$1dca], sp                                   ; $4078: $08 $ca $1d
	ld [$19c8], sp                                   ; $407b: $08 $c8 $19
	ld [$0814], sp                                   ; $407e: $08 $14 $08
	jp z, $081e                                      ; $4081: $ca $1e $08

	dec e                                            ; $4084: $1d

jr_034_4085:
	ld [$0819], sp                                   ; $4085: $08 $19 $08

jr_034_4088:
	or c                                             ; $4088: $b1
	add c                                            ; $4089: $81
	rst $38                                          ; $408a: $ff
	inc bc                                           ; $408b: $03
	cp [hl]                                          ; $408c: $be
	ld [$1214], sp                                   ; $408d: $08 $14 $12
	ld de, $1412                                     ; $4090: $11 $12 $14
	add hl, de                                       ; $4093: $19
	cp [hl]                                          ; $4094: $be
	or l                                             ; $4095: $b5
	sub c                                            ; $4096: $91
	nop                                              ; $4097: $00
	rst $38                                          ; $4098: $ff
	ld [bc], a                                       ; $4099: $02
	cp [hl]                                          ; $409a: $be
	ld [$221e], sp                                   ; $409b: $08 $1e $22
	dec h                                            ; $409e: $25
	ld [hl+], a                                      ; $409f: $22
	ld e, $be                                        ; $40a0: $1e $be
	ret z                                            ; $40a2: $c8

	dec de                                           ; $40a3: $1b
	ld [$18c9], sp                                   ; $40a4: $08 $c9 $18
	ld [$81b1], sp                                   ; $40a7: $08 $b1 $81
	rst $38                                          ; $40aa: $ff
	inc bc                                           ; $40ab: $03
	ld d, $08                                        ; $40ac: $16 $08
	inc d                                            ; $40ae: $14
	ld [$18c8], sp                                   ; $40af: $08 $c8 $18
	ld [$91b1], sp                                   ; $40b2: $08 $b1 $91
	rst $38                                          ; $40b5: $ff
	ld [bc], a                                       ; $40b6: $02
	add hl, de                                       ; $40b7: $19
	ld [$081b], sp                                   ; $40b8: $08 $1b $08

jr_034_40bb:
	sub [hl]                                         ; $40bb: $96
	rst $38                                          ; $40bc: $ff
	inc bc                                           ; $40bd: $03
	ld de, $9608                                     ; $40be: $11 $08 $96
	rst $38                                          ; $40c1: $ff
	ld [bc], a                                       ; $40c2: $02
	cp [hl]                                          ; $40c3: $be
	ld [$1814], sp                                   ; $40c4: $08 $14 $18
	dec e                                            ; $40c7: $1d
	jr nz, jr_034_40e7                               ; $40c8: $20 $1d

	cp [hl]                                          ; $40ca: $be
	or c                                             ; $40cb: $b1
	ld [hl], c                                       ; $40cc: $71
	rst $38                                          ; $40cd: $ff
	inc bc                                           ; $40ce: $03
	ld [hl+], a                                      ; $40cf: $22
	ld [$91b1], sp                                   ; $40d0: $08 $b1 $91
	rst $38                                          ; $40d3: $ff
	ld [bc], a                                       ; $40d4: $02
	cp [hl]                                          ; $40d5: $be
	ld [$191d], sp                                   ; $40d6: $08 $1d $19
	ld d, $19                                        ; $40d9: $16 $19
	dec e                                            ; $40db: $1d
	cp [hl]                                          ; $40dc: $be
	or l                                             ; $40dd: $b5
	ld [hl], c                                       ; $40de: $71
	ld bc, $07ff                                     ; $40df: $01 $ff $07
	ld [hl+], a                                      ; $40e2: $22
	jr @+$22                                         ; $40e3: $18 $20

	jr @-$49                                         ; $40e5: $18 $b5

jr_034_40e7:
	sub c                                            ; $40e7: $91
	nop                                              ; $40e8: $00
	rst $38                                          ; $40e9: $ff
	ld [bc], a                                       ; $40ea: $02
	ld [hl+], a                                      ; $40eb: $22
	ld [$81b1], sp                                   ; $40ec: $08 $b1 $81
	rst $38                                          ; $40ef: $ff
	inc bc                                           ; $40f0: $03
	ld e, $08                                        ; $40f1: $1e $08
	or c                                             ; $40f3: $b1
	sub c                                            ; $40f4: $91
	rst $38                                          ; $40f5: $ff
	ld [bc], a                                       ; $40f6: $02
	dec de                                           ; $40f7: $1b
	ld [$22c9], sp                                   ; $40f8: $08 $c9 $22
	ld [$0824], sp                                   ; $40fb: $08 $24 $08
	dec h                                            ; $40fe: $25
	rlca                                             ; $40ff: $07
	nop                                              ; $4100: $00
	ld bc, $81b5                                     ; $4101: $01 $b5 $81
	ld bc, $07ff                                     ; $4104: $01 $ff $07
	dec h                                            ; $4107: $25
	jr jr_034_40bb                                   ; $4108: $18 $b1

	add c                                            ; $410a: $81
	rst $38                                          ; $410b: $ff
	ld b, $19                                        ; $410c: $06 $19
	jr jr_034_4128                                   ; $410e: $18 $18

	jr @+$22                                         ; $4110: $18 $20

	jr @-$4d                                         ; $4112: $18 $b1

	ld hl, $0000                                     ; $4114: $21 $00 $00
	jr nz, @+$0a                                     ; $4117: $20 $08

	or l                                             ; $4119: $b5
	and c                                            ; $411a: $a1
	nop                                              ; $411b: $00
	rst $38                                          ; $411c: $ff
	ld [bc], a                                       ; $411d: $02
	dec e                                            ; $411e: $1d
	ld [$19c9], sp                                   ; $411f: $08 $c9 $19
	ld [$14ca], sp                                   ; $4122: $08 $ca $14
	ld [$19ca], sp                                   ; $4125: $08 $ca $19

jr_034_4128:
	ld [$1dc9], sp                                   ; $4128: $08 $c9 $1d
	ld [$081e], sp                                   ; $412b: $08 $1e $08
	ret                                              ; $412e: $c9


	ld [hl+], a                                      ; $412f: $22
	ld [$0827], sp                                   ; $4130: $08 $27 $08
	or c                                             ; $4133: $b1
	and c                                            ; $4134: $a1
	rst $38                                          ; $4135: $ff
	ld [bc], a                                       ; $4136: $02
	inc h                                            ; $4137: $24
	ld [$0820], sp                                   ; $4138: $08 $20 $08
	ret                                              ; $413b: $c9


	dec de                                           ; $413c: $1b
	ld [$a1b1], sp                                   ; $413d: $08 $b1 $a1
	rst $38                                          ; $4140: $ff
	ld [bc], a                                       ; $4141: $02
	dec e                                            ; $4142: $1d
	ld [$0819], sp                                   ; $4143: $08 $19 $08
	ret                                              ; $4146: $c9


	ld d, $08                                        ; $4147: $16 $08
	or l                                             ; $4149: $b5
	ld d, c                                          ; $414a: $51
	ld [bc], a                                       ; $414b: $02
	rst $38                                          ; $414c: $ff
	inc b                                            ; $414d: $04
	jr nc, @+$0a                                     ; $414e: $30 $08

	or l                                             ; $4150: $b5
	and c                                            ; $4151: $a1
	nop                                              ; $4152: $00
	rst $38                                          ; $4153: $ff
	ld [bc], a                                       ; $4154: $02
	dec de                                           ; $4155: $1b
	ld [$0814], sp                                   ; $4156: $08 $14 $08
	or l                                             ; $4159: $b5
	ld h, c                                          ; $415a: $61
	ld [bc], a                                       ; $415b: $02
	rst $38                                          ; $415c: $ff
	inc b                                            ; $415d: $04
	ld l, $08                                        ; $415e: $2e $08
	or l                                             ; $4160: $b5
	and c                                            ; $4161: $a1
	nop                                              ; $4162: $00
	rst $38                                          ; $4163: $ff
	ld [bc], a                                       ; $4164: $02
	add hl, de                                       ; $4165: $19
	ld [$0812], sp                                   ; $4166: $08 $12 $08
	or l                                             ; $4169: $b5
	ld h, c                                          ; $416a: $61
	ld [bc], a                                       ; $416b: $02
	rst $38                                          ; $416c: $ff
	inc b                                            ; $416d: $04
	jr nc, @+$0a                                     ; $416e: $30 $08

	or l                                             ; $4170: $b5
	and c                                            ; $4171: $a1
	nop                                              ; $4172: $00
	rst $38                                          ; $4173: $ff
	ld [bc], a                                       ; $4174: $02
	inc d                                            ; $4175: $14
	ld [$0818], sp                                   ; $4176: $08 $18 $08
	or l                                             ; $4179: $b5
	and c                                            ; $417a: $a1
	nop                                              ; $417b: $00
	rst $38                                          ; $417c: $ff
	ld [bc], a                                       ; $417d: $02
	inc d                                            ; $417e: $14
	ld [$beca], sp                                   ; $417f: $08 $ca $be
	ld [$1d19], sp                                   ; $4182: $08 $19 $1d
	jr nz, jr_034_41a4                               ; $4185: $20 $1d

	jr nz, jr_034_41a7                               ; $4187: $20 $1e

	ld hl, $be1e                                     ; $4189: $21 $1e $be
	ret z                                            ; $418c: $c8

	dec d                                            ; $418d: $15
	ld [$91b1], sp                                   ; $418e: $08 $b1 $91
	rst $38                                          ; $4191: $ff
	ld [bc], a                                       ; $4192: $02
	add hl, de                                       ; $4193: $19
	ld [$1bca], sp                                   ; $4194: $08 $ca $1b
	ld [$081d], sp                                   ; $4197: $08 $1d $08
	add hl, de                                       ; $419a: $19
	ld [$0814], sp                                   ; $419b: $08 $14 $08
	or l                                             ; $419e: $b5
	ld d, c                                          ; $419f: $51
	ld [bc], a                                       ; $41a0: $02
	rst $38                                          ; $41a1: $ff
	inc b                                            ; $41a2: $04
	dec [hl]                                         ; $41a3: $35

jr_034_41a4:
	ld [$a1b5], sp                                   ; $41a4: $08 $b5 $a1

jr_034_41a7:
	nop                                              ; $41a7: $00
	rst $38                                          ; $41a8: $ff
	ld [bc], a                                       ; $41a9: $02
	dec e                                            ; $41aa: $1d
	ld [$0820], sp                                   ; $41ab: $08 $20 $08
	or l                                             ; $41ae: $b5
	ld d, c                                          ; $41af: $51
	ld [bc], a                                       ; $41b0: $02
	rst $38                                          ; $41b1: $ff
	inc b                                            ; $41b2: $04
	ld sp, $b508                                     ; $41b3: $31 $08 $b5
	and c                                            ; $41b6: $a1
	nop                                              ; $41b7: $00
	rst $38                                          ; $41b8: $ff
	ld [bc], a                                       ; $41b9: $02
	add hl, de                                       ; $41ba: $19
	ld [$0820], sp                                   ; $41bb: $08 $20 $08
	or l                                             ; $41be: $b5
	ld d, c                                          ; $41bf: $51
	ld [bc], a                                       ; $41c0: $02
	rst $38                                          ; $41c1: $ff
	inc b                                            ; $41c2: $04
	inc l                                            ; $41c3: $2c
	ld [$71b5], sp                                   ; $41c4: $08 $b5 $71
	nop                                              ; $41c7: $00
	rst $38                                          ; $41c8: $ff
	ld [bc], a                                       ; $41c9: $02
	add hl, de                                       ; $41ca: $19
	ld [$0829], sp                                   ; $41cb: $08 $29 $08
	or l                                             ; $41ce: $b5
	and c                                            ; $41cf: $a1
	nop                                              ; $41d0: $00
	rst $38                                          ; $41d1: $ff
	ld [bc], a                                       ; $41d2: $02
	cp [hl]                                          ; $41d3: $be
	ld [$1e19], sp                                   ; $41d4: $08 $19 $1e
	ld [hl+], a                                      ; $41d7: $22
	ld e, $22                                        ; $41d8: $1e $22
	cp [hl]                                          ; $41da: $be
	ret                                              ; $41db: $c9


	dec h                                            ; $41dc: $25
	ld [$beca], sp                                   ; $41dd: $08 $ca $be
	ld [$221e], sp                                   ; $41e0: $08 $1e $22
	dec h                                            ; $41e3: $25
	daa                                              ; $41e4: $27
	ld a, [hl+]                                      ; $41e5: $2a
	cp [hl]                                          ; $41e6: $be
	ret                                              ; $41e7: $c9


	ld l, $08                                        ; $41e8: $2e $08
	or l                                             ; $41ea: $b5
	add c                                            ; $41eb: $81
	ld bc, $02ff                                     ; $41ec: $01 $ff $02
	inc h                                            ; $41ef: $24
	ld b, $b1                                        ; $41f0: $06 $b1
	ld hl, $0000                                     ; $41f2: $21 $00 $00
	inc h                                            ; $41f5: $24
	ld b, $b1                                        ; $41f6: $06 $b1
	add c                                            ; $41f8: $81
	rst $38                                          ; $41f9: $ff
	dec b                                            ; $41fa: $05
	jr nz, jr_034_4209                               ; $41fb: $20 $0c

	or c                                             ; $41fd: $b1
	ld hl, $0000                                     ; $41fe: $21 $00 $00
	jr nz, jr_034_420f                               ; $4201: $20 $0c

	or c                                             ; $4203: $b1
	ld d, c                                          ; $4204: $51
	nop                                              ; $4205: $00
	nop                                              ; $4206: $00
	inc l                                            ; $4207: $2c
	inc b                                            ; $4208: $04

jr_034_4209:
	jp $142c                                         ; $4209: $c3 $2c $14


	ret z                                            ; $420c: $c8

	dec h                                            ; $420d: $25
	inc c                                            ; $420e: $0c

jr_034_420f:
	or c                                             ; $420f: $b1
	ld [hl], c                                       ; $4210: $71
	rst $38                                          ; $4211: $ff
	dec b                                            ; $4212: $05
	add hl, hl                                       ; $4213: $29
	inc c                                            ; $4214: $0c
	or c                                             ; $4215: $b1
	ld hl, $0000                                     ; $4216: $21 $00 $00
	add hl, hl                                       ; $4219: $29
	inc c                                            ; $421a: $0c
	or l                                             ; $421b: $b5
	and c                                            ; $421c: $a1
	nop                                              ; $421d: $00
	rst $38                                          ; $421e: $ff
	ld [bc], a                                       ; $421f: $02
	cp [hl]                                          ; $4220: $be
	ld [$1b1e], sp                                   ; $4221: $08 $1e $1b
	ld e, $25                                        ; $4224: $1e $25
	ld [hl+], a                                      ; $4226: $22
	dec h                                            ; $4227: $25
	cp [hl]                                          ; $4228: $be
	or c                                             ; $4229: $b1
	add c                                            ; $422a: $81
	rst $38                                          ; $422b: $ff
	rlca                                             ; $422c: $07
	inc h                                            ; $422d: $24
	inc h                                            ; $422e: $24
	or l                                             ; $422f: $b5
	add c                                            ; $4230: $81
	ld bc, $03ff                                     ; $4231: $01 $ff $03
	dec de                                           ; $4234: $1b
	ld b, $c9                                        ; $4235: $06 $c9
	dec e                                            ; $4237: $1d
	ld b, $b5                                        ; $4238: $06 $b5
	or c                                             ; $423a: $b1
	ld [bc], a                                       ; $423b: $02
	rst $38                                          ; $423c: $ff
	inc b                                            ; $423d: $04
	ld e, $24                                        ; $423e: $1e $24
	ret                                              ; $4240: $c9


	dec e                                            ; $4241: $1d
	ld [$091b], sp                                   ; $4242: $08 $1b $09
	dec e                                            ; $4245: $1d
	inc de                                           ; $4246: $13
	or c                                             ; $4247: $b1
	ld b, c                                          ; $4248: $41
	nop                                              ; $4249: $00
	nop                                              ; $424a: $00
	dec e                                            ; $424b: $1d
	inc d                                            ; $424c: $14
	or l                                             ; $424d: $b5
	ld d, c                                          ; $424e: $51
	ld bc, $05ff                                     ; $424f: $01 $ff $05
	ld a, l                                          ; $4252: $7d
	ld bc, $0c25                                     ; $4253: $01 $25 $0c
	add $27                                          ; $4256: $c6 $27
	inc c                                            ; $4258: $0c
	ld a, l                                          ; $4259: $7d
	nop                                              ; $425a: $00
	cp $ff                                           ; $425b: $fe $ff
	or [hl]                                          ; $425d: $b6
	ld d, c                                          ; $425e: $51
	or c                                             ; $425f: $b1
	ld bc, $02ff                                     ; $4260: $01 $ff $02
	dec h                                            ; $4263: $25
	inc c                                            ; $4264: $0c
	jp z, $0c27                                      ; $4265: $ca $27 $0c

	cp $b1                                           ; $4268: $fe $b1
	or c                                             ; $426a: $b1
	rst $38                                          ; $426b: $ff
	ld [bc], a                                       ; $426c: $02
	add hl, hl                                       ; $426d: $29
	inc c                                            ; $426e: $0c
	or c                                             ; $426f: $b1
	ld hl, $0000                                     ; $4270: $21 $00 $00
	add hl, hl                                       ; $4273: $29
	inc c                                            ; $4274: $0c
	or c                                             ; $4275: $b1
	pop bc                                           ; $4276: $c1
	rst $38                                          ; $4277: $ff
	ld [bc], a                                       ; $4278: $02
	inc l                                            ; $4279: $2c
	ld a, [bc]                                       ; $427a: $0a
	or c                                             ; $427b: $b1
	ld hl, $0000                                     ; $427c: $21 $00 $00
	inc l                                            ; $427f: $2c
	ld c, $b1                                        ; $4280: $0e $b1
	pop de                                           ; $4282: $d1
	rst $38                                          ; $4283: $ff
	ld [bc], a                                       ; $4284: $02
	ld a, [hl+]                                      ; $4285: $2a
	inc c                                            ; $4286: $0c
	or c                                             ; $4287: $b1
	ld hl, $0000                                     ; $4288: $21 $00 $00
	ld a, [hl+]                                      ; $428b: $2a
	inc c                                            ; $428c: $0c
	or c                                             ; $428d: $b1
	pop bc                                           ; $428e: $c1
	rst $38                                          ; $428f: $ff
	ld [bc], a                                       ; $4290: $02
	daa                                              ; $4291: $27
	inc c                                            ; $4292: $0c
	or c                                             ; $4293: $b1
	ld hl, $0000                                     ; $4294: $21 $00 $00
	daa                                              ; $4297: $27
	inc c                                            ; $4298: $0c
	or c                                             ; $4299: $b1
	pop bc                                           ; $429a: $c1
	rst $38                                          ; $429b: $ff
	ld [bc], a                                       ; $429c: $02
	add hl, hl                                       ; $429d: $29
	inc c                                            ; $429e: $0c
	or c                                             ; $429f: $b1
	ld hl, $0000                                     ; $42a0: $21 $00 $00
	add hl, hl                                       ; $42a3: $29
	jr @-$3d                                         ; $42a4: $18 $c1

	add hl, hl                                       ; $42a6: $29
	inc c                                            ; $42a7: $0c
	nop                                              ; $42a8: $00
	jr @-$4d                                         ; $42a9: $18 $b1

	or c                                             ; $42ab: $b1
	rst $38                                          ; $42ac: $ff
	ld [bc], a                                       ; $42ad: $02
	dec h                                            ; $42ae: $25
	inc c                                            ; $42af: $0c

jr_034_42b0:
	jp z, $0c27                                      ; $42b0: $ca $27 $0c

	or l                                             ; $42b3: $b5
	and c                                            ; $42b4: $a1
	ld bc, $02ff                                     ; $42b5: $01 $ff $02
	add hl, hl                                       ; $42b8: $29
	inc c                                            ; $42b9: $0c
	or c                                             ; $42ba: $b1
	ld hl, $0000                                     ; $42bb: $21 $00 $00
	add hl, hl                                       ; $42be: $29
	inc c                                            ; $42bf: $0c
	or c                                             ; $42c0: $b1
	pop bc                                           ; $42c1: $c1
	rst $38                                          ; $42c2: $ff
	ld [bc], a                                       ; $42c3: $02
	inc l                                            ; $42c4: $2c
	ld a, [bc]                                       ; $42c5: $0a
	or c                                             ; $42c6: $b1
	ld hl, $0000                                     ; $42c7: $21 $00 $00
	inc l                                            ; $42ca: $2c
	ld c, $b1                                        ; $42cb: $0e $b1
	pop bc                                           ; $42cd: $c1
	rst $38                                          ; $42ce: $ff
	ld [bc], a                                       ; $42cf: $02
	dec l                                            ; $42d0: $2d
	inc c                                            ; $42d1: $0c
	call z, $0c2c                                    ; $42d2: $cc $2c $0c
	or c                                             ; $42d5: $b1
	pop de                                           ; $42d6: $d1
	rst $38                                          ; $42d7: $ff
	ld [bc], a                                       ; $42d8: $02
	ld a, [hl+]                                      ; $42d9: $2a
	inc c                                            ; $42da: $0c
	or c                                             ; $42db: $b1
	ld hl, $0000                                     ; $42dc: $21 $00 $00
	ld a, [hl+]                                      ; $42df: $2a
	inc c                                            ; $42e0: $0c
	res 6, c                                         ; $42e1: $cb $b1
	pop de                                           ; $42e3: $d1
	rst $38                                          ; $42e4: $ff
	ld [bc], a                                       ; $42e5: $02
	add hl, hl                                       ; $42e6: $29
	inc c                                            ; $42e7: $0c
	or c                                             ; $42e8: $b1
	ld hl, $0000                                     ; $42e9: $21 $00 $00
	add hl, hl                                       ; $42ec: $29
	jr jr_034_42b0                                   ; $42ed: $18 $c1

	add hl, hl                                       ; $42ef: $29
	inc c                                            ; $42f0: $0c
	nop                                              ; $42f1: $00
	jr @-$4d                                         ; $42f2: $18 $b1

	or c                                             ; $42f4: $b1
	rst $38                                          ; $42f5: $ff
	ld [bc], a                                       ; $42f6: $02
	ld a, [hl+]                                      ; $42f7: $2a
	inc c                                            ; $42f8: $0c
	jp z, $0c2c                                      ; $42f9: $ca $2c $0c

	or l                                             ; $42fc: $b5
	pop de                                           ; $42fd: $d1
	ld bc, $02ff                                     ; $42fe: $01 $ff $02
	ld l, $0c                                        ; $4301: $2e $0c
	or c                                             ; $4303: $b1
	ld sp, $0000                                     ; $4304: $31 $00 $00
	ld l, $0c                                        ; $4307: $2e $0c
	or c                                             ; $4309: $b1
	pop bc                                           ; $430a: $c1
	rst $38                                          ; $430b: $ff
	ld [bc], a                                       ; $430c: $02
	ld l, $0c                                        ; $430d: $2e $0c
	call z, $0c2a                                    ; $430f: $cc $2a $0c
	or c                                             ; $4312: $b1
	pop de                                           ; $4313: $d1
	rst $38                                          ; $4314: $ff
	ld [bc], a                                       ; $4315: $02
	daa                                              ; $4316: $27
	inc c                                            ; $4317: $0c
	or c                                             ; $4318: $b1
	ld sp, $0000                                     ; $4319: $31 $00 $00
	daa                                              ; $431c: $27
	inc c                                            ; $431d: $0c
	or c                                             ; $431e: $b1
	pop bc                                           ; $431f: $c1
	rst $38                                          ; $4320: $ff
	ld [bc], a                                       ; $4321: $02
	add hl, hl                                       ; $4322: $29
	inc c                                            ; $4323: $0c
	ld a, [hl+]                                      ; $4324: $2a
	inc c                                            ; $4325: $0c
	sub [hl]                                         ; $4326: $96
	rst $38                                          ; $4327: $ff
	ld [bc], a                                       ; $4328: $02
	inc l                                            ; $4329: $2c
	inc c                                            ; $432a: $0c
	or c                                             ; $432b: $b1
	ld sp, $0000                                     ; $432c: $31 $00 $00
	inc l                                            ; $432f: $2c
	inc c                                            ; $4330: $0c
	or c                                             ; $4331: $b1
	pop bc                                           ; $4332: $c1
	rst $38                                          ; $4333: $ff
	ld [bc], a                                       ; $4334: $02
	inc l                                            ; $4335: $2c
	inc c                                            ; $4336: $0c
	call z, $0c29                                    ; $4337: $cc $29 $0c
	or c                                             ; $433a: $b1
	pop de                                           ; $433b: $d1
	rst $38                                          ; $433c: $ff
	ld [bc], a                                       ; $433d: $02
	dec h                                            ; $433e: $25
	inc c                                            ; $433f: $0c
	or c                                             ; $4340: $b1
	ld sp, $0000                                     ; $4341: $31 $00 $00
	dec h                                            ; $4344: $25
	inc c                                            ; $4345: $0c
	or c                                             ; $4346: $b1
	pop bc                                           ; $4347: $c1
	rst $38                                          ; $4348: $ff
	ld [bc], a                                       ; $4349: $02
	daa                                              ; $434a: $27
	inc c                                            ; $434b: $0c
	call z, $0c29                                    ; $434c: $cc $29 $0c
	or c                                             ; $434f: $b1
	pop de                                           ; $4350: $d1
	rst $38                                          ; $4351: $ff
	ld [bc], a                                       ; $4352: $02
	ld a, [hl+]                                      ; $4353: $2a
	inc c                                            ; $4354: $0c
	or c                                             ; $4355: $b1
	ld sp, $0000                                     ; $4356: $31 $00 $00
	ld a, [hl+]                                      ; $4359: $2a
	inc c                                            ; $435a: $0c
	or c                                             ; $435b: $b1
	pop de                                           ; $435c: $d1
	rst $38                                          ; $435d: $ff
	ld [bc], a                                       ; $435e: $02
	add hl, hl                                       ; $435f: $29
	inc c                                            ; $4360: $0c
	or c                                             ; $4361: $b1
	ld sp, $0000                                     ; $4362: $31 $00 $00
	add hl, hl                                       ; $4365: $29
	inc c                                            ; $4366: $0c
	or c                                             ; $4367: $b1
	pop de                                           ; $4368: $d1
	rst $38                                          ; $4369: $ff
	ld [bc], a                                       ; $436a: $02
	daa                                              ; $436b: $27
	inc c                                            ; $436c: $0c
	or c                                             ; $436d: $b1
	ld sp, $0000                                     ; $436e: $31 $00 $00
	daa                                              ; $4371: $27
	inc c                                            ; $4372: $0c
	or c                                             ; $4373: $b1
	pop de                                           ; $4374: $d1
	rst $38                                          ; $4375: $ff
	ld [bc], a                                       ; $4376: $02
	dec h                                            ; $4377: $25
	inc c                                            ; $4378: $0c
	or c                                             ; $4379: $b1
	ld sp, $0000                                     ; $437a: $31 $00 $00
	dec h                                            ; $437d: $25
	inc c                                            ; $437e: $0c
	or c                                             ; $437f: $b1
	pop de                                           ; $4380: $d1
	rst $38                                          ; $4381: $ff
	ld [bc], a                                       ; $4382: $02
	add hl, hl                                       ; $4383: $29
	inc c                                            ; $4384: $0c
	or c                                             ; $4385: $b1
	ld sp, $0000                                     ; $4386: $31 $00 $00
	add hl, hl                                       ; $4389: $29
	inc c                                            ; $438a: $0c
	jp nz, $0c29                                     ; $438b: $c2 $29 $0c

	or c                                             ; $438e: $b1
	or c                                             ; $438f: $b1
	rst $38                                          ; $4390: $ff
	ld [bc], a                                       ; $4391: $02
	daa                                              ; $4392: $27
	ld b, $25                                        ; $4393: $06 $25
	ld b, $b1                                        ; $4395: $06 $b1
	pop de                                           ; $4397: $d1
	rst $38                                          ; $4398: $ff
	ld [bc], a                                       ; $4399: $02
	daa                                              ; $439a: $27
	inc c                                            ; $439b: $0c
	or c                                             ; $439c: $b1
	ld sp, $0000                                     ; $439d: $31 $00 $00
	daa                                              ; $43a0: $27
	inc c                                            ; $43a1: $0c
	or l                                             ; $43a2: $b5
	pop bc                                           ; $43a3: $c1
	ld [bc], a                                       ; $43a4: $02
	rst $38                                          ; $43a5: $ff
	ld [bc], a                                       ; $43a6: $02
	dec h                                            ; $43a7: $25
	inc c                                            ; $43a8: $0c
	call $0c27                                       ; $43a9: $cd $27 $0c
	or l                                             ; $43ac: $b5
	pop bc                                           ; $43ad: $c1
	ld [bc], a                                       ; $43ae: $02
	rst $38                                          ; $43af: $ff
	ld [bc], a                                       ; $43b0: $02
	add hl, hl                                       ; $43b1: $29
	inc c                                            ; $43b2: $0c
	or c                                             ; $43b3: $b1
	ld sp, $0000                                     ; $43b4: $31 $00 $00
	add hl, hl                                       ; $43b7: $29
	inc c                                            ; $43b8: $0c
	or c                                             ; $43b9: $b1
	pop bc                                           ; $43ba: $c1
	rst $38                                          ; $43bb: $ff
	ld [bc], a                                       ; $43bc: $02
	inc l                                            ; $43bd: $2c
	ld a, [bc]                                       ; $43be: $0a

jr_034_43bf:
	or c                                             ; $43bf: $b1
	ld sp, $0000                                     ; $43c0: $31 $00 $00
	inc l                                            ; $43c3: $2c
	ld c, $b1                                        ; $43c4: $0e $b1
	pop de                                           ; $43c6: $d1
	rst $38                                          ; $43c7: $ff
	ld [bc], a                                       ; $43c8: $02
	ld a, [hl+]                                      ; $43c9: $2a
	inc c                                            ; $43ca: $0c
	or c                                             ; $43cb: $b1
	ld sp, $0000                                     ; $43cc: $31 $00 $00
	ld a, [hl+]                                      ; $43cf: $2a
	inc c                                            ; $43d0: $0c
	or c                                             ; $43d1: $b1
	pop de                                           ; $43d2: $d1
	rst $38                                          ; $43d3: $ff
	ld [bc], a                                       ; $43d4: $02
	daa                                              ; $43d5: $27
	inc c                                            ; $43d6: $0c
	or c                                             ; $43d7: $b1
	ld sp, $0000                                     ; $43d8: $31 $00 $00
	daa                                              ; $43db: $27
	inc c                                            ; $43dc: $0c
	or c                                             ; $43dd: $b1
	pop de                                           ; $43de: $d1
	rst $38                                          ; $43df: $ff
	ld [bc], a                                       ; $43e0: $02
	add hl, hl                                       ; $43e1: $29
	inc c                                            ; $43e2: $0c
	or c                                             ; $43e3: $b1
	ld sp, $0000                                     ; $43e4: $31 $00 $00
	add hl, hl                                       ; $43e7: $29
	inc c                                            ; $43e8: $0c
	or l                                             ; $43e9: $b5
	add c                                            ; $43ea: $81
	ld [bc], a                                       ; $43eb: $02
	rst $38                                          ; $43ec: $ff
	ld b, $7e                                        ; $43ed: $06 $7e
	ld [bc], a                                       ; $43ef: $02
	inc c                                            ; $43f0: $0c
	xor d                                            ; $43f1: $aa
	jr c, @+$1a                                      ; $43f2: $38 $18

	add $36                                          ; $43f4: $c6 $36
	jr jr_034_43bf                                   ; $43f6: $18 $c7

	jr c, jr_034_4407                                ; $43f8: $38 $0d

	or c                                             ; $43fa: $b1
	pop bc                                           ; $43fb: $c1
	rst $38                                          ; $43fc: $ff
	ld [bc], a                                       ; $43fd: $02
	dec h                                            ; $43fe: $25
	dec b                                            ; $43ff: $05
	sla a                                            ; $4400: $cb $27
	ld b, $b5                                        ; $4402: $06 $b5
	pop bc                                           ; $4404: $c1
	ld [bc], a                                       ; $4405: $02
	rst $38                                          ; $4406: $ff

jr_034_4407:
	ld [bc], a                                       ; $4407: $02
	add hl, hl                                       ; $4408: $29
	inc c                                            ; $4409: $0c
	or c                                             ; $440a: $b1
	ld sp, $0000                                     ; $440b: $31 $00 $00
	add hl, hl                                       ; $440e: $29
	inc c                                            ; $440f: $0c
	or c                                             ; $4410: $b1
	pop bc                                           ; $4411: $c1
	rst $38                                          ; $4412: $ff
	ld [bc], a                                       ; $4413: $02
	inc l                                            ; $4414: $2c
	ld a, [bc]                                       ; $4415: $0a
	or c                                             ; $4416: $b1
	ld sp, $0000                                     ; $4417: $31 $00 $00
	inc l                                            ; $441a: $2c
	ld c, $b1                                        ; $441b: $0e $b1
	or c                                             ; $441d: $b1
	rst $38                                          ; $441e: $ff
	ld [bc], a                                       ; $441f: $02
	dec l                                            ; $4420: $2d
	inc c                                            ; $4421: $0c
	inc l                                            ; $4422: $2c
	inc c                                            ; $4423: $0c
	or c                                             ; $4424: $b1
	pop bc                                           ; $4425: $c1
	rst $38                                          ; $4426: $ff
	ld [bc], a                                       ; $4427: $02
	ld a, [hl+]                                      ; $4428: $2a
	inc c                                            ; $4429: $0c
	or c                                             ; $442a: $b1
	ld sp, $0000                                     ; $442b: $31 $00 $00
	ld a, [hl+]                                      ; $442e: $2a
	inc c                                            ; $442f: $0c
	or c                                             ; $4430: $b1
	pop bc                                           ; $4431: $c1
	rst $38                                          ; $4432: $ff
	ld [bc], a                                       ; $4433: $02
	add hl, hl                                       ; $4434: $29
	inc c                                            ; $4435: $0c
	or c                                             ; $4436: $b1
	ld sp, $0000                                     ; $4437: $31 $00 $00
	add hl, hl                                       ; $443a: $29
	inc c                                            ; $443b: $0c
	or c                                             ; $443c: $b1
	ld h, c                                          ; $443d: $61
	rst $38                                          ; $443e: $ff
	ld b, $38                                        ; $443f: $06 $38
	jr jr_034_4478                                   ; $4441: $18 $35

	jr @+$33                                         ; $4443: $18 $31

	inc c                                            ; $4445: $0c
	or c                                             ; $4446: $b1
	and c                                            ; $4447: $a1
	rst $38                                          ; $4448: $ff
	ld [bc], a                                       ; $4449: $02
	ld a, [hl+]                                      ; $444a: $2a
	ld b, $cb                                        ; $444b: $06 $cb
	inc l                                            ; $444d: $2c
	ld b, $b5                                        ; $444e: $06 $b5
	pop bc                                           ; $4450: $c1
	ld [bc], a                                       ; $4451: $02
	rst $38                                          ; $4452: $ff
	ld [bc], a                                       ; $4453: $02
	ld l, $0c                                        ; $4454: $2e $0c
	or c                                             ; $4456: $b1
	ld sp, $0000                                     ; $4457: $31 $00 $00
	ld l, $18                                        ; $445a: $2e $18
	or c                                             ; $445c: $b1
	sub c                                            ; $445d: $91
	rst $38                                          ; $445e: $ff
	inc bc                                           ; $445f: $03
	ld l, $0c                                        ; $4460: $2e $0c
	or c                                             ; $4462: $b1
	pop bc                                           ; $4463: $c1
	rst $38                                          ; $4464: $ff
	ld [bc], a                                       ; $4465: $02
	ld l, $0c                                        ; $4466: $2e $0c
	or c                                             ; $4468: $b1
	ld sp, $0000                                     ; $4469: $31 $00 $00
	ld l, $0c                                        ; $446c: $2e $0c
	or c                                             ; $446e: $b1
	and c                                            ; $446f: $a1
	rst $38                                          ; $4470: $ff
	inc bc                                           ; $4471: $03
	jr nc, @+$0e                                     ; $4472: $30 $0c

	call z, $0c31                                    ; $4474: $cc $31 $0c
	or c                                             ; $4477: $b1

jr_034_4478:
	pop de                                           ; $4478: $d1
	rst $38                                          ; $4479: $ff
	ld bc, $062c                                     ; $447a: $01 $2c $06
	or c                                             ; $447d: $b1
	ld hl, $0000                                     ; $447e: $21 $00 $00
	inc l                                            ; $4481: $2c
	ld b, $b1                                        ; $4482: $06 $b1
	pop bc                                           ; $4484: $c1
	rst $38                                          ; $4485: $ff
	ld [bc], a                                       ; $4486: $02
	add hl, hl                                       ; $4487: $29
	inc c                                            ; $4488: $0c
	or c                                             ; $4489: $b1
	ld sp, $0000                                     ; $448a: $31 $00 $00
	add hl, hl                                       ; $448d: $29
	inc c                                            ; $448e: $0c
	or c                                             ; $448f: $b1
	ld [hl], c                                       ; $4490: $71
	rst $38                                          ; $4491: $ff
	ld [bc], a                                       ; $4492: $02
	jr nc, @+$03                                     ; $4493: $30 $01

	call z, $0b31                                    ; $4495: $cc $31 $0b
	or c                                             ; $4498: $b1
	ld sp, $0000                                     ; $4499: $31 $00 $00
	ld sp, $b10c                                     ; $449c: $31 $0c $b1
	add c                                            ; $449f: $81
	rst $38                                          ; $44a0: $ff
	ld [bc], a                                       ; $44a1: $02
	inc l                                            ; $44a2: $2c
	ld b, $c8                                        ; $44a3: $06 $c8
	add hl, hl                                       ; $44a5: $29
	ld b, $b1                                        ; $44a6: $06 $b1
	and c                                            ; $44a8: $a1
	rst $38                                          ; $44a9: $ff
	inc bc                                           ; $44aa: $03
	dec h                                            ; $44ab: $25
	inc c                                            ; $44ac: $0c
	or c                                             ; $44ad: $b1
	ld sp, $0000                                     ; $44ae: $31 $00 $00
	dec h                                            ; $44b1: $25
	inc c                                            ; $44b2: $0c
	or l                                             ; $44b3: $b5
	pop bc                                           ; $44b4: $c1
	ld [bc], a                                       ; $44b5: $02
	rst $38                                          ; $44b6: $ff
	ld [bc], a                                       ; $44b7: $02
	daa                                              ; $44b8: $27
	inc c                                            ; $44b9: $0c
	or c                                             ; $44ba: $b1
	ld sp, $0000                                     ; $44bb: $31 $00 $00
	daa                                              ; $44be: $27
	inc c                                            ; $44bf: $0c
	or c                                             ; $44c0: $b1
	pop bc                                           ; $44c1: $c1
	rst $38                                          ; $44c2: $ff
	ld [bc], a                                       ; $44c3: $02
	ld l, $0c                                        ; $44c4: $2e $0c
	or c                                             ; $44c6: $b1
	ld sp, $0000                                     ; $44c7: $31 $00 $00
	ld l, $0c                                        ; $44ca: $2e $0c
	or c                                             ; $44cc: $b1
	and c                                            ; $44cd: $a1
	rst $38                                          ; $44ce: $ff
	inc bc                                           ; $44cf: $03
	inc l                                            ; $44d0: $2c
	inc c                                            ; $44d1: $0c
	or c                                             ; $44d2: $b1
	ld sp, $0000                                     ; $44d3: $31 $00 $00
	inc l                                            ; $44d6: $2c
	inc c                                            ; $44d7: $0c
	or c                                             ; $44d8: $b1
	add c                                            ; $44d9: $81

jr_034_44da:
	rst $38                                          ; $44da: $ff

jr_034_44db:
	inc bc                                           ; $44db: $03
	daa                                              ; $44dc: $27
	inc c                                            ; $44dd: $0c
	jp z, $0c29                                      ; $44de: $ca $29 $0c

	or c                                             ; $44e1: $b1
	pop bc                                           ; $44e2: $c1
	rst $38                                          ; $44e3: $ff
	ld [bc], a                                       ; $44e4: $02
	dec h                                            ; $44e5: $25
	inc c                                            ; $44e6: $0c
	or c                                             ; $44e7: $b1
	ld b, c                                          ; $44e8: $41
	nop                                              ; $44e9: $00
	nop                                              ; $44ea: $00
	dec h                                            ; $44eb: $25
	inc c                                            ; $44ec: $0c
	jp nz, $1825                                     ; $44ed: $c2 $25 $18

	or l                                             ; $44f0: $b5
	ld d, c                                          ; $44f1: $51
	ld [bc], a                                       ; $44f2: $02
	rst $38                                          ; $44f3: $ff
	rlca                                             ; $44f4: $07
	ld a, l                                          ; $44f5: $7d
	ld [bc], a                                       ; $44f6: $02
	dec e                                            ; $44f7: $1d
	ld [$091b], sp                                   ; $44f8: $08 $1b $09
	dec e                                            ; $44fb: $1d
	inc de                                           ; $44fc: $13
	or l                                             ; $44fd: $b5
	or c                                             ; $44fe: $b1
	ld bc, $02ff                                     ; $44ff: $01 $ff $02
	ld a, l                                          ; $4502: $7d
	nop                                              ; $4503: $00
	dec h                                            ; $4504: $25
	inc c                                            ; $4505: $0c
	jp z, $0c27                                      ; $4506: $ca $27 $0c

	cp $ff                                           ; $4509: $fe $ff
	ret nc                                           ; $450b: $d0

	ld d, c                                          ; $450c: $51
	nop                                              ; $450d: $00

jr_034_450e:
	jr jr_034_450e                                   ; $450e: $18 $fe

	jp nz, $127f                                     ; $4510: $c2 $7f $12

	add hl, de                                       ; $4513: $19
	jr jr_034_44da                                   ; $4514: $18 $c4

	add hl, de                                       ; $4516: $19
	jr jr_034_44db                                   ; $4517: $18 $c2

	ld [de], a                                       ; $4519: $12
	ld d, $c4                                        ; $451a: $16 $c4
	ld [de], a                                       ; $451c: $12
	ld [bc], a                                       ; $451d: $02
	jp nz, $1614                                     ; $451e: $c2 $14 $16

	call nz, $0214                                   ; $4521: $c4 $14 $02
	jp nz, $1819                                     ; $4524: $c2 $19 $18

	call nz, $1a19                                   ; $4527: $c4 $19 $1a
	call nz, $89d2                                   ; $452a: $c4 $d2 $89
	ld a, l                                          ; $452d: $7d
	ld [bc], a                                       ; $452e: $02
	ld e, $04                                        ; $452f: $1e $04
	add $1e                                          ; $4531: $c6 $1e
	inc b                                            ; $4533: $04
	call nz, $0425                                   ; $4534: $c4 $25 $04
	add $25                                          ; $4537: $c6 $25
	inc b                                            ; $4539: $04
	call nz, $041e                                   ; $453a: $c4 $1e $04
	add $1e                                          ; $453d: $c6 $1e
	ld [bc], a                                       ; $453f: $02
	pop de                                           ; $4540: $d1
	ld a, l                                          ; $4541: $7d
	nop                                              ; $4542: $00
	jr nz, @+$06                                     ; $4543: $20 $04

	add $20                                          ; $4545: $c6 $20
	inc b                                            ; $4547: $04
	call nz, $0427                                   ; $4548: $c4 $27 $04
	add $27                                          ; $454b: $c6 $27
	inc b                                            ; $454d: $04
	call nz, $042a                                   ; $454e: $c4 $2a $04
	add $2a                                          ; $4551: $c6 $2a
	inc b                                            ; $4553: $04
	jp nz, Jump_034_7fd1                             ; $4554: $c2 $d1 $7f

	ld [de], a                                       ; $4557: $12
	add hl, de                                       ; $4558: $19
	jr @-$3a                                         ; $4559: $18 $c4

	add hl, de                                       ; $455b: $19
	jr @-$3c                                         ; $455c: $18 $c2

	ld [de], a                                       ; $455e: $12
	ld d, $c4                                        ; $455f: $16 $c4
	ld [de], a                                       ; $4561: $12
	ld [bc], a                                       ; $4562: $02
	jp nz, $1615                                     ; $4563: $c2 $15 $16

	call nz, $0215                                   ; $4566: $c4 $15 $02
	jp nz, $1819                                     ; $4569: $c2 $19 $18

	call nz, $1819                                   ; $456c: $c4 $19 $18
	call nz, $87d2                                   ; $456f: $c4 $d2 $87
	ld a, l                                          ; $4572: $7d
	ld [bc], a                                       ; $4573: $02
	jr nz, @+$06                                     ; $4574: $20 $04

	add $20                                          ; $4576: $c6 $20
	inc b                                            ; $4578: $04
	call nz, $041e                                   ; $4579: $c4 $1e $04
	add $1e                                          ; $457c: $c6 $1e
	inc b                                            ; $457e: $04
	call nz, $041d                                   ; $457f: $c4 $1d $04
	add $1d                                          ; $4582: $c6 $1d
	inc b                                            ; $4584: $04
	call nz, $041e                                   ; $4585: $c4 $1e $04
	add $1e                                          ; $4588: $c6 $1e
	inc b                                            ; $458a: $04
	call nz, $0420                                   ; $458b: $c4 $20 $04
	add $20                                          ; $458e: $c6 $20
	inc b                                            ; $4590: $04
	call nz, $0425                                   ; $4591: $c4 $25 $04
	add $25                                          ; $4594: $c6 $25
	inc b                                            ; $4596: $04
	ld a, l                                          ; $4597: $7d
	nop                                              ; $4598: $00
	jp nz, $87d1                                     ; $4599: $c2 $d1 $87

	ld e, $18                                        ; $459c: $1e $18
	call nz, $181e                                   ; $459e: $c4 $1e $18
	jp nz, $181e                                     ; $45a1: $c2 $1e $18

	call nz, $181e                                   ; $45a4: $c4 $1e $18
	jp nz, $181d                                     ; $45a7: $c2 $1d $18

	call nz, $181d                                   ; $45aa: $c4 $1d $18
	jp nz, $1622                                     ; $45ad: $c2 $22 $16

	call nz, $0222                                   ; $45b0: $c4 $22 $02
	jp nz, $1620                                     ; $45b3: $c2 $20 $16

	call nz, $0220                                   ; $45b6: $c4 $20 $02
	add a                                            ; $45b9: $87
	jp nz, $057e                                     ; $45ba: $c2 $7e $05

	nop                                              ; $45bd: $00
	and c                                            ; $45be: $a1
	dec de                                           ; $45bf: $1b
	ld d, $7e                                        ; $45c0: $16 $7e
	nop                                              ; $45c2: $00
	call nz, $021b                                   ; $45c3: $c4 $1b $02
	jp nz, $161d                                     ; $45c6: $c2 $1d $16

	call nz, $021d                                   ; $45c9: $c4 $1d $02
	ld a, [hl]                                       ; $45cc: $7e
	dec b                                            ; $45cd: $05
	nop                                              ; $45ce: $00
	xor c                                            ; $45cf: $a9
	jp nz, $161e                                     ; $45d0: $c2 $1e $16

	ld a, [hl]                                       ; $45d3: $7e
	nop                                              ; $45d4: $00
	call nz, $021e                                   ; $45d5: $c4 $1e $02
	jp nz, $161f                                     ; $45d8: $c2 $1f $16

	call nz, $021f                                   ; $45db: $c4 $1f $02
	jp nz, $1620                                     ; $45de: $c2 $20 $16

	call nz, $0220                                   ; $45e1: $c4 $20 $02
	jp nz, $1620                                     ; $45e4: $c2 $20 $16

	call nz, $0220                                   ; $45e7: $c4 $20 $02
	jp nz, $1614                                     ; $45ea: $c2 $14 $16

	call nz, $0214                                   ; $45ed: $c4 $14 $02
	ld a, [hl]                                       ; $45f0: $7e
	ld bc, $a000                                     ; $45f1: $01 $00 $a0

jr_034_45f4:
	jp nz, $1614                                     ; $45f4: $c2 $14 $16

	call nz, $0214                                   ; $45f7: $c4 $14 $02
	ld a, [hl]                                       ; $45fa: $7e
	nop                                              ; $45fb: $00
	jp nz, $127f                                     ; $45fc: $c2 $7f $12

	add hl, de                                       ; $45ff: $19
	db $10                                           ; $4600: $10
	call nz, $0819                                   ; $4601: $c4 $19 $08
	jp nz, $1619                                     ; $4604: $c2 $19 $16

	call nz, $0219                                   ; $4607: $c4 $19 $02
	jp nz, $1612                                     ; $460a: $c2 $12 $16

	call nz, $0212                                   ; $460d: $c4 $12 $02
	jp nz, $1614                                     ; $4610: $c2 $14 $16

	call nz, $0214                                   ; $4613: $c4 $14 $02
	jp nz, $2819                                     ; $4616: $c2 $19 $28

	call nz, $0819                                   ; $4619: $c4 $19 $08
	jp nz, $1614                                     ; $461c: $c2 $14 $16

jr_034_461f:
	call nz, $0214                                   ; $461f: $c4 $14 $02
	jp nz, $1614                                     ; $4622: $c2 $14 $16

	call nz, $0214                                   ; $4625: $c4 $14 $02
	jp nz, Jump_034_7fd1                             ; $4628: $c2 $d1 $7f

	ld [de], a                                       ; $462b: $12
	add hl, de                                       ; $462c: $19
	jr @-$3a                                         ; $462d: $18 $c4

	add hl, de                                       ; $462f: $19
	jr jr_034_45f4                                   ; $4630: $18 $c2

	ld [de], a                                       ; $4632: $12
	ld d, $c4                                        ; $4633: $16 $c4
	ld [de], a                                       ; $4635: $12
	ld [bc], a                                       ; $4636: $02
	jp nz, $1615                                     ; $4637: $c2 $15 $16

	call nz, $0215                                   ; $463a: $c4 $15 $02
	jp nz, $1319                                     ; $463d: $c2 $19 $13

	call nz, $0519                                   ; $4640: $c4 $19 $05
	jp nz, $1319                                     ; $4643: $c2 $19 $13

	call nz, $0519                                   ; $4646: $c4 $19 $05
	jp nz, $1314                                     ; $4649: $c2 $14 $13

	call nz, $0514                                   ; $464c: $c4 $14 $05
	jp nz, $1319                                     ; $464f: $c2 $19 $13

	call nz, $0519                                   ; $4652: $c4 $19 $05
	pop de                                           ; $4655: $d1
	jp nz, $1e87                                     ; $4656: $c2 $87 $1e

	jr jr_034_461f                                   ; $4659: $18 $c4

	ld e, $0c                                        ; $465b: $1e $0c
	jp nz, $0c1d                                     ; $465d: $c2 $1d $0c

	dec de                                           ; $4660: $1b
	inc d                                            ; $4661: $14
	call nz, $041b                                   ; $4662: $c4 $1b $04
	ld a, [hl]                                       ; $4665: $7e
	dec b                                            ; $4666: $05
	nop                                              ; $4667: $00
	and b                                            ; $4668: $a0
	jp nz, $141b                                     ; $4669: $c2 $1b $14

	call nz, $041b                                   ; $466c: $c4 $1b $04
	jp nz, $061d                                     ; $466f: $c2 $1d $06

	call nz, $061d                                   ; $4672: $c4 $1d $06
	jp nz, $1018                                     ; $4675: $c2 $18 $10

	ld a, [hl]                                       ; $4678: $7e
	nop                                              ; $4679: $00
	call nz, $0818                                   ; $467a: $c4 $18 $08
	jp nz, $1822                                     ; $467d: $c2 $22 $18

	ld a, [hl]                                       ; $4680: $7e
	stop                                             ; $4681: $10 $00
	and a                                            ; $4683: $a7
	jp nz, $0c22                                     ; $4684: $c2 $22 $0c

	ld a, [hl]                                       ; $4687: $7e
	nop                                              ; $4688: $00
	jp nz, $1616                                     ; $4689: $c2 $16 $16

	call nz, $0216                                   ; $468c: $c4 $16 $02
	pop de                                           ; $468f: $d1
	jp nz, $1b87                                     ; $4690: $c2 $87 $1b

	ld [de], a                                       ; $4693: $12
	call nz, $061b                                   ; $4694: $c4 $1b $06
	jp nz, $1219                                     ; $4697: $c2 $19 $12

	call nz, $0619                                   ; $469a: $c4 $19 $06
	jp nz, $1218                                     ; $469d: $c2 $18 $12

	call nz, $0618                                   ; $46a0: $c4 $18 $06
	jp nz, $1214                                     ; $46a3: $c2 $14 $12

	call nz, $0614                                   ; $46a6: $c4 $14 $06
	add a                                            ; $46a9: $87
	jp nz, $1819                                     ; $46aa: $c2 $19 $18

	call nz, $1819                                   ; $46ad: $c4 $19 $18
	add $19                                          ; $46b0: $c6 $19
	dec e                                            ; $46b2: $1d
	nop                                              ; $46b3: $00
	rlca                                             ; $46b4: $07
	add d                                            ; $46b5: $82
	inc l                                            ; $46b6: $2c
	ld [$0833], sp                                   ; $46b7: $08 $33 $08
	ld [hl], $08                                     ; $46ba: $36 $08
	cp $ff                                           ; $46bc: $fe $ff
	or h                                             ; $46be: $b4
	cp [hl]                                          ; $46bf: $be
	and e                                            ; $46c0: $a3
	nop                                              ; $46c1: $00
	ld h, h                                          ; $46c2: $64
	ld a, [hl]                                       ; $46c3: $7e
	jr z, jr_034_46c6                                ; $46c4: $28 $00

jr_034_46c6:
	and a                                            ; $46c6: $a7
	ld [$0830], sp                                   ; $46c7: $08 $30 $08
	jr nc, @+$0a                                     ; $46ca: $30 $08

	jr nc, @+$0a                                     ; $46cc: $30 $08

	jr nc, jr_034_46d8                               ; $46ce: $30 $08

	jr nc, @-$3a                                     ; $46d0: $30 $c4

	ld [$0018], sp                                   ; $46d2: $08 $18 $00
	jr @+$01                                         ; $46d5: $18 $ff

	or h                                             ; $46d7: $b4

jr_034_46d8:
	cp [hl]                                          ; $46d8: $be
	or c                                             ; $46d9: $b1
	inc bc                                           ; $46da: $03
	ld h, d                                          ; $46db: $62
	ld a, [hl]                                       ; $46dc: $7e
	dec e                                            ; $46dd: $1d
	inc c                                            ; $46de: $0c
	and d                                            ; $46df: $a2
	cp [hl]                                          ; $46e0: $be
	inc c                                            ; $46e1: $0c
	add hl, de                                       ; $46e2: $19
	nop                                              ; $46e3: $00
	ld e, $20                                        ; $46e4: $1e $20
	cp [hl]                                          ; $46e6: $be

jr_034_46e7:
	inc h                                            ; $46e7: $24
	jr @+$27                                         ; $46e8: $18 $25

	jr jr_034_46e7                                   ; $46ea: $18 $fb

	inc h                                            ; $46ec: $24
	ld b, $25                                        ; $46ed: $06 $25
	ld b, $fb                                        ; $46ef: $06 $fb
	ld b, $22                                        ; $46f1: $06 $22
	inc c                                            ; $46f3: $0c
	inc h                                            ; $46f4: $24
	inc c                                            ; $46f5: $0c
	dec h                                            ; $46f6: $25
	inc h                                            ; $46f7: $24
	call nz, $0c25                                   ; $46f8: $c4 $25 $0c
	rr c                                             ; $46fb: $cb $19
	inc h                                            ; $46fd: $24
	jp nz, $0c19                                     ; $46fe: $c2 $19 $0c

	rst $38                                          ; $4701: $ff
	or h                                             ; $4702: $b4
	cp [hl]                                          ; $4703: $be
	ld hl, $7e18                                     ; $4704: $21 $18 $7e
	dec e                                            ; $4707: $1d
	nop                                              ; $4708: $00
	and e                                            ; $4709: $a3
	ld h, d                                          ; $470a: $62
	dec c                                            ; $470b: $0d
	ld h, b                                          ; $470c: $60
	rrca                                             ; $470d: $0f
	jr nc, @+$12                                     ; $470e: $30 $10

	jr jr_034_4723                                   ; $4710: $18 $11

	inc c                                            ; $4712: $0c
	ld [de], a                                       ; $4713: $12
	inc c                                            ; $4714: $0c
	dec c                                            ; $4715: $0d
	jr nc, jr_034_4719                               ; $4716: $30 $01

	inc h                                            ; $4718: $24

jr_034_4719:
	add $01                                          ; $4719: $c6 $01
	inc c                                            ; $471b: $0c
	rst $38                                          ; $471c: $ff
	ret nc                                           ; $471d: $d0

	cp [hl]                                          ; $471e: $be
	jr nz, jr_034_4739                               ; $471f: $20 $18

	jr nz, jr_034_472f                               ; $4721: $20 $0c

jr_034_4723:
	jr nz, @+$0e                                     ; $4723: $20 $0c

	jr nz, @+$1a                                     ; $4725: $20 $18

	jr nz, jr_034_4741                               ; $4727: $20 $18

	cp [hl]                                          ; $4729: $be
	ld b, $23                                        ; $472a: $06 $23
	ld [hl+], a                                      ; $472c: $22
	ld [hl+], a                                      ; $472d: $22
	ld [hl+], a                                      ; $472e: $22

jr_034_472f:
	ld hl, $be21                                     ; $472f: $21 $21 $be
	ei                                               ; $4732: $fb
	jr nz, jr_034_473b                               ; $4733: $20 $06

	ei                                               ; $4735: $fb
	ld b, $1f                                        ; $4736: $06 $1f
	inc c                                            ; $4738: $0c

jr_034_4739:
	rra                                              ; $4739: $1f
	inc c                                            ; $473a: $0c

jr_034_473b:
	jr nz, @+$32                                     ; $473b: $20 $30

	rra                                              ; $473d: $1f
	jr nc, @+$01                                     ; $473e: $30 $ff

	or h                                             ; $4740: $b4

jr_034_4741:
	ld c, [hl]                                       ; $4741: $4e
	add c                                            ; $4742: $81
	ld bc, $1d7e                                     ; $4743: $01 $7e $1d
	inc c                                            ; $4746: $0c
	xor d                                            ; $4747: $aa
	ld [hl+], a                                      ; $4748: $22
	ld h, b                                          ; $4749: $60

jr_034_474a:
	inc h                                            ; $474a: $24
	inc h                                            ; $474b: $24
	ret z                                            ; $474c: $c8

	ld [hl+], a                                      ; $474d: $22
	ld b, $c4                                        ; $474e: $06 $c4
	ld [hl+], a                                      ; $4750: $22
	ld b, $c8                                        ; $4751: $06 $c8
	jr nz, jr_034_475b                               ; $4753: $20 $06

	call nz, $0620                                   ; $4755: $c4 $20 $06
	ret z                                            ; $4758: $c8

	ld e, $06                                        ; $4759: $1e $06

jr_034_475b:
	call nz, $061e                                   ; $475b: $c4 $1e $06
	ret z                                            ; $475e: $c8

	dec e                                            ; $475f: $1d
	ld b, $c4                                        ; $4760: $06 $c4

jr_034_4762:
	dec e                                            ; $4762: $1d
	ld b, $c8                                        ; $4763: $06 $c8
	dec de                                           ; $4765: $1b
	ld b, $c4                                        ; $4766: $06 $c4
	dec de                                           ; $4768: $1b
	ld b, $c8                                        ; $4769: $06 $c8
	ld hl, $c406                                     ; $476b: $21 $06 $c4
	ld hl, $c806                                     ; $476e: $21 $06 $c8
	dec e                                            ; $4771: $1d
	ld b, $c4                                        ; $4772: $06 $c4

jr_034_4774:
	dec e                                            ; $4774: $1d
	ld b, $c8                                        ; $4775: $06 $c8
	dec e                                            ; $4777: $1d
	ld b, $c4                                        ; $4778: $06 $c4
	dec e                                            ; $477a: $1d
	ld b, $c8                                        ; $477b: $06 $c8
	inc h                                            ; $477d: $24
	ld b, $c4                                        ; $477e: $06 $c4

jr_034_4780:
	inc h                                            ; $4780: $24
	ld b, $c8                                        ; $4781: $06 $c8
	inc h                                            ; $4783: $24
	jr jr_034_474a                                   ; $4784: $18 $c4

	inc h                                            ; $4786: $24
	inc c                                            ; $4787: $0c
	ret z                                            ; $4788: $c8

	ld [hl+], a                                      ; $4789: $22
	inc bc                                           ; $478a: $03
	call nz, $0322                                   ; $478b: $c4 $22 $03
	ret z                                            ; $478e: $c8

	inc h                                            ; $478f: $24

jr_034_4790:
	inc bc                                           ; $4790: $03
	call nz, $0324                                   ; $4791: $c4 $24 $03
	ret z                                            ; $4794: $c8

	ld [hl+], a                                      ; $4795: $22
	ld c, b                                          ; $4796: $48
	call nz, $1822                                   ; $4797: $c4 $22 $18
	ret z                                            ; $479a: $c8

	ld [hl+], a                                      ; $479b: $22

jr_034_479c:
	jr jr_034_4762                                   ; $479c: $18 $c4

	ld [hl+], a                                      ; $479e: $22
	inc c                                            ; $479f: $0c
	ret z                                            ; $47a0: $c8

	ld [hl+], a                                      ; $47a1: $22
	inc bc                                           ; $47a2: $03
	call nz, $0322                                   ; $47a3: $c4 $22 $03
	ret z                                            ; $47a6: $c8

	inc h                                            ; $47a7: $24
	inc bc                                           ; $47a8: $03
	call nz, $0324                                   ; $47a9: $c4 $24 $03
	ret z                                            ; $47ac: $c8

	ld [hl+], a                                      ; $47ad: $22
	jr jr_034_4774                                   ; $47ae: $18 $c4

	ld [hl+], a                                      ; $47b0: $22
	inc c                                            ; $47b1: $0c
	ret z                                            ; $47b2: $c8

	ld [hl+], a                                      ; $47b3: $22
	ld b, $c4                                        ; $47b4: $06 $c4
	ld [hl+], a                                      ; $47b6: $22
	ld b, $c8                                        ; $47b7: $06 $c8
	dec de                                           ; $47b9: $1b
	jr jr_034_4780                                   ; $47ba: $18 $c4

	dec de                                           ; $47bc: $1b
	inc c                                            ; $47bd: $0c
	add $27                                          ; $47be: $c6 $27
	inc bc                                           ; $47c0: $03
	jp nz, $0327                                     ; $47c1: $c2 $27 $03

	add $25                                          ; $47c4: $c6 $25
	inc bc                                           ; $47c6: $03
	jp nz, $0325                                     ; $47c7: $c2 $25 $03

	add $27                                          ; $47ca: $c6 $27
	jr jr_034_4790                                   ; $47cc: $18 $c2

	daa                                              ; $47ce: $27
	inc c                                            ; $47cf: $0c
	ret z                                            ; $47d0: $c8

	inc h                                            ; $47d1: $24
	ld b, $c4                                        ; $47d2: $06 $c4
	inc h                                            ; $47d4: $24
	ld b, $c6                                        ; $47d5: $06 $c6
	dec e                                            ; $47d7: $1d
	jr jr_034_479c                                   ; $47d8: $18 $c2

	dec e                                            ; $47da: $1d
	inc c                                            ; $47db: $0c
	pop de                                           ; $47dc: $d1
	ret z                                            ; $47dd: $c8

	ld [hl+], a                                      ; $47de: $22
	inc b                                            ; $47df: $04
	ret z                                            ; $47e0: $c8

	jr nz, jr_034_47e7                               ; $47e1: $20 $04

	add $1f                                          ; $47e3: $c6 $1f
	inc b                                            ; $47e5: $04
	ret z                                            ; $47e6: $c8

jr_034_47e7:
	dec e                                            ; $47e7: $1d
	inc h                                            ; $47e8: $24
	add $22                                          ; $47e9: $c6 $22
	inc b                                            ; $47eb: $04
	ret z                                            ; $47ec: $c8

	jr nz, jr_034_47f3                               ; $47ed: $20 $04

	add $1f                                          ; $47ef: $c6 $1f
	inc b                                            ; $47f1: $04
	ret z                                            ; $47f2: $c8

jr_034_47f3:
	dec e                                            ; $47f3: $1d
	inc h                                            ; $47f4: $24
	jp $042e                                         ; $47f5: $c3 $2e $04


	push bc                                          ; $47f8: $c5
	inc l                                            ; $47f9: $2c
	inc b                                            ; $47fa: $04
	jp $042b                                         ; $47fb: $c3 $2b $04


	add $29                                          ; $47fe: $c6 $29
	jr nc, @-$6d                                     ; $4800: $30 $91

	ei                                               ; $4802: $fb
	call z, $00d2                                    ; $4803: $cc $d2 $00
	inc c                                            ; $4806: $0c
	add hl, de                                       ; $4807: $19
	ld b, $c4                                        ; $4808: $06 $c4
	add hl, de                                       ; $480a: $19
	ld b, $fb                                        ; $480b: $06 $fb
	ld [bc], a                                       ; $480d: $02
	ei                                               ; $480e: $fb
	nop                                              ; $480f: $00
	inc c                                            ; $4810: $0c
	call z, $1dd2                                    ; $4811: $cc $d2 $1d
	ld b, $c4                                        ; $4814: $06 $c4
	dec e                                            ; $4816: $1d
	ld b, $fb                                        ; $4817: $06 $fb
	inc b                                            ; $4819: $04
	ei                                               ; $481a: $fb
	nop                                              ; $481b: $00
	inc c                                            ; $481c: $0c
	call z, $1bd2                                    ; $481d: $cc $d2 $1b
	ld b, $c4                                        ; $4820: $06 $c4
	dec de                                           ; $4822: $1b
	ld b, $fb                                        ; $4823: $06 $fb
	ld [bc], a                                       ; $4825: $02
	ei                                               ; $4826: $fb
	ret                                              ; $4827: $c9


	pop de                                           ; $4828: $d1
	nop                                              ; $4829: $00

Jump_034_482a:
	inc c                                            ; $482a: $0c
	ld [hl+], a                                      ; $482b: $22
	ld b, $c4                                        ; $482c: $06 $c4
	ld [hl+], a                                      ; $482e: $22
	ld b, $fb                                        ; $482f: $06 $fb
	ld [bc], a                                       ; $4831: $02
	ei                                               ; $4832: $fb
	nop                                              ; $4833: $00
	inc c                                            ; $4834: $0c
	jp z, $20d2                                      ; $4835: $ca $d2 $20

	ld b, $c4                                        ; $4838: $06 $c4
	jr nz, jr_034_4842                               ; $483a: $20 $06

	ei                                               ; $483c: $fb
	ld [bc], a                                       ; $483d: $02
	pop de                                           ; $483e: $d1
	add $24                                          ; $483f: $c6 $24
	inc b                                            ; $4841: $04

jr_034_4842:
	jp nz, $0424                                     ; $4842: $c2 $24 $04

	add $23                                          ; $4845: $c6 $23
	inc b                                            ; $4847: $04
	jp $0424                                         ; $4848: $c3 $24 $04


	add $24                                          ; $484b: $c6 $24
	inc b                                            ; $484d: $04
	jp $0423                                         ; $484e: $c3 $23 $04


	add $25                                          ; $4851: $c6 $25
	inc b                                            ; $4853: $04
	jp $0424                                         ; $4854: $c3 $24 $04


	add $27                                          ; $4857: $c6 $27
	inc b                                            ; $4859: $04
	jp nz, $0425                                     ; $485a: $c2 $25 $04

	add $29                                          ; $485d: $c6 $29
	inc b                                            ; $485f: $04
	jp $0427                                         ; $4860: $c3 $27 $04


	push bc                                          ; $4863: $c5

jr_034_4864:
	ld a, [hl]                                       ; $4864: $7e
	dec e                                            ; $4865: $1d
	nop                                              ; $4866: $00
	xor c                                            ; $4867: $a9
	ld a, [hl+]                                      ; $4868: $2a
	inc c                                            ; $4869: $0c
	jp $0c2a                                         ; $486a: $c3 $2a $0c


	push bc                                          ; $486d: $c5
	add hl, hl                                       ; $486e: $29
	inc c                                            ; $486f: $0c
	jp $0c29                                         ; $4870: $c3 $29 $0c


	ld a, [hl]                                       ; $4873: $7e
	nop                                              ; $4874: $00
	and b                                            ; $4875: $a0
	sub c                                            ; $4876: $91
	jp nc, Jump_034_7ec8                             ; $4877: $d2 $c8 $7e

	dec e                                            ; $487a: $1d
	inc c                                            ; $487b: $0c
	xor c                                            ; $487c: $a9
	add hl, hl                                       ; $487d: $29
	jr jr_034_48fe                                   ; $487e: $18 $7e

	dec e                                            ; $4880: $1d
	nop                                              ; $4881: $00
	and b                                            ; $4882: $a0
	call nz, $1829                                   ; $4883: $c4 $29 $18
	ld a, [hl]                                       ; $4886: $7e
	dec e                                            ; $4887: $1d
	inc c                                            ; $4888: $0c
	xor c                                            ; $4889: $a9
	rst JumpTable                                          ; $488a: $c7
	ld a, [hl+]                                      ; $488b: $2a
	jr @-$36                                         ; $488c: $18 $c8

	add hl, hl                                       ; $488e: $29
	jr jr_034_4864                                   ; $488f: $18 $d3

	ret z                                            ; $4891: $c8

	ld a, [hl]                                       ; $4892: $7e
	dec e                                            ; $4893: $1d
	inc c                                            ; $4894: $0c
	xor c                                            ; $4895: $a9
	add hl, hl                                       ; $4896: $29
	jr jr_034_4917                                   ; $4897: $18 $7e

	dec e                                            ; $4899: $1d
	nop                                              ; $489a: $00
	and b                                            ; $489b: $a0
	call nz, $0c29                                   ; $489c: $c4 $29 $0c
	ret z                                            ; $489f: $c8

	ld a, [hl]                                       ; $48a0: $7e
	nop                                              ; $48a1: $00
	daa                                              ; $48a2: $27
	ld b, $26                                        ; $48a3: $06 $26
	ld b, $7e                                        ; $48a5: $06 $7e
	dec e                                            ; $48a7: $1d
	inc c                                            ; $48a8: $0c
	xor c                                            ; $48a9: $a9
	ret z                                            ; $48aa: $c8

	daa                                              ; $48ab: $27
	jr jr_034_492c                                   ; $48ac: $18 $7e

	dec e                                            ; $48ae: $1d
	nop                                              ; $48af: $00
	and b                                            ; $48b0: $a0
	call nz, $1827                                   ; $48b1: $c4 $27 $18
	jp nc, $1d7e                                     ; $48b4: $d2 $7e $1d

	inc c                                            ; $48b7: $0c
	xor c                                            ; $48b8: $a9
	ret z                                            ; $48b9: $c8

	dec h                                            ; $48ba: $25
	jr jr_034_493b                                   ; $48bb: $18 $7e

	dec e                                            ; $48bd: $1d
	nop                                              ; $48be: $00
	xor c                                            ; $48bf: $a9
	call nz, $1825                                   ; $48c0: $c4 $25 $18
	ld a, [hl]                                       ; $48c3: $7e
	dec e                                            ; $48c4: $1d
	inc c                                            ; $48c5: $0c
	xor c                                            ; $48c6: $a9
	ret z                                            ; $48c7: $c8

	jr nz, @+$0e                                     ; $48c8: $20 $0c

	ld a, [hl]                                       ; $48ca: $7e
	dec e                                            ; $48cb: $1d
	nop                                              ; $48cc: $00
	xor c                                            ; $48cd: $a9
	call nz, $0c20                                   ; $48ce: $c4 $20 $0c
	ld a, [hl]                                       ; $48d1: $7e
	dec e                                            ; $48d2: $1d
	inc c                                            ; $48d3: $0c
	xor c                                            ; $48d4: $a9
	jp z, $0c24                                      ; $48d5: $ca $24 $0c

	ld a, [hl]                                       ; $48d8: $7e
	dec e                                            ; $48d9: $1d
	nop                                              ; $48da: $00
	xor c                                            ; $48db: $a9
	call nz, $0c24                                   ; $48dc: $c4 $24 $0c
	jp z, $16d1                                      ; $48df: $ca $d1 $16

	ld b, $c2                                        ; $48e2: $06 $c2
	ld d, $0c                                        ; $48e4: $16 $0c
	nop                                              ; $48e6: $00
	ld e, $7e                                        ; $48e7: $1e $7e
	nop                                              ; $48e9: $00
	and b                                            ; $48ea: $a0
	ret                                              ; $48eb: $c9


	jp nc, $06be                                     ; $48ec: $d2 $be $06

	dec e                                            ; $48ef: $1d
	rra                                              ; $48f0: $1f
	ld hl, $2422                                     ; $48f1: $21 $22 $24
	ld h, $27                                        ; $48f4: $26 $27
	add hl, hl                                       ; $48f6: $29
	cp [hl]                                          ; $48f7: $be
	sub d                                            ; $48f8: $92
	pop de                                           ; $48f9: $d1
	jp nz, $1d7e                                     ; $48fa: $c2 $7e $1d

	nop                                              ; $48fd: $00

jr_034_48fe:
	and b                                            ; $48fe: $a0
	nop                                              ; $48ff: $00
	ld [$122a], sp                                   ; $4900: $08 $2a $12
	ld a, [hl+]                                      ; $4903: $2a
	inc c                                            ; $4904: $0c
	daa                                              ; $4905: $27
	ld [$0427], sp                                   ; $4906: $08 $27 $04
	dec h                                            ; $4909: $25
	ld b, $24                                        ; $490a: $06 $24
	db $10                                           ; $490c: $10
	ld a, [hl]                                       ; $490d: $7e
	nop                                              ; $490e: $00
	and b                                            ; $490f: $a0
	ret z                                            ; $4910: $c8

	sub c                                            ; $4911: $91
	inc h                                            ; $4912: $24
	ld [$0825], sp                                   ; $4913: $08 $25 $08
	daa                                              ; $4916: $27

jr_034_4917:
	ld [$7ec7], sp                                   ; $4917: $08 $c7 $7e
	dec e                                            ; $491a: $1d
	inc c                                            ; $491b: $0c
	and b                                            ; $491c: $a0
	inc h                                            ; $491d: $24
	ld a, [de]                                       ; $491e: $1a
	jp $0c24                                         ; $491f: $c3 $24 $0c


	jp nz, $0a24                                     ; $4922: $c2 $24 $0a

	ret                                              ; $4925: $c9


	ld a, [hl]                                       ; $4926: $7e
	dec e                                            ; $4927: $1d
	inc c                                            ; $4928: $0c
	and b                                            ; $4929: $a0
	dec e                                            ; $492a: $1d
	db $10                                           ; $492b: $10

jr_034_492c:
	ld a, [hl]                                       ; $492c: $7e
	dec e                                            ; $492d: $1d
	nop                                              ; $492e: $00
	and b                                            ; $492f: $a0
	jp nz, $081d                                     ; $4930: $c2 $1d $08

	ret                                              ; $4933: $c9


	ld a, [hl]                                       ; $4934: $7e
	dec e                                            ; $4935: $1d
	inc c                                            ; $4936: $0c
	and b                                            ; $4937: $a0
	dec de                                           ; $4938: $1b
	db $10                                           ; $4939: $10
	ld a, [hl]                                       ; $493a: $7e

jr_034_493b:
	dec e                                            ; $493b: $1d
	nop                                              ; $493c: $00
	and b                                            ; $493d: $a0
	jp nz, $081b                                     ; $493e: $c2 $1b $08

	add $7e                                          ; $4941: $c6 $7e
	dec e                                            ; $4943: $1d
	inc c                                            ; $4944: $0c
	and b                                            ; $4945: $a0
	ld e, $12                                        ; $4946: $1e $12
	ld a, [hl]                                       ; $4948: $7e
	dec e                                            ; $4949: $1d
	nop                                              ; $494a: $00
	and b                                            ; $494b: $a0
	jp nz, $061e                                     ; $494c: $c2 $1e $06

	add $7e                                          ; $494f: $c6 $7e
	dec e                                            ; $4951: $1d
	inc c                                            ; $4952: $0c
	and b                                            ; $4953: $a0
	ld [hl+], a                                      ; $4954: $22
	ld [de], a                                       ; $4955: $12
	ld a, [hl]                                       ; $4956: $7e
	dec e                                            ; $4957: $1d
	nop                                              ; $4958: $00
	and b                                            ; $4959: $a0
	jp nz, $0622                                     ; $495a: $c2 $22 $06

	add $7e                                          ; $495d: $c6 $7e
	dec e                                            ; $495f: $1d
	inc c                                            ; $4960: $0c
	and b                                            ; $4961: $a0
	jr nz, @+$0a                                     ; $4962: $20 $08

	ld a, [hl]                                       ; $4964: $7e
	dec e                                            ; $4965: $1d
	nop                                              ; $4966: $00
	and b                                            ; $4967: $a0
	jp nz, $0420                                     ; $4968: $c2 $20 $04

	add $7e                                          ; $496b: $c6 $7e
	dec e                                            ; $496d: $1d
	inc c                                            ; $496e: $0c
	and b                                            ; $496f: $a0
	ld e, $08                                        ; $4970: $1e $08
	ld a, [hl]                                       ; $4972: $7e
	dec e                                            ; $4973: $1d
	nop                                              ; $4974: $00
	and b                                            ; $4975: $a0
	jp nz, $041e                                     ; $4976: $c2 $1e $04

	add $7e                                          ; $4979: $c6 $7e
	dec e                                            ; $497b: $1d
	inc c                                            ; $497c: $0c
	and b                                            ; $497d: $a0
	dec e                                            ; $497e: $1d
	ld [$1d7e], sp                                   ; $497f: $08 $7e $1d
	nop                                              ; $4982: $00
	and b                                            ; $4983: $a0
	jp nz, $041d                                     ; $4984: $c2 $1d $04

	add $7e                                          ; $4987: $c6 $7e
	dec e                                            ; $4989: $1d
	inc c                                            ; $498a: $0c
	and b                                            ; $498b: $a0
	dec de                                           ; $498c: $1b
	ld [$1d7e], sp                                   ; $498d: $08 $7e $1d
	nop                                              ; $4990: $00
	and b                                            ; $4991: $a0
	jp nz, $041b                                     ; $4992: $c2 $1b $04

	add $7e                                          ; $4995: $c6 $7e
	dec e                                            ; $4997: $1d
	inc c                                            ; $4998: $0c
	xor c                                            ; $4999: $a9
	jr nz, jr_034_49c0                               ; $499a: $20 $24

	ld a, [hl]                                       ; $499c: $7e
	dec e                                            ; $499d: $1d
	nop                                              ; $499e: $00
	and b                                            ; $499f: $a0
	jp nz, $0c20                                     ; $49a0: $c2 $20 $0c

	add $7e                                          ; $49a3: $c6 $7e
	dec e                                            ; $49a5: $1d
	inc c                                            ; $49a6: $0c
	xor c                                            ; $49a7: $a9
	ld e, $0c                                        ; $49a8: $1e $0c
	ld a, [hl]                                       ; $49aa: $7e
	dec e                                            ; $49ab: $1d
	nop                                              ; $49ac: $00
	and b                                            ; $49ad: $a0
	jp nz, $0c1e                                     ; $49ae: $c2 $1e $0c

	add $7e                                          ; $49b1: $c6 $7e
	dec e                                            ; $49b3: $1d
	inc c                                            ; $49b4: $0c
	xor c                                            ; $49b5: $a9
	dec e                                            ; $49b6: $1d
	inc c                                            ; $49b7: $0c
	ld a, [hl]                                       ; $49b8: $7e
	dec e                                            ; $49b9: $1d
	nop                                              ; $49ba: $00
	and b                                            ; $49bb: $a0
	jp nz, $0c1d                                     ; $49bc: $c2 $1d $0c

	sub c                                            ; $49bf: $91

jr_034_49c0:
	pop de                                           ; $49c0: $d1
	jp z, $007e                                      ; $49c1: $ca $7e $00

	and b                                            ; $49c4: $a0
	ld [hl+], a                                      ; $49c5: $22
	ld b, $c4                                        ; $49c6: $06 $c4
	ld [hl+], a                                      ; $49c8: $22
	ld b, $c2                                        ; $49c9: $06 $c2
	ld [hl+], a                                      ; $49cb: $22
	inc c                                            ; $49cc: $0c
	jp z, $0622                                      ; $49cd: $ca $22 $06

	call nz, $0622                                   ; $49d0: $c4 $22 $06
	jp nz, $0c22                                     ; $49d3: $c2 $22 $0c

	rst JumpTable                                          ; $49d6: $c7
	daa                                              ; $49d7: $27
	ld b, $c2                                        ; $49d8: $06 $c2
	daa                                              ; $49da: $27
	ld b, $c2                                        ; $49db: $06 $c2
	daa                                              ; $49dd: $27
	inc c                                            ; $49de: $0c
	jp z, $0625                                      ; $49df: $ca $25 $06

	call nz, $0625                                   ; $49e2: $c4 $25 $06
	jp nz, $0c25                                     ; $49e5: $c2 $25 $0c

	ret                                              ; $49e8: $c9


	inc h                                            ; $49e9: $24
	ld b, $c4                                        ; $49ea: $06 $c4
	inc h                                            ; $49ec: $24
	ld b, $c2                                        ; $49ed: $06 $c2
	inc h                                            ; $49ef: $24
	inc c                                            ; $49f0: $0c
	ret                                              ; $49f1: $c9


	ld hl, $c406                                     ; $49f2: $21 $06 $c4
	ld hl, $c206                                     ; $49f5: $21 $06 $c2
	ld hl, $ca0c                                     ; $49f8: $21 $0c $ca
	dec h                                            ; $49fb: $25
	ld b, $c4                                        ; $49fc: $06 $c4
	dec h                                            ; $49fe: $25
	ld b, $c2                                        ; $49ff: $06 $c2
	dec h                                            ; $4a01: $25
	inc c                                            ; $4a02: $0c
	rst JumpTable                                          ; $4a03: $c7
	add hl, hl                                       ; $4a04: $29
	ld b, $c3                                        ; $4a05: $06 $c3
	add hl, hl                                       ; $4a07: $29
	ld b, $c2                                        ; $4a08: $06 $c2
	add hl, hl                                       ; $4a0a: $29
	inc c                                            ; $4a0b: $0c
	jp z, $061e                                      ; $4a0c: $ca $1e $06

	call nz, $061e                                   ; $4a0f: $c4 $1e $06
	jp nz, $0c1e                                     ; $4a12: $c2 $1e $0c

	jp z, $061e                                      ; $4a15: $ca $1e $06

	call nz, $061e                                   ; $4a18: $c4 $1e $06
	jp nz, $0c1e                                     ; $4a1b: $c2 $1e $0c

	jp z, $0620                                      ; $4a1e: $ca $20 $06

	call nz, $0620                                   ; $4a21: $c4 $20 $06
	jp nz, $2420                                     ; $4a24: $c2 $20 $24

	ld a, [hl]                                       ; $4a27: $7e
	dec e                                            ; $4a28: $1d
	inc c                                            ; $4a29: $0c
	xor c                                            ; $4a2a: $a9
	sub a                                            ; $4a2b: $97
	ld a, $7d                                        ; $4a2c: $3e $7d
	ld [bc], a                                       ; $4a2e: $02
	ld [hl+], a                                      ; $4a2f: $22
	jr @+$26                                         ; $4a30: $18 $24

	jr @+$7f                                         ; $4a32: $18 $7d

	nop                                              ; $4a34: $00
	dec h                                            ; $4a35: $25
	jr jr_034_4a5e                                   ; $4a36: $18 $26

	ld [$0827], sp                                   ; $4a38: $08 $27 $08
	add hl, hl                                       ; $4a3b: $29
	ld [$0097], sp                                   ; $4a3c: $08 $97 $00
	pop bc                                           ; $4a3f: $c1
	add hl, hl                                       ; $4a40: $29
	inc c                                            ; $4a41: $0c
	nop                                              ; $4a42: $00
	inc c                                            ; $4a43: $0c
	sub d                                            ; $4a44: $92
	pop de                                           ; $4a45: $d1
	call nz, $032e                                   ; $4a46: $c4 $2e $03
	jp nz, $032e                                     ; $4a49: $c2 $2e $03

	call nz, $0330                                   ; $4a4c: $c4 $30 $03
	jp nz, $032e                                     ; $4a4f: $c2 $2e $03

	call nz, $0331                                   ; $4a52: $c4 $31 $03
	jp nz, $0330                                     ; $4a55: $c2 $30 $03

	call nz, $0336                                   ; $4a58: $c4 $36 $03
	jp nz, $0331                                     ; $4a5b: $c2 $31 $03

jr_034_4a5e:
	call nz, $032e                                   ; $4a5e: $c4 $2e $03
	jp nz, $0336                                     ; $4a61: $c2 $36 $03

	call nz, $0330                                   ; $4a64: $c4 $30 $03
	jp nz, $032e                                     ; $4a67: $c2 $2e $03

	call nz, $0331                                   ; $4a6a: $c4 $31 $03
	jp nz, $0330                                     ; $4a6d: $c2 $30 $03

	call nz, $0336                                   ; $4a70: $c4 $36 $03
	jp nz, $0331                                     ; $4a73: $c2 $31 $03

	call nz, $0330                                   ; $4a76: $c4 $30 $03
	jp nz, $0336                                     ; $4a79: $c2 $36 $03

	call nz, $0331                                   ; $4a7c: $c4 $31 $03
	jp nz, $0330                                     ; $4a7f: $c2 $30 $03

	call nz, $0333                                   ; $4a82: $c4 $33 $03
	jp nz, $0331                                     ; $4a85: $c2 $31 $03

	call nz, $0338                                   ; $4a88: $c4 $38 $03
	jp nz, $0333                                     ; $4a8b: $c2 $33 $03

	call nz, $0330                                   ; $4a8e: $c4 $30 $03
	jp nz, $0338                                     ; $4a91: $c2 $38 $03

	call nz, $0331                                   ; $4a94: $c4 $31 $03
	jp nz, $0330                                     ; $4a97: $c2 $30 $03

	call nz, $0333                                   ; $4a9a: $c4 $33 $03
	jp nz, $0331                                     ; $4a9d: $c2 $31 $03

	call nz, $0338                                   ; $4aa0: $c4 $38 $03
	jp nz, $0333                                     ; $4aa3: $c2 $33 $03

	call nz, $0330                                   ; $4aa6: $c4 $30 $03
	jp nz, $0330                                     ; $4aa9: $c2 $30 $03

	call nz, $0331                                   ; $4aac: $c4 $31 $03
	jp nz, $0330                                     ; $4aaf: $c2 $30 $03

	call nz, $0333                                   ; $4ab2: $c4 $33 $03
	jp nz, $0331                                     ; $4ab5: $c2 $31 $03

	call nz, $0338                                   ; $4ab8: $c4 $38 $03
	jp nz, $0333                                     ; $4abb: $c2 $33 $03

	call nz, $0330                                   ; $4abe: $c4 $30 $03
	jp nz, $0338                                     ; $4ac1: $c2 $38 $03

	call nz, $0331                                   ; $4ac4: $c4 $31 $03
	jp nz, $0330                                     ; $4ac7: $c2 $30 $03

	call nz, $0333                                   ; $4aca: $c4 $33 $03
	jp nz, $0331                                     ; $4acd: $c2 $31 $03

	call nz, $0338                                   ; $4ad0: $c4 $38 $03
	jp nz, $0333                                     ; $4ad3: $c2 $33 $03

	call nz, $0331                                   ; $4ad6: $c4 $31 $03
	jp nz, $0338                                     ; $4ad9: $c2 $38 $03

	call nz, $0333                                   ; $4adc: $c4 $33 $03
	jp nz, $0331                                     ; $4adf: $c2 $31 $03

	call nz, $0335                                   ; $4ae2: $c4 $35 $03
	jp nz, $0333                                     ; $4ae5: $c2 $33 $03

	call nz, $033a                                   ; $4ae8: $c4 $3a $03
	jp nz, $0335                                     ; $4aeb: $c2 $35 $03

	call nz, $0331                                   ; $4aee: $c4 $31 $03
	jp nz, $033a                                     ; $4af1: $c2 $3a $03

	call nz, $0333                                   ; $4af4: $c4 $33 $03
	jp nz, $0331                                     ; $4af7: $c2 $31 $03

	call nz, $0335                                   ; $4afa: $c4 $35 $03
	jp nz, $0333                                     ; $4afd: $c2 $33 $03

	call nz, $033a                                   ; $4b00: $c4 $3a $03
	jp nz, $0335                                     ; $4b03: $c2 $35 $03

	jp $1d7e                                         ; $4b06: $c3 $7e $1d


	inc c                                            ; $4b09: $0c
	xor c                                            ; $4b0a: $a9
	ld a, [hl+]                                      ; $4b0b: $2a
	ld [de], a                                       ; $4b0c: $12
	ld a, [hl]                                       ; $4b0d: $7e
	dec e                                            ; $4b0e: $1d
	nop                                              ; $4b0f: $00
	and b                                            ; $4b10: $a0
	pop bc                                           ; $4b11: $c1
	ld a, [hl+]                                      ; $4b12: $2a
	ld b, $c3                                        ; $4b13: $06 $c3
	ld a, [hl]                                       ; $4b15: $7e
	dec e                                            ; $4b16: $1d
	inc c                                            ; $4b17: $0c
	xor c                                            ; $4b18: $a9
	ld l, $12                                        ; $4b19: $2e $12
	ld a, [hl]                                       ; $4b1b: $7e
	dec e                                            ; $4b1c: $1d
	nop                                              ; $4b1d: $00
	and b                                            ; $4b1e: $a0
	pop bc                                           ; $4b1f: $c1
	ld l, $06                                        ; $4b20: $2e $06
	jp $1d7e                                         ; $4b22: $c3 $7e $1d


	inc c                                            ; $4b25: $0c
	xor c                                            ; $4b26: $a9
	inc l                                            ; $4b27: $2c
	ld [$1d7e], sp                                   ; $4b28: $08 $7e $1d
	nop                                              ; $4b2b: $00
	and b                                            ; $4b2c: $a0
	pop bc                                           ; $4b2d: $c1
	inc l                                            ; $4b2e: $2c
	inc b                                            ; $4b2f: $04
	jp $1d7e                                         ; $4b30: $c3 $7e $1d


	inc c                                            ; $4b33: $0c
	xor c                                            ; $4b34: $a9
	ld a, [hl+]                                      ; $4b35: $2a
	ld [$1d7e], sp                                   ; $4b36: $08 $7e $1d
	nop                                              ; $4b39: $00
	and b                                            ; $4b3a: $a0
	pop bc                                           ; $4b3b: $c1
	ld a, [hl+]                                      ; $4b3c: $2a
	inc b                                            ; $4b3d: $04
	jp $1d7e                                         ; $4b3e: $c3 $7e $1d


	inc c                                            ; $4b41: $0c
	xor c                                            ; $4b42: $a9
	add hl, hl                                       ; $4b43: $29
	ld [$1d7e], sp                                   ; $4b44: $08 $7e $1d
	nop                                              ; $4b47: $00
	and b                                            ; $4b48: $a0
	pop bc                                           ; $4b49: $c1
	add hl, hl                                       ; $4b4a: $29
	inc b                                            ; $4b4b: $04
	jp $1d7e                                         ; $4b4c: $c3 $7e $1d


	inc c                                            ; $4b4f: $0c
	xor c                                            ; $4b50: $a9
	daa                                              ; $4b51: $27
	ld [$1d7e], sp                                   ; $4b52: $08 $7e $1d
	nop                                              ; $4b55: $00
	and b                                            ; $4b56: $a0
	pop bc                                           ; $4b57: $c1
	daa                                              ; $4b58: $27
	inc b                                            ; $4b59: $04
	ld a, [hl]                                       ; $4b5a: $7e
	nop                                              ; $4b5b: $00
	and b                                            ; $4b5c: $a0
	call nz, $0620                                   ; $4b5d: $c4 $20 $06
	jp nz, $0620                                     ; $4b60: $c2 $20 $06

	push bc                                          ; $4b63: $c5
	jr nz, @+$08                                     ; $4b64: $20 $06

	jp $0620                                         ; $4b66: $c3 $20 $06


	add $20                                          ; $4b69: $c6 $20
	ld b, $c3                                        ; $4b6b: $06 $c3
	jr nz, jr_034_4b75                               ; $4b6d: $20 $06

	add $20                                          ; $4b6f: $c6 $20
	ld b, $c3                                        ; $4b71: $06 $c3
	jr nz, @+$08                                     ; $4b73: $20 $06

jr_034_4b75:
	ret z                                            ; $4b75: $c8

	inc h                                            ; $4b76: $24
	ld b, $c4                                        ; $4b77: $06 $c4
	inc h                                            ; $4b79: $24
	ld b, $c9                                        ; $4b7a: $06 $c9
	inc h                                            ; $4b7c: $24
	ld b, $c4                                        ; $4b7d: $06 $c4
	inc h                                            ; $4b7f: $24
	ld b, $ca                                        ; $4b80: $06 $ca
	inc h                                            ; $4b82: $24
	ld b, $c4                                        ; $4b83: $06 $c4
	inc h                                            ; $4b85: $24
	ld b, $cb                                        ; $4b86: $06 $cb
	inc h                                            ; $4b88: $24
	ld b, $c4                                        ; $4b89: $06 $c4
	inc h                                            ; $4b8b: $24
	ld b, $91                                        ; $4b8c: $06 $91
	pop de                                           ; $4b8e: $d1
	jp z, $007e                                      ; $4b8f: $ca $7e $00

	and b                                            ; $4b92: $a0
	ld [hl+], a                                      ; $4b93: $22
	ld b, $c4                                        ; $4b94: $06 $c4
	ld [hl+], a                                      ; $4b96: $22
	ld b, $c2                                        ; $4b97: $06 $c2
	ld [hl+], a                                      ; $4b99: $22
	inc c                                            ; $4b9a: $0c
	jp z, $0622                                      ; $4b9b: $ca $22 $06

	call nz, $0622                                   ; $4b9e: $c4 $22 $06
	jp nz, $0c22                                     ; $4ba1: $c2 $22 $0c

	rst JumpTable                                          ; $4ba4: $c7
	daa                                              ; $4ba5: $27
	ld b, $c2                                        ; $4ba6: $06 $c2
	daa                                              ; $4ba8: $27
	ld b, $c1                                        ; $4ba9: $06 $c1
	daa                                              ; $4bab: $27
	inc c                                            ; $4bac: $0c
	jp z, $0625                                      ; $4bad: $ca $25 $06

	call nz, $0625                                   ; $4bb0: $c4 $25 $06
	jp nz, $0c25                                     ; $4bb3: $c2 $25 $0c

	jp z, $0624                                      ; $4bb6: $ca $24 $06

	call nz, $0624                                   ; $4bb9: $c4 $24 $06
	jp nz, $0c24                                     ; $4bbc: $c2 $24 $0c

	ret                                              ; $4bbf: $c9


	ld hl, $c406                                     ; $4bc0: $21 $06 $c4
	ld hl, $c206                                     ; $4bc3: $21 $06 $c2
	ld hl, $ca0c                                     ; $4bc6: $21 $0c $ca
	dec h                                            ; $4bc9: $25
	ld b, $c4                                        ; $4bca: $06 $c4
	dec h                                            ; $4bcc: $25
	ld b, $c2                                        ; $4bcd: $06 $c2
	dec h                                            ; $4bcf: $25
	inc c                                            ; $4bd0: $0c
	rst JumpTable                                          ; $4bd1: $c7
	add hl, hl                                       ; $4bd2: $29
	ld b, $c4                                        ; $4bd3: $06 $c4
	add hl, hl                                       ; $4bd5: $29
	ld b, $c2                                        ; $4bd6: $06 $c2
	add hl, hl                                       ; $4bd8: $29
	inc c                                            ; $4bd9: $0c
	jp z, $061e                                      ; $4bda: $ca $1e $06

	call nz, $061e                                   ; $4bdd: $c4 $1e $06
	jp nz, $0c1e                                     ; $4be0: $c2 $1e $0c

	jp z, $061e                                      ; $4be3: $ca $1e $06

	call nz, $061e                                   ; $4be6: $c4 $1e $06
	jp nz, $0c1e                                     ; $4be9: $c2 $1e $0c

	jp z, $0620                                      ; $4bec: $ca $20 $06

	call nz, $0620                                   ; $4bef: $c4 $20 $06
	jp nz, $2420                                     ; $4bf2: $c2 $20 $24

	sub d                                            ; $4bf5: $92
	ld a, l                                          ; $4bf6: $7d
	ld [bc], a                                       ; $4bf7: $02
	jp nc, $00c6                                     ; $4bf8: $d2 $c6 $00

	ld [bc], a                                       ; $4bfb: $02
	inc h                                            ; $4bfc: $24
	inc c                                            ; $4bfd: $0c
	dec h                                            ; $4bfe: $25
	inc bc                                           ; $4bff: $03
	inc h                                            ; $4c00: $24
	inc bc                                           ; $4c01: $03
	ld a, [hl]                                       ; $4c02: $7e
	dec e                                            ; $4c03: $1d
	inc c                                            ; $4c04: $0c
	and b                                            ; $4c05: $a0
	ld [hl+], a                                      ; $4c06: $22
	jr nc, jr_034_4c87                               ; $4c07: $30 $7e

	dec e                                            ; $4c09: $1d
	nop                                              ; $4c0a: $00
	and b                                            ; $4c0b: $a0
	jp nz, $1c22                                     ; $4c0c: $c2 $22 $1c

jr_034_4c0f:
	ld a, l                                          ; $4c0f: $7d
	nop                                              ; $4c10: $00
	or h                                             ; $4c11: $b4
	ld b, [hl]                                       ; $4c12: $46
	ld h, c                                          ; $4c13: $61
	ld [bc], a                                       ; $4c14: $02
	ld a, [hl]                                       ; $4c15: $7e
	nop                                              ; $4c16: $00
	and b                                            ; $4c17: $a0

jr_034_4c18:
	ld d, $0c                                        ; $4c18: $16 $0c
	call nz, $0c16                                   ; $4c1a: $c4 $16 $0c
	ret z                                            ; $4c1d: $c8

	dec e                                            ; $4c1e: $1d
	inc c                                            ; $4c1f: $0c
	call nz, $0c1d                                   ; $4c20: $c4 $1d $0c
	add $15                                          ; $4c23: $c6 $15
	inc c                                            ; $4c25: $0c
	call nz, $0c15                                   ; $4c26: $c4 $15 $0c
	ret z                                            ; $4c29: $c8

	dec e                                            ; $4c2a: $1d
	inc c                                            ; $4c2b: $0c
	call nz, $0c1d                                   ; $4c2c: $c4 $1d $0c
	add $14                                          ; $4c2f: $c6 $14
	inc c                                            ; $4c31: $0c
	call nz, $0c14                                   ; $4c32: $c4 $14 $0c
	ret z                                            ; $4c35: $c8

	dec e                                            ; $4c36: $1d
	inc c                                            ; $4c37: $0c
	call nz, $0c1d                                   ; $4c38: $c4 $1d $0c
	add $13                                          ; $4c3b: $c6 $13
	inc c                                            ; $4c3d: $0c
	call nz, $0c13                                   ; $4c3e: $c4 $13 $0c
	ret z                                            ; $4c41: $c8

	dec de                                           ; $4c42: $1b
	inc c                                            ; $4c43: $0c
	call nz, $0c1b                                   ; $4c44: $c4 $1b $0c

jr_034_4c47:
	pop hl                                           ; $4c47: $e1
	ld b, c                                          ; $4c48: $41
	add c                                            ; $4c49: $81
	ld [de], a                                       ; $4c4a: $12
	jr jr_034_4c0f                                   ; $4c4b: $18 $c2

	ld [de], a                                       ; $4c4d: $12
	inc c                                            ; $4c4e: $0c
	pop bc                                           ; $4c4f: $c1
	ld [de], a                                       ; $4c50: $12
	inc c                                            ; $4c51: $0c
	ret z                                            ; $4c52: $c8

jr_034_4c53:
	inc d                                            ; $4c53: $14
	jr jr_034_4c18                                   ; $4c54: $18 $c2

	inc d                                            ; $4c56: $14
	inc c                                            ; $4c57: $0c
	pop bc                                           ; $4c58: $c1
	inc d                                            ; $4c59: $14
	inc d                                            ; $4c5a: $14
	add $16                                          ; $4c5b: $c6 $16
	jr @-$39                                         ; $4c5d: $18 $c5

	ld d, $18                                        ; $4c5f: $16 $18
	call nz, $1816                                   ; $4c61: $c4 $16 $18
	jp $0c16                                         ; $4c64: $c3 $16 $0c


	jp nz, $0616                                     ; $4c67: $c2 $16 $06

	pop bc                                           ; $4c6a: $c1
	ld d, $12                                        ; $4c6b: $16 $12
	nop                                              ; $4c6d: $00
	inc c                                            ; $4c6e: $0c
	ret nc                                           ; $4c6f: $d0

jr_034_4c70:
	ld c, [hl]                                       ; $4c70: $4e
	rst $38                                          ; $4c71: $ff
	or h                                             ; $4c72: $b4
	ld c, [hl]                                       ; $4c73: $4e
	pop af                                           ; $4c74: $f1
	ld bc, $4f97                                     ; $4c75: $01 $97 $4f
	ld a, [hl]                                       ; $4c78: $7e
	dec e                                            ; $4c79: $1d
	ld [de], a                                       ; $4c7a: $12
	xor d                                            ; $4c7b: $aa
	add hl, hl                                       ; $4c7c: $29
	jr jr_034_4c47                                   ; $4c7d: $18 $c8

	sub a                                            ; $4c7f: $97
	nop                                              ; $4c80: $00
	ld a, [hl]                                       ; $4c81: $7e
	dec e                                            ; $4c82: $1d
	nop                                              ; $4c83: $00
	xor d                                            ; $4c84: $aa
	add hl, hl                                       ; $4c85: $29
	inc h                                            ; $4c86: $24

jr_034_4c87:
	add $29                                          ; $4c87: $c6 $29
	inc c                                            ; $4c89: $0c
	call nz, $0c29                                   ; $4c8a: $c4 $29 $0c
	sub a                                            ; $4c8d: $97
	ld e, a                                          ; $4c8e: $5f
	ld a, [hl]                                       ; $4c8f: $7e
	nop                                              ; $4c90: $00

jr_034_4c91:
	ld a, [hl+]                                      ; $4c91: $2a
	inc c                                            ; $4c92: $0c
	sub a                                            ; $4c93: $97
	ld c, a                                          ; $4c94: $4f
	ld a, [hl]                                       ; $4c95: $7e
	dec e                                            ; $4c96: $1d
	ld [de], a                                       ; $4c97: $12
	xor d                                            ; $4c98: $aa
	daa                                              ; $4c99: $27
	jr @-$67                                         ; $4c9a: $18 $97

	nop                                              ; $4c9c: $00
	ld a, [hl]                                       ; $4c9d: $7e
	dec e                                            ; $4c9e: $1d
	nop                                              ; $4c9f: $00
	xor d                                            ; $4ca0: $aa
	ret z                                            ; $4ca1: $c8

	daa                                              ; $4ca2: $27
	inc h                                            ; $4ca3: $24
	add $27                                          ; $4ca4: $c6 $27
	inc c                                            ; $4ca6: $0c
	call nz, $0c27                                   ; $4ca7: $c4 $27 $0c
	sub a                                            ; $4caa: $97
	ld a, l                                          ; $4cab: $7d
	ld a, [hl]                                       ; $4cac: $7e
	nop                                              ; $4cad: $00

jr_034_4cae:
	and b                                            ; $4cae: $a0
	inc h                                            ; $4caf: $24
	ld b, $25                                        ; $4cb0: $06 $25
	ld b, $97                                        ; $4cb2: $06 $97
	ld c, a                                          ; $4cb4: $4f
	ld a, [hl]                                       ; $4cb5: $7e
	dec e                                            ; $4cb6: $1d
	ld [de], a                                       ; $4cb7: $12
	xor d                                            ; $4cb8: $aa
	daa                                              ; $4cb9: $27
	jr jr_034_4c53                                   ; $4cba: $18 $97

	nop                                              ; $4cbc: $00
	ld a, [hl]                                       ; $4cbd: $7e
	dec e                                            ; $4cbe: $1d
	nop                                              ; $4cbf: $00
	xor d                                            ; $4cc0: $aa
	ret z                                            ; $4cc1: $c8

	daa                                              ; $4cc2: $27
	inc h                                            ; $4cc3: $24
	add $27                                          ; $4cc4: $c6 $27
	inc c                                            ; $4cc6: $0c
	call nz, $0c27                                   ; $4cc7: $c4 $27 $0c
	sub a                                            ; $4cca: $97
	ld e, a                                          ; $4ccb: $5f
	ld a, [hl]                                       ; $4ccc: $7e
	nop                                              ; $4ccd: $00
	add hl, hl                                       ; $4cce: $29
	inc c                                            ; $4ccf: $0c
	sub a                                            ; $4cd0: $97
	ld c, a                                          ; $4cd1: $4f
	ld a, [hl]                                       ; $4cd2: $7e
	dec e                                            ; $4cd3: $1d
	ld [de], a                                       ; $4cd4: $12
	xor d                                            ; $4cd5: $aa
	dec h                                            ; $4cd6: $25
	jr jr_034_4c70                                   ; $4cd7: $18 $97

	nop                                              ; $4cd9: $00
	ret z                                            ; $4cda: $c8

jr_034_4cdb:
	ld a, [hl]                                       ; $4cdb: $7e
	dec e                                            ; $4cdc: $1d
	nop                                              ; $4cdd: $00
	xor d                                            ; $4cde: $aa
	dec h                                            ; $4cdf: $25
	inc h                                            ; $4ce0: $24
	add $25                                          ; $4ce1: $c6 $25
	inc c                                            ; $4ce3: $0c
	call nz, $0c25                                   ; $4ce4: $c4 $25 $0c
	sub a                                            ; $4ce7: $97

jr_034_4ce8:
	ld a, l                                          ; $4ce8: $7d
	ld a, [hl]                                       ; $4ce9: $7e
	dec e                                            ; $4cea: $1d
	ld b, $a0                                        ; $4ceb: $06 $a0
	ld [hl+], a                                      ; $4ced: $22
	ld b, $24                                        ; $4cee: $06 $24
	ld b, $97                                        ; $4cf0: $06 $97
	ld c, a                                          ; $4cf2: $4f
	ld a, [hl]                                       ; $4cf3: $7e
	dec e                                            ; $4cf4: $1d
	ld [de], a                                       ; $4cf5: $12
	xor d                                            ; $4cf6: $aa
	dec h                                            ; $4cf7: $25
	jr jr_034_4c91                                   ; $4cf8: $18 $97

	nop                                              ; $4cfa: $00
	ret z                                            ; $4cfb: $c8

	ld a, [hl]                                       ; $4cfc: $7e
	dec e                                            ; $4cfd: $1d
	nop                                              ; $4cfe: $00
	xor d                                            ; $4cff: $aa
	dec h                                            ; $4d00: $25
	inc h                                            ; $4d01: $24
	add $25                                          ; $4d02: $c6 $25
	inc c                                            ; $4d04: $0c
	call nz, $0c25                                   ; $4d05: $c4 $25 $0c
	sub a                                            ; $4d08: $97
	ld e, a                                          ; $4d09: $5f
	ld a, [hl]                                       ; $4d0a: $7e
	nop                                              ; $4d0b: $00
	daa                                              ; $4d0c: $27
	inc c                                            ; $4d0d: $0c
	sub a                                            ; $4d0e: $97
	ld e, a                                          ; $4d0f: $5f
	ld a, [hl]                                       ; $4d10: $7e
	dec e                                            ; $4d11: $1d
	ld [de], a                                       ; $4d12: $12
	xor d                                            ; $4d13: $aa
	inc h                                            ; $4d14: $24
	jr jr_034_4cae                                   ; $4d15: $18 $97

	nop                                              ; $4d17: $00
	ret z                                            ; $4d18: $c8

	ld a, [hl]                                       ; $4d19: $7e
	dec e                                            ; $4d1a: $1d
	nop                                              ; $4d1b: $00
	xor d                                            ; $4d1c: $aa
	inc h                                            ; $4d1d: $24
	inc h                                            ; $4d1e: $24
	add $24                                          ; $4d1f: $c6 $24
	inc c                                            ; $4d21: $0c
	call nz, $0c24                                   ; $4d22: $c4 $24 $0c
	sub a                                            ; $4d25: $97
	ld e, a                                          ; $4d26: $5f
	ld a, [hl]                                       ; $4d27: $7e
	nop                                              ; $4d28: $00
	jr nz, jr_034_4d37                               ; $4d29: $20 $0c

	sub a                                            ; $4d2b: $97
	ld c, a                                          ; $4d2c: $4f
	ld a, [hl]                                       ; $4d2d: $7e
	dec e                                            ; $4d2e: $1d
	jr jr_034_4cdb                                   ; $4d2f: $18 $aa

	inc h                                            ; $4d31: $24
	inc h                                            ; $4d32: $24
	sub a                                            ; $4d33: $97
	nop                                              ; $4d34: $00
	ret z                                            ; $4d35: $c8

	inc h                                            ; $4d36: $24

jr_034_4d37:
	inc c                                            ; $4d37: $0c
	sub a                                            ; $4d38: $97
	ld c, a                                          ; $4d39: $4f
	ld a, [hl]                                       ; $4d3a: $7e
	dec e                                            ; $4d3b: $1d
	jr jr_034_4ce8                                   ; $4d3c: $18 $aa

	ld [hl+], a                                      ; $4d3e: $22
	inc h                                            ; $4d3f: $24
	ld a, [hl]                                       ; $4d40: $7e
	dec e                                            ; $4d41: $1d
	nop                                              ; $4d42: $00
	xor d                                            ; $4d43: $aa
	sub a                                            ; $4d44: $97
	nop                                              ; $4d45: $00
	jp z, $2422                                      ; $4d46: $ca $22 $24

	ret z                                            ; $4d49: $c8

	ld [hl+], a                                      ; $4d4a: $22
	inc h                                            ; $4d4b: $24
	call nz, $1822                                   ; $4d4c: $c4 $22 $18
	sub d                                            ; $4d4f: $92
	call z, $0622                                    ; $4d50: $cc $22 $06
	inc h                                            ; $4d53: $24
	ld b, $d1                                        ; $4d54: $06 $d1
	sub d                                            ; $4d56: $92
	db $fd                                           ; $4d57: $fd
	pop af                                           ; $4d58: $f1
	ld d, c                                          ; $4d59: $51
	ld a, [hl]                                       ; $4d5a: $7e
	dec e                                            ; $4d5b: $1d
	inc c                                            ; $4d5c: $0c
	xor c                                            ; $4d5d: $a9
	ret z                                            ; $4d5e: $c8

	add hl, hl                                       ; $4d5f: $29
	inc c                                            ; $4d60: $0c
	ld a, [hl]                                       ; $4d61: $7e
	dec e                                            ; $4d62: $1d
	nop                                              ; $4d63: $00
	xor c                                            ; $4d64: $a9
	jp nz, $0429                                     ; $4d65: $c2 $29 $04

	ld a, [hl]                                       ; $4d68: $7e
	dec e                                            ; $4d69: $1d
	inc c                                            ; $4d6a: $0c
	xor c                                            ; $4d6b: $a9
	rst JumpTable                                          ; $4d6c: $c7
	ld a, [hl+]                                      ; $4d6d: $2a
	inc c                                            ; $4d6e: $0c
	ld a, [hl]                                       ; $4d6f: $7e
	dec e                                            ; $4d70: $1d
	nop                                              ; $4d71: $00
	xor c                                            ; $4d72: $a9
	jp nz, $042a                                     ; $4d73: $c2 $2a $04

	ld a, [hl]                                       ; $4d76: $7e
	dec e                                            ; $4d77: $1d
	inc c                                            ; $4d78: $0c
	xor c                                            ; $4d79: $a9
	ret                                              ; $4d7a: $c9


	add hl, hl                                       ; $4d7b: $29
	inc c                                            ; $4d7c: $0c
	ld a, [hl]                                       ; $4d7d: $7e
	dec e                                            ; $4d7e: $1d
	nop                                              ; $4d7f: $00
	xor c                                            ; $4d80: $a9
	jp nz, $0429                                     ; $4d81: $c2 $29 $04

	ld a, [hl]                                       ; $4d84: $7e
	dec e                                            ; $4d85: $1d
	inc c                                            ; $4d86: $0c
	xor c                                            ; $4d87: $a9
	jp z, $1627                                      ; $4d88: $ca $27 $16

	ld a, [hl]                                       ; $4d8b: $7e
	dec e                                            ; $4d8c: $1d
	nop                                              ; $4d8d: $00
	xor c                                            ; $4d8e: $a9
	call nz, $0227                                   ; $4d8f: $c4 $27 $02
	ld a, [hl]                                       ; $4d92: $7e
	dec e                                            ; $4d93: $1d
	inc c                                            ; $4d94: $0c
	xor c                                            ; $4d95: $a9
	sla h                                            ; $4d96: $cb $24
	inc c                                            ; $4d98: $0c
	ld [hl+], a                                      ; $4d99: $22
	ld b, $24                                        ; $4d9a: $06 $24
	ld b, $d1                                        ; $4d9c: $06 $d1
	sub d                                            ; $4d9e: $92
	db $fd                                           ; $4d9f: $fd
	pop af                                           ; $4da0: $f1
	ld d, c                                          ; $4da1: $51
	ld a, [hl]                                       ; $4da2: $7e
	dec e                                            ; $4da3: $1d
	inc c                                            ; $4da4: $0c
	xor c                                            ; $4da5: $a9
	ret                                              ; $4da6: $c9


	add hl, hl                                       ; $4da7: $29
	ld [$1d7e], sp                                   ; $4da8: $08 $7e $1d
	nop                                              ; $4dab: $00
	xor c                                            ; $4dac: $a9
	jp nz, $0829                                     ; $4dad: $c2 $29 $08

	ld a, [hl]                                       ; $4db0: $7e
	dec e                                            ; $4db1: $1d
	inc c                                            ; $4db2: $0c
	xor c                                            ; $4db3: $a9
	rst JumpTable                                          ; $4db4: $c7
	ld a, [hl+]                                      ; $4db5: $2a
	ld [$1d7e], sp                                   ; $4db6: $08 $7e $1d
	nop                                              ; $4db9: $00
	xor c                                            ; $4dba: $a9
	jp nz, $082a                                     ; $4dbb: $c2 $2a $08

	ld a, [hl]                                       ; $4dbe: $7e
	dec e                                            ; $4dbf: $1d
	inc c                                            ; $4dc0: $0c
	xor c                                            ; $4dc1: $a9
	ret                                              ; $4dc2: $c9


	inc l                                            ; $4dc3: $2c
	ld [$1d7e], sp                                   ; $4dc4: $08 $7e $1d
	nop                                              ; $4dc7: $00
	xor c                                            ; $4dc8: $a9
	jp nz, $082c                                     ; $4dc9: $c2 $2c $08

	ld a, [hl]                                       ; $4dcc: $7e
	dec e                                            ; $4dcd: $1d
	inc c                                            ; $4dce: $0c
	xor c                                            ; $4dcf: $a9
	ret z                                            ; $4dd0: $c8

	dec l                                            ; $4dd1: $2d
	ld d, $7e                                        ; $4dd2: $16 $7e
	dec e                                            ; $4dd4: $1d
	nop                                              ; $4dd5: $00
	xor c                                            ; $4dd6: $a9
	call nz, $022d                                   ; $4dd7: $c4 $2d $02
	ld a, [hl]                                       ; $4dda: $7e
	dec e                                            ; $4ddb: $1d
	inc c                                            ; $4ddc: $0c
	xor c                                            ; $4ddd: $a9
	ret z                                            ; $4dde: $c8

	add hl, hl                                       ; $4ddf: $29
	ld d, $7e                                        ; $4de0: $16 $7e
	dec e                                            ; $4de2: $1d
	nop                                              ; $4de3: $00
	xor c                                            ; $4de4: $a9
	jp nz, $0229                                     ; $4de5: $c2 $29 $02

	ld a, [hl]                                       ; $4de8: $7e
	dec e                                            ; $4de9: $1d
	inc c                                            ; $4dea: $0c
	xor c                                            ; $4deb: $a9
	pop de                                           ; $4dec: $d1
	sub d                                            ; $4ded: $92
	rst JumpTable                                          ; $4dee: $c7
	ld a, [hl]                                       ; $4def: $7e
	dec e                                            ; $4df0: $1d
	inc c                                            ; $4df1: $0c
	xor c                                            ; $4df2: $a9
	ld a, [hl+]                                      ; $4df3: $2a
	ld [de], a                                       ; $4df4: $12
	ld a, [hl]                                       ; $4df5: $7e
	dec e                                            ; $4df6: $1d
	nop                                              ; $4df7: $00
	and b                                            ; $4df8: $a0
	jp nz, $0c2a                                     ; $4df9: $c2 $2a $0c

	bit 7, [hl]                                      ; $4dfc: $cb $7e
	dec e                                            ; $4dfe: $1d
	inc c                                            ; $4dff: $0c
	xor c                                            ; $4e00: $a9
	daa                                              ; $4e01: $27
	ld [$007e], sp                                   ; $4e02: $08 $7e $00
	and b                                            ; $4e05: $a0
	add $27                                          ; $4e06: $c6 $27
	inc b                                            ; $4e08: $04
	call z, $1d7e                                    ; $4e09: $cc $7e $1d
	inc c                                            ; $4e0c: $0c
	xor c                                            ; $4e0d: $a9
	dec h                                            ; $4e0e: $25
	ld b, $24                                        ; $4e0f: $06 $24
	inc h                                            ; $4e11: $24
	ld a, [hl]                                       ; $4e12: $7e
	dec e                                            ; $4e13: $1d
	nop                                              ; $4e14: $00
	and b                                            ; $4e15: $a0
	call nz, $0c24                                   ; $4e16: $c4 $24 $0c
	ret z                                            ; $4e19: $c8

	ld a, [hl]                                       ; $4e1a: $7e
	dec e                                            ; $4e1b: $1d
	inc c                                            ; $4e1c: $0c
	xor c                                            ; $4e1d: $a9
	add hl, hl                                       ; $4e1e: $29
	inc d                                            ; $4e1f: $14
	ld a, [hl]                                       ; $4e20: $7e
	dec e                                            ; $4e21: $1d
	nop                                              ; $4e22: $00
	and b                                            ; $4e23: $a0
	jp nz, $0a29                                     ; $4e24: $c2 $29 $0a

	ret                                              ; $4e27: $c9


	ld a, [hl]                                       ; $4e28: $7e
	dec e                                            ; $4e29: $1d
	inc c                                            ; $4e2a: $0c
	xor c                                            ; $4e2b: $a9
	daa                                              ; $4e2c: $27
	ld b, $c8                                        ; $4e2d: $06 $c8
	add hl, hl                                       ; $4e2f: $29
	ld b, $c9                                        ; $4e30: $06 $c9
	inc h                                            ; $4e32: $24
	ld b, $25                                        ; $4e33: $06 $25
	inc h                                            ; $4e35: $24
	ld a, [hl]                                       ; $4e36: $7e
	dec e                                            ; $4e37: $1d
	nop                                              ; $4e38: $00
	and b                                            ; $4e39: $a0
	call nz, $0c25                                   ; $4e3a: $c4 $25 $0c
	call z, $1d7e                                    ; $4e3d: $cc $7e $1d
	inc c                                            ; $4e40: $0c
	xor c                                            ; $4e41: $a9
	ld [hl+], a                                      ; $4e42: $22
	ld [de], a                                       ; $4e43: $12
	ld a, [hl]                                       ; $4e44: $7e
	dec e                                            ; $4e45: $1d
	nop                                              ; $4e46: $00
	and b                                            ; $4e47: $a0
	call nz, $0622                                   ; $4e48: $c4 $22 $06
	bit 7, [hl]                                      ; $4e4b: $cb $7e
	dec e                                            ; $4e4d: $1d
	inc c                                            ; $4e4e: $0c
	xor c                                            ; $4e4f: $a9
	dec h                                            ; $4e50: $25
	ld [de], a                                       ; $4e51: $12
	ld a, [hl]                                       ; $4e52: $7e
	dec e                                            ; $4e53: $1d
	nop                                              ; $4e54: $00
	and b                                            ; $4e55: $a0
	jp $0625                                         ; $4e56: $c3 $25 $06


	call z, $1d7e                                    ; $4e59: $cc $7e $1d
	inc c                                            ; $4e5c: $0c
	xor c                                            ; $4e5d: $a9
	inc h                                            ; $4e5e: $24
	ld [$1d7e], sp                                   ; $4e5f: $08 $7e $1d
	nop                                              ; $4e62: $00
	and b                                            ; $4e63: $a0
	call nz, $0424                                   ; $4e64: $c4 $24 $04
	call z, $1d7e                                    ; $4e67: $cc $7e $1d
	inc c                                            ; $4e6a: $0c
	xor c                                            ; $4e6b: $a9
	ld [hl+], a                                      ; $4e6c: $22
	ld [$1d7e], sp                                   ; $4e6d: $08 $7e $1d
	nop                                              ; $4e70: $00
	and b                                            ; $4e71: $a0
	call nz, $0422                                   ; $4e72: $c4 $22 $04
	call $1d7e                                       ; $4e75: $cd $7e $1d
	inc c                                            ; $4e78: $0c
	xor c                                            ; $4e79: $a9
	jr nz, @+$0a                                     ; $4e7a: $20 $08

	ld a, [hl]                                       ; $4e7c: $7e
	dec e                                            ; $4e7d: $1d
	nop                                              ; $4e7e: $00
	and b                                            ; $4e7f: $a0
	call nz, $0420                                   ; $4e80: $c4 $20 $04
	call $1d7e                                       ; $4e83: $cd $7e $1d
	inc c                                            ; $4e86: $0c
	xor c                                            ; $4e87: $a9
	ld e, $08                                        ; $4e88: $1e $08
	ld a, [hl]                                       ; $4e8a: $7e
	dec e                                            ; $4e8b: $1d
	nop                                              ; $4e8c: $00
	and b                                            ; $4e8d: $a0
	call nz, $041e                                   ; $4e8e: $c4 $1e $04
	call $1d7e                                       ; $4e91: $cd $7e $1d
	inc c                                            ; $4e94: $0c
	xor c                                            ; $4e95: $a9
	dec e                                            ; $4e96: $1d
	inc h                                            ; $4e97: $24
	ld a, [hl]                                       ; $4e98: $7e
	dec e                                            ; $4e99: $1d
	nop                                              ; $4e9a: $00
	and b                                            ; $4e9b: $a0
	call nz, $0c1d                                   ; $4e9c: $c4 $1d $0c
	call $1d7e                                       ; $4e9f: $cd $7e $1d
	inc c                                            ; $4ea2: $0c
	xor c                                            ; $4ea3: $a9
	ld hl, $7e18                                     ; $4ea4: $21 $18 $7e
	dec e                                            ; $4ea7: $1d
	nop                                              ; $4ea8: $00
	and b                                            ; $4ea9: $a0
	call nz, $1821                                   ; $4eaa: $c4 $21 $18
	pop de                                           ; $4ead: $d1
	sub d                                            ; $4eae: $92
	rst JumpTable                                          ; $4eaf: $c7
	ld a, [hl]                                       ; $4eb0: $7e
	dec e                                            ; $4eb1: $1d
	inc c                                            ; $4eb2: $0c
	xor c                                            ; $4eb3: $a9
	ld a, [hl+]                                      ; $4eb4: $2a
	ld [de], a                                       ; $4eb5: $12
	ld a, [hl]                                       ; $4eb6: $7e
	dec e                                            ; $4eb7: $1d
	nop                                              ; $4eb8: $00
	xor c                                            ; $4eb9: $a9
	call nz, $0c2a                                   ; $4eba: $c4 $2a $0c
	jp z, $1d7e                                      ; $4ebd: $ca $7e $1d

	inc c                                            ; $4ec0: $0c
	xor c                                            ; $4ec1: $a9
	daa                                              ; $4ec2: $27
	ld [$1d7e], sp                                   ; $4ec3: $08 $7e $1d
	nop                                              ; $4ec6: $00
	xor c                                            ; $4ec7: $a9
	add $27                                          ; $4ec8: $c6 $27
	inc b                                            ; $4eca: $04
	call z, $1d7e                                    ; $4ecb: $cc $7e $1d
	inc c                                            ; $4ece: $0c
	xor c                                            ; $4ecf: $a9
	dec h                                            ; $4ed0: $25
	ld b, $cc                                        ; $4ed1: $06 $cc
	inc h                                            ; $4ed3: $24
	inc h                                            ; $4ed4: $24
	ld a, [hl]                                       ; $4ed5: $7e
	dec e                                            ; $4ed6: $1d
	nop                                              ; $4ed7: $00
	and b                                            ; $4ed8: $a0
	call nz, $0c24                                   ; $4ed9: $c4 $24 $0c
	ret                                              ; $4edc: $c9


	ld a, [hl]                                       ; $4edd: $7e
	dec e                                            ; $4ede: $1d
	inc c                                            ; $4edf: $0c
	xor d                                            ; $4ee0: $aa
	add hl, hl                                       ; $4ee1: $29
	inc c                                            ; $4ee2: $0c
	ld a, [hl]                                       ; $4ee3: $7e
	dec e                                            ; $4ee4: $1d
	nop                                              ; $4ee5: $00
	and b                                            ; $4ee6: $a0
	call nz, $0629                                   ; $4ee7: $c4 $29 $06
	sub a                                            ; $4eea: $97
	ld l, [hl]                                       ; $4eeb: $6e
	ld a, [hl]                                       ; $4eec: $7e
	dec e                                            ; $4eed: $1d
	ld b, $aa                                        ; $4eee: $06 $aa
	dec l                                            ; $4ef0: $2d
	inc c                                            ; $4ef1: $0c
	sub a                                            ; $4ef2: $97
	nop                                              ; $4ef3: $00
	ret z                                            ; $4ef4: $c8

	dec l                                            ; $4ef5: $2d
	ld b, $c8                                        ; $4ef6: $06 $c8
	ld a, [hl]                                       ; $4ef8: $7e
	dec e                                            ; $4ef9: $1d
	inc c                                            ; $4efa: $0c
	xor c                                            ; $4efb: $a9
	cp [hl]                                          ; $4efc: $be
	ld b, $29                                        ; $4efd: $06 $29
	daa                                              ; $4eff: $27
	add hl, hl                                       ; $4f00: $29
	daa                                              ; $4f01: $27
	cp [hl]                                          ; $4f02: $be
	bit 7, [hl]                                      ; $4f03: $cb $7e
	dec e                                            ; $4f05: $1d
	inc c                                            ; $4f06: $0c
	xor c                                            ; $4f07: $a9
	dec h                                            ; $4f08: $25
	jr jr_034_4f89                                   ; $4f09: $18 $7e

	dec e                                            ; $4f0b: $1d
	nop                                              ; $4f0c: $00
	and b                                            ; $4f0d: $a0
	call nz, $0c25                                   ; $4f0e: $c4 $25 $0c
	bit 7, [hl]                                      ; $4f11: $cb $7e
	dec e                                            ; $4f13: $1d
	inc c                                            ; $4f14: $0c
	xor c                                            ; $4f15: $a9
	ld [hl+], a                                      ; $4f16: $22
	ld [$1d7e], sp                                   ; $4f17: $08 $7e $1d
	nop                                              ; $4f1a: $00
	and b                                            ; $4f1b: $a0
	call nz, $0422                                   ; $4f1c: $c4 $22 $04
	bit 7, [hl]                                      ; $4f1f: $cb $7e
	dec e                                            ; $4f21: $1d
	inc c                                            ; $4f22: $0c
	xor c                                            ; $4f23: $a9
	jr nz, jr_034_4f2e                               ; $4f24: $20 $08

	ld a, [hl]                                       ; $4f26: $7e
	dec e                                            ; $4f27: $1d
	nop                                              ; $4f28: $00
	and b                                            ; $4f29: $a0
	call nz, $0420                                   ; $4f2a: $c4 $20 $04
	ld a, [hl]                                       ; $4f2d: $7e

jr_034_4f2e:
	dec e                                            ; $4f2e: $1d
	ld b, $a9                                        ; $4f2f: $06 $a9
	sub a                                            ; $4f31: $97
	ld a, e                                          ; $4f32: $7b
	ld [hl+], a                                      ; $4f33: $22
	inc c                                            ; $4f34: $0c
	sub a                                            ; $4f35: $97
	nop                                              ; $4f36: $00
	ret                                              ; $4f37: $c9


	add hl, hl                                       ; $4f38: $29
	ld a, [bc]                                       ; $4f39: $0a
	ld a, [hl]                                       ; $4f3a: $7e
	dec e                                            ; $4f3b: $1d
	nop                                              ; $4f3c: $00
	and b                                            ; $4f3d: $a0
	jp nz, $0229                                     ; $4f3e: $c2 $29 $02

	ret z                                            ; $4f41: $c8

	ld a, [hl]                                       ; $4f42: $7e
	dec e                                            ; $4f43: $1d
	inc c                                            ; $4f44: $0c
	xor c                                            ; $4f45: $a9
	daa                                              ; $4f46: $27
	ld [de], a                                       ; $4f47: $12
	ld a, [hl]                                       ; $4f48: $7e
	dec e                                            ; $4f49: $1d
	nop                                              ; $4f4a: $00
	and b                                            ; $4f4b: $a0
	call nz, $0627                                   ; $4f4c: $c4 $27 $06
	nop                                              ; $4f4f: $00
	inc c                                            ; $4f50: $0c
	ld a, [hl]                                       ; $4f51: $7e
	dec e                                            ; $4f52: $1d
	inc c                                            ; $4f53: $0c
	xor c                                            ; $4f54: $a9
	sla h                                            ; $4f55: $cb $24
	ld b, $20                                        ; $4f57: $06 $20
	ld b, $24                                        ; $4f59: $06 $24
	inc c                                            ; $4f5b: $0c
	dec h                                            ; $4f5c: $25
	inc bc                                           ; $4f5d: $03
	inc h                                            ; $4f5e: $24
	inc bc                                           ; $4f5f: $03
	bit 7, [hl]                                      ; $4f60: $cb $7e
	dec e                                            ; $4f62: $1d
	inc c                                            ; $4f63: $0c
	xor c                                            ; $4f64: $a9
	ld [hl+], a                                      ; $4f65: $22
	jr nc, jr_034_4fe6                               ; $4f66: $30 $7e

	dec e                                            ; $4f68: $1d
	nop                                              ; $4f69: $00
	and b                                            ; $4f6a: $a0
	call nz, $1e22                                   ; $4f6b: $c4 $22 $1e
	pop bc                                           ; $4f6e: $c1
	ld [hl+], a                                      ; $4f6f: $22
	inc c                                            ; $4f70: $0c
	nop                                              ; $4f71: $00
	inc c                                            ; $4f72: $0c
	pop de                                           ; $4f73: $d1
	sub d                                            ; $4f74: $92
	add $7e                                          ; $4f75: $c6 $7e
	dec e                                            ; $4f77: $1d
	inc c                                            ; $4f78: $0c
	xor c                                            ; $4f79: $a9
	ld a, [hl+]                                      ; $4f7a: $2a
	ld [de], a                                       ; $4f7b: $12
	ld a, [hl]                                       ; $4f7c: $7e
	dec e                                            ; $4f7d: $1d
	nop                                              ; $4f7e: $00
	and b                                            ; $4f7f: $a0
	jp nz, $0c2a                                     ; $4f80: $c2 $2a $0c

	bit 7, [hl]                                      ; $4f83: $cb $7e
	dec e                                            ; $4f85: $1d
	inc c                                            ; $4f86: $0c
	xor c                                            ; $4f87: $a9
	daa                                              ; $4f88: $27

jr_034_4f89:
	ld [$1d7e], sp                                   ; $4f89: $08 $7e $1d
	nop                                              ; $4f8c: $00
	and b                                            ; $4f8d: $a0
	call nz, $0427                                   ; $4f8e: $c4 $27 $04
	bit 7, [hl]                                      ; $4f91: $cb $7e
	dec e                                            ; $4f93: $1d
	inc c                                            ; $4f94: $0c
	xor c                                            ; $4f95: $a9
	dec h                                            ; $4f96: $25
	ld b, $cc                                        ; $4f97: $06 $cc
	inc h                                            ; $4f99: $24
	inc h                                            ; $4f9a: $24
	ld a, [hl]                                       ; $4f9b: $7e
	dec e                                            ; $4f9c: $1d
	nop                                              ; $4f9d: $00
	and b                                            ; $4f9e: $a0
	call nz, $0c24                                   ; $4f9f: $c4 $24 $0c
	ret z                                            ; $4fa2: $c8

	ld a, [hl]                                       ; $4fa3: $7e
	dec e                                            ; $4fa4: $1d
	inc c                                            ; $4fa5: $0c
	xor c                                            ; $4fa6: $a9
	add hl, hl                                       ; $4fa7: $29
	inc d                                            ; $4fa8: $14
	ld a, [hl]                                       ; $4fa9: $7e
	dec e                                            ; $4faa: $1d
	nop                                              ; $4fab: $00
	and b                                            ; $4fac: $a0
	jp nz, $0a29                                     ; $4fad: $c2 $29 $0a

	ret z                                            ; $4fb0: $c8

	ld a, [hl]                                       ; $4fb1: $7e
	dec e                                            ; $4fb2: $1d
	inc c                                            ; $4fb3: $0c
	xor c                                            ; $4fb4: $a9
	daa                                              ; $4fb5: $27
	ld b, $29                                        ; $4fb6: $06 $29
	ld b, $24                                        ; $4fb8: $06 $24
	ld b, $25                                        ; $4fba: $06 $25
	inc h                                            ; $4fbc: $24
	ld a, [hl]                                       ; $4fbd: $7e
	dec e                                            ; $4fbe: $1d
	nop                                              ; $4fbf: $00
	and b                                            ; $4fc0: $a0
	call nz, $0c25                                   ; $4fc1: $c4 $25 $0c
	bit 7, [hl]                                      ; $4fc4: $cb $7e
	dec e                                            ; $4fc6: $1d
	inc c                                            ; $4fc7: $0c
	xor c                                            ; $4fc8: $a9
	ld [hl+], a                                      ; $4fc9: $22
	ld [de], a                                       ; $4fca: $12
	ld a, [hl]                                       ; $4fcb: $7e
	dec e                                            ; $4fcc: $1d
	nop                                              ; $4fcd: $00
	and b                                            ; $4fce: $a0
	call nz, $0622                                   ; $4fcf: $c4 $22 $06
	bit 7, [hl]                                      ; $4fd2: $cb $7e
	dec e                                            ; $4fd4: $1d
	inc c                                            ; $4fd5: $0c
	xor c                                            ; $4fd6: $a9
	dec h                                            ; $4fd7: $25
	ld [de], a                                       ; $4fd8: $12
	ld a, [hl]                                       ; $4fd9: $7e
	dec e                                            ; $4fda: $1d
	nop                                              ; $4fdb: $00
	and b                                            ; $4fdc: $a0
	call nz, $0625                                   ; $4fdd: $c4 $25 $06
	bit 7, [hl]                                      ; $4fe0: $cb $7e
	dec e                                            ; $4fe2: $1d
	inc c                                            ; $4fe3: $0c
	xor c                                            ; $4fe4: $a9
	inc h                                            ; $4fe5: $24

jr_034_4fe6:
	ld [$1d7e], sp                                   ; $4fe6: $08 $7e $1d
	nop                                              ; $4fe9: $00
	and b                                            ; $4fea: $a0
	call nz, $0424                                   ; $4feb: $c4 $24 $04
	bit 7, [hl]                                      ; $4fee: $cb $7e
	dec e                                            ; $4ff0: $1d
	inc c                                            ; $4ff1: $0c
	xor c                                            ; $4ff2: $a9
	ld [hl+], a                                      ; $4ff3: $22
	ld [$1d7e], sp                                   ; $4ff4: $08 $7e $1d
	nop                                              ; $4ff7: $00
	and b                                            ; $4ff8: $a0
	call nz, $0422                                   ; $4ff9: $c4 $22 $04
	bit 7, [hl]                                      ; $4ffc: $cb $7e
	dec e                                            ; $4ffe: $1d
	inc c                                            ; $4fff: $0c
	xor c                                            ; $5000: $a9
	jr nz, @+$0a                                     ; $5001: $20 $08

	ld a, [hl]                                       ; $5003: $7e
	dec e                                            ; $5004: $1d
	nop                                              ; $5005: $00
	and b                                            ; $5006: $a0
	call nz, $0420                                   ; $5007: $c4 $20 $04
	bit 7, [hl]                                      ; $500a: $cb $7e
	dec e                                            ; $500c: $1d
	inc c                                            ; $500d: $0c
	xor c                                            ; $500e: $a9
	ld e, $08                                        ; $500f: $1e $08
	ld a, [hl]                                       ; $5011: $7e
	dec e                                            ; $5012: $1d
	nop                                              ; $5013: $00
	and b                                            ; $5014: $a0
	call nz, $041e                                   ; $5015: $c4 $1e $04
	call $1d7e                                       ; $5018: $cd $7e $1d
	inc c                                            ; $501b: $0c
	xor c                                            ; $501c: $a9
	dec e                                            ; $501d: $1d
	inc h                                            ; $501e: $24
	ld a, [hl]                                       ; $501f: $7e
	dec e                                            ; $5020: $1d
	nop                                              ; $5021: $00
	and b                                            ; $5022: $a0
	call nz, $0c1d                                   ; $5023: $c4 $1d $0c
	call $1d7e                                       ; $5026: $cd $7e $1d
	inc c                                            ; $5029: $0c
	xor c                                            ; $502a: $a9
	ld hl, $7e18                                     ; $502b: $21 $18 $7e
	dec e                                            ; $502e: $1d
	nop                                              ; $502f: $00
	and b                                            ; $5030: $a0
	call nz, $1821                                   ; $5031: $c4 $21 $18
	pop de                                           ; $5034: $d1
	sub d                                            ; $5035: $92
	rst JumpTable                                          ; $5036: $c7
	ld a, [hl]                                       ; $5037: $7e
	dec e                                            ; $5038: $1d
	inc c                                            ; $5039: $0c
	xor c                                            ; $503a: $a9
	ld a, [hl+]                                      ; $503b: $2a
	ld [de], a                                       ; $503c: $12
	ld a, [hl]                                       ; $503d: $7e
	dec e                                            ; $503e: $1d
	nop                                              ; $503f: $00
	and b                                            ; $5040: $a0
	jp $0c2a                                         ; $5041: $c3 $2a $0c


	jp z, $1d7e                                      ; $5044: $ca $7e $1d

	inc c                                            ; $5047: $0c
	xor c                                            ; $5048: $a9
	daa                                              ; $5049: $27
	ld [$1d7e], sp                                   ; $504a: $08 $7e $1d
	nop                                              ; $504d: $00
	and b                                            ; $504e: $a0
	call nz, $0427                                   ; $504f: $c4 $27 $04
	bit 7, [hl]                                      ; $5052: $cb $7e
	dec e                                            ; $5054: $1d
	inc c                                            ; $5055: $0c
	xor c                                            ; $5056: $a9
	dec h                                            ; $5057: $25
	ld b, $cc                                        ; $5058: $06 $cc
	inc h                                            ; $505a: $24
	inc h                                            ; $505b: $24
	ld a, [hl]                                       ; $505c: $7e
	dec e                                            ; $505d: $1d
	nop                                              ; $505e: $00
	and b                                            ; $505f: $a0
	call nz, $0c24                                   ; $5060: $c4 $24 $0c
	ret z                                            ; $5063: $c8

	ld a, [hl]                                       ; $5064: $7e
	dec e                                            ; $5065: $1d
	inc c                                            ; $5066: $0c
	xor c                                            ; $5067: $a9
	add hl, hl                                       ; $5068: $29
	inc c                                            ; $5069: $0c
	ld a, [hl]                                       ; $506a: $7e
	dec e                                            ; $506b: $1d
	nop                                              ; $506c: $00
	and b                                            ; $506d: $a0
	call nz, $0629                                   ; $506e: $c4 $29 $06
	sub a                                            ; $5071: $97
	ld l, [hl]                                       ; $5072: $6e
	ld a, [hl]                                       ; $5073: $7e
	dec e                                            ; $5074: $1d
	ld b, $aa                                        ; $5075: $06 $aa
	dec l                                            ; $5077: $2d
	inc c                                            ; $5078: $0c
	ret z                                            ; $5079: $c8

	sub a                                            ; $507a: $97
	nop                                              ; $507b: $00
	dec l                                            ; $507c: $2d
	ld b, $97                                        ; $507d: $06 $97
	nop                                              ; $507f: $00
	ret z                                            ; $5080: $c8

	ld a, [hl]                                       ; $5081: $7e
	dec e                                            ; $5082: $1d
	inc c                                            ; $5083: $0c
	xor c                                            ; $5084: $a9
	cp [hl]                                          ; $5085: $be
	ld b, $29                                        ; $5086: $06 $29
	daa                                              ; $5088: $27
	add hl, hl                                       ; $5089: $29
	daa                                              ; $508a: $27
	cp [hl]                                          ; $508b: $be
	ret z                                            ; $508c: $c8

	ld a, [hl]                                       ; $508d: $7e
	dec e                                            ; $508e: $1d
	inc c                                            ; $508f: $0c
	xor c                                            ; $5090: $a9
	dec h                                            ; $5091: $25
	jr jr_034_5112                                   ; $5092: $18 $7e

	dec e                                            ; $5094: $1d
	nop                                              ; $5095: $00
	and b                                            ; $5096: $a0
	call nz, $0c25                                   ; $5097: $c4 $25 $0c
	bit 7, [hl]                                      ; $509a: $cb $7e
	dec e                                            ; $509c: $1d
	inc c                                            ; $509d: $0c
	xor c                                            ; $509e: $a9
	ld [hl+], a                                      ; $509f: $22
	ld [$1d7e], sp                                   ; $50a0: $08 $7e $1d
	nop                                              ; $50a3: $00
	and b                                            ; $50a4: $a0
	call nz, $0422                                   ; $50a5: $c4 $22 $04
	bit 7, [hl]                                      ; $50a8: $cb $7e
	dec e                                            ; $50aa: $1d
	inc c                                            ; $50ab: $0c
	xor c                                            ; $50ac: $a9
	jr nz, jr_034_50b7                               ; $50ad: $20 $08

	ld a, [hl]                                       ; $50af: $7e
	dec e                                            ; $50b0: $1d
	nop                                              ; $50b1: $00
	and b                                            ; $50b2: $a0
	call nz, $0420                                   ; $50b3: $c4 $20 $04
	ld a, [hl]                                       ; $50b6: $7e

jr_034_50b7:
	dec e                                            ; $50b7: $1d
	ld b, $a9                                        ; $50b8: $06 $a9
	sub a                                            ; $50ba: $97
	ld a, l                                          ; $50bb: $7d
	ld [hl+], a                                      ; $50bc: $22
	inc c                                            ; $50bd: $0c
	sub a                                            ; $50be: $97
	nop                                              ; $50bf: $00
	rst JumpTable                                          ; $50c0: $c7
	add hl, hl                                       ; $50c1: $29
	ld a, [bc]                                       ; $50c2: $0a
	ld a, [hl]                                       ; $50c3: $7e
	dec e                                            ; $50c4: $1d
	nop                                              ; $50c5: $00
	and b                                            ; $50c6: $a0
	jp nz, $0229                                     ; $50c7: $c2 $29 $02

	ret z                                            ; $50ca: $c8

	ld a, [hl]                                       ; $50cb: $7e
	dec e                                            ; $50cc: $1d
	inc c                                            ; $50cd: $0c
	xor c                                            ; $50ce: $a9
	daa                                              ; $50cf: $27
	ld [de], a                                       ; $50d0: $12
	ld a, [hl]                                       ; $50d1: $7e
	dec e                                            ; $50d2: $1d
	nop                                              ; $50d3: $00
	and b                                            ; $50d4: $a0
	call nz, $0627                                   ; $50d5: $c4 $27 $06
	nop                                              ; $50d8: $00
	inc c                                            ; $50d9: $0c
	ld a, [hl]                                       ; $50da: $7e
	dec e                                            ; $50db: $1d
	inc c                                            ; $50dc: $0c
	xor c                                            ; $50dd: $a9
	sla h                                            ; $50de: $cb $24
	ld b, $20                                        ; $50e0: $06 $20
	ld b, $ca                                        ; $50e2: $06 $ca
	inc h                                            ; $50e4: $24
	inc c                                            ; $50e5: $0c
	dec h                                            ; $50e6: $25
	inc bc                                           ; $50e7: $03
	inc h                                            ; $50e8: $24
	inc bc                                           ; $50e9: $03
	bit 7, [hl]                                      ; $50ea: $cb $7e
	dec e                                            ; $50ec: $1d
	inc c                                            ; $50ed: $0c
	xor c                                            ; $50ee: $a9
	ld [hl+], a                                      ; $50ef: $22
	jr nc, jr_034_5170                               ; $50f0: $30 $7e

	dec e                                            ; $50f2: $1d
	nop                                              ; $50f3: $00
	and b                                            ; $50f4: $a0
	call nz, $1e22                                   ; $50f5: $c4 $22 $1e
	or h                                             ; $50f8: $b4
	ld b, [hl]                                       ; $50f9: $46
	ld b, c                                          ; $50fa: $41
	ld [bc], a                                       ; $50fb: $02
	ld a, [hl]                                       ; $50fc: $7e
	dec e                                            ; $50fd: $1d
	inc c                                            ; $50fe: $0c
	xor d                                            ; $50ff: $aa
	sub a                                            ; $5100: $97
	ld a, l                                          ; $5101: $7d
	dec h                                            ; $5102: $25
	jr jr_034_5183                                   ; $5103: $18 $7e

	dec e                                            ; $5105: $1d
	nop                                              ; $5106: $00
	xor c                                            ; $5107: $a9
	sub a                                            ; $5108: $97
	nop                                              ; $5109: $00
	call nz, $0c25                                   ; $510a: $c4 $25 $0c
	ld a, [hl]                                       ; $510d: $7e
	nop                                              ; $510e: $00
	and b                                            ; $510f: $a0
	sub a                                            ; $5110: $97
	ld a, d                                          ; $5111: $7a

jr_034_5112:
	daa                                              ; $5112: $27
	ld b, $97                                        ; $5113: $06 $97
	ld c, l                                          ; $5115: $4d
	add hl, hl                                       ; $5116: $29
	ld b, $7e                                        ; $5117: $06 $7e
	dec e                                            ; $5119: $1d
	inc c                                            ; $511a: $0c
	xor d                                            ; $511b: $aa
	sub a                                            ; $511c: $97
	ld a, l                                          ; $511d: $7d
	dec h                                            ; $511e: $25
	jr jr_034_519f                                   ; $511f: $18 $7e

	dec e                                            ; $5121: $1d
	nop                                              ; $5122: $00
	xor c                                            ; $5123: $a9
	sub a                                            ; $5124: $97
	nop                                              ; $5125: $00
	call nz, $1825                                   ; $5126: $c4 $25 $18
	ld a, [hl]                                       ; $5129: $7e
	dec e                                            ; $512a: $1d
	inc c                                            ; $512b: $0c
	xor d                                            ; $512c: $aa
	sub a                                            ; $512d: $97
	adc h                                            ; $512e: $8c
	dec h                                            ; $512f: $25
	inc c                                            ; $5130: $0c
	ld a, [hl]                                       ; $5131: $7e
	dec e                                            ; $5132: $1d
	nop                                              ; $5133: $00
	xor c                                            ; $5134: $a9
	call nz, $0097                                   ; $5135: $c4 $97 $00
	dec h                                            ; $5138: $25
	inc b                                            ; $5139: $04
	ld a, [hl]                                       ; $513a: $7e
	dec e                                            ; $513b: $1d
	inc c                                            ; $513c: $0c
	xor d                                            ; $513d: $aa
	sub a                                            ; $513e: $97
	adc h                                            ; $513f: $8c
	inc h                                            ; $5140: $24
	inc c                                            ; $5141: $0c
	ld a, [hl]                                       ; $5142: $7e
	dec e                                            ; $5143: $1d
	nop                                              ; $5144: $00
	xor c                                            ; $5145: $a9
	sub a                                            ; $5146: $97
	nop                                              ; $5147: $00
	call nz, $0424                                   ; $5148: $c4 $24 $04
	ld a, [hl]                                       ; $514b: $7e
	dec e                                            ; $514c: $1d
	inc c                                            ; $514d: $0c
	xor d                                            ; $514e: $aa
	sub a                                            ; $514f: $97
	adc h                                            ; $5150: $8c
	dec h                                            ; $5151: $25
	inc c                                            ; $5152: $0c
	ld a, [hl]                                       ; $5153: $7e
	dec e                                            ; $5154: $1d
	nop                                              ; $5155: $00
	xor c                                            ; $5156: $a9
	sub a                                            ; $5157: $97
	nop                                              ; $5158: $00
	call nz, $0425                                   ; $5159: $c4 $25 $04
	ld a, [hl]                                       ; $515c: $7e
	dec e                                            ; $515d: $1d
	inc c                                            ; $515e: $0c
	xor d                                            ; $515f: $aa
	sub a                                            ; $5160: $97
	adc h                                            ; $5161: $8c
	ld [hl+], a                                      ; $5162: $22
	jr jr_034_51e3                                   ; $5163: $18 $7e

	dec e                                            ; $5165: $1d
	nop                                              ; $5166: $00
	xor c                                            ; $5167: $a9
	sub a                                            ; $5168: $97
	nop                                              ; $5169: $00
	call nz, $0c22                                   ; $516a: $c4 $22 $0c
	ld a, [hl]                                       ; $516d: $7e
	dec e                                            ; $516e: $1d
	inc c                                            ; $516f: $0c

jr_034_5170:
	xor d                                            ; $5170: $aa
	sub a                                            ; $5171: $97
	adc h                                            ; $5172: $8c
	dec h                                            ; $5173: $25
	inc c                                            ; $5174: $0c
	sub a                                            ; $5175: $97
	ccf                                              ; $5176: $3f
	ret nc                                           ; $5177: $d0

	ld b, c                                          ; $5178: $41
	ld a, [hl]                                       ; $5179: $7e
	dec e                                            ; $517a: $1d
	inc c                                            ; $517b: $0c
	xor d                                            ; $517c: $aa
	add hl, hl                                       ; $517d: $29
	jr @+$80                                         ; $517e: $18 $7e

	dec e                                            ; $5180: $1d
	nop                                              ; $5181: $00
	xor d                                            ; $5182: $aa

jr_034_5183:
	sub a                                            ; $5183: $97
	nop                                              ; $5184: $00
	call nz, $1829                                   ; $5185: $c4 $29 $18
	ld a, [hl]                                       ; $5188: $7e
	nop                                              ; $5189: $00
	and b                                            ; $518a: $a0
	ld a, [hl]                                       ; $518b: $7e
	dec e                                            ; $518c: $1d
	inc c                                            ; $518d: $0c
	xor d                                            ; $518e: $aa
	sub a                                            ; $518f: $97
	adc h                                            ; $5190: $8c
	daa                                              ; $5191: $27
	inc c                                            ; $5192: $0c
	ld a, [hl]                                       ; $5193: $7e
	dec e                                            ; $5194: $1d
	nop                                              ; $5195: $00
	xor d                                            ; $5196: $aa
	sub a                                            ; $5197: $97
	nop                                              ; $5198: $00
	call nz, $0c27                                   ; $5199: $c4 $27 $0c
	ld a, [hl]                                       ; $519c: $7e
	nop                                              ; $519d: $00
	and b                                            ; $519e: $a0

jr_034_519f:
	ld a, [hl]                                       ; $519f: $7e
	dec e                                            ; $51a0: $1d
	inc c                                            ; $51a1: $0c
	xor d                                            ; $51a2: $aa
	sub a                                            ; $51a3: $97
	adc h                                            ; $51a4: $8c
	inc h                                            ; $51a5: $24
	inc c                                            ; $51a6: $0c

jr_034_51a7:
	ld a, [hl]                                       ; $51a7: $7e
	dec e                                            ; $51a8: $1d
	nop                                              ; $51a9: $00
	xor d                                            ; $51aa: $aa
	sub a                                            ; $51ab: $97
	nop                                              ; $51ac: $00
	call nz, $1424                                   ; $51ad: $c4 $24 $14
	ld a, [hl]                                       ; $51b0: $7e
	nop                                              ; $51b1: $00
	and b                                            ; $51b2: $a0
	ld a, [hl]                                       ; $51b3: $7e
	dec e                                            ; $51b4: $1d
	inc c                                            ; $51b5: $0c
	xor e                                            ; $51b6: $ab
	sub a                                            ; $51b7: $97
	ld c, h                                          ; $51b8: $4c
	jr nc, jr_034_51c0                               ; $51b9: $30 $05

	sub a                                            ; $51bb: $97
	nop                                              ; $51bc: $00
	call nz, $0130                                   ; $51bd: $c4 $30 $01

jr_034_51c0:
	sub a                                            ; $51c0: $97
	ld c, h                                          ; $51c1: $4c
	ld sp, $9705                                     ; $51c2: $31 $05 $97
	nop                                              ; $51c5: $00
	call nz, $0131                                   ; $51c6: $c4 $31 $01
	sub a                                            ; $51c9: $97
	ld c, h                                          ; $51ca: $4c
	jr c, jr_034_51d2                                ; $51cb: $38 $05

	sub a                                            ; $51cd: $97
	nop                                              ; $51ce: $00
	call nz, $0138                                   ; $51cf: $c4 $38 $01

jr_034_51d2:
	sub a                                            ; $51d2: $97
	cpl                                              ; $51d3: $2f
	ld l, $12                                        ; $51d4: $2e $12
	ld a, [hl]                                       ; $51d6: $7e
	dec e                                            ; $51d7: $1d
	nop                                              ; $51d8: $00
	xor e                                            ; $51d9: $ab
	sub a                                            ; $51da: $97
	nop                                              ; $51db: $00
	ret z                                            ; $51dc: $c8

	ld l, $18                                        ; $51dd: $2e $18
	add $2e                                          ; $51df: $c6 $2e
	jr jr_034_51a7                                   ; $51e1: $18 $c4

jr_034_51e3:
	ld l, $0c                                        ; $51e3: $2e $0c
	jp $0c2e                                         ; $51e5: $c3 $2e $0c


	jp nz, $062e                                     ; $51e8: $c2 $2e $06

	pop bc                                           ; $51eb: $c1
	ld l, $06                                        ; $51ec: $2e $06
	ret nc                                           ; $51ee: $d0

	ld c, [hl]                                       ; $51ef: $4e
	rst $38                                          ; $51f0: $ff
	pop de                                           ; $51f1: $d1
	bit 7, [hl]                                      ; $51f2: $cb $7e
	dec e                                            ; $51f4: $1d
	ld [de], a                                       ; $51f5: $12
	and b                                            ; $51f6: $a0
	dec h                                            ; $51f7: $25
	jr jr_034_5278                                   ; $51f8: $18 $7e

	dec e                                            ; $51fa: $1d
	nop                                              ; $51fb: $00
	and b                                            ; $51fc: $a0
	call nz, $0c25                                   ; $51fd: $c4 $25 $0c
	ld a, [hl]                                       ; $5200: $7e
	nop                                              ; $5201: $00
	and b                                            ; $5202: $a0
	ret                                              ; $5203: $c9


	daa                                              ; $5204: $27
	ld b, $c7                                        ; $5205: $06 $c7
	add hl, hl                                       ; $5207: $29
	ld b, $7e                                        ; $5208: $06 $7e
	dec e                                            ; $520a: $1d
	inc c                                            ; $520b: $0c
	and b                                            ; $520c: $a0
	sla l                                            ; $520d: $cb $25
	jr jr_034_528f                                   ; $520f: $18 $7e

	dec e                                            ; $5211: $1d
	nop                                              ; $5212: $00
	and b                                            ; $5213: $a0
	call nz, $1825                                   ; $5214: $c4 $25 $18
	ld a, [hl]                                       ; $5217: $7e
	dec e                                            ; $5218: $1d
	inc c                                            ; $5219: $0c
	and b                                            ; $521a: $a0
	sla l                                            ; $521b: $cb $25
	inc c                                            ; $521d: $0c
	ld a, [hl]                                       ; $521e: $7e
	dec e                                            ; $521f: $1d
	nop                                              ; $5220: $00
	and b                                            ; $5221: $a0
	call nz, $0425                                   ; $5222: $c4 $25 $04
	ld a, [hl]                                       ; $5225: $7e
	dec e                                            ; $5226: $1d
	inc c                                            ; $5227: $0c
	and b                                            ; $5228: $a0
	jp z, $0c24                                      ; $5229: $ca $24 $0c

	ld a, [hl]                                       ; $522c: $7e
	dec e                                            ; $522d: $1d
	nop                                              ; $522e: $00
	and b                                            ; $522f: $a0
	push bc                                          ; $5230: $c5
	inc h                                            ; $5231: $24
	inc b                                            ; $5232: $04
	ld a, [hl]                                       ; $5233: $7e
	dec e                                            ; $5234: $1d
	inc c                                            ; $5235: $0c
	and b                                            ; $5236: $a0
	call z, $0c25                                    ; $5237: $cc $25 $0c
	ld a, [hl]                                       ; $523a: $7e
	dec e                                            ; $523b: $1d
	nop                                              ; $523c: $00
	and b                                            ; $523d: $a0
	call nz, $0425                                   ; $523e: $c4 $25 $04
	ld a, [hl]                                       ; $5241: $7e
	dec e                                            ; $5242: $1d
	inc c                                            ; $5243: $0c
	and b                                            ; $5244: $a0
	call z, $1822                                    ; $5245: $cc $22 $18
	ld a, [hl]                                       ; $5248: $7e
	dec e                                            ; $5249: $1d
	nop                                              ; $524a: $00
	and b                                            ; $524b: $a0
	call nz, $0c22                                   ; $524c: $c4 $22 $0c
	ld a, [hl]                                       ; $524f: $7e
	dec e                                            ; $5250: $1d
	inc c                                            ; $5251: $0c
	and b                                            ; $5252: $a0
	sla l                                            ; $5253: $cb $25
	inc c                                            ; $5255: $0c
	ret z                                            ; $5256: $c8

	ld a, [hl]                                       ; $5257: $7e
	dec e                                            ; $5258: $1d
	ld [de], a                                       ; $5259: $12
	xor c                                            ; $525a: $a9
	add hl, hl                                       ; $525b: $29
	jr jr_034_52dc                                   ; $525c: $18 $7e

	dec e                                            ; $525e: $1d
	nop                                              ; $525f: $00
	and b                                            ; $5260: $a0
	jp nz, $0c29                                     ; $5261: $c2 $29 $0c

	ld a, [hl]                                       ; $5264: $7e
	nop                                              ; $5265: $00
	and b                                            ; $5266: $a0
	ret z                                            ; $5267: $c8

	daa                                              ; $5268: $27
	ld b, $c9                                        ; $5269: $06 $c9
	add hl, hl                                       ; $526b: $29
	ld b, $7e                                        ; $526c: $06 $7e
	dec e                                            ; $526e: $1d
	inc c                                            ; $526f: $0c
	and b                                            ; $5270: $a0
	jp z, $1824                                      ; $5271: $ca $24 $18

	ld a, [hl]                                       ; $5274: $7e
	dec e                                            ; $5275: $1d
	nop                                              ; $5276: $00
	and b                                            ; $5277: $a0

jr_034_5278:
	call nz, $1824                                   ; $5278: $c4 $24 $18
	db $fd                                           ; $527b: $fd
	or h                                             ; $527c: $b4
	ld c, [hl]                                       ; $527d: $4e
	ld hl, $061c                                     ; $527e: $21 $1c $06
	inc h                                            ; $5281: $24
	ld a, [bc]                                       ; $5282: $0a
	ld b, $0c                                        ; $5283: $06 $0c
	ld b, $0d                                        ; $5285: $06 $0d
	jr jr_034_5295                                   ; $5287: $18 $0c

	inc c                                            ; $5289: $0c
	ld a, [bc]                                       ; $528a: $0a
	inc c                                            ; $528b: $0c
	ld [$0c24], sp                                   ; $528c: $08 $24 $0c

jr_034_528f:
	inc c                                            ; $528f: $0c
	rrca                                             ; $5290: $0f
	jr jr_034_5296                                   ; $5291: $18 $03

	jr @+$07                                         ; $5293: $18 $05

jr_034_5295:
	inc h                                            ; $5295: $24

jr_034_5296:
	add hl, bc                                       ; $5296: $09
	inc c                                            ; $5297: $0c
	inc c                                            ; $5298: $0c
	jr @+$0f                                         ; $5299: $18 $0d

	inc c                                            ; $529b: $0c
	inc c                                            ; $529c: $0c
	inc c                                            ; $529d: $0c
	ld a, [bc]                                       ; $529e: $0a
	ld [hl+], a                                      ; $529f: $22
	nop                                              ; $52a0: $00
	ld [bc], a                                       ; $52a1: $02
	ld a, [bc]                                       ; $52a2: $0a
	ld b, $0c                                        ; $52a3: $06 $0c
	ld b, $0d                                        ; $52a5: $06 $0d
	jr jr_034_52b8                                   ; $52a7: $18 $0f

	inc c                                            ; $52a9: $0c
	ld de, $060c                                     ; $52aa: $11 $0c $06
	inc h                                            ; $52ad: $24
	ld a, a                                          ; $52ae: $7f
	ld e, $12                                        ; $52af: $1e $12
	ld b, $14                                        ; $52b1: $06 $14
	ld b, $16                                        ; $52b3: $06 $16
	jr jr_034_5336                                   ; $52b5: $18 $7f

	inc e                                            ; $52b7: $1c

jr_034_52b8:
	dec c                                            ; $52b8: $0d
	inc c                                            ; $52b9: $0c
	ld a, [bc]                                       ; $52ba: $0a
	inc c                                            ; $52bb: $0c
	ld [$0f24], sp                                   ; $52bc: $08 $24 $0f
	ld b, $11                                        ; $52bf: $06 $11
	ld b, $7f                                        ; $52c1: $06 $7f
	ld e, $14                                        ; $52c3: $1e $14
	jr @+$81                                         ; $52c5: $18 $7f

	inc e                                            ; $52c7: $1c
	rrca                                             ; $52c8: $0f
	inc c                                            ; $52c9: $0c
	inc c                                            ; $52ca: $0c
	inc c                                            ; $52cb: $0c
	ld a, [bc]                                       ; $52cc: $0a
	ld [hl+], a                                      ; $52cd: $22
	nop                                              ; $52ce: $00
	ld [bc], a                                       ; $52cf: $02
	ld a, [bc]                                       ; $52d0: $0a
	ld a, [bc]                                       ; $52d1: $0a
	nop                                              ; $52d2: $00
	ld [bc], a                                       ; $52d3: $02
	ld a, [bc]                                       ; $52d4: $0a
	ld [hl+], a                                      ; $52d5: $22
	nop                                              ; $52d6: $00
	ld [bc], a                                       ; $52d7: $02
	dec b                                            ; $52d8: $05
	ld a, [bc]                                       ; $52d9: $0a
	nop                                              ; $52da: $00
	ld [bc], a                                       ; $52db: $02

jr_034_52dc:
	ld a, [bc]                                       ; $52dc: $0a
	ld [hl+], a                                      ; $52dd: $22
	nop                                              ; $52de: $00
	ld [bc], a                                       ; $52df: $02
	ld a, [bc]                                       ; $52e0: $0a
	ld a, [bc]                                       ; $52e1: $0a
	nop                                              ; $52e2: $00
	ld [bc], a                                       ; $52e3: $02
	ld a, [bc]                                       ; $52e4: $0a
	ld [hl+], a                                      ; $52e5: $22
	nop                                              ; $52e6: $00
	ld [bc], a                                       ; $52e7: $02
	dec b                                            ; $52e8: $05
	ld a, [bc]                                       ; $52e9: $0a
	nop                                              ; $52ea: $00
	ld [bc], a                                       ; $52eb: $02
	ld a, a                                          ; $52ec: $7f
	jr @-$2d                                         ; $52ed: $18 $d1

	db $fd                                           ; $52ef: $fd
	ld b, $57                                        ; $52f0: $06 $57
	pop de                                           ; $52f2: $d1
	jp nz, $0603                                     ; $52f3: $c2 $03 $06

jr_034_52f6:
	add $03                                          ; $52f6: $c6 $03
	ld b, $7f                                        ; $52f8: $06 $7f
	inc e                                            ; $52fa: $1c
	jp nz, $0616                                     ; $52fb: $c2 $16 $06

	add $16                                          ; $52fe: $c6 $16
	ld b, $7f                                        ; $5300: $06 $7f
	jr @-$3c                                         ; $5302: $18 $c2

	ld a, [bc]                                       ; $5304: $0a
	ld b, $c6                                        ; $5305: $06 $c6
	ld a, [bc]                                       ; $5307: $0a
	ld b, $c2                                        ; $5308: $06 $c2
	ld [de], a                                       ; $530a: $12
	ld b, $c6                                        ; $530b: $06 $c6
	ld [de], a                                       ; $530d: $12
	ld b, $7e                                        ; $530e: $06 $7e
	dec e                                            ; $5310: $1d
	nop                                              ; $5311: $00
	and c                                            ; $5312: $a1
	jp nz, $0c11                                     ; $5313: $c2 $11 $0c

	call nz, $0c11                                   ; $5316: $c4 $11 $0c
	jp nz, $0c15                                     ; $5319: $c2 $15 $0c

	call nz, $0c15                                   ; $531c: $c4 $15 $0c
	ld a, [hl]                                       ; $531f: $7e
	nop                                              ; $5320: $00
	and b                                            ; $5321: $a0
	ld a, a                                          ; $5322: $7f
	jr jr_034_52f6                                   ; $5323: $18 $d1

	jp nz, $060a                                     ; $5325: $c2 $0a $06

	add $0a                                          ; $5328: $c6 $0a
	ld b, $c2                                        ; $532a: $06 $c2
	ld d, $03                                        ; $532c: $16 $03
	add $16                                          ; $532e: $c6 $16
	inc bc                                           ; $5330: $03
	jp nz, $0316                                     ; $5331: $c2 $16 $03

	add $16                                          ; $5334: $c6 $16

jr_034_5336:
	inc bc                                           ; $5336: $03
	jp nz, $0605                                     ; $5337: $c2 $05 $06

	add $05                                          ; $533a: $c6 $05
	ld b, $c2                                        ; $533c: $06 $c2
	ld d, $06                                        ; $533e: $16 $06
	add $16                                          ; $5340: $c6 $16
	ld b, $c2                                        ; $5342: $06 $c2
	add hl, bc                                       ; $5344: $09
	ld b, $c6                                        ; $5345: $06 $c6
	add hl, bc                                       ; $5347: $09
	ld b, $c2                                        ; $5348: $06 $c2
	jr jr_034_534f                                   ; $534a: $18 $03

	add $18                                          ; $534c: $c6 $18
	inc bc                                           ; $534e: $03

jr_034_534f:
	jp nz, $0318                                     ; $534f: $c2 $18 $03

	add $18                                          ; $5352: $c6 $18
	inc bc                                           ; $5354: $03
	jp nz, $0605                                     ; $5355: $c2 $05 $06

	add $05                                          ; $5358: $c6 $05
	ld b, $c2                                        ; $535a: $06 $c2
	jr @+$08                                         ; $535c: $18 $06

	add $18                                          ; $535e: $c6 $18
	ld b, $c2                                        ; $5360: $06 $c2
	ld [$c606], sp                                   ; $5362: $08 $06 $c6
	ld [$c206], sp                                   ; $5365: $08 $06 $c2
	jr jr_034_536d                                   ; $5368: $18 $03

	add $18                                          ; $536a: $c6 $18
	inc bc                                           ; $536c: $03

jr_034_536d:
	jp nz, $0318                                     ; $536d: $c2 $18 $03

	add $18                                          ; $5370: $c6 $18
	inc bc                                           ; $5372: $03
	jp nz, $0605                                     ; $5373: $c2 $05 $06

	add $05                                          ; $5376: $c6 $05
	ld b, $c2                                        ; $5378: $06 $c2
	jr @+$08                                         ; $537a: $18 $06

	add $18                                          ; $537c: $c6 $18
	ld b, $c2                                        ; $537e: $06 $c2
	rlca                                             ; $5380: $07
	ld b, $c6                                        ; $5381: $06 $c6
	rlca                                             ; $5383: $07
	ld b, $c2                                        ; $5384: $06 $c2
	ld d, $03                                        ; $5386: $16 $03
	add $16                                          ; $5388: $c6 $16
	inc bc                                           ; $538a: $03
	jp nz, $0316                                     ; $538b: $c2 $16 $03

	add $16                                          ; $538e: $c6 $16
	inc bc                                           ; $5390: $03
	jp nz, $0603                                     ; $5391: $c2 $03 $06

	add $03                                          ; $5394: $c6 $03
	ld b, $c2                                        ; $5396: $06 $c2
	ld d, $06                                        ; $5398: $16 $06
	add $16                                          ; $539a: $c6 $16
	ld b, $c2                                        ; $539c: $06 $c2
	ld b, $06                                        ; $539e: $06 $06
	add $06                                          ; $53a0: $c6 $06
	ld b, $c2                                        ; $53a2: $06 $c2
	add hl, de                                       ; $53a4: $19
	inc bc                                           ; $53a5: $03
	add $19                                          ; $53a6: $c6 $19
	inc bc                                           ; $53a8: $03
	jp nz, $0319                                     ; $53a9: $c2 $19 $03

	add $19                                          ; $53ac: $c6 $19
	inc bc                                           ; $53ae: $03
	jp nz, $0601                                     ; $53af: $c2 $01 $06

	add $01                                          ; $53b2: $c6 $01
	ld b, $c2                                        ; $53b4: $06 $c2
	add hl, de                                       ; $53b6: $19
	ld b, $c6                                        ; $53b7: $06 $c6
	add hl, de                                       ; $53b9: $19
	ld b, $c2                                        ; $53ba: $06 $c2
	dec b                                            ; $53bc: $05
	ld b, $c6                                        ; $53bd: $06 $c6
	dec b                                            ; $53bf: $05
	ld b, $c2                                        ; $53c0: $06 $c2
	dec de                                           ; $53c2: $1b
	inc bc                                           ; $53c3: $03
	add $1b                                          ; $53c4: $c6 $1b
	inc bc                                           ; $53c6: $03
	jp nz, $031b                                     ; $53c7: $c2 $1b $03

	add $1b                                          ; $53ca: $c6 $1b
	inc bc                                           ; $53cc: $03
	jp nz, $060c                                     ; $53cd: $c2 $0c $06

	add $0c                                          ; $53d0: $c6 $0c
	ld b, $c2                                        ; $53d2: $06 $c2
	dec de                                           ; $53d4: $1b
	ld b, $c6                                        ; $53d5: $06 $c6
	dec de                                           ; $53d7: $1b
	ld b, $c2                                        ; $53d8: $06 $c2
	inc bc                                           ; $53da: $03
	ld b, $c6                                        ; $53db: $06 $c6
	inc bc                                           ; $53dd: $03
	inc c                                            ; $53de: $0c
	nop                                              ; $53df: $00
	ld e, $7e                                        ; $53e0: $1e $7e
	nop                                              ; $53e2: $00
	and b                                            ; $53e3: $a0
	call nz, $bed3                                   ; $53e4: $c4 $d3 $be
	ld b, $21                                        ; $53e7: $06 $21
	ld [hl+], a                                      ; $53e9: $22
	inc h                                            ; $53ea: $24
	ld h, $27                                        ; $53eb: $26 $27
	add hl, hl                                       ; $53ed: $29
	dec hl                                           ; $53ee: $2b
	dec l                                            ; $53ef: $2d
	cp [hl]                                          ; $53f0: $be
	ld a, a                                          ; $53f1: $7f
	jr @-$2d                                         ; $53f2: $18 $d1

	jp nz, $0806                                     ; $53f4: $c2 $06 $08

	add $06                                          ; $53f7: $c6 $06
	inc b                                            ; $53f9: $04
	jp nz, $1206                                     ; $53fa: $c2 $06 $12

	add $06                                          ; $53fd: $c6 $06
	inc c                                            ; $53ff: $0c
	jp nz, $0301                                     ; $5400: $c2 $01 $03

	add $01                                          ; $5403: $c6 $01
	inc bc                                           ; $5405: $03
	jp nz, $0608                                     ; $5406: $c2 $08 $06

	add $08                                          ; $5409: $c6 $08
	ld b, $c2                                        ; $540b: $06 $c2
	ld [$c612], sp                                   ; $540d: $08 $12 $c6
	ld [$c206], sp                                   ; $5410: $08 $06 $c2
	ld b, $06                                        ; $5413: $06 $06
	add $06                                          ; $5415: $c6 $06
	ld b, $c2                                        ; $5417: $06 $c2
	dec b                                            ; $5419: $05
	ld b, $c6                                        ; $541a: $06 $c6
	dec b                                            ; $541c: $05
	ld b, $c2                                        ; $541d: $06 $c2
	dec b                                            ; $541f: $05
	ld [de], a                                       ; $5420: $12
	add $05                                          ; $5421: $c6 $05
	ld b, $c2                                        ; $5423: $06 $c2
	dec b                                            ; $5425: $05
	ld b, $08                                        ; $5426: $06 $08
	ld b, $c2                                        ; $5428: $06 $c2
	ld a, [bc]                                       ; $542a: $0a
	ld [de], a                                       ; $542b: $12
	add $0a                                          ; $542c: $c6 $0a
	ld b, $c2                                        ; $542e: $06 $c2
	ld [$c612], sp                                   ; $5430: $08 $12 $c6
	ld [$c206], sp                                   ; $5433: $08 $06 $c2
	ld b, $24                                        ; $5436: $06 $24
	add $06                                          ; $5438: $c6 $06
	ld b, $c2                                        ; $543a: $06 $c2
	ld bc, $c603                                     ; $543c: $01 $03 $c6
	ld b, $03                                        ; $543f: $06 $03
	jp nz, $0608                                     ; $5441: $c2 $08 $06

jr_034_5444:
	add $08                                          ; $5444: $c6 $08
	ld b, $c2                                        ; $5446: $06 $c2
	ld [$c612], sp                                   ; $5448: $08 $12 $c6
	ld [$c206], sp                                   ; $544b: $08 $06 $c2
	inc bc                                           ; $544e: $03
	ld b, $c6                                        ; $544f: $06 $c6
	ld [$c206], sp                                   ; $5451: $08 $06 $c2
	ld bc, $c606                                     ; $5454: $01 $06 $c6
	ld bc, $c206                                     ; $5457: $01 $06 $c2
	ld bc, $c612                                     ; $545a: $01 $12 $c6
	ld bc, $c206                                     ; $545d: $01 $06 $c2
	dec b                                            ; $5460: $05
	ld b, $01                                        ; $5461: $06 $01
	ld b, $c2                                        ; $5463: $06 $c2
	inc c                                            ; $5465: $0c
	ld [de], a                                       ; $5466: $12
	add $0c                                          ; $5467: $c6 $0c
	ld b, $c2                                        ; $5469: $06 $c2
	dec b                                            ; $546b: $05
	ld [de], a                                       ; $546c: $12
	add $05                                          ; $546d: $c6 $05
	ld b, $7f                                        ; $546f: $06 $7f
	jr jr_034_5444                                   ; $5471: $18 $d1

	jp nz, $0606                                     ; $5473: $c2 $06 $06

	add $06                                          ; $5476: $c6 $06
	ld b, $c2                                        ; $5478: $06 $c2
	ld [de], a                                       ; $547a: $12
	inc bc                                           ; $547b: $03
	add $12                                          ; $547c: $c6 $12
	inc bc                                           ; $547e: $03
	jp nz, $0312                                     ; $547f: $c2 $12 $03

	add $12                                          ; $5482: $c6 $12
	inc bc                                           ; $5484: $03
	jp nz, $0306                                     ; $5485: $c2 $06 $03

	add $06                                          ; $5488: $c6 $06
	inc bc                                           ; $548a: $03
	jp nz, $1d7e                                     ; $548b: $c2 $7e $1d

	nop                                              ; $548e: $00
	and b                                            ; $548f: $a0
	ld [de], a                                       ; $5490: $12
	ld a, [bc]                                       ; $5491: $0a
	ld a, [hl]                                       ; $5492: $7e
	nop                                              ; $5493: $00
	and b                                            ; $5494: $a0
	nop                                              ; $5495: $00
	ld [bc], a                                       ; $5496: $02
	jp nz, $0312                                     ; $5497: $c2 $12 $03

	add $12                                          ; $549a: $c6 $12
	inc bc                                           ; $549c: $03
	jp nz, $0608                                     ; $549d: $c2 $08 $06

	add $08                                          ; $54a0: $c6 $08
	ld b, $7f                                        ; $54a2: $06 $7f

jr_034_54a4:
	inc e                                            ; $54a4: $1c
	jp nz, $0616                                     ; $54a5: $c2 $16 $06

	add $16                                          ; $54a8: $c6 $16
	ld b, $7f                                        ; $54aa: $06 $7f
	jr @-$3c                                         ; $54ac: $18 $c2

	ld b, $06                                        ; $54ae: $06 $06
	add $06                                          ; $54b0: $c6 $06
	ld b, $c2                                        ; $54b2: $06 $c2
	inc d                                            ; $54b4: $14
	ld b, $c6                                        ; $54b5: $06 $c6
	inc d                                            ; $54b7: $14
	ld b, $c2                                        ; $54b8: $06 $c2

jr_034_54ba:
	dec b                                            ; $54ba: $05
	ld b, $c6                                        ; $54bb: $06 $c6
	dec b                                            ; $54bd: $05
	ld b, $c2                                        ; $54be: $06 $c2
	dec d                                            ; $54c0: $15
	inc bc                                           ; $54c1: $03
	add $15                                          ; $54c2: $c6 $15
	inc bc                                           ; $54c4: $03
	jp nz, $0315                                     ; $54c5: $c2 $15 $03

	add $15                                          ; $54c8: $c6 $15
	inc bc                                           ; $54ca: $03
	jp nz, $0305                                     ; $54cb: $c2 $05 $03

	add $05                                          ; $54ce: $c6 $05
	inc bc                                           ; $54d0: $03
	ld a, a                                          ; $54d1: $7f
	inc e                                            ; $54d2: $1c
	jp nz, $1d7e                                     ; $54d3: $c2 $7e $1d

	nop                                              ; $54d6: $00
	and b                                            ; $54d7: $a0
	jr @+$0c                                         ; $54d8: $18 $0a

	ld a, [hl]                                       ; $54da: $7e
	nop                                              ; $54db: $00
	and b                                            ; $54dc: $a0
	nop                                              ; $54dd: $00
	ld [bc], a                                       ; $54de: $02
	ld a, a                                          ; $54df: $7f
	jr jr_034_54a4                                   ; $54e0: $18 $c2

	ld de, $c603                                     ; $54e2: $11 $03 $c6
	ld de, $c203                                     ; $54e5: $11 $03 $c2
	ld a, [bc]                                       ; $54e8: $0a
	ld b, $c6                                        ; $54e9: $06 $c6
	ld a, [bc]                                       ; $54eb: $0a
	ld b, $7f                                        ; $54ec: $06 $7f
	inc e                                            ; $54ee: $1c
	jp nz, $0616                                     ; $54ef: $c2 $16 $06

	add $16                                          ; $54f2: $c6 $16
	ld b, $7f                                        ; $54f4: $06 $7f
	jr jr_034_54ba                                   ; $54f6: $18 $c2

jr_034_54f8:
	ld [$c606], sp                                   ; $54f8: $08 $06 $c6
	ld [$c206], sp                                   ; $54fb: $08 $06 $c2
	inc d                                            ; $54fe: $14
	ld b, $c6                                        ; $54ff: $06 $c6
	inc d                                            ; $5501: $14
	ld b, $c2                                        ; $5502: $06 $c2
	inc bc                                           ; $5504: $03
	ld b, $c6                                        ; $5505: $06 $c6
	inc bc                                           ; $5507: $03
	ld b, $c2                                        ; $5508: $06 $c2
	rrca                                             ; $550a: $0f
	inc bc                                           ; $550b: $03
	add $0f                                          ; $550c: $c6 $0f
	inc bc                                           ; $550e: $03
	jp nz, $030f                                     ; $550f: $c2 $0f $03

	add $0f                                          ; $5512: $c6 $0f
	inc bc                                           ; $5514: $03
	jp nz, $0303                                     ; $5515: $c2 $03 $03

	add $03                                          ; $5518: $c6 $03
	inc bc                                           ; $551a: $03
	jp nz, $1d7e                                     ; $551b: $c2 $7e $1d

	nop                                              ; $551e: $00
	and b                                            ; $551f: $a0
	rrca                                             ; $5520: $0f
	ld a, [bc]                                       ; $5521: $0a
	ld a, [hl]                                       ; $5522: $7e
	nop                                              ; $5523: $00
	and b                                            ; $5524: $a0
	nop                                              ; $5525: $00
	ld [bc], a                                       ; $5526: $02
	jp nz, $030f                                     ; $5527: $c2 $0f $03

	add $0f                                          ; $552a: $c6 $0f
	inc bc                                           ; $552c: $03
	jp nz, $0c05                                     ; $552d: $c2 $05 $0c

	add $05                                          ; $5530: $c6 $05
	inc c                                            ; $5532: $0c
	nop                                              ; $5533: $00

jr_034_5534:
	jr jr_034_54f8                                   ; $5534: $18 $c2

	ld a, [bc]                                       ; $5536: $0a
	inc c                                            ; $5537: $0c
	add $0a                                          ; $5538: $c6 $0a
	inc c                                            ; $553a: $0c
	jp nz, $0c0c                                     ; $553b: $c2 $0c $0c

	add $0c                                          ; $553e: $c6 $0c
	inc c                                            ; $5540: $0c
	jp nz, $0c0d                                     ; $5541: $c2 $0d $0c

	add $0d                                          ; $5544: $c6 $0d
	inc c                                            ; $5546: $0c
	jp nz, $040e                                     ; $5547: $c2 $0e $04

	add $0e                                          ; $554a: $c6 $0e
	inc b                                            ; $554c: $04
	jp nz, $040e                                     ; $554d: $c2 $0e $04

	add $0e                                          ; $5550: $c6 $0e
	inc b                                            ; $5552: $04
	jp nz, $040e                                     ; $5553: $c2 $0e $04

	add $0e                                          ; $5556: $c6 $0e
	inc b                                            ; $5558: $04
	add $0e                                          ; $5559: $c6 $0e
	ld b, $00                                        ; $555b: $06 $00
	ld b, $00                                        ; $555d: $06 $00

jr_034_555f:
	inc c                                            ; $555f: $0c
	ld a, a                                          ; $5560: $7f
	jr jr_034_5534                                   ; $5561: $18 $d1

	jp nz, $240f                                     ; $5563: $c2 $0f $24

	add $0f                                          ; $5566: $c6 $0f
	ld b, $c2                                        ; $5568: $06 $c2
	rrca                                             ; $556a: $0f
	inc bc                                           ; $556b: $03
	add $0f                                          ; $556c: $c6 $0f
	inc bc                                           ; $556e: $03
	jp nz, $0614                                     ; $556f: $c2 $14 $06

	add $14                                          ; $5572: $c6 $14
	ld b, $c2                                        ; $5574: $06 $c2
	inc d                                            ; $5576: $14
	ld [de], a                                       ; $5577: $12
	add $14                                          ; $5578: $c6 $14
	ld b, $c2                                        ; $557a: $06 $c2
	ld [de], a                                       ; $557c: $12
	ld b, $c6                                        ; $557d: $06 $c6
	ld [de], a                                       ; $557f: $12
	ld b, $c2                                        ; $5580: $06 $c2
	ld de, $c606                                     ; $5582: $11 $06 $c6
	ld de, $c206                                     ; $5585: $11 $06 $c2
	ld de, $c612                                     ; $5588: $11 $12 $c6
	ld de, $c206                                     ; $558b: $11 $06 $c2
	ld de, $1406                                     ; $558e: $11 $06 $14
	ld b, $7f                                        ; $5591: $06 $7f
	inc e                                            ; $5593: $1c
	jp nz, $1216                                     ; $5594: $c2 $16 $12

	add $16                                          ; $5597: $c6 $16
	ld b, $7f                                        ; $5599: $06 $7f
	jr jr_034_555f                                   ; $559b: $18 $c2

	inc d                                            ; $559d: $14
	ld [de], a                                       ; $559e: $12
	add $14                                          ; $559f: $c6 $14
	ld b, $c2                                        ; $55a1: $06 $c2
	ld [de], a                                       ; $55a3: $12
	inc h                                            ; $55a4: $24
	add $12                                          ; $55a5: $c6 $12
	ld b, $c2                                        ; $55a7: $06 $c2
	dec c                                            ; $55a9: $0d
	inc bc                                           ; $55aa: $03
	add $12                                          ; $55ab: $c6 $12
	inc bc                                           ; $55ad: $03
	jp nz, $0614                                     ; $55ae: $c2 $14 $06

	add $14                                          ; $55b1: $c6 $14
	ld b, $c2                                        ; $55b3: $06 $c2
	inc d                                            ; $55b5: $14
	ld [de], a                                       ; $55b6: $12
	add $14                                          ; $55b7: $c6 $14
	ld b, $c2                                        ; $55b9: $06 $c2
	rrca                                             ; $55bb: $0f
	ld b, $c6                                        ; $55bc: $06 $c6
	inc d                                            ; $55be: $14
	ld b, $c4                                        ; $55bf: $06 $c4
	ld bc, $c606                                     ; $55c1: $01 $06 $c6

jr_034_55c4:
	ld bc, $c406                                     ; $55c4: $01 $06 $c4
	ld bc, $c606                                     ; $55c7: $01 $06 $c6
	ld bc, $c206                                     ; $55ca: $01 $06 $c2
	ld bc, $c606                                     ; $55cd: $01 $06 $c6
	ld bc, $c206                                     ; $55d0: $01 $06 $c2
	ld bc, $c606                                     ; $55d3: $01 $06 $c6
	ld bc, $c206                                     ; $55d6: $01 $06 $c2
	dec b                                            ; $55d9: $05
	ld b, $c6                                        ; $55da: $06 $c6
	dec b                                            ; $55dc: $05
	ld b, $c2                                        ; $55dd: $06 $c2
	dec b                                            ; $55df: $05
	ld b, $c6                                        ; $55e0: $06 $c6
	dec b                                            ; $55e2: $05
	ld b, $c2                                        ; $55e3: $06 $c2
	dec b                                            ; $55e5: $05
	ld b, $c6                                        ; $55e6: $06 $c6
	dec b                                            ; $55e8: $05
	ld b, $c2                                        ; $55e9: $06 $c2
	dec b                                            ; $55eb: $05
	ld b, $c6                                        ; $55ec: $06 $c6
	dec b                                            ; $55ee: $05
	ld b, $7f                                        ; $55ef: $06 $7f
	jr jr_034_55c4                                   ; $55f1: $18 $d1

	jp nz, $0603                                     ; $55f3: $c2 $03 $06

	add $03                                          ; $55f6: $c6 $03
	ld b, $c2                                        ; $55f8: $06 $c2
	rrca                                             ; $55fa: $0f
	inc bc                                           ; $55fb: $03
	add $0f                                          ; $55fc: $c6 $0f
	inc bc                                           ; $55fe: $03
	jp nz, $030f                                     ; $55ff: $c2 $0f $03

	add $0f                                          ; $5602: $c6 $0f
	inc bc                                           ; $5604: $03
	jp nz, $0303                                     ; $5605: $c2 $03 $03

	add $03                                          ; $5608: $c6 $03
	inc bc                                           ; $560a: $03
	jp nz, $1d7e                                     ; $560b: $c2 $7e $1d

	nop                                              ; $560e: $00
	and b                                            ; $560f: $a0
	rrca                                             ; $5610: $0f
	ld a, [bc]                                       ; $5611: $0a
	ld a, [hl]                                       ; $5612: $7e
	nop                                              ; $5613: $00
	and b                                            ; $5614: $a0
	nop                                              ; $5615: $00
	ld [bc], a                                       ; $5616: $02
	jp nz, $030f                                     ; $5617: $c2 $0f $03

	add $0f                                          ; $561a: $c6 $0f
	inc bc                                           ; $561c: $03
	jp nz, $0608                                     ; $561d: $c2 $08 $06

	add $08                                          ; $5620: $c6 $08
	ld b, $7f                                        ; $5622: $06 $7f
	inc e                                            ; $5624: $1c
	jp nz, $0616                                     ; $5625: $c2 $16 $06

	add $16                                          ; $5628: $c6 $16
	ld b, $7f                                        ; $562a: $06 $7f
	jr @-$3c                                         ; $562c: $18 $c2

	ld b, $06                                        ; $562e: $06 $06
	add $06                                          ; $5630: $c6 $06
	ld b, $c2                                        ; $5632: $06 $c2
	inc d                                            ; $5634: $14
	ld b, $c6                                        ; $5635: $06 $c6
	inc d                                            ; $5637: $14
	ld b, $c2                                        ; $5638: $06 $c2
	dec b                                            ; $563a: $05
	ld b, $c6                                        ; $563b: $06 $c6
	dec b                                            ; $563d: $05
	ld b, $c2                                        ; $563e: $06 $c2
	dec d                                            ; $5640: $15
	inc bc                                           ; $5641: $03
	add $15                                          ; $5642: $c6 $15
	inc bc                                           ; $5644: $03
	jp nz, $0315                                     ; $5645: $c2 $15 $03

	add $15                                          ; $5648: $c6 $15
	inc bc                                           ; $564a: $03
	jp nz, $0305                                     ; $564b: $c2 $05 $03

	add $05                                          ; $564e: $c6 $05
	inc bc                                           ; $5650: $03
	jp nz, $1d7e                                     ; $5651: $c2 $7e $1d

	nop                                              ; $5654: $00
	and b                                            ; $5655: $a0
	jr jr_034_5662                                   ; $5656: $18 $0a

	ld a, [hl]                                       ; $5658: $7e
	nop                                              ; $5659: $00
	and b                                            ; $565a: $a0
	nop                                              ; $565b: $00
	ld [bc], a                                       ; $565c: $02
	jp nz, $0311                                     ; $565d: $c2 $11 $03

	add $11                                          ; $5660: $c6 $11

jr_034_5662:
	inc bc                                           ; $5662: $03
	jp nz, $060a                                     ; $5663: $c2 $0a $06

	add $0a                                          ; $5666: $c6 $0a
	ld b, $7f                                        ; $5668: $06 $7f
	inc e                                            ; $566a: $1c
	jp nz, $0616                                     ; $566b: $c2 $16 $06

	add $16                                          ; $566e: $c6 $16
	ld b, $7f                                        ; $5670: $06 $7f
	jr @-$3c                                         ; $5672: $18 $c2

	ld [$c606], sp                                   ; $5674: $08 $06 $c6
	ld [$c206], sp                                   ; $5677: $08 $06 $c2
	inc d                                            ; $567a: $14
	ld b, $c6                                        ; $567b: $06 $c6
	inc d                                            ; $567d: $14
	ld b, $c2                                        ; $567e: $06 $c2
	inc bc                                           ; $5680: $03
	ld b, $c6                                        ; $5681: $06 $c6
	inc bc                                           ; $5683: $03
	ld b, $c2                                        ; $5684: $06 $c2
	rrca                                             ; $5686: $0f
	inc bc                                           ; $5687: $03
	add $0f                                          ; $5688: $c6 $0f
	inc bc                                           ; $568a: $03
	jp nz, $030f                                     ; $568b: $c2 $0f $03

	add $0f                                          ; $568e: $c6 $0f
	inc bc                                           ; $5690: $03
	jp nz, $0303                                     ; $5691: $c2 $03 $03

	add $03                                          ; $5694: $c6 $03
	inc bc                                           ; $5696: $03

jr_034_5697:
	jp nz, $1d7e                                     ; $5697: $c2 $7e $1d

	nop                                              ; $569a: $00
	and b                                            ; $569b: $a0
	rrca                                             ; $569c: $0f
	ld a, [bc]                                       ; $569d: $0a
	ld a, [hl]                                       ; $569e: $7e
	nop                                              ; $569f: $00
	and b                                            ; $56a0: $a0
	nop                                              ; $56a1: $00
	ld [bc], a                                       ; $56a2: $02
	jp nz, $030f                                     ; $56a3: $c2 $0f $03

	add $0f                                          ; $56a6: $c6 $0f
	inc bc                                           ; $56a8: $03
	jp nz, $0c05                                     ; $56a9: $c2 $05 $0c

	add $05                                          ; $56ac: $c6 $05
	inc c                                            ; $56ae: $0c
	nop                                              ; $56af: $00
	jr @-$38                                         ; $56b0: $18 $c6

	nop                                              ; $56b2: $00
	ld [$1d7e], sp                                   ; $56b3: $08 $7e $1d
	nop                                              ; $56b6: $00
	and c                                            ; $56b7: $a1
	inc h                                            ; $56b8: $24
	inc c                                            ; $56b9: $0c
	dec h                                            ; $56ba: $25
	inc bc                                           ; $56bb: $03
	inc h                                            ; $56bc: $24
	inc bc                                           ; $56bd: $03
	ld [hl+], a                                      ; $56be: $22
	jr nc, jr_034_56e3                               ; $56bf: $30 $22

	ld d, $7e                                        ; $56c1: $16 $7e
	nop                                              ; $56c3: $00
	and b                                            ; $56c4: $a0
	or h                                             ; $56c5: $b4
	ld b, [hl]                                       ; $56c6: $46
	ld b, c                                          ; $56c7: $41
	jr @+$80                                         ; $56c8: $18 $7e

	nop                                              ; $56ca: $00
	and b                                            ; $56cb: $a0
	nop                                              ; $56cc: $00
	inc c                                            ; $56cd: $0c
	add hl, de                                       ; $56ce: $19
	jr jr_034_5697                                   ; $56cf: $18 $c6

	add hl, de                                       ; $56d1: $19
	inc c                                            ; $56d2: $0c
	nop                                              ; $56d3: $00
	inc c                                            ; $56d4: $0c
	jr @+$1a                                         ; $56d5: $18 $18

	add $18                                          ; $56d7: $c6 $18
	inc c                                            ; $56d9: $0c
	nop                                              ; $56da: $00
	inc c                                            ; $56db: $0c
	call nz, $1819                                   ; $56dc: $c4 $19 $18
	add $19                                          ; $56df: $c6 $19
	inc c                                            ; $56e1: $0c
	nop                                              ; $56e2: $00

jr_034_56e3:
	inc c                                            ; $56e3: $0c
	ld d, $18                                        ; $56e4: $16 $18
	add $16                                          ; $56e6: $c6 $16
	inc c                                            ; $56e8: $0c
	ret nc                                           ; $56e9: $d0

	ld b, c                                          ; $56ea: $41
	nop                                              ; $56eb: $00
	inc b                                            ; $56ec: $04
	call nz, $1822                                   ; $56ed: $c4 $22 $18
	add $22                                          ; $56f0: $c6 $22
	inc d                                            ; $56f2: $14
	nop                                              ; $56f3: $00
	inc b                                            ; $56f4: $04
	call nz, $1820                                   ; $56f5: $c4 $20 $18
	add $20                                          ; $56f8: $c6 $20
	inc e                                            ; $56fa: $1c
	call nz, $300a                                   ; $56fb: $c4 $0a $30
	add $0a                                          ; $56fe: $c6 $0a
	inc a                                            ; $5700: $3c
	nop                                              ; $5701: $00
	inc c                                            ; $5702: $0c
	ret nc                                           ; $5703: $d0

	ld c, [hl]                                       ; $5704: $4e
	rst $38                                          ; $5705: $ff
	pop de                                           ; $5706: $d1
	jp nz, $060a                                     ; $5707: $c2 $0a $06

	add $0a                                          ; $570a: $c6 $0a
	ld b, $d3                                        ; $570c: $06 $d3
	jp nz, $0616                                     ; $570e: $c2 $16 $06

	add $16                                          ; $5711: $c6 $16
	ld b, $d1                                        ; $5713: $06 $d1
	jp nz, $0605                                     ; $5715: $c2 $05 $06

	add $05                                          ; $5718: $c6 $05
	ld b, $d3                                        ; $571a: $06 $d3
	jp nz, $0616                                     ; $571c: $c2 $16 $06

	add $16                                          ; $571f: $c6 $16
	ld b, $d1                                        ; $5721: $06 $d1
	jp nz, $0609                                     ; $5723: $c2 $09 $06

	add $09                                          ; $5726: $c6 $09
	ld b, $d3                                        ; $5728: $06 $d3
	jp nz, $0618                                     ; $572a: $c2 $18 $06

	add $18                                          ; $572d: $c6 $18
	ld b, $d1                                        ; $572f: $06 $d1
	jp nz, $0605                                     ; $5731: $c2 $05 $06

	add $05                                          ; $5734: $c6 $05
	ld b, $d3                                        ; $5736: $06 $d3
	jp nz, $0618                                     ; $5738: $c2 $18 $06

	add $18                                          ; $573b: $c6 $18
	ld b, $d1                                        ; $573d: $06 $d1
	jp nz, $0608                                     ; $573f: $c2 $08 $06

	add $08                                          ; $5742: $c6 $08
	ld b, $d3                                        ; $5744: $06 $d3
	jp nz, $0618                                     ; $5746: $c2 $18 $06

	add $18                                          ; $5749: $c6 $18
	ld b, $d1                                        ; $574b: $06 $d1
	jp nz, $0605                                     ; $574d: $c2 $05 $06

	add $05                                          ; $5750: $c6 $05
	ld b, $d3                                        ; $5752: $06 $d3
	jp nz, $0618                                     ; $5754: $c2 $18 $06

	add $18                                          ; $5757: $c6 $18
	ld b, $d1                                        ; $5759: $06 $d1
	jp nz, $0607                                     ; $575b: $c2 $07 $06

	add $07                                          ; $575e: $c6 $07
	ld b, $d3                                        ; $5760: $06 $d3
	jp nz, $0616                                     ; $5762: $c2 $16 $06

	add $16                                          ; $5765: $c6 $16
	ld b, $d1                                        ; $5767: $06 $d1
	jp nz, $0603                                     ; $5769: $c2 $03 $06

	add $03                                          ; $576c: $c6 $03
	ld b, $d3                                        ; $576e: $06 $d3
	jp nz, $0616                                     ; $5770: $c2 $16 $06

	add $16                                          ; $5773: $c6 $16
	ld b, $d1                                        ; $5775: $06 $d1
	jp nz, $0606                                     ; $5777: $c2 $06 $06

	add $06                                          ; $577a: $c6 $06
	ld b, $d3                                        ; $577c: $06 $d3

jr_034_577e:
	jp nz, $0619                                     ; $577e: $c2 $19 $06

	add $19                                          ; $5781: $c6 $19
	ld b, $d1                                        ; $5783: $06 $d1
	jp nz, $0601                                     ; $5785: $c2 $01 $06

	add $01                                          ; $5788: $c6 $01
	ld b, $d3                                        ; $578a: $06 $d3
	jp nz, $0619                                     ; $578c: $c2 $19 $06

	add $19                                          ; $578f: $c6 $19
	ld b, $d1                                        ; $5791: $06 $d1
	jp nz, $0605                                     ; $5793: $c2 $05 $06

	add $05                                          ; $5796: $c6 $05
	ld b, $d3                                        ; $5798: $06 $d3
	jp nz, $061b                                     ; $579a: $c2 $1b $06

	add $1b                                          ; $579d: $c6 $1b
	ld b, $d1                                        ; $579f: $06 $d1
	jp nz, $060c                                     ; $57a1: $c2 $0c $06

	add $0c                                          ; $57a4: $c6 $0c
	ld b, $d3                                        ; $57a6: $06 $d3
	jp nz, $061b                                     ; $57a8: $c2 $1b $06

	add $1b                                          ; $57ab: $c6 $1b
	ld b, $fd                                        ; $57ad: $06 $fd
	ret nc                                           ; $57af: $d0

	ld c, [hl]                                       ; $57b0: $4e
	ei                                               ; $57b1: $fb
	db $fd                                           ; $57b2: $fd
	or h                                             ; $57b3: $b4
	ld e, b                                          ; $57b4: $58
	ei                                               ; $57b5: $fb
	rlca                                             ; $57b6: $07
	cp [hl]                                          ; $57b7: $be
	ld b, $1f                                        ; $57b8: $06 $1f
	dec e                                            ; $57ba: $1d
	ld e, $1d                                        ; $57bb: $1e $1d
	dec e                                            ; $57bd: $1d
	jr nz, jr_034_577e                               ; $57be: $20 $be

	rra                                              ; $57c0: $1f
	inc c                                            ; $57c1: $0c
	cp [hl]                                          ; $57c2: $be
	ld b, $20                                        ; $57c3: $06 $20
	jr nz, jr_034_57e4                               ; $57c5: $20 $1d

	jr nz, jr_034_57e9                               ; $57c7: $20 $20

	jr nz, jr_034_57ea                               ; $57c9: $20 $1f

	ld e, $be                                        ; $57cb: $1e $be
	ei                                               ; $57cd: $fb
	db $fd                                           ; $57ce: $fd
	or h                                             ; $57cf: $b4
	ld e, b                                          ; $57d0: $58
	ei                                               ; $57d1: $fb
	inc bc                                           ; $57d2: $03
	cp [hl]                                          ; $57d3: $be
	inc c                                            ; $57d4: $0c
	rra                                              ; $57d5: $1f
	ld e, $20                                        ; $57d6: $1e $20
	ld e, $be                                        ; $57d8: $1e $be
	jr nz, jr_034_57f4                               ; $57da: $20 $18

	jr nz, jr_034_57f6                               ; $57dc: $20 $18

	db $fc                                           ; $57de: $fc
	db $fd                                           ; $57df: $fd
	jp z, $fc58                                      ; $57e0: $ca $58 $fc

	inc bc                                           ; $57e3: $03

jr_034_57e4:
	cp [hl]                                          ; $57e4: $be
	inc c                                            ; $57e5: $0c
	ld e, $1d                                        ; $57e6: $1e $1d
	nop                                              ; $57e8: $00

jr_034_57e9:
	dec e                                            ; $57e9: $1d

jr_034_57ea:
	cp [hl]                                          ; $57ea: $be
	nop                                              ; $57eb: $00
	inc c                                            ; $57ec: $0c
	dec e                                            ; $57ed: $1d
	inc c                                            ; $57ee: $0c
	cp [hl]                                          ; $57ef: $be
	ld b, $20                                        ; $57f0: $06 $20
	jr nz, jr_034_5813                               ; $57f2: $20 $1f

jr_034_57f4:
	ld e, $be                                        ; $57f4: $1e $be

jr_034_57f6:
	db $fd                                           ; $57f6: $fd
	db $dd                                           ; $57f7: $dd
	ld e, b                                          ; $57f8: $58
	rra                                              ; $57f9: $1f
	inc c                                            ; $57fa: $0c
	dec e                                            ; $57fb: $1d
	ld b, $1f                                        ; $57fc: $06 $1f
	ld b, $20                                        ; $57fe: $06 $20
	inc c                                            ; $5800: $0c
	ld e, $06                                        ; $5801: $1e $06
	dec e                                            ; $5803: $1d
	ld b, $1f                                        ; $5804: $06 $1f
	inc c                                            ; $5806: $0c
	dec e                                            ; $5807: $1d
	ld b, $1f                                        ; $5808: $06 $1f
	ld b, $20                                        ; $580a: $06 $20
	inc c                                            ; $580c: $0c
	ld e, $06                                        ; $580d: $1e $06
	dec e                                            ; $580f: $1d
	ld b, $1f                                        ; $5810: $06 $1f
	inc c                                            ; $5812: $0c

jr_034_5813:
	cp [hl]                                          ; $5813: $be
	ld b, $1f                                        ; $5814: $06 $1f
	dec e                                            ; $5816: $1d
	rra                                              ; $5817: $1f
	dec e                                            ; $5818: $1d
	rra                                              ; $5819: $1f
	ld e, $20                                        ; $581a: $1e $20
	dec e                                            ; $581c: $1d
	jr nz, @+$1f                                     ; $581d: $20 $1d

	jr nz, jr_034_5841                               ; $581f: $20 $20

	jr nz, @+$22                                     ; $5821: $20 $20

	cp [hl]                                          ; $5823: $be
	db $fd                                           ; $5824: $fd
	ld sp, hl                                        ; $5825: $f9
	ld e, b                                          ; $5826: $58
	db $fd                                           ; $5827: $fd
	ld sp, hl                                        ; $5828: $f9
	ld e, b                                          ; $5829: $58
	jr nz, jr_034_5838                               ; $582a: $20 $0c

	rra                                              ; $582c: $1f
	ld b, $1f                                        ; $582d: $06 $1f
	ld b, $20                                        ; $582f: $06 $20
	inc c                                            ; $5831: $0c
	dec e                                            ; $5832: $1d

jr_034_5833:
	ld b, $1f                                        ; $5833: $06 $1f
	ld b, $1e                                        ; $5835: $06 $1e
	inc c                                            ; $5837: $0c

jr_034_5838:
	nop                                              ; $5838: $00
	jr @+$1f                                         ; $5839: $18 $1d

	ld b, $1d                                        ; $583b: $06 $1d
	ld b, $be                                        ; $583d: $06 $be
	ld b, $1e                                        ; $583f: $06 $1e

jr_034_5841:
	dec e                                            ; $5841: $1d
	jr nz, jr_034_5864                               ; $5842: $20 $20

	ld e, $1f                                        ; $5844: $1e $1f
	dec e                                            ; $5846: $1d
	rra                                              ; $5847: $1f
	ld e, $1d                                        ; $5848: $1e $1d
	rra                                              ; $584a: $1f
	rra                                              ; $584b: $1f
	cp [hl]                                          ; $584c: $be
	jr nz, jr_034_5857                               ; $584d: $20 $08

	jr nz, @+$0a                                     ; $584f: $20 $08

	jr nz, jr_034_585b                               ; $5851: $20 $08

	cp [hl]                                          ; $5853: $be
	inc bc                                           ; $5854: $03
	inc hl                                           ; $5855: $23
	ld [hl+], a                                      ; $5856: $22

jr_034_5857:
	ld hl, $be20                                     ; $5857: $21 $20 $be
	nop                                              ; $585a: $00

jr_034_585b:
	inc c                                            ; $585b: $0c
	db $fd                                           ; $585c: $fd
	ld [de], a                                       ; $585d: $12
	ld e, c                                          ; $585e: $59
	db $fd                                           ; $585f: $fd
	ld [de], a                                       ; $5860: $12
	ld e, c                                          ; $5861: $59
	db $fd                                           ; $5862: $fd
	ld [de], a                                       ; $5863: $12

jr_034_5864:
	ld e, c                                          ; $5864: $59
	cp [hl]                                          ; $5865: $be
	inc c                                            ; $5866: $0c
	ld [hl+], a                                      ; $5867: $22
	ld hl, $2020                                     ; $5868: $21 $20 $20
	jr nz, jr_034_588d                               ; $586b: $20 $20

	cp [hl]                                          ; $586d: $be
	cp [hl]                                          ; $586e: $be
	ld b, $20                                        ; $586f: $06 $20
	jr nz, @+$21                                     ; $5871: $20 $1f

	jr nz, jr_034_5833                               ; $5873: $20 $be

	db $fd                                           ; $5875: $fd
	ld sp, hl                                        ; $5876: $f9
	ld e, b                                          ; $5877: $58
	db $fd                                           ; $5878: $fd
	ld sp, hl                                        ; $5879: $f9
	ld e, b                                          ; $587a: $58
	cp [hl]                                          ; $587b: $be
	ld b, $20                                        ; $587c: $06 $20
	dec e                                            ; $587e: $1d
	rra                                              ; $587f: $1f
	rra                                              ; $5880: $1f
	jr nz, @+$21                                     ; $5881: $20 $1f

	dec e                                            ; $5883: $1d
	rra                                              ; $5884: $1f
	cp [hl]                                          ; $5885: $be
	ld e, $0c                                        ; $5886: $1e $0c
	nop                                              ; $5888: $00
	jr jr_034_58a8                                   ; $5889: $18 $1d

	ld b, $1d                                        ; $588b: $06 $1d

jr_034_588d:
	ld b, $1e                                        ; $588d: $06 $1e
	inc c                                            ; $588f: $0c
	cp [hl]                                          ; $5890: $be
	ld b, $20                                        ; $5891: $06 $20
	jr nz, jr_034_58b3                               ; $5893: $20 $1e

	rra                                              ; $5895: $1f
	nop                                              ; $5896: $00
	rra                                              ; $5897: $1f
	cp [hl]                                          ; $5898: $be
	ld e, $0c                                        ; $5899: $1e $0c
	rra                                              ; $589b: $1f
	ld b, $1f                                        ; $589c: $06 $1f
	ld b, $20                                        ; $589e: $06 $20
	ld [$0820], sp                                   ; $58a0: $08 $20 $08
	jr nz, jr_034_58ad                               ; $58a3: $20 $08

	ret nc                                           ; $58a5: $d0

	ld b, [hl]                                       ; $58a6: $46
	nop                                              ; $58a7: $00

jr_034_58a8:
	ret nz                                           ; $58a8: $c0

	ret nc                                           ; $58a9: $d0

	ld b, c                                          ; $58aa: $41
	nop                                              ; $58ab: $00
	ld l, b                                          ; $58ac: $68

jr_034_58ad:
	nop                                              ; $58ad: $00
	ld l, h                                          ; $58ae: $6c
	nop                                              ; $58af: $00
	inc c                                            ; $58b0: $0c
	ret nc                                           ; $58b1: $d0

	ld c, [hl]                                       ; $58b2: $4e

jr_034_58b3:
	rst $38                                          ; $58b3: $ff
	cp [hl]                                          ; $58b4: $be
	ld b, $1f                                        ; $58b5: $06 $1f
	dec e                                            ; $58b7: $1d
	dec e                                            ; $58b8: $1d
	ld e, $20                                        ; $58b9: $1e $20
	dec e                                            ; $58bb: $1d
	cp [hl]                                          ; $58bc: $be
	rra                                              ; $58bd: $1f
	inc c                                            ; $58be: $0c
	rra                                              ; $58bf: $1f
	inc c                                            ; $58c0: $0c
	dec e                                            ; $58c1: $1d
	inc c                                            ; $58c2: $0c
	jr nz, jr_034_58cb                               ; $58c3: $20 $06

	jr nz, jr_034_58cd                               ; $58c5: $20 $06

	rra                                              ; $58c7: $1f
	inc c                                            ; $58c8: $0c
	db $fd                                           ; $58c9: $fd
	rra                                              ; $58ca: $1f

jr_034_58cb:
	inc c                                            ; $58cb: $0c
	dec e                                            ; $58cc: $1d

jr_034_58cd:
	inc c                                            ; $58cd: $0c
	cp [hl]                                          ; $58ce: $be
	ld b, $20                                        ; $58cf: $06 $20
	jr nz, jr_034_58f1                               ; $58d1: $20 $1e

	dec e                                            ; $58d3: $1d
	cp [hl]                                          ; $58d4: $be
	cp [hl]                                          ; $58d5: $be
	inc c                                            ; $58d6: $0c
	rra                                              ; $58d7: $1f
	dec e                                            ; $58d8: $1d
	jr nz, jr_034_58f9                               ; $58d9: $20 $1e

	cp [hl]                                          ; $58db: $be
	db $fd                                           ; $58dc: $fd
	ei                                               ; $58dd: $fb
	rra                                              ; $58de: $1f
	inc c                                            ; $58df: $0c
	dec e                                            ; $58e0: $1d
	ld b, $1f                                        ; $58e1: $06 $1f
	ld b, $20                                        ; $58e3: $06 $20
	inc c                                            ; $58e5: $0c
	ld e, $06                                        ; $58e6: $1e $06
	dec e                                            ; $58e8: $1d
	ld b, $1f                                        ; $58e9: $06 $1f
	inc c                                            ; $58eb: $0c
	dec e                                            ; $58ec: $1d
	ld b, $1f                                        ; $58ed: $06 $1f
	ld b, $20                                        ; $58ef: $06 $20

jr_034_58f1:
	inc c                                            ; $58f1: $0c
	ld e, $06                                        ; $58f2: $1e $06
	dec e                                            ; $58f4: $1d
	ld b, $fb                                        ; $58f5: $06 $fb
	ld [bc], a                                       ; $58f7: $02
	db $fd                                           ; $58f8: $fd

jr_034_58f9:
	jr nz, jr_034_5907                               ; $58f9: $20 $0c

	rra                                              ; $58fb: $1f
	ld b, $1f                                        ; $58fc: $06 $1f
	ld b, $20                                        ; $58fe: $06 $20
	ld b, $1f                                        ; $5900: $06 $1f
	inc c                                            ; $5902: $0c
	rra                                              ; $5903: $1f
	ld b, $20                                        ; $5904: $06 $20
	inc c                                            ; $5906: $0c

jr_034_5907:
	rra                                              ; $5907: $1f
	ld b, $1d                                        ; $5908: $06 $1d
	ld b, $20                                        ; $590a: $06 $20
	inc c                                            ; $590c: $0c
	rra                                              ; $590d: $1f
	ld b, $1d                                        ; $590e: $06 $1d
	ld b, $fd                                        ; $5910: $06 $fd
	cp [hl]                                          ; $5912: $be
	ld b, $1f                                        ; $5913: $06 $1f
	add hl, hl                                       ; $5915: $29
	rra                                              ; $5916: $1f
	add hl, hl                                       ; $5917: $29
	ld h, $29                                        ; $5918: $26 $29
	daa                                              ; $591a: $27
	ld a, [hl+]                                      ; $591b: $2a
	jr nz, @+$2c                                     ; $591c: $20 $2a

	jr nz, jr_034_594a                               ; $591e: $20 $2a

	ld hl, $222a                                     ; $5920: $21 $2a $22
	ld a, [hl+]                                      ; $5923: $2a
	cp [hl]                                          ; $5924: $be
	db $fd                                           ; $5925: $fd
	ret nc                                           ; $5926: $d0

	ld a, b                                          ; $5927: $78
	cp $b5                                           ; $5928: $fe $b5
	ld d, c                                          ; $592a: $51
	ld bc, $03b4                                     ; $592b: $01 $b4 $03
	db $fd                                           ; $592e: $fd
	ld [hl], $5b                                     ; $592f: $36 $5b
	pop de                                           ; $5931: $d1
	sub c                                            ; $5932: $91
	push bc                                          ; $5933: $c5
	ld [de], a                                       ; $5934: $12
	inc c                                            ; $5935: $0c
	ld e, $0c                                        ; $5936: $1e $0c
	dec de                                           ; $5938: $1b
	inc c                                            ; $5939: $0c
	add hl, de                                       ; $593a: $19
	ld b, $18                                        ; $593b: $06 $18
	inc c                                            ; $593d: $0c
	jr jr_034_5946                                   ; $593e: $18 $06

	ld d, $0c                                        ; $5940: $16 $0c
	inc d                                            ; $5942: $14
	inc c                                            ; $5943: $0c
	ld [de], a                                       ; $5944: $12
	inc c                                            ; $5945: $0c

jr_034_5946:
	db $fd                                           ; $5946: $fd
	ld [hl], $5b                                     ; $5947: $36 $5b
	ld [de], a                                       ; $5949: $12

jr_034_594a:
	inc c                                            ; $594a: $0c
	ld e, $0c                                        ; $594b: $1e $0c
	call nz, $0c1b                                   ; $594d: $c4 $1b $0c
	add hl, de                                       ; $5950: $19
	ld b, $18                                        ; $5951: $06 $18
	inc c                                            ; $5953: $0c
	jr jr_034_595c                                   ; $5954: $18 $06

	sub [hl]                                         ; $5956: $96
	nop                                              ; $5957: $00
	nop                                              ; $5958: $00
	sub c                                            ; $5959: $91
	rst JumpTable                                          ; $595a: $c7
	dec h                                            ; $595b: $25

jr_034_595c:
	ld b, $c3                                        ; $595c: $06 $c3
	dec h                                            ; $595e: $25
	ld b, $c7                                        ; $595f: $06 $c7
	dec h                                            ; $5961: $25
	ld b, $c3                                        ; $5962: $06 $c3
	dec h                                            ; $5964: $25
	ld b, $c7                                        ; $5965: $06 $c7
	daa                                              ; $5967: $27
	ld b, $c3                                        ; $5968: $06 $c3
	daa                                              ; $596a: $27
	ld b, $d1                                        ; $596b: $06 $d1
	sub b                                            ; $596d: $90
	ei                                               ; $596e: $fb
	ld a, l                                          ; $596f: $7d
	ld bc, $20c4                                     ; $5970: $01 $c4 $20
	inc b                                            ; $5973: $04
	pop bc                                           ; $5974: $c1
	jr nz, jr_034_5979                               ; $5975: $20 $02

	ld a, l                                          ; $5977: $7d
	nop                                              ; $5978: $00

jr_034_5979:
	ret z                                            ; $5979: $c8

	dec e                                            ; $597a: $1d
	inc b                                            ; $597b: $04
	jp $0214                                         ; $597c: $c3 $14 $02


	ret z                                            ; $597f: $c8

	add hl, de                                       ; $5980: $19
	inc b                                            ; $5981: $04
	jp $021d                                         ; $5982: $c3 $1d $02


	ret z                                            ; $5985: $c8

	inc d                                            ; $5986: $14
	inc b                                            ; $5987: $04
	jp $020d                                         ; $5988: $c3 $0d $02


	ei                                               ; $598b: $fb
	inc b                                            ; $598c: $04
	ei                                               ; $598d: $fb
	ld a, l                                          ; $598e: $7d
	ld bc, $20c4                                     ; $598f: $01 $c4 $20
	inc b                                            ; $5992: $04
	pop bc                                           ; $5993: $c1
	jr nz, jr_034_5998                               ; $5994: $20 $02

	ld a, l                                          ; $5996: $7d
	nop                                              ; $5997: $00

jr_034_5998:
	ret z                                            ; $5998: $c8

	dec e                                            ; $5999: $1d
	inc b                                            ; $599a: $04
	jp $0214                                         ; $599b: $c3 $14 $02


	ret z                                            ; $599e: $c8

	rla                                              ; $599f: $17
	inc b                                            ; $59a0: $04
	jp $021d                                         ; $59a1: $c3 $1d $02


	ret z                                            ; $59a4: $c8

	inc d                                            ; $59a5: $14
	inc b                                            ; $59a6: $04
	jp $020b                                         ; $59a7: $c3 $0b $02


	ei                                               ; $59aa: $fb
	inc b                                            ; $59ab: $04
	ei                                               ; $59ac: $fb
	ld a, l                                          ; $59ad: $7d
	ld bc, $20c7                                     ; $59ae: $01 $c7 $20
	inc b                                            ; $59b1: $04
	pop bc                                           ; $59b2: $c1
	jr nz, jr_034_59b7                               ; $59b3: $20 $02

	ld a, l                                          ; $59b5: $7d
	nop                                              ; $59b6: $00

jr_034_59b7:
	rst JumpTable                                          ; $59b7: $c7
	dec e                                            ; $59b8: $1d
	inc b                                            ; $59b9: $04
	jp $0220                                         ; $59ba: $c3 $20 $02


	rst JumpTable                                          ; $59bd: $c7
	ld a, [de]                                       ; $59be: $1a
	inc b                                            ; $59bf: $04
	jp $021d                                         ; $59c0: $c3 $1d $02


	rst JumpTable                                          ; $59c3: $c7
	ld d, $04                                        ; $59c4: $16 $04
	jp $021a                                         ; $59c6: $c3 $1a $02


	ei                                               ; $59c9: $fb
	inc b                                            ; $59ca: $04
	rst JumpTable                                          ; $59cb: $c7
	ld [hl+], a                                      ; $59cc: $22
	inc b                                            ; $59cd: $04
	jp nz, $0222                                     ; $59ce: $c2 $22 $02

	rst JumpTable                                          ; $59d1: $c7
	ld e, $04                                        ; $59d2: $1e $04
	jp nz, $0222                                     ; $59d4: $c2 $22 $02

	rst JumpTable                                          ; $59d7: $c7
	dec de                                           ; $59d8: $1b
	inc b                                            ; $59d9: $04
	jp nz, $021e                                     ; $59da: $c2 $1e $02

	rst JumpTable                                          ; $59dd: $c7
	ld d, $04                                        ; $59de: $16 $04
	jp nz, $021b                                     ; $59e0: $c2 $1b $02

	rst JumpTable                                          ; $59e3: $c7
	ld [hl+], a                                      ; $59e4: $22
	inc b                                            ; $59e5: $04
	jp nz, $0222                                     ; $59e6: $c2 $22 $02

	rst JumpTable                                          ; $59e9: $c7
	ld e, $04                                        ; $59ea: $1e $04
	jp nz, $0222                                     ; $59ec: $c2 $22 $02

	rst JumpTable                                          ; $59ef: $c7
	ld a, [de]                                       ; $59f0: $1a
	inc b                                            ; $59f1: $04
	jp nz, $021e                                     ; $59f2: $c2 $1e $02

	rst JumpTable                                          ; $59f5: $c7
	ld d, $04                                        ; $59f6: $16 $04
	jp nz, $021a                                     ; $59f8: $c2 $1a $02

	ret                                              ; $59fb: $c9


	ld [hl+], a                                      ; $59fc: $22
	inc b                                            ; $59fd: $04
	jp nz, $0222                                     ; $59fe: $c2 $22 $02

	ret                                              ; $5a01: $c9


	ld e, $04                                        ; $5a02: $1e $04
	jp nz, $0222                                     ; $5a04: $c2 $22 $02

	ret                                              ; $5a07: $c9


	ld d, $04                                        ; $5a08: $16 $04
	jp nz, $021e                                     ; $5a0a: $c2 $1e $02

	ret                                              ; $5a0d: $c9


	ld [de], a                                       ; $5a0e: $12
	inc b                                            ; $5a0f: $04
	jp nz, $0216                                     ; $5a10: $c2 $16 $02

	ret                                              ; $5a13: $c9


	rrca                                             ; $5a14: $0f
	inc b                                            ; $5a15: $04
	jp nz, $0212                                     ; $5a16: $c2 $12 $02

	ret                                              ; $5a19: $c9


	ld [de], a                                       ; $5a1a: $12
	inc b                                            ; $5a1b: $04
	jp nz, $020f                                     ; $5a1c: $c2 $0f $02

	ret                                              ; $5a1f: $c9


	ld d, $04                                        ; $5a20: $16 $04
	jp nz, $0212                                     ; $5a22: $c2 $12 $02

	ret                                              ; $5a25: $c9


	dec de                                           ; $5a26: $1b
	inc b                                            ; $5a27: $04
	jp nz, $0216                                     ; $5a28: $c2 $16 $02

	pop de                                           ; $5a2b: $d1
	sub b                                            ; $5a2c: $90
	ei                                               ; $5a2d: $fb
	ret z                                            ; $5a2e: $c8

	ld e, $04                                        ; $5a2f: $1e $04
	pop bc                                           ; $5a31: $c1
	ld e, $02                                        ; $5a32: $1e $02
	ret z                                            ; $5a34: $c8

	dec de                                           ; $5a35: $1b
	inc b                                            ; $5a36: $04
	jp nz, $021e                                     ; $5a37: $c2 $1e $02

	ret z                                            ; $5a3a: $c8

	rla                                              ; $5a3b: $17
	inc b                                            ; $5a3c: $04
	jp nz, $021b                                     ; $5a3d: $c2 $1b $02

	ret z                                            ; $5a40: $c8

	ld [de], a                                       ; $5a41: $12
	inc b                                            ; $5a42: $04
	jp nz, $0217                                     ; $5a43: $c2 $17 $02

	ei                                               ; $5a46: $fb
	inc b                                            ; $5a47: $04
	ei                                               ; $5a48: $fb
	ret z                                            ; $5a49: $c8

	ld e, $04                                        ; $5a4a: $1e $04
	pop bc                                           ; $5a4c: $c1
	ld e, $02                                        ; $5a4d: $1e $02
	rst JumpTable                                          ; $5a4f: $c7
	dec de                                           ; $5a50: $1b
	inc b                                            ; $5a51: $04
	jp nz, $021e                                     ; $5a52: $c2 $1e $02

	ret z                                            ; $5a55: $c8

	jr jr_034_5a5c                                   ; $5a56: $18 $04

	jp nz, $021b                                     ; $5a58: $c2 $1b $02

	ret z                                            ; $5a5b: $c8

jr_034_5a5c:
	ld [de], a                                       ; $5a5c: $12
	inc b                                            ; $5a5d: $04
	jp nz, $0218                                     ; $5a5e: $c2 $18 $02

	ei                                               ; $5a61: $fb
	inc b                                            ; $5a62: $04
	ei                                               ; $5a63: $fb
	ret z                                            ; $5a64: $c8

	ld e, $04                                        ; $5a65: $1e $04
	pop bc                                           ; $5a67: $c1
	ld e, $02                                        ; $5a68: $1e $02
	rst JumpTable                                          ; $5a6a: $c7
	dec de                                           ; $5a6b: $1b
	inc b                                            ; $5a6c: $04
	jp nz, $021e                                     ; $5a6d: $c2 $1e $02

	ret z                                            ; $5a70: $c8

	jr jr_034_5a77                                   ; $5a71: $18 $04

	jp nz, $021b                                     ; $5a73: $c2 $1b $02

	ret z                                            ; $5a76: $c8

jr_034_5a77:
	inc d                                            ; $5a77: $14
	inc b                                            ; $5a78: $04
	jp nz, $0218                                     ; $5a79: $c2 $18 $02

jr_034_5a7c:
	ei                                               ; $5a7c: $fb
	inc b                                            ; $5a7d: $04
	ei                                               ; $5a7e: $fb
	ret z                                            ; $5a7f: $c8

	jr nz, jr_034_5a86                               ; $5a80: $20 $04

	pop bc                                           ; $5a82: $c1
	jr nz, jr_034_5a87                               ; $5a83: $20 $02

	rst JumpTable                                          ; $5a85: $c7

jr_034_5a86:
	dec e                                            ; $5a86: $1d

jr_034_5a87:
	inc b                                            ; $5a87: $04
	jp nz, $0214                                     ; $5a88: $c2 $14 $02

	ret z                                            ; $5a8b: $c8

	add hl, de                                       ; $5a8c: $19
	inc b                                            ; $5a8d: $04
	jp nz, $021d                                     ; $5a8e: $c2 $1d $02

	ret z                                            ; $5a91: $c8

	inc d                                            ; $5a92: $14
	inc b                                            ; $5a93: $04
	jp nz, $020d                                     ; $5a94: $c2 $0d $02

	ei                                               ; $5a97: $fb
	inc bc                                           ; $5a98: $03
	or l                                             ; $5a99: $b5
	pop bc                                           ; $5a9a: $c1
	ld bc, $01fa                                     ; $5a9b: $01 $fa $01
	cp [hl]                                          ; $5a9e: $be
	ld b, $0d                                        ; $5a9f: $06 $0d
	ld de, $1914                                     ; $5aa1: $11 $14 $19
	cp [hl]                                          ; $5aa4: $be
	or l                                             ; $5aa5: $b5
	ld b, c                                          ; $5aa6: $41
	ld bc, $0000                                     ; $5aa7: $01 $00 $00
	ld a, [hl]                                       ; $5aaa: $7e
	dec e                                            ; $5aab: $1d
	ld d, $a0                                        ; $5aac: $16 $a0
	dec e                                            ; $5aae: $1d
	inc a                                            ; $5aaf: $3c
	nop                                              ; $5ab0: $00
	add hl, bc                                       ; $5ab1: $09
	jp $017d                                         ; $5ab2: $c3 $7d $01


	add hl, hl                                       ; $5ab5: $29
	inc c                                            ; $5ab6: $0c
	add hl, hl                                       ; $5ab7: $29
	inc c                                            ; $5ab8: $0c
	ld a, [hl+]                                      ; $5ab9: $2a
	inc bc                                           ; $5aba: $03
	ld a, l                                          ; $5abb: $7d
	nop                                              ; $5abc: $00
	call nz, $1d7e                                   ; $5abd: $c4 $7e $1d
	ld d, $a0                                        ; $5ac0: $16 $a0
	nop                                              ; $5ac2: $00
	inc c                                            ; $5ac3: $0c
	dec e                                            ; $5ac4: $1d
	inc c                                            ; $5ac5: $0c
	ld e, $0c                                        ; $5ac6: $1e $0c
	dec e                                            ; $5ac8: $1d

jr_034_5ac9:
	jr jr_034_5acb                                   ; $5ac9: $18 $00

jr_034_5acb:
	add hl, bc                                       ; $5acb: $09
	jp $017d                                         ; $5acc: $c3 $7d $01


	add hl, hl                                       ; $5acf: $29
	inc c                                            ; $5ad0: $0c
	add hl, hl                                       ; $5ad1: $29
	inc c                                            ; $5ad2: $0c
	ld a, [hl+]                                      ; $5ad3: $2a
	inc bc                                           ; $5ad4: $03
	ld a, l                                          ; $5ad5: $7d
	nop                                              ; $5ad6: $00
	push bc                                          ; $5ad7: $c5
	ld a, [hl]                                       ; $5ad8: $7e
	dec e                                            ; $5ad9: $1d
	jr jr_034_5a7c                                   ; $5ada: $18 $a0

	nop                                              ; $5adc: $00
	inc c                                            ; $5add: $0c
	dec e                                            ; $5ade: $1d
	inc c                                            ; $5adf: $0c
	ld e, $0c                                        ; $5ae0: $1e $0c
	dec e                                            ; $5ae2: $1d
	jr jr_034_5afb                                   ; $5ae3: $18 $16

	inc c                                            ; $5ae5: $0c
	ld d, $18                                        ; $5ae6: $16 $18
	rst JumpTable                                          ; $5ae8: $c7
	ld [hl+], a                                      ; $5ae9: $22
	jr jr_034_5b0c                                   ; $5aea: $18 $20

	jr jr_034_5b0c                                   ; $5aec: $18 $1e

	jr nc, @-$2d                                     ; $5aee: $30 $d1

	sub c                                            ; $5af0: $91
	add $7e                                          ; $5af1: $c6 $7e
	dec e                                            ; $5af3: $1d
	daa                                              ; $5af4: $27
	and b                                            ; $5af5: $a0
	dec de                                           ; $5af6: $1b
	jr nc, @-$38                                     ; $5af7: $30 $c6

	jr @+$32                                         ; $5af9: $18 $30

jr_034_5afb:
	push bc                                          ; $5afb: $c5
	dec h                                            ; $5afc: $25
	jr @+$26                                         ; $5afd: $18 $24

	jr @+$24                                         ; $5aff: $18 $22

	jr nc, jr_034_5ac9                               ; $5b01: $30 $c6

	ld e, $3c                                        ; $5b03: $1e $3c
	ret                                              ; $5b05: $c9


	jr nz, @+$08                                     ; $5b06: $20 $06

	jp nz, $0620                                     ; $5b08: $c2 $20 $06

	or c                                             ; $5b0b: $b1

jr_034_5b0c:
	sub c                                            ; $5b0c: $91
	ld b, $07                                        ; $5b0d: $06 $07
	cp [hl]                                          ; $5b0f: $be
	ld b, $1e                                        ; $5b10: $06 $1e
	dec e                                            ; $5b12: $1d
	dec de                                           ; $5b13: $1b
	ld e, $be                                        ; $5b14: $1e $be
	sub [hl]                                         ; $5b16: $96
	nop                                              ; $5b17: $00
	nop                                              ; $5b18: $00
	ret z                                            ; $5b19: $c8

	dec e                                            ; $5b1a: $1d
	ld [$1dc1], sp                                   ; $5b1b: $08 $c1 $1d
	ld [$1dc8], sp                                   ; $5b1e: $08 $c8 $1d
	ld [$1dc1], sp                                   ; $5b21: $08 $c1 $1d
	ld [$1dc8], sp                                   ; $5b24: $08 $c8 $1d
	ld [$1dc1], sp                                   ; $5b27: $08 $c1 $1d
	ld [$1dc8], sp                                   ; $5b2a: $08 $c8 $1d
	inc c                                            ; $5b2d: $0c
	pop bc                                           ; $5b2e: $c1
	dec e                                            ; $5b2f: $1d
	inc c                                            ; $5b30: $0c
	nop                                              ; $5b31: $00
	jr @+$72                                         ; $5b32: $18 $70

	cp $ff                                           ; $5b34: $fe $ff
	nop                                              ; $5b36: $00
	inc c                                            ; $5b37: $0c
	dec e                                            ; $5b38: $1d
	inc c                                            ; $5b39: $0c
	dec e                                            ; $5b3a: $1d
	inc c                                            ; $5b3b: $0c
	dec e                                            ; $5b3c: $1d
	ld b, $1d                                        ; $5b3d: $06 $1d
	inc c                                            ; $5b3f: $0c
	dec e                                            ; $5b40: $1d
	ld b, $16                                        ; $5b41: $06 $16
	inc c                                            ; $5b43: $0c
	add hl, de                                       ; $5b44: $19
	inc c                                            ; $5b45: $0c
	inc d                                            ; $5b46: $14
	inc c                                            ; $5b47: $0c
	ld e, $0c                                        ; $5b48: $1e $0c
	ld e, $0c                                        ; $5b4a: $1e $0c
	ld e, $0c                                        ; $5b4c: $1e $0c
	dec e                                            ; $5b4e: $1d
	ld b, $16                                        ; $5b4f: $06 $16
	inc c                                            ; $5b51: $0c
	ld d, $06                                        ; $5b52: $16 $06
	ld d, $0c                                        ; $5b54: $16 $0c
	pop de                                           ; $5b56: $d1
	call nz, $0c14                                   ; $5b57: $c4 $14 $0c
	inc d                                            ; $5b5a: $14
	inc c                                            ; $5b5b: $0c
	add $18                                          ; $5b5c: $c6 $18
	inc c                                            ; $5b5e: $0c
	jr jr_034_5b6d                                   ; $5b5f: $18 $0c

	jr @+$0e                                         ; $5b61: $18 $0c

	jr @+$08                                         ; $5b63: $18 $06

	inc d                                            ; $5b65: $14
	inc c                                            ; $5b66: $0c
	inc d                                            ; $5b67: $14
	inc c                                            ; $5b68: $0c
	inc d                                            ; $5b69: $14
	ld b, $11                                        ; $5b6a: $06 $11
	inc c                                            ; $5b6c: $0c

jr_034_5b6d:
	ld de, $fd0c                                     ; $5b6d: $11 $0c $fd
	ret nc                                           ; $5b70: $d0

	ld a, b                                          ; $5b71: $78
	cp $d1                                           ; $5b72: $fe $d1
	sub c                                            ; $5b74: $91
	set 7, l                                         ; $5b75: $cb $fd
	and l                                            ; $5b77: $a5
	ld e, h                                          ; $5b78: $5c
	ld l, $12                                        ; $5b79: $2e $12
	call nz, $062e                                   ; $5b7b: $c4 $2e $06
	ret z                                            ; $5b7e: $c8

	ld a, [hl+]                                      ; $5b7f: $2a
	inc c                                            ; $5b80: $0c
	add hl, hl                                       ; $5b81: $29
	ld b, $c4                                        ; $5b82: $06 $c4
	add hl, hl                                       ; $5b84: $29
	ld b, $ca                                        ; $5b85: $06 $ca
	daa                                              ; $5b87: $27
	ld b, $c4                                        ; $5b88: $06 $c4
	daa                                              ; $5b8a: $27
	ld b, $ca                                        ; $5b8b: $06 $ca
	dec h                                            ; $5b8d: $25
	ld b, $c4                                        ; $5b8e: $06 $c4
	dec h                                            ; $5b90: $25
	ld b, $cb                                        ; $5b91: $06 $cb
	daa                                              ; $5b93: $27
	ld b, $c4                                        ; $5b94: $06 $c4
	daa                                              ; $5b96: $27

jr_034_5b97:
	ld b, $cb                                        ; $5b97: $06 $cb
	inc h                                            ; $5b99: $24
	ld b, $22                                        ; $5b9a: $06 $22
	ld b, $fd                                        ; $5b9c: $06 $fd
	and l                                            ; $5b9e: $a5
	ld e, h                                          ; $5b9f: $5c
	ld a, [hl]                                       ; $5ba0: $7e
	nop                                              ; $5ba1: $00
	ret                                              ; $5ba2: $c9


	ld l, $12                                        ; $5ba3: $2e $12
	call nz, $062e                                   ; $5ba5: $c4 $2e $06

jr_034_5ba8:
	ret z                                            ; $5ba8: $c8

	ld a, [hl+]                                      ; $5ba9: $2a
	inc c                                            ; $5baa: $0c
	add hl, hl                                       ; $5bab: $29
	ld b, $c4                                        ; $5bac: $06 $c4
	add hl, hl                                       ; $5bae: $29
	ld b, $ca                                        ; $5baf: $06 $ca
	daa                                              ; $5bb1: $27
	ld b, $c4                                        ; $5bb2: $06 $c4
	daa                                              ; $5bb4: $27
	ld b, $92                                        ; $5bb5: $06 $92
	ret                                              ; $5bb7: $c9


	add hl, hl                                       ; $5bb8: $29
	ld b, $c4                                        ; $5bb9: $06 $c4
	add hl, hl                                       ; $5bbb: $29
	ld b, $c9                                        ; $5bbc: $06 $c9
	add hl, hl                                       ; $5bbe: $29
	ld b, $c4                                        ; $5bbf: $06 $c4
	add hl, hl                                       ; $5bc1: $29

jr_034_5bc2:
	ld b, $c9                                        ; $5bc2: $06 $c9
	ld a, [hl+]                                      ; $5bc4: $2a
	ld b, $c4                                        ; $5bc5: $06 $c4
	ld a, [hl+]                                      ; $5bc7: $2a
	ld b, $d1                                        ; $5bc8: $06 $d1
	sub d                                            ; $5bca: $92
	db $fd                                           ; $5bcb: $fd
	inc de                                           ; $5bcc: $13
	ld e, l                                          ; $5bcd: $5d
	ret                                              ; $5bce: $c9


	inc l                                            ; $5bcf: $2c
	jr z, jr_034_5b97                                ; $5bd0: $28 $c5

	inc l                                            ; $5bd2: $2c
	inc d                                            ; $5bd3: $14
	ret                                              ; $5bd4: $c9


	ld l, $06                                        ; $5bd5: $2e $06
	jp $062e                                         ; $5bd7: $c3 $2e $06


	ret                                              ; $5bda: $c9


	cp [hl]                                          ; $5bdb: $be
	ld b, $2c                                        ; $5bdc: $06 $2c
	ld a, [hl+]                                      ; $5bde: $2a
	add hl, hl                                       ; $5bdf: $29
	inc l                                            ; $5be0: $2c
	cp [hl]                                          ; $5be1: $be
	ret z                                            ; $5be2: $c8

	ld a, [hl+]                                      ; $5be3: $2a
	jr z, jr_034_5ba8                                ; $5be4: $28 $c2

	ld a, [hl+]                                      ; $5be6: $2a
	inc d                                            ; $5be7: $14
	jp z, $0627                                      ; $5be8: $ca $27 $06

jr_034_5beb:
	call nz, $0627                                   ; $5beb: $c4 $27 $06
	jp z, $0c27                                      ; $5bee: $ca $27 $0c

	add hl, hl                                       ; $5bf1: $29
	inc c                                            ; $5bf2: $0c
	pop de                                           ; $5bf3: $d1
	sub d                                            ; $5bf4: $92
	ei                                               ; $5bf5: $fb
	db $fd                                           ; $5bf6: $fd
	ld sp, $fb5d                                     ; $5bf7: $31 $5d $fb
	ld [bc], a                                       ; $5bfa: $02
	ld a, [hl+]                                      ; $5bfb: $2a
	jr z, jr_034_5bc2                                ; $5bfc: $28 $c4

	ld a, [hl+]                                      ; $5bfe: $2a
	inc d                                            ; $5bff: $14
	ret z                                            ; $5c00: $c8

	inc l                                            ; $5c01: $2c
	ld b, $c2                                        ; $5c02: $06 $c2
	inc l                                            ; $5c04: $2c
	ld b, $ca                                        ; $5c05: $06 $ca
	cp [hl]                                          ; $5c07: $be
	ld b, $2a                                        ; $5c08: $06 $2a
	add hl, hl                                       ; $5c0a: $29
	daa                                              ; $5c0b: $27
	ld a, [hl+]                                      ; $5c0c: $2a
	cp [hl]                                          ; $5c0d: $be
	ret z                                            ; $5c0e: $c8

	add hl, hl                                       ; $5c0f: $29
	jr z, @-$3a                                      ; $5c10: $28 $c4

jr_034_5c12:
	add hl, hl                                       ; $5c12: $29
	inc d                                            ; $5c13: $14
	sub c                                            ; $5c14: $91
	jp z, $0629                                      ; $5c15: $ca $29 $06

	call nz, $0629                                   ; $5c18: $c4 $29 $06
	jp z, $0c29                                      ; $5c1b: $ca $29 $0c

	ld a, [hl+]                                      ; $5c1e: $2a
	inc c                                            ; $5c1f: $0c
	sub c                                            ; $5c20: $91
	db $fc                                           ; $5c21: $fc
	jp z, $2cd1                                      ; $5c22: $ca $d1 $2c

	jr z, jr_034_5beb                                ; $5c25: $28 $c4

	inc l                                            ; $5c27: $2c
	inc d                                            ; $5c28: $14
	ret                                              ; $5c29: $c9


	add hl, hl                                       ; $5c2a: $29
	ld b, $c4                                        ; $5c2b: $06 $c4
	add hl, hl                                       ; $5c2d: $29
	ld b, $c9                                        ; $5c2e: $06 $c9
	add hl, hl                                       ; $5c30: $29
	inc c                                            ; $5c31: $0c
	ld a, [hl+]                                      ; $5c32: $2a
	inc c                                            ; $5c33: $0c
	db $fc                                           ; $5c34: $fc
	ld [bc], a                                       ; $5c35: $02
	jp z, $282c                                      ; $5c36: $ca $2c $28

	call nz, $142c                                   ; $5c39: $c4 $2c $14
	sra [hl]                                         ; $5c3c: $cb $2e
	ld b, $c4                                        ; $5c3e: $06 $c4
	ld l, $06                                        ; $5c40: $2e $06
	jp z, $06be                                      ; $5c42: $ca $be $06

	inc l                                            ; $5c45: $2c
	ld a, [hl+]                                      ; $5c46: $2a
	add hl, hl                                       ; $5c47: $29
	inc l                                            ; $5c48: $2c
	cp [hl]                                          ; $5c49: $be
	ret                                              ; $5c4a: $c9


	ld a, [hl+]                                      ; $5c4b: $2a
	jr z, jr_034_5c12                                ; $5c4c: $28 $c4

jr_034_5c4e:
	ld a, [hl+]                                      ; $5c4e: $2a
	inc d                                            ; $5c4f: $14
	jp z, $0627                                      ; $5c50: $ca $27 $06

	call nz, $0627                                   ; $5c53: $c4 $27 $06
	jp z, $0c27                                      ; $5c56: $ca $27 $0c

	add hl, hl                                       ; $5c59: $29
	inc c                                            ; $5c5a: $0c
	pop de                                           ; $5c5b: $d1
	sub c                                            ; $5c5c: $91
	ret                                              ; $5c5d: $c9


	ld l, h                                          ; $5c5e: $6c
	ld e, $28                                        ; $5c5f: $1e $28
	call nz, $141e                                   ; $5c61: $c4 $1e $14
	jp z, $0620                                      ; $5c64: $ca $20 $06

	call nz, $0620                                   ; $5c67: $c4 $20 $06
	jp z, $06be                                      ; $5c6a: $ca $be $06

	ld e, $1d                                        ; $5c6d: $1e $1d
	dec de                                           ; $5c6f: $1b
	ld e, $be                                        ; $5c70: $1e $be
	ret z                                            ; $5c72: $c8

	dec e                                            ; $5c73: $1d
	jr z, @-$3a                                      ; $5c74: $28 $c4

	dec e                                            ; $5c76: $1d
	inc d                                            ; $5c77: $14
	rr c                                             ; $5c78: $cb $19
	ld b, $c4                                        ; $5c7a: $06 $c4
	add hl, de                                       ; $5c7c: $19
	ld b, $cb                                        ; $5c7d: $06 $cb
	ld e, $0c                                        ; $5c7f: $1e $0c
	dec e                                            ; $5c81: $1d
	ld b, $c4                                        ; $5c82: $06 $c4
	dec e                                            ; $5c84: $1d
	ld b, $ca                                        ; $5c85: $06 $ca
	dec de                                           ; $5c87: $1b
	jr z, jr_034_5c4e                                ; $5c88: $28 $c4

	dec de                                           ; $5c8a: $1b
	inc d                                            ; $5c8b: $14
	rr l                                             ; $5c8c: $cb $1d
	ld b, $c4                                        ; $5c8e: $06 $c4
	dec e                                            ; $5c90: $1d
	ld b, $c9                                        ; $5c91: $06 $c9
	cp [hl]                                          ; $5c93: $be
	ld b, $1b                                        ; $5c94: $06 $1b
	add hl, de                                       ; $5c96: $19
	jr @+$1d                                         ; $5c97: $18 $1b

	cp [hl]                                          ; $5c99: $be
	ret                                              ; $5c9a: $c9


	add hl, de                                       ; $5c9b: $19
	jr nc, @-$3a                                     ; $5c9c: $30 $c4

	add hl, de                                       ; $5c9e: $19
	jr jr_034_5ca1                                   ; $5c9f: $18 $00

jr_034_5ca1:
	jr jr_034_5d13                                   ; $5ca1: $18 $70

	cp $ff                                           ; $5ca3: $fe $ff
	pop de                                           ; $5ca5: $d1
	sub c                                            ; $5ca6: $91
	sla b                                            ; $5ca7: $cb $20
	ld b, $c4                                        ; $5ca9: $06 $c4
	jr nz, jr_034_5cb3                               ; $5cab: $20 $06

	sla b                                            ; $5cad: $cb $20
	ld b, $c4                                        ; $5caf: $06 $c4
	jr nz, @+$08                                     ; $5cb1: $20 $06

jr_034_5cb3:
	sla h                                            ; $5cb3: $cb $24
	ld b, $c4                                        ; $5cb5: $06 $c4
	inc h                                            ; $5cb7: $24
	ld b, $ce                                        ; $5cb8: $06 $ce
	inc h                                            ; $5cba: $24
	ld b, $cb                                        ; $5cbb: $06 $cb
	dec h                                            ; $5cbd: $25
	ld b, $c4                                        ; $5cbe: $06 $c4
	dec h                                            ; $5cc0: $25
	ld b, $c8                                        ; $5cc1: $06 $c8
	dec h                                            ; $5cc3: $25
	ld b, $27                                        ; $5cc4: $06 $27
	inc c                                            ; $5cc6: $0c
	add hl, hl                                       ; $5cc7: $29
	inc c                                            ; $5cc8: $0c
	sla l                                            ; $5cc9: $cb $25
	ld b, $24                                        ; $5ccb: $06 $24
	ld b, $cb                                        ; $5ccd: $06 $cb
	ld [hl+], a                                      ; $5ccf: $22
	ld b, $c4                                        ; $5cd0: $06 $c4
	ld [hl+], a                                      ; $5cd2: $22
	ld b, $cb                                        ; $5cd3: $06 $cb
	ld [hl+], a                                      ; $5cd5: $22
	ld b, $c7                                        ; $5cd6: $06 $c7
	ld [hl+], a                                      ; $5cd8: $22
	ld b, $2a                                        ; $5cd9: $06 $2a
	inc c                                            ; $5cdb: $0c
	jp z, $0629                                      ; $5cdc: $ca $29 $06

	jp z, $0c27                                      ; $5cdf: $ca $27 $0c

	call nz, $0627                                   ; $5ce2: $c4 $27 $06
	sla l                                            ; $5ce5: $cb $25
	ld b, $c4                                        ; $5ce7: $06 $c4
	dec h                                            ; $5ce9: $25
	ld b, $cb                                        ; $5cea: $06 $cb
	daa                                              ; $5cec: $27
	ld b, $c4                                        ; $5ced: $06 $c4
	daa                                              ; $5cef: $27
	ld b, $c9                                        ; $5cf0: $06 $c9
	add hl, hl                                       ; $5cf2: $29
	ld b, $2a                                        ; $5cf3: $06 $2a
	ld b, $c9                                        ; $5cf5: $06 $c9
	inc l                                            ; $5cf7: $2c
	ld [de], a                                       ; $5cf8: $12
	call nz, $062c                                   ; $5cf9: $c4 $2c $06
	jp z, $0c24                                      ; $5cfc: $ca $24 $0c

	daa                                              ; $5cff: $27
	ld b, $c4                                        ; $5d00: $06 $c4
	daa                                              ; $5d02: $27
	ld b, $c9                                        ; $5d03: $06 $c9
	dec h                                            ; $5d05: $25
	jr @-$3a                                         ; $5d06: $18 $c4

	dec h                                            ; $5d08: $25
	inc c                                            ; $5d09: $0c
	ret                                              ; $5d0a: $c9


	ld a, [hl]                                       ; $5d0b: $7e
	nop                                              ; $5d0c: $00
	and b                                            ; $5d0d: $a0
	ld a, [hl+]                                      ; $5d0e: $2a
	ld b, $2c                                        ; $5d0f: $06 $2c
	ld b, $fd                                        ; $5d11: $06 $fd

jr_034_5d13:
	db $fc                                           ; $5d13: $fc
	rst JumpTable                                          ; $5d14: $c7
	pop de                                           ; $5d15: $d1
	sub d                                            ; $5d16: $92
	inc l                                            ; $5d17: $2c
	ld [hl-], a                                      ; $5d18: $32
	rst JumpTable                                          ; $5d19: $c7
	inc l                                            ; $5d1a: $2c
	ld a, [bc]                                       ; $5d1b: $0a
	ret z                                            ; $5d1c: $c8

	add hl, hl                                       ; $5d1d: $29
	ld b, $c4                                        ; $5d1e: $06 $c4
	add hl, hl                                       ; $5d20: $29
	ld b, $c8                                        ; $5d21: $06 $c8
	add hl, hl                                       ; $5d23: $29
	ld b, $c4                                        ; $5d24: $06 $c4
	add hl, hl                                       ; $5d26: $29
	ld b, $c8                                        ; $5d27: $06 $c8
	ld a, [hl+]                                      ; $5d29: $2a
	ld b, $c4                                        ; $5d2a: $06 $c4
	ld a, [hl+]                                      ; $5d2c: $2a
	ld b, $fc                                        ; $5d2d: $06 $fc
	ld [bc], a                                       ; $5d2f: $02
	db $fd                                           ; $5d30: $fd
	pop de                                           ; $5d31: $d1
	ret z                                            ; $5d32: $c8

	ld a, [hl+]                                      ; $5d33: $2a
	jr z, @-$3a                                      ; $5d34: $28 $c4

	ld a, [hl+]                                      ; $5d36: $2a
	inc d                                            ; $5d37: $14
	ret                                              ; $5d38: $c9


	daa                                              ; $5d39: $27
	ld b, $c4                                        ; $5d3a: $06 $c4
	daa                                              ; $5d3c: $27
	ld b, $c9                                        ; $5d3d: $06 $c9
	daa                                              ; $5d3f: $27
	inc c                                            ; $5d40: $0c
	add hl, hl                                       ; $5d41: $29
	inc c                                            ; $5d42: $0c
	db $fd                                           ; $5d43: $fd
	ret nc                                           ; $5d44: $d0

	ld a, b                                          ; $5d45: $78
	cp $d1                                           ; $5d46: $fe $d1
	ld a, a                                          ; $5d48: $7f
	inc e                                            ; $5d49: $1c
	db $fd                                           ; $5d4a: $fd
	ld h, l                                          ; $5d4b: $65
	ld e, a                                          ; $5d4c: $5f
	db $fd                                           ; $5d4d: $fd
	ld h, l                                          ; $5d4e: $65
	ld e, a                                          ; $5d4f: $5f
	pop de                                           ; $5d50: $d1
	ld a, a                                          ; $5d51: $7f
	inc e                                            ; $5d52: $1c
	jp nz, $0c0d                                     ; $5d53: $c2 $0d $0c

	add $0d                                          ; $5d56: $c6 $0d
	inc c                                            ; $5d58: $0c
	jp nz, $0c0d                                     ; $5d59: $c2 $0d $0c

	add $0d                                          ; $5d5c: $c6 $0d
	inc c                                            ; $5d5e: $0c
	jp nz, $0c14                                     ; $5d5f: $c2 $14 $0c

	jp nz, $060d                                     ; $5d62: $c2 $0d $06

	add $0d                                          ; $5d65: $c6 $0d
	ld b, $00                                        ; $5d67: $06 $00
	inc c                                            ; $5d69: $0c
	jp nz, $060d                                     ; $5d6a: $c2 $0d $06

	add $0d                                          ; $5d6d: $c6 $0d
	ld b, $c2                                        ; $5d6f: $06 $c2
	dec bc                                           ; $5d71: $0b
	inc c                                            ; $5d72: $0c
	add $0b                                          ; $5d73: $c6 $0b
	inc c                                            ; $5d75: $0c
	jp nz, $0c0b                                     ; $5d76: $c2 $0b $0c

	add $0b                                          ; $5d79: $c6 $0b
	inc c                                            ; $5d7b: $0c
	jp nz, $0c14                                     ; $5d7c: $c2 $14 $0c

	jp nz, $060b                                     ; $5d7f: $c2 $0b $06

	add $0b                                          ; $5d82: $c6 $0b
	ld b, $00                                        ; $5d84: $06 $00
	inc c                                            ; $5d86: $0c
	jp nz, $060b                                     ; $5d87: $c2 $0b $06

	add $0b                                          ; $5d8a: $c6 $0b
	ld b, $c2                                        ; $5d8c: $06 $c2
	ld a, [bc]                                       ; $5d8e: $0a
	inc c                                            ; $5d8f: $0c
	add $0a                                          ; $5d90: $c6 $0a
	inc c                                            ; $5d92: $0c
	jp nz, $0c0a                                     ; $5d93: $c2 $0a $0c

	add $0a                                          ; $5d96: $c6 $0a
	inc c                                            ; $5d98: $0c
	jp nz, $0c0e                                     ; $5d99: $c2 $0e $0c

	jp nz, $060a                                     ; $5d9c: $c2 $0a $06

	add $0a                                          ; $5d9f: $c6 $0a
	ld b, $00                                        ; $5da1: $06 $00
	inc c                                            ; $5da3: $0c
	jp nz, $060a                                     ; $5da4: $c2 $0a $06

	add $0a                                          ; $5da7: $c6 $0a
	ld b, $c2                                        ; $5da9: $06 $c2
	rrca                                             ; $5dab: $0f
	inc c                                            ; $5dac: $0c
	add $0f                                          ; $5dad: $c6 $0f
	inc c                                            ; $5daf: $0c
	jp nz, $0c11                                     ; $5db0: $c2 $11 $0c

	add $11                                          ; $5db3: $c6 $11
	inc c                                            ; $5db5: $0c
	jp nz, $3012                                     ; $5db6: $c2 $12 $30

	pop de                                           ; $5db9: $d1
	ld a, a                                          ; $5dba: $7f
	inc e                                            ; $5dbb: $1c
	jp nz, $0c0b                                     ; $5dbc: $c2 $0b $0c

	add $0b                                          ; $5dbf: $c6 $0b
	inc c                                            ; $5dc1: $0c
	jp nz, $0c0b                                     ; $5dc2: $c2 $0b $0c

	add $0b                                          ; $5dc5: $c6 $0b
	inc c                                            ; $5dc7: $0c
	jp nz, $0c12                                     ; $5dc8: $c2 $12 $0c

	jp nz, $060b                                     ; $5dcb: $c2 $0b $06

	add $0b                                          ; $5dce: $c6 $0b
	ld b, $00                                        ; $5dd0: $06 $00
	inc c                                            ; $5dd2: $0c
	jp nz, $060b                                     ; $5dd3: $c2 $0b $06

	add $0b                                          ; $5dd6: $c6 $0b
	ld b, $c2                                        ; $5dd8: $06 $c2
	inc c                                            ; $5dda: $0c
	inc c                                            ; $5ddb: $0c
	add $0c                                          ; $5ddc: $c6 $0c
	inc c                                            ; $5dde: $0c
	jp nz, $0c0c                                     ; $5ddf: $c2 $0c $0c

	add $0c                                          ; $5de2: $c6 $0c
	inc c                                            ; $5de4: $0c
	jp nz, $0c12                                     ; $5de5: $c2 $12 $0c

	jp nz, $060c                                     ; $5de8: $c2 $0c $06

	add $0c                                          ; $5deb: $c6 $0c
	ld b, $00                                        ; $5ded: $06 $00
	inc c                                            ; $5def: $0c
	jp nz, $060c                                     ; $5df0: $c2 $0c $06

	add $0c                                          ; $5df3: $c6 $0c
	ld b, $c2                                        ; $5df5: $06 $c2
	ld [$c60c], sp                                   ; $5df7: $08 $0c $c6
	ld [$c20c], sp                                   ; $5dfa: $08 $0c $c2
	ld [$c60c], sp                                   ; $5dfd: $08 $0c $c6
	ld [$c20c], sp                                   ; $5e00: $08 $0c $c2
	rrca                                             ; $5e03: $0f
	inc c                                            ; $5e04: $0c
	jp nz, $0608                                     ; $5e05: $c2 $08 $06

	add $08                                          ; $5e08: $c6 $08
	ld b, $00                                        ; $5e0a: $06 $00
	inc c                                            ; $5e0c: $0c
	jp nz, $0608                                     ; $5e0d: $c2 $08 $06

	add $08                                          ; $5e10: $c6 $08
	ld b, $c2                                        ; $5e12: $06 $c2
	dec c                                            ; $5e14: $0d
	inc c                                            ; $5e15: $0c
	add $0d                                          ; $5e16: $c6 $0d
	inc c                                            ; $5e18: $0c
	jp nz, $0c0f                                     ; $5e19: $c2 $0f $0c

	add $0f                                          ; $5e1c: $c6 $0f
	inc c                                            ; $5e1e: $0c
	jp nz, $3011                                     ; $5e1f: $c2 $11 $30

	pop de                                           ; $5e22: $d1
	ld a, a                                          ; $5e23: $7f
	inc e                                            ; $5e24: $1c
	ei                                               ; $5e25: $fb
	jp nz, $060d                                     ; $5e26: $c2 $0d $06

	add $0d                                          ; $5e29: $c6 $0d
	ld b, $fb                                        ; $5e2b: $06 $fb
	ld [bc], a                                       ; $5e2d: $02
	jp nz, $0614                                     ; $5e2e: $c2 $14 $06

	add $14                                          ; $5e31: $c6 $14
	ld b, $fb                                        ; $5e33: $06 $fb
	jp nz, $060d                                     ; $5e35: $c2 $0d $06

	add $0d                                          ; $5e38: $c6 $0d
	ld b, $fb                                        ; $5e3a: $06 $fb
	ld [bc], a                                       ; $5e3c: $02
	jp nz, $0619                                     ; $5e3d: $c2 $19 $06

	add $19                                          ; $5e40: $c6 $19
	ld b, $fb                                        ; $5e42: $06 $fb
	jp nz, $060d                                     ; $5e44: $c2 $0d $06

	add $0d                                          ; $5e47: $c6 $0d
	ld b, $fb                                        ; $5e49: $06 $fb
	ld [bc], a                                       ; $5e4b: $02
	ei                                               ; $5e4c: $fb
	jp nz, $060c                                     ; $5e4d: $c2 $0c $06

	add $0c                                          ; $5e50: $c6 $0c
	ld b, $fb                                        ; $5e52: $06 $fb
	ld [bc], a                                       ; $5e54: $02
	jp nz, $0614                                     ; $5e55: $c2 $14 $06

	add $14                                          ; $5e58: $c6 $14
	ld b, $fb                                        ; $5e5a: $06 $fb
	jp nz, $060c                                     ; $5e5c: $c2 $0c $06

	add $0c                                          ; $5e5f: $c6 $0c
	ld b, $fb                                        ; $5e61: $06 $fb
	ld [bc], a                                       ; $5e63: $02
	jp nz, $0618                                     ; $5e64: $c2 $18 $06

	add $18                                          ; $5e67: $c6 $18
	ld b, $fb                                        ; $5e69: $06 $fb
	jp nz, $060c                                     ; $5e6b: $c2 $0c $06

	add $0c                                          ; $5e6e: $c6 $0c
	ld b, $fb                                        ; $5e70: $06 $fb
	ld [bc], a                                       ; $5e72: $02
	ei                                               ; $5e73: $fb
	jp nz, $060b                                     ; $5e74: $c2 $0b $06

	add $0b                                          ; $5e77: $c6 $0b
	ld b, $fb                                        ; $5e79: $06 $fb
	ld [bc], a                                       ; $5e7b: $02
	jp nz, $0611                                     ; $5e7c: $c2 $11 $06

	add $11                                          ; $5e7f: $c6 $11
	ld b, $fb                                        ; $5e81: $06 $fb
	jp nz, $060b                                     ; $5e83: $c2 $0b $06

	add $0b                                          ; $5e86: $c6 $0b
	ld b, $fb                                        ; $5e88: $06 $fb
	ld [bc], a                                       ; $5e8a: $02
	jp nz, $0617                                     ; $5e8b: $c2 $17 $06

	add $17                                          ; $5e8e: $c6 $17
	ld b, $fb                                        ; $5e90: $06 $fb
	jp nz, $060b                                     ; $5e92: $c2 $0b $06

	add $0b                                          ; $5e95: $c6 $0b
	ld b, $fb                                        ; $5e97: $06 $fb
	ld [bc], a                                       ; $5e99: $02
	ei                                               ; $5e9a: $fb
	jp nz, $060f                                     ; $5e9b: $c2 $0f $06

	add $0f                                          ; $5e9e: $c6 $0f
	ld b, $fb                                        ; $5ea0: $06 $fb
	ld [bc], a                                       ; $5ea2: $02
	jp nz, $0616                                     ; $5ea3: $c2 $16 $06

	add $16                                          ; $5ea6: $c6 $16
	ld b, $fb                                        ; $5ea8: $06 $fb
	jp nz, $060f                                     ; $5eaa: $c2 $0f $06

	add $0f                                          ; $5ead: $c6 $0f
	ld b, $fb                                        ; $5eaf: $06 $fb
	ld [bc], a                                       ; $5eb1: $02
	jp nz, $061b                                     ; $5eb2: $c2 $1b $06

	add $1b                                          ; $5eb5: $c6 $1b
	ld b, $fb                                        ; $5eb7: $06 $fb
	jp nz, $060f                                     ; $5eb9: $c2 $0f $06

	add $0f                                          ; $5ebc: $c6 $0f
	ld b, $fb                                        ; $5ebe: $06 $fb
	ld [bc], a                                       ; $5ec0: $02
	pop de                                           ; $5ec1: $d1
	ld a, a                                          ; $5ec2: $7f
	inc e                                            ; $5ec3: $1c
	jp nz, $fb70                                     ; $5ec4: $c2 $70 $fb

	jp nz, $060b                                     ; $5ec7: $c2 $0b $06

	add $0b                                          ; $5eca: $c6 $0b
	ld b, $fb                                        ; $5ecc: $06 $fb
	ld [bc], a                                       ; $5ece: $02
	jp nz, $0612                                     ; $5ecf: $c2 $12 $06

	add $12                                          ; $5ed2: $c6 $12
	ld b, $c2                                        ; $5ed4: $06 $c2
	dec bc                                           ; $5ed6: $0b
	ld b, $c6                                        ; $5ed7: $06 $c6
	dec bc                                           ; $5ed9: $0b
	ld b, $c2                                        ; $5eda: $06 $c2
	ld [$c606], sp                                   ; $5edc: $08 $06 $c6
	ld [$c206], sp                                   ; $5edf: $08 $06 $c2
	inc d                                            ; $5ee2: $14
	ld b, $c6                                        ; $5ee3: $06 $c6
	inc d                                            ; $5ee5: $14
	ld b, $fb                                        ; $5ee6: $06 $fb
	jp nz, $0608                                     ; $5ee8: $c2 $08 $06

	add $08                                          ; $5eeb: $c6 $08
	ld b, $fb                                        ; $5eed: $06 $fb
	ld [bc], a                                       ; $5eef: $02
	jp nz, $060d                                     ; $5ef0: $c2 $0d $06

	add $0d                                          ; $5ef3: $c6 $0d
	ld b, $c2                                        ; $5ef5: $06 $c2
	add hl, de                                       ; $5ef7: $19
	ld b, $c6                                        ; $5ef8: $06 $c6
	add hl, de                                       ; $5efa: $19
	ld b, $c2                                        ; $5efb: $06 $c2
	inc c                                            ; $5efd: $0c
	ld b, $c6                                        ; $5efe: $06 $c6
	inc c                                            ; $5f00: $0c
	ld b, $c2                                        ; $5f01: $06 $c2
	dec de                                           ; $5f03: $1b
	ld b, $c6                                        ; $5f04: $06 $c6
	dec de                                           ; $5f06: $1b
	ld b, $c2                                        ; $5f07: $06 $c2
	ld a, [bc]                                       ; $5f09: $0a
	ld b, $c6                                        ; $5f0a: $06 $c6
	ld a, [bc]                                       ; $5f0c: $0a
	ld b, $c2                                        ; $5f0d: $06 $c2
	dec e                                            ; $5f0f: $1d
	ld b, $c6                                        ; $5f10: $06 $c6
	dec e                                            ; $5f12: $1d
	ld b, $c2                                        ; $5f13: $06 $c2
	ld [$c606], sp                                   ; $5f15: $08 $06 $c6
	ld [$c206], sp                                   ; $5f18: $08 $06 $c2
	jr nz, @+$08                                     ; $5f1b: $20 $06

	add $20                                          ; $5f1d: $c6 $20
	ld b, $fb                                        ; $5f1f: $06 $fb
	jp nz, $060f                                     ; $5f21: $c2 $0f $06

	add $0f                                          ; $5f24: $c6 $0f
	ld b, $fb                                        ; $5f26: $06 $fb
	ld [bc], a                                       ; $5f28: $02
	jp nz, $061b                                     ; $5f29: $c2 $1b $06

	add $1b                                          ; $5f2c: $c6 $1b
	ld b, $c2                                        ; $5f2e: $06 $c2
	rrca                                             ; $5f30: $0f
	ld b, $c6                                        ; $5f31: $06 $c6
	rrca                                             ; $5f33: $0f
	ld b, $c2                                        ; $5f34: $06 $c2
	inc d                                            ; $5f36: $14
	ld b, $c6                                        ; $5f37: $06 $c6
	inc d                                            ; $5f39: $14
	ld b, $c2                                        ; $5f3a: $06 $c2
	ld [$0a0c], sp                                   ; $5f3c: $08 $0c $0a
	inc c                                            ; $5f3f: $0c
	inc c                                            ; $5f40: $0c
	inc c                                            ; $5f41: $0c
	jp nz, $080d                                     ; $5f42: $c2 $0d $08

	add $0d                                          ; $5f45: $c6 $0d
	ld [$0dc2], sp                                   ; $5f47: $08 $c2 $0d
	ld [$0dc6], sp                                   ; $5f4a: $08 $c6 $0d

jr_034_5f4d:
	ld [$0dc2], sp                                   ; $5f4d: $08 $c2 $0d
	ld [$0dc6], sp                                   ; $5f50: $08 $c6 $0d
	ld [$0dc2], sp                                   ; $5f53: $08 $c2 $0d
	inc c                                            ; $5f56: $0c
	add $0d                                          ; $5f57: $c6 $0d
	inc c                                            ; $5f59: $0c
	jp nz, $1d7e                                     ; $5f5a: $c2 $7e $1d

	nop                                              ; $5f5d: $00
	and c                                            ; $5f5e: $a1
	ld [$7e18], sp                                   ; $5f5f: $08 $18 $7e
	nop                                              ; $5f62: $00
	cp $ff                                           ; $5f63: $fe $ff
	pop de                                           ; $5f65: $d1
	jp nz, $030d                                     ; $5f66: $c2 $0d $03

	add $0d                                          ; $5f69: $c6 $0d
	inc bc                                           ; $5f6b: $03
	jp nz, $030d                                     ; $5f6c: $c2 $0d $03

	add $0d                                          ; $5f6f: $c6 $0d

jr_034_5f71:
	inc bc                                           ; $5f71: $03
	jp nz, $1814                                     ; $5f72: $c2 $14 $18

	add hl, de                                       ; $5f75: $19
	ld b, $c2                                        ; $5f76: $06 $c2
	dec c                                            ; $5f78: $0d
	inc bc                                           ; $5f79: $03
	add $0d                                          ; $5f7a: $c6 $0d
	inc bc                                           ; $5f7c: $03
	nop                                              ; $5f7d: $00
	ld b, $c2                                        ; $5f7e: $06 $c2
	dec c                                            ; $5f80: $0d
	inc bc                                           ; $5f81: $03
	add $0d                                          ; $5f82: $c6 $0d
	inc bc                                           ; $5f84: $03
	jp nz, $0c14                                     ; $5f85: $c2 $14 $0c

	add hl, de                                       ; $5f88: $19
	jr jr_034_5f4d                                   ; $5f89: $18 $c2

	ld b, $03                                        ; $5f8b: $06 $03
	add $06                                          ; $5f8d: $c6 $06
	inc bc                                           ; $5f8f: $03
	jp nz, $0306                                     ; $5f90: $c2 $06 $03

	add $06                                          ; $5f93: $c6 $06
	inc bc                                           ; $5f95: $03
	jp nz, $180d                                     ; $5f96: $c2 $0d $18

	ld [de], a                                       ; $5f99: $12
	ld b, $c2                                        ; $5f9a: $06 $c2
	ld [$c603], sp                                   ; $5f9c: $08 $03 $c6
	ld [$0003], sp                                   ; $5f9f: $08 $03 $00
	ld b, $c2                                        ; $5fa2: $06 $c2
	inc d                                            ; $5fa4: $14
	inc bc                                           ; $5fa5: $03
	add $14                                          ; $5fa6: $c6 $14
	inc bc                                           ; $5fa8: $03
	jp nz, $0c0f                                     ; $5fa9: $c2 $0f $0c

	inc d                                            ; $5fac: $14
	jr jr_034_5f71                                   ; $5fad: $18 $c2

	dec b                                            ; $5faf: $05
	inc bc                                           ; $5fb0: $03
	add $05                                          ; $5fb1: $c6 $05
	inc bc                                           ; $5fb3: $03
	jp nz, $0305                                     ; $5fb4: $c2 $05 $03

	add $05                                          ; $5fb7: $c6 $05
	inc bc                                           ; $5fb9: $03
	jp nz, $180c                                     ; $5fba: $c2 $0c $18

	ld de, $c206                                     ; $5fbd: $11 $06 $c2
	ld a, [bc]                                       ; $5fc0: $0a
	inc bc                                           ; $5fc1: $03
	add $0a                                          ; $5fc2: $c6 $0a
	inc bc                                           ; $5fc4: $03
	nop                                              ; $5fc5: $00
	ld b, $c2                                        ; $5fc6: $06 $c2
	ld d, $03                                        ; $5fc8: $16 $03
	add $16                                          ; $5fca: $c6 $16
	inc bc                                           ; $5fcc: $03
	jp nz, $0c11                                     ; $5fcd: $c2 $11 $0c

	ld d, $18                                        ; $5fd0: $16 $18
	jp nz, $030f                                     ; $5fd2: $c2 $0f $03

	add $0f                                          ; $5fd5: $c6 $0f
	inc bc                                           ; $5fd7: $03
	jp nz, $030f                                     ; $5fd8: $c2 $0f $03

	add $0f                                          ; $5fdb: $c6 $0f
	inc bc                                           ; $5fdd: $03
	jp nz, $1816                                     ; $5fde: $c2 $16 $18

	dec de                                           ; $5fe1: $1b
	ld b, $c2                                        ; $5fe2: $06 $c2
	inc d                                            ; $5fe4: $14
	inc bc                                           ; $5fe5: $03
	add $14                                          ; $5fe6: $c6 $14
	inc bc                                           ; $5fe8: $03
	nop                                              ; $5fe9: $00
	ld b, $c2                                        ; $5fea: $06 $c2
	ld [$c603], sp                                   ; $5fec: $08 $03 $c6
	ld [$c203], sp                                   ; $5fef: $08 $03 $c2
	ld a, [bc]                                       ; $5ff2: $0a
	inc c                                            ; $5ff3: $0c
	dec bc                                           ; $5ff4: $0b
	inc c                                            ; $5ff5: $0c
	inc c                                            ; $5ff6: $0c
	inc c                                            ; $5ff7: $0c
	db $fd                                           ; $5ff8: $fd
	ret nc                                           ; $5ff9: $d0

	ld a, b                                          ; $5ffa: $78
	cp $fb                                           ; $5ffb: $fe $fb
	db $fd                                           ; $5ffd: $fd
	add hl, sp                                       ; $5ffe: $39
	ld h, b                                          ; $5fff: $60
	ei                                               ; $6000: $fb
	rlca                                             ; $6001: $07
	cp [hl]                                          ; $6002: $be
	ld b, $2f                                        ; $6003: $06 $2f
	jr nc, @+$32                                     ; $6005: $30 $30

	jr nc, jr_034_6029                               ; $6007: $30 $20

	jr nc, @+$32                                     ; $6009: $30 $30

	jr nc, jr_034_603c                               ; $600b: $30 $2f

	jr nc, @+$21                                     ; $600d: $30 $1f

	rra                                              ; $600f: $1f
	jr nz, @+$22                                     ; $6010: $20 $20

	jr nz, @+$22                                     ; $6012: $20 $20

	cp [hl]                                          ; $6014: $be
	db $fd                                           ; $6015: $fd
	ld c, l                                          ; $6016: $4d
	ld h, b                                          ; $6017: $60
	db $fd                                           ; $6018: $fd
	ld c, l                                          ; $6019: $4d
	ld h, b                                          ; $601a: $60
	db $fd                                           ; $601b: $fd
	ld c, l                                          ; $601c: $4d
	ld h, b                                          ; $601d: $60
	db $fd                                           ; $601e: $fd
	ld c, l                                          ; $601f: $4d
	ld h, b                                          ; $6020: $60
	ei                                               ; $6021: $fb
	db $fd                                           ; $6022: $fd
	ld h, h                                          ; $6023: $64
	ld h, b                                          ; $6024: $60
	ei                                               ; $6025: $fb
	inc b                                            ; $6026: $04
	ei                                               ; $6027: $fb
	db $fd                                           ; $6028: $fd

jr_034_6029:
	ld h, h                                          ; $6029: $64
	ld h, b                                          ; $602a: $60
	ei                                               ; $602b: $fb
	inc bc                                           ; $602c: $03
	jr nz, @+$12                                     ; $602d: $20 $10

	jr nz, @+$12                                     ; $602f: $20 $10

	jr nz, @+$12                                     ; $6031: $20 $10

	jr nz, jr_034_604d                               ; $6033: $20 $18

	rra                                              ; $6035: $1f

jr_034_6036:
	jr jr_034_6036                                   ; $6036: $18 $fe

	rst $38                                          ; $6038: $ff
	cp [hl]                                          ; $6039: $be
	ld b, $2f                                        ; $603a: $06 $2f

jr_034_603c:
	jr nc, jr_034_606e                               ; $603c: $30 $30

	jr nc, jr_034_6060                               ; $603e: $30 $20

	jr nc, jr_034_6072                               ; $6040: $30 $30

	jr nc, jr_034_6073                               ; $6042: $30 $2f

	jr nc, jr_034_6076                               ; $6044: $30 $30

	jr nc, jr_034_6068                               ; $6046: $30 $20

	jr nc, jr_034_607a                               ; $6048: $30 $30

	jr nc, @-$40                                     ; $604a: $30 $be

	db $fd                                           ; $604c: $fd

jr_034_604d:
	cp [hl]                                          ; $604d: $be
	inc c                                            ; $604e: $0c
	rra                                              ; $604f: $1f
	dec e                                            ; $6050: $1d
	rra                                              ; $6051: $1f
	dec e                                            ; $6052: $1d
	jr nz, @+$21                                     ; $6053: $20 $1f

	dec e                                            ; $6055: $1d
	rra                                              ; $6056: $1f
	cp [hl]                                          ; $6057: $be
	cp [hl]                                          ; $6058: $be
	inc c                                            ; $6059: $0c
	rra                                              ; $605a: $1f
	dec e                                            ; $605b: $1d
	rra                                              ; $605c: $1f
	rra                                              ; $605d: $1f
	jr nz, @+$21                                     ; $605e: $20 $1f

jr_034_6060:
	dec e                                            ; $6060: $1d
	rra                                              ; $6061: $1f
	cp [hl]                                          ; $6062: $be
	db $fd                                           ; $6063: $fd
	cp [hl]                                          ; $6064: $be
	inc c                                            ; $6065: $0c
	rra                                              ; $6066: $1f
	dec e                                            ; $6067: $1d

jr_034_6068:
	jr nz, @+$1f                                     ; $6068: $20 $1d

	rra                                              ; $606a: $1f
	dec e                                            ; $606b: $1d
	jr nz, jr_034_608b                               ; $606c: $20 $1d

jr_034_606e:
	cp [hl]                                          ; $606e: $be
	db $fd                                           ; $606f: $fd
	or h                                             ; $6070: $b4
	adc h                                            ; $6071: $8c

jr_034_6072:
	ld [hl], c                                       ; $6072: $71

jr_034_6073:
	ld bc, $7e72                                     ; $6073: $01 $72 $7e

jr_034_6076:
	dec l                                            ; $6076: $2d
	inc d                                            ; $6077: $14
	and b                                            ; $6078: $a0
	dec de                                           ; $6079: $1b

jr_034_607a:
	ld [$1bc2], sp                                   ; $607a: $08 $c2 $1b
	db $10                                           ; $607d: $10

jr_034_607e:
	add $20                                          ; $607e: $c6 $20
	inc c                                            ; $6080: $0c
	inc h                                            ; $6081: $24
	inc c                                            ; $6082: $0c
	jp nz, $0c24                                     ; $6083: $c2 $24 $0c

jr_034_6086:
	cp $b1                                           ; $6086: $fe $b1
	add c                                            ; $6088: $81
	ld h, h                                          ; $6089: $64
	inc b                                            ; $608a: $04

jr_034_608b:
	ld [hl+], a                                      ; $608b: $22
	jr jr_034_60b0                                   ; $608c: $18 $22

	inc c                                            ; $608e: $0c
	or l                                             ; $608f: $b5
	ld [hl], c                                       ; $6090: $71
	ld [bc], a                                       ; $6091: $02
	sub [hl]                                         ; $6092: $96
	inc b                                            ; $6093: $04
	dec h                                            ; $6094: $25
	jr @-$36                                         ; $6095: $18 $c8

	inc h                                            ; $6097: $24
	inc c                                            ; $6098: $0c
	dec h                                            ; $6099: $25
	inc c                                            ; $609a: $0c
	daa                                              ; $609b: $27
	inc c                                            ; $609c: $0c
	or c                                             ; $609d: $b1
	ld h, c                                          ; $609e: $61
	sub [hl]                                         ; $609f: $96
	rlca                                             ; $60a0: $07
	jr nz, jr_034_60df                               ; $60a1: $20 $3c

	or c                                             ; $60a3: $b1
	and c                                            ; $60a4: $a1
	sub [hl]                                         ; $60a5: $96
	ld [bc], a                                       ; $60a6: $02
	inc h                                            ; $60a7: $24
	inc c                                            ; $60a8: $0c
	dec h                                            ; $60a9: $25
	inc c                                            ; $60aa: $0c
	or c                                             ; $60ab: $b1
	ld sp, $0000                                     ; $60ac: $31 $00 $00
	inc h                                            ; $60af: $24

jr_034_60b0:
	inc b                                            ; $60b0: $04
	dec h                                            ; $60b1: $25
	ld [$61b1], sp                                   ; $60b2: $08 $b1 $61
	ret z                                            ; $60b5: $c8

	rlca                                             ; $60b6: $07
	add hl, de                                       ; $60b7: $19
	inc h                                            ; $60b8: $24
	or l                                             ; $60b9: $b5
	ld [hl], c                                       ; $60ba: $71
	ld [bc], a                                       ; $60bb: $02

jr_034_60bc:
	sub [hl]                                         ; $60bc: $96
	dec b                                            ; $60bd: $05
	dec h                                            ; $60be: $25
	jr @-$38                                         ; $60bf: $18 $c6

	inc h                                            ; $60c1: $24
	inc c                                            ; $60c2: $0c
	dec h                                            ; $60c3: $25
	inc c                                            ; $60c4: $0c
	daa                                              ; $60c5: $27
	inc c                                            ; $60c6: $0c
	sub [hl]                                         ; $60c7: $96
	ld [hl-], a                                      ; $60c8: $32
	rlca                                             ; $60c9: $07
	ld a, [hl+]                                      ; $60ca: $2a
	inc a                                            ; $60cb: $3c
	or c                                             ; $60cc: $b1
	and c                                            ; $60cd: $a1
	sub [hl]                                         ; $60ce: $96
	inc bc                                           ; $60cf: $03
	inc h                                            ; $60d0: $24
	jr @+$27                                         ; $60d1: $18 $25

	jr jr_034_6086                                   ; $60d3: $18 $b1

	ld [hl], c                                       ; $60d5: $71
	sub [hl]                                         ; $60d6: $96
	inc b                                            ; $60d7: $04
	daa                                              ; $60d8: $27
	jr jr_034_6102                                   ; $60d9: $18 $27

	jr jr_034_6104                                   ; $60db: $18 $27

	jr jr_034_6104                                   ; $60dd: $18 $25

jr_034_60df:
	inc c                                            ; $60df: $0c
	sub [hl]                                         ; $60e0: $96
	ld [hl-], a                                      ; $60e1: $32
	rlca                                             ; $60e2: $07
	daa                                              ; $60e3: $27
	inc h                                            ; $60e4: $24
	dec h                                            ; $60e5: $25
	jr nc, jr_034_607e                               ; $60e6: $30 $96

jr_034_60e8:
	jr jr_034_60f0                                   ; $60e8: $18 $06

	inc h                                            ; $60ea: $24
	inc c                                            ; $60eb: $0c
	sub [hl]                                         ; $60ec: $96
	nop                                              ; $60ed: $00
	nop                                              ; $60ee: $00
	dec h                                            ; $60ef: $25

jr_034_60f0:
	inc h                                            ; $60f0: $24
	or l                                             ; $60f1: $b5
	ld b, c                                          ; $60f2: $41
	ld [bc], a                                       ; $60f3: $02
	sub [hl]                                         ; $60f4: $96
	inc b                                            ; $60f5: $04
	ld a, [hl-]                                      ; $60f6: $3a
	ld bc, $172e                                     ; $60f7: $01 $2e $17
	cp [hl]                                          ; $60fa: $be
	inc c                                            ; $60fb: $0c
	inc l                                            ; $60fc: $2c
	ld l, $2c                                        ; $60fd: $2e $2c
	ld a, [hl+]                                      ; $60ff: $2a
	cp [hl]                                          ; $6100: $be
	sub [hl]                                         ; $6101: $96

jr_034_6102:
	ret z                                            ; $6102: $c8

	rlca                                             ; $6103: $07

jr_034_6104:
	add hl, hl                                       ; $6104: $29
	jr jr_034_60bc                                   ; $6105: $18 $b5

	add c                                            ; $6107: $81
	ld bc, $0000                                     ; $6108: $01 $00 $00
	ld a, [hl]                                       ; $610b: $7e
	dec e                                            ; $610c: $1d
	inc d                                            ; $610d: $14
	and b                                            ; $610e: $a0
	dec de                                           ; $610f: $1b
	ld [$1bc2], sp                                   ; $6110: $08 $c2 $1b
	db $10                                           ; $6113: $10
	rst JumpTable                                          ; $6114: $c7
	jr nz, jr_034_6123                               ; $6115: $20 $0c

	inc h                                            ; $6117: $24
	inc c                                            ; $6118: $0c
	jp nz, $0c24                                     ; $6119: $c2 $24 $0c

	or c                                             ; $611c: $b1
	ld [hl], c                                       ; $611d: $71
	ld h, h                                          ; $611e: $64
	inc b                                            ; $611f: $04
	ld [hl+], a                                      ; $6120: $22
	jr jr_034_6145                                   ; $6121: $18 $22

jr_034_6123:
	inc c                                            ; $6123: $0c
	or l                                             ; $6124: $b5
	add c                                            ; $6125: $81
	ld [bc], a                                       ; $6126: $02
	sub [hl]                                         ; $6127: $96
	inc b                                            ; $6128: $04
	dec h                                            ; $6129: $25
	jr jr_034_6150                                   ; $612a: $18 $24

	inc c                                            ; $612c: $0c
	dec h                                            ; $612d: $25
	inc c                                            ; $612e: $0c
	daa                                              ; $612f: $27
	inc c                                            ; $6130: $0c
	or c                                             ; $6131: $b1
	ld [hl], c                                       ; $6132: $71
	sub [hl]                                         ; $6133: $96
	ld b, $20                                        ; $6134: $06 $20
	inc a                                            ; $6136: $3c
	or l                                             ; $6137: $b5
	ld hl, $0001                                     ; $6138: $21 $01 $00
	nop                                              ; $613b: $00
	nop                                              ; $613c: $00
	ld c, $7d                                        ; $613d: $0e $7d
	ld bc, $0c29                                     ; $613f: $01 $29 $0c
	daa                                              ; $6142: $27
	inc c                                            ; $6143: $0c
	dec h                                            ; $6144: $25

jr_034_6145:
	ld a, [bc]                                       ; $6145: $0a
	ld a, l                                          ; $6146: $7d
	nop                                              ; $6147: $00
	or l                                             ; $6148: $b5
	ld h, c                                          ; $6149: $61
	ld [bc], a                                       ; $614a: $02
	sub [hl]                                         ; $614b: $96
	dec b                                            ; $614c: $05

jr_034_614d:
	add hl, de                                       ; $614d: $19
	jr jr_034_6169                                   ; $614e: $18 $19

jr_034_6150:
	jr jr_034_60e8                                   ; $6150: $18 $96

	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	ld [hl+], a                                      ; $6154: $22
	inc c                                            ; $6155: $0c
	inc h                                            ; $6156: $24
	inc c                                            ; $6157: $0c
	jp nz, $0c24                                     ; $6158: $c2 $24 $0c

	or c                                             ; $615b: $b1
	ld h, c                                          ; $615c: $61
	inc h                                            ; $615d: $24
	ld b, $25                                        ; $615e: $06 $25
	inc a                                            ; $6160: $3c
	sub [hl]                                         ; $6161: $96
	nop                                              ; $6162: $00
	nop                                              ; $6163: $00
	add hl, hl                                       ; $6164: $29
	jr @+$29                                         ; $6165: $18 $27

	jr @-$4d                                         ; $6167: $18 $b1

jr_034_6169:
	ld d, c                                          ; $6169: $51
	sub [hl]                                         ; $616a: $96
	ld [bc], a                                       ; $616b: $02
	cp [hl]                                          ; $616c: $be
	ld b, $20                                        ; $616d: $06 $20
	rra                                              ; $616f: $1f
	jr nz, jr_034_6194                               ; $6170: $20 $22

	inc h                                            ; $6172: $24
	dec h                                            ; $6173: $25
	cp [hl]                                          ; $6174: $be
	add $be                                          ; $6175: $c6 $be
	ld b, $27                                        ; $6177: $06 $27
	inc h                                            ; $6179: $24
	inc hl                                           ; $617a: $23
	inc h                                            ; $617b: $24
	dec h                                            ; $617c: $25
	daa                                              ; $617d: $27
	add hl, hl                                       ; $617e: $29
	ld a, [hl+]                                      ; $617f: $2a
	cp [hl]                                          ; $6180: $be
	sub [hl]                                         ; $6181: $96
	ld a, [$2c05]                                    ; $6182: $fa $05 $2c
	inc h                                            ; $6185: $24
	daa                                              ; $6186: $27
	jr @+$2c                                         ; $6187: $18 $2a

	jr jr_034_614d                                   ; $6189: $18 $c2

	ld a, l                                          ; $618b: $7d
	ld bc, $0c27                                     ; $618c: $01 $27 $0c
	ld a, l                                          ; $618f: $7d
	nop                                              ; $6190: $00
	or c                                             ; $6191: $b1
	ld h, c                                          ; $6192: $61
	nop                                              ; $6193: $00

jr_034_6194:
	nop                                              ; $6194: $00
	jr nz, @+$1a                                     ; $6195: $20 $18

	or l                                             ; $6197: $b5
	ld d, c                                          ; $6198: $51
	ld bc, $02c8                                     ; $6199: $01 $c8 $02
	cp [hl]                                          ; $619c: $be
	ld b, $2c                                        ; $619d: $06 $2c
	dec h                                            ; $619f: $25
	ld a, [hl+]                                      ; $61a0: $2a
	ld l, $29                                        ; $61a1: $2e $29
	ld a, [hl+]                                      ; $61a3: $2a
	daa                                              ; $61a4: $27
	ld a, [hl+]                                      ; $61a5: $2a
	dec h                                            ; $61a6: $25
	add hl, hl                                       ; $61a7: $29
	inc h                                            ; $61a8: $24
	daa                                              ; $61a9: $27
	cp [hl]                                          ; $61aa: $be
	ret z                                            ; $61ab: $c8

	or l                                             ; $61ac: $b5
	ld hl, $0002                                     ; $61ad: $21 $02 $00
	nop                                              ; $61b0: $00
	ld a, l                                          ; $61b1: $7d
	ld bc, $2425                                     ; $61b2: $01 $25 $24
	ld a, l                                          ; $61b5: $7d
	nop                                              ; $61b6: $00
	or c                                             ; $61b7: $b1
	add c                                            ; $61b8: $81
	inc h                                            ; $61b9: $24
	dec b                                            ; $61ba: $05
	jr nz, jr_034_61d5                               ; $61bb: $20 $18

	ld e, $18                                        ; $61bd: $1e $18
	or l                                             ; $61bf: $b5
	ld h, c                                          ; $61c0: $61
	ld [bc], a                                       ; $61c1: $02
	jr jr_034_61c7                                   ; $61c2: $18 $03

	ld a, [hl+]                                      ; $61c4: $2a
	jr @-$37                                         ; $61c5: $18 $c7

jr_034_61c7:
	pop de                                           ; $61c7: $d1
	sub b                                            ; $61c8: $90
	ld [hl], d                                       ; $61c9: $72
	db $fd                                           ; $61ca: $fd
	ld [hl], b                                       ; $61cb: $70
	ld h, d                                          ; $61cc: $62
	or l                                             ; $61cd: $b5
	ld d, c                                          ; $61ce: $51
	ld [bc], a                                       ; $61cf: $02
	sub [hl]                                         ; $61d0: $96
	rlca                                             ; $61d1: $07
	ld [hl+], a                                      ; $61d2: $22
	jr nc, jr_034_6253                               ; $61d3: $30 $7e

jr_034_61d5:
	dec l                                            ; $61d5: $2d
	nop                                              ; $61d6: $00
	and b                                            ; $61d7: $a0
	or l                                             ; $61d8: $b5
	ld b, c                                          ; $61d9: $41
	nop                                              ; $61da: $00
	nop                                              ; $61db: $00
	nop                                              ; $61dc: $00
	daa                                              ; $61dd: $27
	rrca                                             ; $61de: $0f
	add hl, hl                                       ; $61df: $29
	inc c                                            ; $61e0: $0c
	cp l                                             ; $61e1: $bd
	ld [bc], a                                       ; $61e2: $02
	daa                                              ; $61e3: $27
	dec d                                            ; $61e4: $15
	inc bc                                           ; $61e5: $03
	add hl, hl                                       ; $61e6: $29
	inc c                                            ; $61e7: $0c
	ld a, [hl+]                                      ; $61e8: $2a
	inc c                                            ; $61e9: $0c
	ld a, [hl+]                                      ; $61ea: $2a
	inc c                                            ; $61eb: $0c
	add hl, hl                                       ; $61ec: $29
	jr @+$29                                         ; $61ed: $18 $27

	jr jr_034_6217                                   ; $61ef: $18 $26

	add hl, bc                                       ; $61f1: $09
	ld a, [hl]                                       ; $61f2: $7e
	nop                                              ; $61f3: $00
	sub a                                            ; $61f4: $97
	nop                                              ; $61f5: $00
	or l                                             ; $61f6: $b5
	ld d, c                                          ; $61f7: $51
	ld [bc], a                                       ; $61f8: $02
	sub [hl]                                         ; $61f9: $96
	rlca                                             ; $61fa: $07
	add hl, hl                                       ; $61fb: $29
	inc h                                            ; $61fc: $24
	add hl, hl                                       ; $61fd: $29
	inc c                                            ; $61fe: $0c
	add hl, hl                                       ; $61ff: $29
	db $10                                           ; $6200: $10
	daa                                              ; $6201: $27
	db $10                                           ; $6202: $10
	dec h                                            ; $6203: $25
	db $10                                           ; $6204: $10
	sub [hl]                                         ; $6205: $96
	jr jr_034_620c                                   ; $6206: $18 $04

	daa                                              ; $6208: $27
	jr @-$4d                                         ; $6209: $18 $b1

	ld [hl], c                                       ; $620b: $71

jr_034_620c:
	ld h, h                                          ; $620c: $64
	inc bc                                           ; $620d: $03
	jr nz, @+$08                                     ; $620e: $20 $06

	ld [hl+], a                                      ; $6210: $22
	ld b, $c4                                        ; $6211: $06 $c4
	ld a, l                                          ; $6213: $7d
	ld bc, $0624                                     ; $6214: $01 $24 $06

jr_034_6217:
	ld a, l                                          ; $6217: $7d
	nop                                              ; $6218: $00
	rst JumpTable                                          ; $6219: $c7
	cp [hl]                                          ; $621a: $be
	ld b, $25                                        ; $621b: $06 $25
	daa                                              ; $621d: $27
	add hl, hl                                       ; $621e: $29
	ld a, [hl+]                                      ; $621f: $2a
	inc l                                            ; $6220: $2c
	cp [hl]                                          ; $6221: $be
	or c                                             ; $6222: $b1
	ld [hl], c                                       ; $6223: $71
	jr jr_034_622b                                   ; $6224: $18 $05

jr_034_6226:
	ld a, [hl+]                                      ; $6226: $2a
	jr jr_034_6226                                   ; $6227: $18 $fd

	ld [hl], b                                       ; $6229: $70
	ld h, d                                          ; $622a: $62

jr_034_622b:
	or c                                             ; $622b: $b1
	ld b, c                                          ; $622c: $41
	inc a                                            ; $622d: $3c
	rlca                                             ; $622e: $07
	ld e, $30                                        ; $622f: $1e $30
	ld a, [hl]                                       ; $6231: $7e

jr_034_6232:
	dec l                                            ; $6232: $2d
	nop                                              ; $6233: $00
	and b                                            ; $6234: $a0
	or l                                             ; $6235: $b5
	ld b, c                                          ; $6236: $41
	nop                                              ; $6237: $00
	nop                                              ; $6238: $00
	nop                                              ; $6239: $00
	daa                                              ; $623a: $27
	rrca                                             ; $623b: $0f
	add hl, hl                                       ; $623c: $29
	inc c                                            ; $623d: $0c
	cp l                                             ; $623e: $bd
	ld [bc], a                                       ; $623f: $02
	daa                                              ; $6240: $27
	dec d                                            ; $6241: $15
	inc bc                                           ; $6242: $03
	add hl, hl                                       ; $6243: $29
	inc c                                            ; $6244: $0c
	ld a, [hl+]                                      ; $6245: $2a
	inc c                                            ; $6246: $0c
	ld a, [hl+]                                      ; $6247: $2a
	inc c                                            ; $6248: $0c
	add hl, hl                                       ; $6249: $29
	jr jr_034_6273                                   ; $624a: $18 $27

	jr jr_034_6274                                   ; $624c: $18 $26

	add hl, bc                                       ; $624e: $09
	ld a, [hl]                                       ; $624f: $7e
	nop                                              ; $6250: $00
	sub a                                            ; $6251: $97
	nop                                              ; $6252: $00

jr_034_6253:
	push bc                                          ; $6253: $c5
	sub d                                            ; $6254: $92
	sub a                                            ; $6255: $97
	nop                                              ; $6256: $00
	sub [hl]                                         ; $6257: $96
	inc h                                            ; $6258: $24
	rlca                                             ; $6259: $07
	dec h                                            ; $625a: $25
	ld d, h                                          ; $625b: $54
	inc h                                            ; $625c: $24
	inc h                                            ; $625d: $24
	sub b                                            ; $625e: $90
	rst JumpTable                                          ; $625f: $c7
	dec de                                           ; $6260: $1b
	ld [$1bc2], sp                                   ; $6261: $08 $c2 $1b
	db $10                                           ; $6264: $10
	rst JumpTable                                          ; $6265: $c7
	jr nz, jr_034_6274                               ; $6266: $20 $0c

	inc h                                            ; $6268: $24
	inc c                                            ; $6269: $0c
	call nz, $0c24                                   ; $626a: $c4 $24 $0c
	jp z, $fffe                                      ; $626d: $ca $fe $ff

	or l                                             ; $6270: $b5
	ld [hl], c                                       ; $6271: $71
	ld [bc], a                                       ; $6272: $02

jr_034_6273:
	ld c, b                                          ; $6273: $48

jr_034_6274:
	ld b, $7e                                        ; $6274: $06 $7e
	dec l                                            ; $6276: $2d
	inc d                                            ; $6277: $14
	and b                                            ; $6278: $a0
	ld [hl], d                                       ; $6279: $72
	add hl, hl                                       ; $627a: $29
	jr nc, jr_034_6232                               ; $627b: $30 $b5

	ld b, c                                          ; $627d: $41
	nop                                              ; $627e: $00
	nop                                              ; $627f: $00
	nop                                              ; $6280: $00
	ld a, [hl]                                       ; $6281: $7e
	dec l                                            ; $6282: $2d
	nop                                              ; $6283: $00
	and b                                            ; $6284: $a0
	dec h                                            ; $6285: $25
	rrca                                             ; $6286: $0f
	daa                                              ; $6287: $27
	inc c                                            ; $6288: $0c
	cp l                                             ; $6289: $bd
	ld [bc], a                                       ; $628a: $02
	dec h                                            ; $628b: $25
	dec d                                            ; $628c: $15
	inc bc                                           ; $628d: $03
	daa                                              ; $628e: $27
	inc c                                            ; $628f: $0c
	add hl, hl                                       ; $6290: $29
	inc c                                            ; $6291: $0c
	add hl, hl                                       ; $6292: $29
	inc c                                            ; $6293: $0c
	daa                                              ; $6294: $27
	jr jr_034_62bc                                   ; $6295: $18 $25

	jr @+$26                                         ; $6297: $18 $24

	add hl, bc                                       ; $6299: $09
	ld a, [hl]                                       ; $629a: $7e
	dec l                                            ; $629b: $2d
	inc d                                            ; $629c: $14
	and b                                            ; $629d: $a0

jr_034_629e:
	or l                                             ; $629e: $b5
	ld b, c                                          ; $629f: $41
	ld [bc], a                                       ; $62a0: $02
	nop                                              ; $62a1: $00
	nop                                              ; $62a2: $00
	daa                                              ; $62a3: $27
	inc a                                            ; $62a4: $3c
	or c                                             ; $62a5: $b1
	ld d, c                                          ; $62a6: $51
	sub [hl]                                         ; $62a7: $96
	inc bc                                           ; $62a8: $03
	dec h                                            ; $62a9: $25
	inc c                                            ; $62aa: $0c
	add hl, hl                                       ; $62ab: $29
	inc c                                            ; $62ac: $0c
	ld a, [hl+]                                      ; $62ad: $2a
	inc c                                            ; $62ae: $0c
	call nz, $013a                                   ; $62af: $c4 $3a $01
	ld l, $0b                                        ; $62b2: $2e $0b
	ld a, [hl-]                                      ; $62b4: $3a
	ld bc, $0b2e                                     ; $62b5: $01 $2e $0b
	jr c, jr_034_62bb                                ; $62b8: $38 $01

	inc l                                            ; $62ba: $2c

jr_034_62bb:
	dec bc                                           ; $62bb: $0b

jr_034_62bc:
	jr c, jr_034_62bf                                ; $62bc: $38 $01

	inc l                                            ; $62be: $2c

jr_034_62bf:
	dec bc                                           ; $62bf: $0b
	inc a                                            ; $62c0: $3c
	ld bc, $0b30                                     ; $62c1: $01 $30 $0b
	inc a                                            ; $62c4: $3c
	ld bc, $0b30                                     ; $62c5: $01 $30 $0b
	jr c, jr_034_62cb                                ; $62c8: $38 $01

	inc l                                            ; $62ca: $2c

jr_034_62cb:
	dec bc                                           ; $62cb: $0b
	jr c, jr_034_62cf                                ; $62cc: $38 $01

	inc l                                            ; $62ce: $2c

jr_034_62cf:
	dec bc                                           ; $62cf: $0b
	db $fd                                           ; $62d0: $fd
	or h                                             ; $62d1: $b4
	adc h                                            ; $62d2: $8c
	pop de                                           ; $62d3: $d1

jr_034_62d4:
	ld bc, $2072                                     ; $62d4: $01 $72 $20
	ld [$20c2], sp                                   ; $62d7: $08 $c2 $20
	db $10                                           ; $62da: $10
	call $0c25                                       ; $62db: $cd $25 $0c
	daa                                              ; $62de: $27

jr_034_62df:
	inc c                                            ; $62df: $0c
	jp nz, $0c27                                     ; $62e0: $c2 $27 $0c

	cp $cb                                           ; $62e3: $fe $cb
	sub c                                            ; $62e5: $91
	ld a, [hl]                                       ; $62e6: $7e
	dec l                                            ; $62e7: $2d
	inc hl                                           ; $62e8: $23
	and b                                            ; $62e9: $a0
	ld a, [hl+]                                      ; $62ea: $2a
	jr nc, jr_034_629e                               ; $62eb: $30 $b1

	or c                                             ; $62ed: $b1

jr_034_62ee:
	ret z                                            ; $62ee: $c8

	ld bc, $0c29                                     ; $62ef: $01 $29 $0c
	sub [hl]                                         ; $62f2: $96
	ld d, b                                          ; $62f3: $50
	rlca                                             ; $62f4: $07
	add hl, hl                                       ; $62f5: $29
	ld c, b                                          ; $62f6: $48
	or c                                             ; $62f7: $b1
	pop de                                           ; $62f8: $d1
	sub [hl]                                         ; $62f9: $96
	inc bc                                           ; $62fa: $03
	add hl, hl                                       ; $62fb: $29
	jr jr_034_6326                                   ; $62fc: $18 $28

	inc c                                            ; $62fe: $0c
	add hl, hl                                       ; $62ff: $29
	inc c                                            ; $6300: $0c
	or c                                             ; $6301: $b1
	ld d, c                                          ; $6302: $51
	nop                                              ; $6303: $00
	nop                                              ; $6304: $00
	jr z, jr_034_630d                                ; $6305: $28 $06

	add hl, hl                                       ; $6307: $29
	ld b, $b1                                        ; $6308: $06 $b1
	and c                                            ; $630a: $a1
	ld d, b                                          ; $630b: $50
	rlca                                             ; $630c: $07

jr_034_630d:
	ld a, [hl]                                       ; $630d: $7e
	dec l                                            ; $630e: $2d
	ld d, $a0                                        ; $630f: $16 $a0
	inc l                                            ; $6311: $2c
	jr nc, jr_034_62df                               ; $6312: $30 $cb

	ld a, [hl+]                                      ; $6314: $2a
	inc c                                            ; $6315: $0c
	or c                                             ; $6316: $b1
	pop bc                                           ; $6317: $c1
	ld d, b                                          ; $6318: $50
	rlca                                             ; $6319: $07
	ld [hl+], a                                      ; $631a: $22
	ld h, b                                          ; $631b: $60
	or c                                             ; $631c: $b1
	pop de                                           ; $631d: $d1
	sub [hl]                                         ; $631e: $96
	ld [bc], a                                       ; $631f: $02
	daa                                              ; $6320: $27
	jr jr_034_634c                                   ; $6321: $18 $29

	jr @-$4d                                         ; $6323: $18 $b1

	pop bc                                           ; $6325: $c1

jr_034_6326:
	ret z                                            ; $6326: $c8

	inc bc                                           ; $6327: $03

jr_034_6328:
	ld a, [hl+]                                      ; $6328: $2a
	jr jr_034_6355                                   ; $6329: $18 $2a

	jr jr_034_6357                                   ; $632b: $18 $2a

	jr jr_034_6358                                   ; $632d: $18 $29

	inc c                                            ; $632f: $0c
	ld a, [hl]                                       ; $6330: $7e
	dec l                                            ; $6331: $2d
	jr jr_034_62d4                                   ; $6332: $18 $a0

	or c                                             ; $6334: $b1
	or c                                             ; $6335: $b1
	sub [hl]                                         ; $6336: $96
	rlca                                             ; $6337: $07
	ld a, [hl+]                                      ; $6338: $2a
	inc h                                            ; $6339: $24
	add hl, hl                                       ; $633a: $29
	jr nc, jr_034_62ee                               ; $633b: $30 $b1

	pop bc                                           ; $633d: $c1
	sub [hl]                                         ; $633e: $96
	ld [bc], a                                       ; $633f: $02
	daa                                              ; $6340: $27
	inc c                                            ; $6341: $0c
	or c                                             ; $6342: $b1
	or c                                             ; $6343: $b1
	sub [hl]                                         ; $6344: $96
	rlca                                             ; $6345: $07
	add hl, hl                                       ; $6346: $29
	inc h                                            ; $6347: $24
	or l                                             ; $6348: $b5
	ld h, c                                          ; $6349: $61
	ld [bc], a                                       ; $634a: $02
	sub [hl]                                         ; $634b: $96

jr_034_634c:
	inc b                                            ; $634c: $04
	dec a                                            ; $634d: $3d
	ld bc, $1731                                     ; $634e: $01 $31 $17
	cp [hl]                                          ; $6351: $be
	inc c                                            ; $6352: $0c
	jr nc, jr_034_6386                               ; $6353: $30 $31

jr_034_6355:
	jr nc, jr_034_6385                               ; $6355: $30 $2e

jr_034_6357:
	cp [hl]                                          ; $6357: $be

jr_034_6358:
	sub [hl]                                         ; $6358: $96
	ret z                                            ; $6359: $c8

	rlca                                             ; $635a: $07
	inc l                                            ; $635b: $2c
	jr @-$49                                         ; $635c: $18 $b5

	pop de                                           ; $635e: $d1
	ld bc, $0000                                     ; $635f: $01 $00 $00
	jr nz, jr_034_636c                               ; $6362: $20 $08

	jp nz, $1020                                     ; $6364: $c2 $20 $10

	call z, $0c25                                    ; $6367: $cc $25 $0c
	daa                                              ; $636a: $27
	inc c                                            ; $636b: $0c

jr_034_636c:
	jp nz, $0c27                                     ; $636c: $c2 $27 $0c

	ret                                              ; $636f: $c9


	ld a, [hl]                                       ; $6370: $7e
	dec l                                            ; $6371: $2d
	inc hl                                           ; $6372: $23
	and b                                            ; $6373: $a0
	ld a, [hl+]                                      ; $6374: $2a
	jr nc, jr_034_6328                               ; $6375: $30 $b1

	and c                                            ; $6377: $a1
	sub [hl]                                         ; $6378: $96
	ld bc, $0c29                                     ; $6379: $01 $29 $0c
	or c                                             ; $637c: $b1

jr_034_637d:
	sub c                                            ; $637d: $91
	ld [hl-], a                                      ; $637e: $32

jr_034_637f:
	rlca                                             ; $637f: $07
	add hl, hl                                       ; $6380: $29
	ld h, b                                          ; $6381: $60
	or c                                             ; $6382: $b1
	or c                                             ; $6383: $b1
	sub [hl]                                         ; $6384: $96

jr_034_6385:
	inc bc                                           ; $6385: $03

jr_034_6386:
	cp [hl]                                          ; $6386: $be
	inc c                                            ; $6387: $0c
	add hl, hl                                       ; $6388: $29
	daa                                              ; $6389: $27
	dec h                                            ; $638a: $25
	inc h                                            ; $638b: $24

jr_034_638c:
	cp [hl]                                          ; $638c: $be
	sub [hl]                                         ; $638d: $96
	nop                                              ; $638e: $00
	nop                                              ; $638f: $00
	ld [hl+], a                                      ; $6390: $22
	inc c                                            ; $6391: $0c
	call nz, $0c22                                   ; $6392: $c4 $22 $0c
	sla d                                            ; $6395: $cb $22
	inc c                                            ; $6397: $0c
	call nz, $0c22                                   ; $6398: $c4 $22 $0c
	sla a                                            ; $639b: $cb $27
	inc c                                            ; $639d: $0c
	add hl, hl                                       ; $639e: $29
	inc c                                            ; $639f: $0c
	call nz, $0c29                                   ; $63a0: $c4 $29 $0c
	ret                                              ; $63a3: $c9


	ld a, [hl]                                       ; $63a4: $7e
	dec l                                            ; $63a5: $2d
	inc e                                            ; $63a6: $1c
	and b                                            ; $63a7: $a0
	sub [hl]                                         ; $63a8: $96
	ld e, $04                                        ; $63a9: $1e $04
	ld a, [hl+]                                      ; $63ab: $2a
	inc a                                            ; $63ac: $3c
	sub [hl]                                         ; $63ad: $96
	nop                                              ; $63ae: $00
	nop                                              ; $63af: $00
	ld a, [hl]                                       ; $63b0: $7e
	nop                                              ; $63b1: $00
	rst JumpTable                                          ; $63b2: $c7
	inc l                                            ; $63b3: $2c
	jr jr_034_637f                                   ; $63b4: $18 $c9

	ld a, [hl+]                                      ; $63b6: $2a
	ld [de], a                                       ; $63b7: $12
	call nz, $062a                                   ; $63b8: $c4 $2a $06
	ld a, [hl]                                       ; $63bb: $7e
	dec l                                            ; $63bc: $2d
	inc e                                            ; $63bd: $1c
	and b                                            ; $63be: $a0
	jp z, Jump_034_482a                              ; $63bf: $ca $2a $48

	or c                                             ; $63c2: $b1
	pop bc                                           ; $63c3: $c1
	sub [hl]                                         ; $63c4: $96
	ld [bc], a                                       ; $63c5: $02
	add hl, hl                                       ; $63c6: $29
	inc c                                            ; $63c7: $0c
	daa                                              ; $63c8: $27
	inc c                                            ; $63c9: $0c
	sub [hl]                                         ; $63ca: $96
	nop                                              ; $63cb: $00
	nop                                              ; $63cc: $00
	jp nz, $0829                                     ; $63cd: $c2 $29 $08

	daa                                              ; $63d0: $27
	db $10                                           ; $63d1: $10
	or c                                             ; $63d2: $b1
	or c                                             ; $63d3: $b1
	sub [hl]                                         ; $63d4: $96
	inc b                                            ; $63d5: $04
	jr nz, jr_034_63f0                               ; $63d6: $20 $18

	daa                                              ; $63d8: $27
	jr jr_034_63ff                                   ; $63d9: $18 $24

	inc c                                            ; $63db: $0c
	or c                                             ; $63dc: $b1
	pop bc                                           ; $63dd: $c1
	ld h, h                                          ; $63de: $64
	rlca                                             ; $63df: $07
	dec h                                            ; $63e0: $25
	or h                                             ; $63e1: $b4
	ret                                              ; $63e2: $c9


	sub d                                            ; $63e3: $92
	daa                                              ; $63e4: $27
	jr jr_034_637d                                   ; $63e5: $18 $96

jr_034_63e7:
	nop                                              ; $63e7: $00
	nop                                              ; $63e8: $00
	call $92d1                                       ; $63e9: $cd $d1 $92
	ld [hl], d                                       ; $63ec: $72
	db $fd                                           ; $63ed: $fd
	scf                                              ; $63ee: $37
	ld h, h                                          ; $63ef: $64

jr_034_63f0:
	sub [hl]                                         ; $63f0: $96
	sub [hl]                                         ; $63f1: $96
	inc b                                            ; $63f2: $04
	dec h                                            ; $63f3: $25
	jr jr_034_638c                                   ; $63f4: $18 $96

	sub [hl]                                         ; $63f6: $96
	inc bc                                           ; $63f7: $03
	dec h                                            ; $63f8: $25
	inc c                                            ; $63f9: $0c
	dec h                                            ; $63fa: $25
	inc c                                            ; $63fb: $0c
	sub [hl]                                         ; $63fc: $96
	sub [hl]                                         ; $63fd: $96
	inc bc                                           ; $63fe: $03

jr_034_63ff:
	dec h                                            ; $63ff: $25

Jump_034_6400:
	db $10                                           ; $6400: $10
	inc h                                            ; $6401: $24
	db $10                                           ; $6402: $10
	ld [hl+], a                                      ; $6403: $22
	db $10                                           ; $6404: $10
	or c                                             ; $6405: $b1
	sub c                                            ; $6406: $91
	inc a                                            ; $6407: $3c
	rlca                                             ; $6408: $07
	inc h                                            ; $6409: $24
	ld c, b                                          ; $640a: $48
	sub [hl]                                         ; $640b: $96
	jr jr_034_6412                                   ; $640c: $18 $04

	sub d                                            ; $640e: $92

jr_034_640f:
	daa                                              ; $640f: $27
	jr jr_034_640f                                   ; $6410: $18 $fd

jr_034_6412:
	scf                                              ; $6412: $37
	ld h, h                                          ; $6413: $64

jr_034_6414:
	ret                                              ; $6414: $c9


	ld a, [hl]                                       ; $6415: $7e
	dec l                                            ; $6416: $2d
	jr nz, @-$5e                                     ; $6417: $20 $a0

	sub [hl]                                         ; $6419: $96
	inc a                                            ; $641a: $3c
	rlca                                             ; $641b: $07
	inc l                                            ; $641c: $2c
	ld d, h                                          ; $641d: $54
	sub [hl]                                         ; $641e: $96
	inc h                                            ; $641f: $24
	rlca                                             ; $6420: $07
	inc l                                            ; $6421: $2c
	inc h                                            ; $6422: $24
	ld a, [hl]                                       ; $6423: $7e
	nop                                              ; $6424: $00
	sub c                                            ; $6425: $91
	call $0820                                       ; $6426: $cd $20 $08
	jp nz, $1020                                     ; $6429: $c2 $20 $10

jr_034_642c:
	call $0c25                                       ; $642c: $cd $25 $0c
	daa                                              ; $642f: $27
	inc c                                            ; $6430: $0c
	jp $0c27                                         ; $6431: $c3 $27 $0c


	ret                                              ; $6434: $c9


jr_034_6435:
	cp $ff                                           ; $6435: $fe $ff
	call z, $92d1                                    ; $6437: $cc $d1 $92
	ld [hl], d                                       ; $643a: $72
	sub [hl]                                         ; $643b: $96
	sub [hl]                                         ; $643c: $96
	inc bc                                           ; $643d: $03
	dec h                                            ; $643e: $25
	inc c                                            ; $643f: $0c
	sub b                                            ; $6440: $90
	call $0c25                                       ; $6441: $cd $25 $0c
	call z, $0c24                                    ; $6444: $cc $24 $0c
	dec h                                            ; $6447: $25
	inc c                                            ; $6448: $0c
	daa                                              ; $6449: $27
	inc c                                            ; $644a: $0c
	sub [hl]                                         ; $644b: $96
	sub [hl]                                         ; $644c: $96
	inc b                                            ; $644d: $04
	dec h                                            ; $644e: $25
	jr jr_034_63e7                                   ; $644f: $18 $96

	sub [hl]                                         ; $6451: $96
	inc bc                                           ; $6452: $03
	daa                                              ; $6453: $27
	inc c                                            ; $6454: $0c
	sra c                                            ; $6455: $cb $29
	inc c                                            ; $6457: $0c
	add hl, hl                                       ; $6458: $29
	inc c                                            ; $6459: $0c
	sub [hl]                                         ; $645a: $96
	sub [hl]                                         ; $645b: $96
	inc b                                            ; $645c: $04
	daa                                              ; $645d: $27
	jr jr_034_642c                                   ; $645e: $18 $cc

	dec h                                            ; $6460: $25
	jr jr_034_6414                                   ; $6461: $18 $b1

	pop hl                                           ; $6463: $e1
	sub [hl]                                         ; $6464: $96
	inc bc                                           ; $6465: $03
	inc h                                            ; $6466: $24
	inc c                                            ; $6467: $0c
	dec h                                            ; $6468: $25
	inc c                                            ; $6469: $0c
	sub [hl]                                         ; $646a: $96
	sub [hl]                                         ; $646b: $96
	ld b, $24                                        ; $646c: $06 $24
	inc h                                            ; $646e: $24
	sub [hl]                                         ; $646f: $96
	sub [hl]                                         ; $6470: $96
	ld [bc], a                                       ; $6471: $02
	inc h                                            ; $6472: $24
	inc c                                            ; $6473: $0c
	sub [hl]                                         ; $6474: $96
	sub [hl]                                         ; $6475: $96
	inc b                                            ; $6476: $04
	inc h                                            ; $6477: $24
	inc c                                            ; $6478: $0c
	sla d                                            ; $6479: $cb $22
	jr @-$4d                                         ; $647b: $18 $b1

	and c                                            ; $647d: $a1
	inc a                                            ; $647e: $3c
	rlca                                             ; $647f: $07
	dec e                                            ; $6480: $1d
	ld d, h                                          ; $6481: $54
	or l                                             ; $6482: $b5
	sub c                                            ; $6483: $91
	ld [bc], a                                       ; $6484: $02
	jr jr_034_648b                                   ; $6485: $18 $04

	add hl, hl                                       ; $6487: $29
	jr jr_034_64b1                                   ; $6488: $18 $27

	inc c                                            ; $648a: $0c

jr_034_648b:
	or l                                             ; $648b: $b5
	pop de                                           ; $648c: $d1
	nop                                              ; $648d: $00
	sub [hl]                                         ; $648e: $96
	inc bc                                           ; $648f: $03

jr_034_6490:
	daa                                              ; $6490: $27
	inc c                                            ; $6491: $0c
	call z, $0c26                                    ; $6492: $cc $26 $0c
	daa                                              ; $6495: $27
	inc c                                            ; $6496: $0c
	add hl, hl                                       ; $6497: $29
	inc c                                            ; $6498: $0c
	sub [hl]                                         ; $6499: $96
	sub [hl]                                         ; $649a: $96
	inc b                                            ; $649b: $04
	daa                                              ; $649c: $27
	jr jr_034_6435                                   ; $649d: $18 $96

	sub [hl]                                         ; $649f: $96
	inc bc                                           ; $64a0: $03
	add hl, hl                                       ; $64a1: $29
	inc c                                            ; $64a2: $0c
	ld a, [hl+]                                      ; $64a3: $2a
	inc c                                            ; $64a4: $0c
	ld a, [hl+]                                      ; $64a5: $2a
	inc c                                            ; $64a6: $0c
	sub [hl]                                         ; $64a7: $96
	sub [hl]                                         ; $64a8: $96
	inc b                                            ; $64a9: $04
	add hl, hl                                       ; $64aa: $29
	jr jr_034_64d4                                   ; $64ab: $18 $27

	jr @-$68                                         ; $64ad: $18 $96

	sub [hl]                                         ; $64af: $96
	inc bc                                           ; $64b0: $03

jr_034_64b1:
	ld h, $0c                                        ; $64b1: $26 $0c
	daa                                              ; $64b3: $27
	inc c                                            ; $64b4: $0c
	db $fd                                           ; $64b5: $fd
	or h                                             ; $64b6: $b4
	adc h                                            ; $64b7: $8c
	ld hl, $7200                                     ; $64b8: $21 $00 $72
	ld [$c60c], sp                                   ; $64bb: $08 $0c $c6
	ld [$c20c], sp                                   ; $64be: $08 $0c $c2
	ld a, [bc]                                       ; $64c1: $0a
	inc c                                            ; $64c2: $0c
	inc c                                            ; $64c3: $0c
	inc c                                            ; $64c4: $0c
	add $0c                                          ; $64c5: $c6 $0c
	inc c                                            ; $64c7: $0c
	cp $c2                                           ; $64c8: $fe $c2
	dec c                                            ; $64ca: $0d
	inc c                                            ; $64cb: $0c
	sub [hl]                                         ; $64cc: $96
	ld b, $01                                        ; $64cd: $06 $01
	dec c                                            ; $64cf: $0d
	jr jr_034_6490                                   ; $64d0: $18 $be

	inc c                                            ; $64d2: $0c
	dec c                                            ; $64d3: $0d

jr_034_64d4:
	ld [$0f0d], sp                                   ; $64d4: $08 $0d $0f
	db $10                                           ; $64d7: $10
	cp [hl]                                          ; $64d8: $be
	ld de, $be18                                     ; $64d9: $11 $18 $be
	inc c                                            ; $64dc: $0c
	ld de, $0d11                                     ; $64dd: $11 $11 $0d
	ld de, $110f                                     ; $64e0: $11 $0f $11
	cp [hl]                                          ; $64e3: $be
	ld [de], a                                       ; $64e4: $12
	jr @+$14                                         ; $64e5: $18 $12

	inc c                                            ; $64e7: $0c
	ld [de], a                                       ; $64e8: $12
	inc c                                            ; $64e9: $0c
	cp [hl]                                          ; $64ea: $be
	inc c                                            ; $64eb: $0c
	dec c                                            ; $64ec: $0d
	ld [de], a                                       ; $64ed: $12
	dec c                                            ; $64ee: $0d
	ld [de], a                                       ; $64ef: $12
	cp [hl]                                          ; $64f0: $be
	ld a, [bc]                                       ; $64f1: $0a
	jr jr_034_64fe                                   ; $64f2: $18 $0a

	inc c                                            ; $64f4: $0c
	call nz, $0c16                                   ; $64f5: $c4 $16 $0c
	jp nz, $0c0a                                     ; $64f8: $c2 $0a $0c

	inc c                                            ; $64fb: $0c
	jr @+$0c                                         ; $64fc: $18 $0a

jr_034_64fe:
	jr @+$0a                                         ; $64fe: $18 $08

	jr @-$40                                         ; $6500: $18 $be

	inc c                                            ; $6502: $0c
	inc c                                            ; $6503: $0c
	ld [$0f08], sp                                   ; $6504: $08 $08 $0f
	ld [$08be], sp                                   ; $6507: $08 $be $08
	inc h                                            ; $650a: $24
	cp [hl]                                          ; $650b: $be
	inc c                                            ; $650c: $0c
	inc c                                            ; $650d: $0c
	ld [$0f08], sp                                   ; $650e: $08 $08 $0f
	ld [$0dbe], sp                                   ; $6511: $08 $be $0d
	jr jr_034_64d4                                   ; $6514: $18 $be

	inc c                                            ; $6516: $0c
	dec c                                            ; $6517: $0d

jr_034_6518:
	dec c                                            ; $6518: $0d
	dec c                                            ; $6519: $0d
	dec c                                            ; $651a: $0d
	dec c                                            ; $651b: $0d
	dec c                                            ; $651c: $0d
	dec c                                            ; $651d: $0d
	cp [hl]                                          ; $651e: $be
	dec c                                            ; $651f: $0d
	jr jr_034_652a                                   ; $6520: $18 $08

	jr @+$0c                                         ; $6522: $18 $0a

	inc c                                            ; $6524: $0c
	inc c                                            ; $6525: $0c
	jr jr_034_6535                                   ; $6526: $18 $0d

	inc h                                            ; $6528: $24
	cp [hl]                                          ; $6529: $be

jr_034_652a:
	inc c                                            ; $652a: $0c
	dec c                                            ; $652b: $0d
	ld [$0f0d], sp                                   ; $652c: $08 $0d $0f
	db $10                                           ; $652f: $10
	cp [hl]                                          ; $6530: $be
	ld de, $1118                                     ; $6531: $11 $18 $11
	inc c                                            ; $6534: $0c

jr_034_6535:
	call nz, $0c1d                                   ; $6535: $c4 $1d $0c
	jp nz, $0cbe                                     ; $6538: $c2 $be $0c

	ld de, $1011                                     ; $653b: $11 $11 $10
	ld de, $06be                                     ; $653e: $11 $be $06
	jr @-$40                                         ; $6541: $18 $be

	inc c                                            ; $6543: $0c
	ld b, $12                                        ; $6544: $06 $12
	ld b, $06                                        ; $6546: $06 $06

jr_034_6548:
	ld [de], a                                       ; $6548: $12
	ld b, $be                                        ; $6549: $06 $be
	ld a, [bc]                                       ; $654b: $0a
	jr jr_034_6558                                   ; $654c: $18 $0a

	inc c                                            ; $654e: $0c
	ld d, $0c                                        ; $654f: $16 $0c
	ld a, [bc]                                       ; $6551: $0a
	inc c                                            ; $6552: $0c
	inc c                                            ; $6553: $0c
	jr @+$0c                                         ; $6554: $18 $0a

	jr @+$0a                                         ; $6556: $18 $08

jr_034_6558:
	jr jr_034_6518                                   ; $6558: $18 $be

	inc c                                            ; $655a: $0c
	ld [$080c], sp                                   ; $655b: $08 $0c $08
	rrca                                             ; $655e: $0f
	ld [$08be], sp                                   ; $655f: $08 $be $08
	inc h                                            ; $6562: $24
	ld [$0a18], sp                                   ; $6563: $08 $18 $0a
	inc c                                            ; $6566: $0c
	inc c                                            ; $6567: $0c
	jr @+$0f                                         ; $6568: $18 $0d

	jr @+$0f                                         ; $656a: $18 $0d

	inc c                                            ; $656c: $0c
	call nz, $0c19                                   ; $656d: $c4 $19 $0c
	jp nz, $0c0d                                     ; $6570: $c2 $0d $0c

	dec c                                            ; $6573: $0d
	inc c                                            ; $6574: $0c
	call nz, $0c19                                   ; $6575: $c4 $19 $0c
	jp nz, $0c0d                                     ; $6578: $c2 $0d $0c

	dec c                                            ; $657b: $0d
	inc c                                            ; $657c: $0c
	sub [hl]                                         ; $657d: $96
	dec b                                            ; $657e: $05
	ld bc, $0c0d                                     ; $657f: $01 $0d $0c
	or c                                             ; $6582: $b1
	ld b, c                                          ; $6583: $41
	nop                                              ; $6584: $00
	nop                                              ; $6585: $00
	inc de                                           ; $6586: $13
	inc c                                            ; $6587: $0c
	sub [hl]                                         ; $6588: $96
	dec b                                            ; $6589: $05
	ld bc, $0c14                                     ; $658a: $01 $14 $0c
	jp nz, $0c0d                                     ; $658d: $c2 $0d $0c

	ld [de], a                                       ; $6590: $12
	inc c                                            ; $6591: $0c
	ld de, $080c                                     ; $6592: $11 $0c $08
	jr jr_034_6548                                   ; $6595: $18 $b1

	ld hl, $0107                                     ; $6597: $21 $07 $01
	ld [hl], d                                       ; $659a: $72
	db $fd                                           ; $659b: $fd
	jp nc, $0865                                     ; $659c: $d2 $65 $08

	inc c                                            ; $659f: $0c
	dec c                                            ; $65a0: $0d
	jr jr_034_65b2                                   ; $65a1: $18 $0f

	jr jr_034_65b2                                   ; $65a3: $18 $0d

	inc c                                            ; $65a5: $0c
	ld [de], a                                       ; $65a6: $12
	inc c                                            ; $65a7: $0c
	dec c                                            ; $65a8: $0d
	inc c                                            ; $65a9: $0c
	cp [hl]                                          ; $65aa: $be
	jr jr_034_65b5                                   ; $65ab: $18 $08

	ld a, [bc]                                       ; $65ad: $0a
	inc c                                            ; $65ae: $0c
	ld [$fdbe], sp                                   ; $65af: $08 $be $fd

jr_034_65b2:
	jp nc, $0865                                     ; $65b2: $d2 $65 $08

jr_034_65b5:
	inc c                                            ; $65b5: $0c
	ld [$0d18], sp                                   ; $65b6: $08 $18 $0d
	jr @+$0a                                         ; $65b9: $18 $08

	inc c                                            ; $65bb: $0c
	dec c                                            ; $65bc: $0d
	inc c                                            ; $65bd: $0c
	ld [$960c], sp                                   ; $65be: $08 $0c $96
	ld [bc], a                                       ; $65c1: $02
	ld bc, $1808                                     ; $65c2: $01 $08 $18
	sub [hl]                                         ; $65c5: $96
	nop                                              ; $65c6: $00
	nop                                              ; $65c7: $00
	cp [hl]                                          ; $65c8: $be
	inc c                                            ; $65c9: $0c
	ld [$0a00], sp                                   ; $65ca: $08 $00 $0a
	inc c                                            ; $65cd: $0c
	nop                                              ; $65ce: $00
	cp [hl]                                          ; $65cf: $be
	cp $ff                                           ; $65d0: $fe $ff
	ei                                               ; $65d2: $fb
	dec c                                            ; $65d3: $0d
	inc c                                            ; $65d4: $0c
	dec c                                            ; $65d5: $0d
	jr jr_034_65e0                                   ; $65d6: $18 $08

	jr jr_034_65e7                                   ; $65d8: $18 $0d

	inc c                                            ; $65da: $0c
	ld [$0d0c], sp                                   ; $65db: $08 $0c $0d
	inc c                                            ; $65de: $0c
	ei                                               ; $65df: $fb

jr_034_65e0:
	ld [bc], a                                       ; $65e0: $02
	ei                                               ; $65e1: $fb
	ld a, [bc]                                       ; $65e2: $0a
	inc c                                            ; $65e3: $0c
	ld a, [bc]                                       ; $65e4: $0a
	jr jr_034_65ec                                   ; $65e5: $18 $05

jr_034_65e7:
	jr jr_034_65f3                                   ; $65e7: $18 $0a

	inc c                                            ; $65e9: $0c
	dec b                                            ; $65ea: $05
	inc c                                            ; $65eb: $0c

jr_034_65ec:
	ld a, [bc]                                       ; $65ec: $0a
	inc c                                            ; $65ed: $0c
	ei                                               ; $65ee: $fb
	ld [bc], a                                       ; $65ef: $02
	ei                                               ; $65f0: $fb
	rrca                                             ; $65f1: $0f
	inc c                                            ; $65f2: $0c

jr_034_65f3:
	rrca                                             ; $65f3: $0f
	jr jr_034_6600                                   ; $65f4: $18 $0a

	jr jr_034_6607                                   ; $65f6: $18 $0f

	inc c                                            ; $65f8: $0c
	ld a, [bc]                                       ; $65f9: $0a
	inc c                                            ; $65fa: $0c
	rrca                                             ; $65fb: $0f
	inc c                                            ; $65fc: $0c
	ei                                               ; $65fd: $fb
	ld [bc], a                                       ; $65fe: $02
	db $fd                                           ; $65ff: $fd

jr_034_6600:
	ret nc                                           ; $6600: $d0

	adc h                                            ; $6601: $8c
	ld d, d                                          ; $6602: $52
	jr jr_034_6657                                   ; $6603: $18 $52

	inc c                                            ; $6605: $0c
	ld d, d                                          ; $6606: $52

jr_034_6607:
	inc c                                            ; $6607: $0c
	dec e                                            ; $6608: $1d
	inc c                                            ; $6609: $0c
	cp $1e                                           ; $660a: $fe $1e
	inc c                                            ; $660c: $0c
	ei                                               ; $660d: $fb
	db $fd                                           ; $660e: $fd
	ld h, e                                          ; $660f: $63
	ld h, [hl]                                       ; $6610: $66
	ei                                               ; $6611: $fb
	ld b, $fd                                        ; $6612: $06 $fd
	ld l, a                                          ; $6614: $6f
	ld h, [hl]                                       ; $6615: $66
	cp [hl]                                          ; $6616: $be
	inc c                                            ; $6617: $0c
	ld d, d                                          ; $6618: $52
	dec e                                            ; $6619: $1d
	rra                                              ; $661a: $1f
	dec e                                            ; $661b: $1d
	ld d, d                                          ; $661c: $52
	ld d, d                                          ; $661d: $52
	dec e                                            ; $661e: $1d
	ld e, $be                                        ; $661f: $1e $be
	db $fd                                           ; $6621: $fd
	ld h, e                                          ; $6622: $63
	ld h, [hl]                                       ; $6623: $66
	db $fd                                           ; $6624: $fd
	ld h, e                                          ; $6625: $63
	ld h, [hl]                                       ; $6626: $66
	db $fd                                           ; $6627: $fd
	ld l, a                                          ; $6628: $6f
	ld h, [hl]                                       ; $6629: $66
	cp [hl]                                          ; $662a: $be
	inc c                                            ; $662b: $0c
	nop                                              ; $662c: $00
	dec e                                            ; $662d: $1d
	ld d, d                                          ; $662e: $52
	dec e                                            ; $662f: $1d
	ld d, d                                          ; $6630: $52
	ld d, d                                          ; $6631: $52
	ld d, d                                          ; $6632: $52
	ld d, d                                          ; $6633: $52
	cp [hl]                                          ; $6634: $be
	db $fd                                           ; $6635: $fd
	ld l, a                                          ; $6636: $6f
	ld h, [hl]                                       ; $6637: $66
	db $fd                                           ; $6638: $fd
	ld l, a                                          ; $6639: $6f
	ld h, [hl]                                       ; $663a: $66
	db $fd                                           ; $663b: $fd
	ld h, e                                          ; $663c: $63
	ld h, [hl]                                       ; $663d: $66
	cp [hl]                                          ; $663e: $be
	inc c                                            ; $663f: $0c
	ld d, d                                          ; $6640: $52
	rra                                              ; $6641: $1f
	ld d, d                                          ; $6642: $52
	rra                                              ; $6643: $1f
	ld d, d                                          ; $6644: $52
	rra                                              ; $6645: $1f
	ld d, d                                          ; $6646: $52
	ld e, $be                                        ; $6647: $1e $be
	db $fc                                           ; $6649: $fc
	db $fd                                           ; $664a: $fd
	ld a, e                                          ; $664b: $7b
	ld h, [hl]                                       ; $664c: $66
	db $fc                                           ; $664d: $fc
	rrca                                             ; $664e: $0f
	ld d, d                                          ; $664f: $52
	inc c                                            ; $6650: $0c
	dec e                                            ; $6651: $1d
	ld b, $1d                                        ; $6652: $06 $1d
	ld b, $52                                        ; $6654: $06 $52
	inc c                                            ; $6656: $0c

jr_034_6657:
	dec e                                            ; $6657: $1d
	ld b, $1d                                        ; $6658: $06 $1d
	ld b, $52                                        ; $665a: $06 $52
	inc c                                            ; $665c: $0c
	ld d, d                                          ; $665d: $52
	inc c                                            ; $665e: $0c
	nop                                              ; $665f: $00
	inc c                                            ; $6660: $0c
	cp $ff                                           ; $6661: $fe $ff
	cp [hl]                                          ; $6663: $be
	inc c                                            ; $6664: $0c
	nop                                              ; $6665: $00
	dec e                                            ; $6666: $1d
	ld d, d                                          ; $6667: $52
	dec e                                            ; $6668: $1d
	rra                                              ; $6669: $1f
	rra                                              ; $666a: $1f
	ld d, d                                          ; $666b: $52
	dec e                                            ; $666c: $1d
	cp [hl]                                          ; $666d: $be
	db $fd                                           ; $666e: $fd
	cp [hl]                                          ; $666f: $be
	inc c                                            ; $6670: $0c
	rra                                              ; $6671: $1f
	dec e                                            ; $6672: $1d
	ld d, d                                          ; $6673: $52
	dec e                                            ; $6674: $1d
	rra                                              ; $6675: $1f
	rra                                              ; $6676: $1f
	ld d, d                                          ; $6677: $52
	dec e                                            ; $6678: $1d
	cp [hl]                                          ; $6679: $be
	db $fd                                           ; $667a: $fd
	cp [hl]                                          ; $667b: $be
	inc c                                            ; $667c: $0c
	dec e                                            ; $667d: $1d
	dec e                                            ; $667e: $1d
	ld d, d                                          ; $667f: $52
	ld d, d                                          ; $6680: $52
	dec e                                            ; $6681: $1d
	dec e                                            ; $6682: $1d
	ld d, d                                          ; $6683: $52
	dec e                                            ; $6684: $1d
	cp [hl]                                          ; $6685: $be
	db $fd                                           ; $6686: $fd
	cp $b6                                           ; $6687: $fe $b6
	cp [hl]                                          ; $6689: $be
	jp $0003                                         ; $668a: $c3 $03 $00


	nop                                              ; $668d: $00
	ld a, l                                          ; $668e: $7d
	ld bc, $0e00                                     ; $668f: $01 $00 $0e
	inc d                                            ; $6692: $14
	jr @+$18                                         ; $6693: $18 $16

	jr @+$1b                                         ; $6695: $18 $19

	ld a, [bc]                                       ; $6697: $0a
	or l                                             ; $6698: $b5
	ldh a, [c]                                       ; $6699: $f2
	nop                                              ; $669a: $00
	ld a, [$7d01]                                    ; $669b: $fa $01 $7d
	nop                                              ; $669e: $00
	ld sp, $310c                                     ; $669f: $31 $0c $31
	ld d, $b5                                        ; $66a2: $16 $b5
	and e                                            ; $66a4: $a3
	inc bc                                           ; $66a5: $03
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	ld a, l                                          ; $66a8: $7d
	ld bc, $0c1d                                     ; $66a9: $01 $1d $0c
	or l                                             ; $66ac: $b5
	ldh a, [c]                                       ; $66ad: $f2
	nop                                              ; $66ae: $00
	ld a, [$7d03]                                    ; $66af: $fa $03 $7d
	nop                                              ; $66b2: $00
	ld sp, $b50c                                     ; $66b3: $31 $0c $b5
	add e                                            ; $66b6: $83
	inc bc                                           ; $66b7: $03
	nop                                              ; $66b8: $00
	nop                                              ; $66b9: $00
	ld a, l                                          ; $66ba: $7d
	ld bc, $1820                                     ; $66bb: $01 $20 $18
	inc h                                            ; $66be: $24
	inc c                                            ; $66bf: $0c
	or l                                             ; $66c0: $b5
	ldh a, [c]                                       ; $66c1: $f2
	nop                                              ; $66c2: $00
	ld a, [$7d01]                                    ; $66c3: $fa $01 $7d
	nop                                              ; $66c6: $00
	jr nc, jr_034_66d5                               ; $66c7: $30 $0c

	jr nc, @+$1a                                     ; $66c9: $30 $18

	or l                                             ; $66cb: $b5
	and e                                            ; $66cc: $a3
	inc bc                                           ; $66cd: $03
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	jr nz, jr_034_66e2                               ; $66d0: $20 $10

	or l                                             ; $66d2: $b5
	ldh a, [c]                                       ; $66d3: $f2
	nop                                              ; $66d4: $00

jr_034_66d5:
	ld a, [$3002]                                    ; $66d5: $fa $02 $30
	inc c                                            ; $66d8: $0c
	or l                                             ; $66d9: $b5
	and e                                            ; $66da: $a3
	inc bc                                           ; $66db: $03
	nop                                              ; $66dc: $00
	nop                                              ; $66dd: $00
	ld a, l                                          ; $66de: $7d
	ld bc, $141d                                     ; $66df: $01 $1d $14

jr_034_66e2:
	call z, $1814                                    ; $66e2: $cc $14 $18
	jr @+$1c                                         ; $66e5: $18 $1a

	jp z, $0c19                                      ; $66e7: $ca $19 $0c

	or l                                             ; $66ea: $b5
	ldh a, [c]                                       ; $66eb: $f2
	nop                                              ; $66ec: $00
	ld a, [$7d01]                                    ; $66ed: $fa $01 $7d
	nop                                              ; $66f0: $00
	ld sp, $310c                                     ; $66f1: $31 $0c $31
	inc c                                            ; $66f4: $0c
	nop                                              ; $66f5: $00
	jr jr_034_6729                                   ; $66f6: $18 $31

	inc c                                            ; $66f8: $0c
	ld sp, $000c                                     ; $66f9: $31 $0c $00
	jr @+$33                                         ; $66fc: $18 $31

	inc c                                            ; $66fe: $0c
	ld sp, $b50c                                     ; $66ff: $31 $0c $b5
	ldh a, [c]                                       ; $6702: $f2
	nop                                              ; $6703: $00
	ld a, [$0001]                                    ; $6704: $fa $01 $00
	jr jr_034_673a                                   ; $6707: $18 $31

	inc c                                            ; $6709: $0c
	ld sp, $b50c                                     ; $670a: $31 $0c $b5
	and e                                            ; $670d: $a3
	inc bc                                           ; $670e: $03
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	ld a, l                                          ; $6711: $7d
	ld bc, $02bd                                     ; $6712: $01 $bd $02
	ld d, $10                                        ; $6715: $16 $10
	ld [$f2b5], sp                                   ; $6717: $08 $b5 $f2
	nop                                              ; $671a: $00
	ld a, [$7d01]                                    ; $671b: $fa $01 $7d
	nop                                              ; $671e: $00
	ld sp, $310c                                     ; $671f: $31 $0c $31
	ld d, $b5                                        ; $6722: $16 $b5
	and e                                            ; $6724: $a3
	inc bc                                           ; $6725: $03
	nop                                              ; $6726: $00
	nop                                              ; $6727: $00
	dec e                                            ; $6728: $1d

jr_034_6729:
	inc c                                            ; $6729: $0c
	or l                                             ; $672a: $b5
	ldh a, [c]                                       ; $672b: $f2
	nop                                              ; $672c: $00
	ld a, [$3101]                                    ; $672d: $fa $01 $31
	inc c                                            ; $6730: $0c
	or l                                             ; $6731: $b5
	sub e                                            ; $6732: $93
	inc bc                                           ; $6733: $03
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	jr nz, jr_034_6750                               ; $6736: $20 $18

	inc h                                            ; $6738: $24
	inc c                                            ; $6739: $0c

jr_034_673a:
	or l                                             ; $673a: $b5
	ldh a, [c]                                       ; $673b: $f2
	nop                                              ; $673c: $00
	ld a, [$3101]                                    ; $673d: $fa $01 $31
	inc c                                            ; $6740: $0c
	ld sp, $b518                                     ; $6741: $31 $18 $b5
	and e                                            ; $6744: $a3
	inc bc                                           ; $6745: $03
	nop                                              ; $6746: $00
	nop                                              ; $6747: $00
	jr nz, @+$12                                     ; $6748: $20 $10

	or l                                             ; $674a: $b5
	ldh a, [c]                                       ; $674b: $f2
	nop                                              ; $674c: $00
	ld a, [$3101]                                    ; $674d: $fa $01 $31

jr_034_6750:
	inc c                                            ; $6750: $0c
	or l                                             ; $6751: $b5
	and e                                            ; $6752: $a3
	inc bc                                           ; $6753: $03
	nop                                              ; $6754: $00
	nop                                              ; $6755: $00
	dec e                                            ; $6756: $1d
	inc d                                            ; $6757: $14
	dec de                                           ; $6758: $1b
	ld c, $b5                                        ; $6759: $0e $b5
	ldh a, [c]                                       ; $675b: $f2
	nop                                              ; $675c: $00
	ld a, [$3301]                                    ; $675d: $fa $01 $33
	inc c                                            ; $6760: $0c
	inc sp                                           ; $6761: $33
	inc c                                            ; $6762: $0c
	nop                                              ; $6763: $00
	jr jr_034_6799                                   ; $6764: $18 $33

	inc c                                            ; $6766: $0c
	inc sp                                           ; $6767: $33
	inc c                                            ; $6768: $0c
	nop                                              ; $6769: $00
	jr jr_034_679f                                   ; $676a: $18 $33

	inc c                                            ; $676c: $0c
	inc sp                                           ; $676d: $33
	inc c                                            ; $676e: $0c
	or l                                             ; $676f: $b5
	ldh a, [c]                                       ; $6770: $f2
	nop                                              ; $6771: $00
	ld a, [$0001]                                    ; $6772: $fa $01 $00
	jr jr_034_67aa                                   ; $6775: $18 $33

	inc c                                            ; $6777: $0c
	inc sp                                           ; $6778: $33
	inc c                                            ; $6779: $0c
	or l                                             ; $677a: $b5
	and e                                            ; $677b: $a3
	inc bc                                           ; $677c: $03
	nop                                              ; $677d: $00
	nop                                              ; $677e: $00
	ld d, $0e                                        ; $677f: $16 $0e
	add hl, de                                       ; $6781: $19
	ld a, [bc]                                       ; $6782: $0a
	or l                                             ; $6783: $b5
	ldh a, [c]                                       ; $6784: $f2
	nop                                              ; $6785: $00
	ld a, [$3101]                                    ; $6786: $fa $01 $31
	inc c                                            ; $6789: $0c
	ld sp, $b516                                     ; $678a: $31 $16 $b5
	and e                                            ; $678d: $a3
	inc bc                                           ; $678e: $03
	nop                                              ; $678f: $00
	nop                                              ; $6790: $00
	dec e                                            ; $6791: $1d
	inc c                                            ; $6792: $0c
	or l                                             ; $6793: $b5
	ldh a, [c]                                       ; $6794: $f2
	nop                                              ; $6795: $00
	ld a, [$3103]                                    ; $6796: $fa $03 $31

jr_034_6799:
	inc c                                            ; $6799: $0c
	or l                                             ; $679a: $b5
	sub e                                            ; $679b: $93
	inc bc                                           ; $679c: $03
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00

jr_034_679f:
	jr nz, jr_034_67b9                               ; $679f: $20 $18

	inc h                                            ; $67a1: $24
	inc c                                            ; $67a2: $0c
	or l                                             ; $67a3: $b5
	ldh a, [c]                                       ; $67a4: $f2
	nop                                              ; $67a5: $00
	ld a, [$3001]                                    ; $67a6: $fa $01 $30
	inc c                                            ; $67a9: $0c

jr_034_67aa:
	jr nc, jr_034_67c4                               ; $67aa: $30 $18

	or l                                             ; $67ac: $b5
	and e                                            ; $67ad: $a3
	inc bc                                           ; $67ae: $03
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00

jr_034_67b1:
	jr nz, @+$12                                     ; $67b1: $20 $10

	or l                                             ; $67b3: $b5
	ldh a, [c]                                       ; $67b4: $f2
	nop                                              ; $67b5: $00
	ld a, [$3001]                                    ; $67b6: $fa $01 $30

jr_034_67b9:
	inc c                                            ; $67b9: $0c
	or l                                             ; $67ba: $b5
	and e                                            ; $67bb: $a3
	inc bc                                           ; $67bc: $03
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	dec e                                            ; $67bf: $1d
	inc d                                            ; $67c0: $14
	inc d                                            ; $67c1: $14
	jr @+$1a                                         ; $67c2: $18 $18

jr_034_67c4:
	jr jr_034_67df                                   ; $67c4: $18 $19

	ld c, $b5                                        ; $67c6: $0e $b5
	ldh a, [c]                                       ; $67c8: $f2
	nop                                              ; $67c9: $00
	ld a, [$3101]                                    ; $67ca: $fa $01 $31
	inc c                                            ; $67cd: $0c
	ld sp, $000c                                     ; $67ce: $31 $0c $00
	jr jr_034_6804                                   ; $67d1: $18 $31

jr_034_67d3:
	inc c                                            ; $67d3: $0c
	ld sp, $000c                                     ; $67d4: $31 $0c $00
	jr jr_034_680a                                   ; $67d7: $18 $31

	inc c                                            ; $67d9: $0c
	ld sp, $b50f                                     ; $67da: $31 $0f $b5
	or e                                             ; $67dd: $b3
	inc bc                                           ; $67de: $03

jr_034_67df:
	nop                                              ; $67df: $00
	nop                                              ; $67e0: $00
	dec de                                           ; $67e1: $1b
	jr jr_034_6801                                   ; $67e2: $18 $1d

	dec d                                            ; $67e4: $15
	or l                                             ; $67e5: $b5
	add e                                            ; $67e6: $83
	inc bc                                           ; $67e7: $03
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	ld b, $20                                        ; $67eb: $06 $20
	ld [de], a                                       ; $67ed: $12
	or l                                             ; $67ee: $b5
	ldh a, [c]                                       ; $67ef: $f2
	nop                                              ; $67f0: $00
	ld a, [$3101]                                    ; $67f1: $fa $01 $31
	inc c                                            ; $67f4: $0c
	ld sp, $000c                                     ; $67f5: $31 $0c $00
	jr @+$33                                         ; $67f8: $18 $31

	jr jr_034_67b1                                   ; $67fa: $18 $b5

	add e                                            ; $67fc: $83
	inc bc                                           ; $67fd: $03
	nop                                              ; $67fe: $00
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00

jr_034_6801:
	ld b, $25                                        ; $6801: $06 $25
	ld [de], a                                       ; $6803: $12

jr_034_6804:
	or l                                             ; $6804: $b5
	ldh a, [c]                                       ; $6805: $f2
	nop                                              ; $6806: $00
	ld a, [$3101]                                    ; $6807: $fa $01 $31

jr_034_680a:
	inc c                                            ; $680a: $0c
	ld sp, $b50c                                     ; $680b: $31 $0c $b5
	and e                                            ; $680e: $a3
	inc bc                                           ; $680f: $03
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	nop                                              ; $6812: $00
	ld b, $1e                                        ; $6813: $06 $1e
	ld [de], a                                       ; $6815: $12
	or l                                             ; $6816: $b5
	ldh a, [c]                                       ; $6817: $f2
	nop                                              ; $6818: $00
	ld a, [$3101]                                    ; $6819: $fa $01 $31
	jr jr_034_67d3                                   ; $681c: $18 $b5

	and e                                            ; $681e: $a3
	inc bc                                           ; $681f: $03
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	ld b, $1d                                        ; $6823: $06 $1d
	ld [de], a                                       ; $6825: $12
	or l                                             ; $6826: $b5
	ldh a, [c]                                       ; $6827: $f2
	nop                                              ; $6828: $00
	ld a, [$3301]                                    ; $6829: $fa $01 $33
	inc c                                            ; $682c: $0c
	inc sp                                           ; $682d: $33
	inc c                                            ; $682e: $0c
	or l                                             ; $682f: $b5
	or e                                             ; $6830: $b3
	inc bc                                           ; $6831: $03
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	nop                                              ; $6834: $00
	ld b, $18                                        ; $6835: $06 $18
	ld [de], a                                       ; $6837: $12
	or l                                             ; $6838: $b5
	ldh a, [c]                                       ; $6839: $f2
	nop                                              ; $683a: $00
	ld a, [$3301]                                    ; $683b: $fa $01 $33
	inc c                                            ; $683e: $0c
	inc sp                                           ; $683f: $33
	inc c                                            ; $6840: $0c
	or l                                             ; $6841: $b5
	and e                                            ; $6842: $a3
	inc bc                                           ; $6843: $03
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	nop                                              ; $6846: $00
	ld b, $19                                        ; $6847: $06 $19
	ld [de], a                                       ; $6849: $12
	or l                                             ; $684a: $b5
	ldh a, [c]                                       ; $684b: $f2
	nop                                              ; $684c: $00
	ld a, [$3101]                                    ; $684d: $fa $01 $31
	inc c                                            ; $6850: $0c
	ld sp, $000c                                     ; $6851: $31 $0c $00
	jr jr_034_6887                                   ; $6854: $18 $31

	inc c                                            ; $6856: $0c
	ld sp, $000c                                     ; $6857: $31 $0c $00
	jr jr_034_688d                                   ; $685a: $18 $31

	inc c                                            ; $685c: $0c
	ld sp, $000c                                     ; $685d: $31 $0c $00
	jr jr_034_6893                                   ; $6860: $18 $31

	inc c                                            ; $6862: $0c
	ld sp, $000c                                     ; $6863: $31 $0c $00
	jr jr_034_6899                                   ; $6866: $18 $31

	inc c                                            ; $6868: $0c
	ld sp, $000c                                     ; $6869: $31 $0c $00
	jr jr_034_689f                                   ; $686c: $18 $31

	inc c                                            ; $686e: $0c
	ld sp, $000c                                     ; $686f: $31 $0c $00
	jr jr_034_68a5                                   ; $6872: $18 $31

	inc c                                            ; $6874: $0c
	ld sp, $fe0c                                     ; $6875: $31 $0c $fe
	rst $38                                          ; $6878: $ff
	cp $b6                                           ; $6879: $fe $b6
	cp [hl]                                          ; $687b: $be
	pop af                                           ; $687c: $f1
	inc bc                                           ; $687d: $03
	ld h, h                                          ; $687e: $64
	rlca                                             ; $687f: $07
	ld a, [hl]                                       ; $6880: $7e
	ld a, [hl+]                                      ; $6881: $2a
	nop                                              ; $6882: $00
	and b                                            ; $6883: $a0
	inc d                                            ; $6884: $14
	inc c                                            ; $6885: $0c
	ret z                                            ; $6886: $c8

jr_034_6887:
	inc d                                            ; $6887: $14

jr_034_6888:
	inc c                                            ; $6888: $0c
	rst GetHLinHL                                          ; $6889: $cf
	ld d, $0c                                        ; $688a: $16 $0c
	ret z                                            ; $688c: $c8

jr_034_688d:
	ld d, $0c                                        ; $688d: $16 $0c
	rst GetHLinHL                                          ; $688f: $cf

jr_034_6890:
	add hl, de                                       ; $6890: $19
	inc c                                            ; $6891: $0c
	ret z                                            ; $6892: $c8

jr_034_6893:
	add hl, de                                       ; $6893: $19
	inc c                                            ; $6894: $0c
	or l                                             ; $6895: $b5
	ldh a, [c]                                       ; $6896: $f2
	nop                                              ; $6897: $00
	ld h, h                                          ; $6898: $64

jr_034_6899:
	ld [bc], a                                       ; $6899: $02
	ld a, [hl]                                       ; $689a: $7e
	nop                                              ; $689b: $00
	inc l                                            ; $689c: $2c
	inc c                                            ; $689d: $0c
	inc l                                            ; $689e: $2c

jr_034_689f:
	inc c                                            ; $689f: $0c
	or l                                             ; $68a0: $b5
	pop de                                           ; $68a1: $d1
	inc bc                                           ; $68a2: $03
	ld h, h                                          ; $68a3: $64
	rlca                                             ; $68a4: $07

jr_034_68a5:
	ld a, [hl]                                       ; $68a5: $7e
	ld a, [hl+]                                      ; $68a6: $2a
	nop                                              ; $68a7: $00
	and b                                            ; $68a8: $a0
	dec e                                            ; $68a9: $1d
	inc c                                            ; $68aa: $0c
	rst JumpTable                                          ; $68ab: $c7
	dec e                                            ; $68ac: $1d
	inc c                                            ; $68ad: $0c
	call z, $0c20                                    ; $68ae: $cc $20 $0c
	rst JumpTable                                          ; $68b1: $c7

jr_034_68b2:
	jr nz, jr_034_68c0                               ; $68b2: $20 $0c

	call $0c24                                       ; $68b4: $cd $24 $0c
	rst JumpTable                                          ; $68b7: $c7
	inc h                                            ; $68b8: $24
	jr jr_034_6888                                   ; $68b9: $18 $cd

	dec h                                            ; $68bb: $25
	ld a, [bc]                                       ; $68bc: $0a
	rst JumpTable                                          ; $68bd: $c7
	dec h                                            ; $68be: $25
	ld [bc], a                                       ; $68bf: $02

jr_034_68c0:
	call $0c20                                       ; $68c0: $cd $20 $0c
	rst JumpTable                                          ; $68c3: $c7
	jr nz, jr_034_68d2                               ; $68c4: $20 $0c

	adc $1d                                          ; $68c6: $ce $1d
	inc c                                            ; $68c8: $0c
	rst JumpTable                                          ; $68c9: $c7
	dec e                                            ; $68ca: $1d
	inc c                                            ; $68cb: $0c
	rst GetHLinHL                                          ; $68cc: $cf
	inc d                                            ; $68cd: $14
	inc c                                            ; $68ce: $0c
	ret z                                            ; $68cf: $c8

	inc d                                            ; $68d0: $14
	inc c                                            ; $68d1: $0c

jr_034_68d2:
	rst GetHLinHL                                          ; $68d2: $cf
	jr jr_034_68e1                                   ; $68d3: $18 $0c

	ret z                                            ; $68d5: $c8

	jr @+$0e                                         ; $68d6: $18 $0c

	or c                                             ; $68d8: $b1
	pop af                                           ; $68d9: $f1
	ld h, h                                          ; $68da: $64
	inc bc                                           ; $68db: $03
	add hl, de                                       ; $68dc: $19
	jr nc, jr_034_6890                               ; $68dd: $30 $b1

	db $e3                                           ; $68df: $e3
	ld h, h                                          ; $68e0: $64

jr_034_68e1:
	inc b                                            ; $68e1: $04
	add hl, de                                       ; $68e2: $19
	jr nc, jr_034_68b2                               ; $68e3: $30 $cd

	jp nc, $3019                                     ; $68e5: $d2 $19 $30

	or l                                             ; $68e8: $b5
	pop af                                           ; $68e9: $f1
	inc bc                                           ; $68ea: $03
	ld h, h                                          ; $68eb: $64
	rlca                                             ; $68ec: $07
	ld a, [hl]                                       ; $68ed: $7e
	ld a, [hl+]                                      ; $68ee: $2a
	nop                                              ; $68ef: $00

jr_034_68f0:
	and b                                            ; $68f0: $a0
	inc d                                            ; $68f1: $14
	ld c, $c9                                        ; $68f2: $0e $c9
	inc d                                            ; $68f4: $14
	ld a, [bc]                                       ; $68f5: $0a
	rst GetHLinHL                                          ; $68f6: $cf
	ld d, $0e                                        ; $68f7: $16 $0e
	ret z                                            ; $68f9: $c8

	ld d, $0a                                        ; $68fa: $16 $0a
	rst GetHLinHL                                          ; $68fc: $cf
	add hl, de                                       ; $68fd: $19
	inc c                                            ; $68fe: $0c
	ret z                                            ; $68ff: $c8

	add hl, de                                       ; $6900: $19
	inc c                                            ; $6901: $0c
	or l                                             ; $6902: $b5
	ldh a, [c]                                       ; $6903: $f2
	nop                                              ; $6904: $00
	ld h, h                                          ; $6905: $64
	ld [bc], a                                       ; $6906: $02
	ld a, [hl]                                       ; $6907: $7e
	nop                                              ; $6908: $00
	inc l                                            ; $6909: $2c
	inc c                                            ; $690a: $0c

jr_034_690b:
	inc l                                            ; $690b: $2c
	inc c                                            ; $690c: $0c
	or l                                             ; $690d: $b5
	pop de                                           ; $690e: $d1
	inc bc                                           ; $690f: $03
	ld h, h                                          ; $6910: $64
	rlca                                             ; $6911: $07
	ld a, [hl]                                       ; $6912: $7e
	ld a, [hl+]                                      ; $6913: $2a

jr_034_6914:
	nop                                              ; $6914: $00
	and b                                            ; $6915: $a0
	dec e                                            ; $6916: $1d
	inc c                                            ; $6917: $0c
	rst JumpTable                                          ; $6918: $c7
	dec e                                            ; $6919: $1d
	inc c                                            ; $691a: $0c
	call z, $0c20                                    ; $691b: $cc $20 $0c
	add $20                                          ; $691e: $c6 $20
	inc c                                            ; $6920: $0c
	call z, $0c24                                    ; $6921: $cc $24 $0c
	rst JumpTable                                          ; $6924: $c7
	inc h                                            ; $6925: $24
	inc c                                            ; $6926: $0c
	add $24                                          ; $6927: $c6 $24
	inc c                                            ; $6929: $0c
	call z, $0c25                                    ; $692a: $cc $25 $0c
	jr nz, jr_034_693b                               ; $692d: $20 $0c

	ret z                                            ; $692f: $c8

	jr nz, @+$0e                                     ; $6930: $20 $0c

	rst GetHLinHL                                          ; $6932: $cf
	dec e                                            ; $6933: $1d
	inc c                                            ; $6934: $0c
	ret z                                            ; $6935: $c8

	dec e                                            ; $6936: $1d
	inc c                                            ; $6937: $0c
	rst GetHLinHL                                          ; $6938: $cf
	sub [hl]                                         ; $6939: $96
	ld h, h                                          ; $693a: $64

jr_034_693b:
	inc bc                                           ; $693b: $03
	dec de                                           ; $693c: $1b
	jr nc, jr_034_68f0                               ; $693d: $30 $b1

	db $e3                                           ; $693f: $e3
	ld h, h                                          ; $6940: $64
	dec b                                            ; $6941: $05
	dec de                                           ; $6942: $1b
	jr jr_034_6914                                   ; $6943: $18 $cf

	jp nc, Jump_034_7e90                             ; $6945: $d2 $90 $7e

	nop                                              ; $6948: $00
	inc l                                            ; $6949: $2c
	inc c                                            ; $694a: $0c
	inc l                                            ; $694b: $2c
	inc c                                            ; $694c: $0c
	call Call_034_7e93                               ; $694d: $cd $93 $7e
	ld a, [hl+]                                      ; $6950: $2a
	nop                                              ; $6951: $00
	and b                                            ; $6952: $a0
	dec de                                           ; $6953: $1b
	jr nc, jr_034_690b                               ; $6954: $30 $b5

	pop af                                           ; $6956: $f1
	inc bc                                           ; $6957: $03
	ld h, h                                          ; $6958: $64
	rlca                                             ; $6959: $07
	ld a, [hl]                                       ; $695a: $7e
	ld a, [hl+]                                      ; $695b: $2a
	nop                                              ; $695c: $00
	and b                                            ; $695d: $a0
	inc d                                            ; $695e: $14
	ld c, $ca                                        ; $695f: $0e $ca
	inc d                                            ; $6961: $14
	ld a, [bc]                                       ; $6962: $0a
	rst GetHLinHL                                          ; $6963: $cf
	ld d, $0e                                        ; $6964: $16 $0e
	jp z, $0a16                                      ; $6966: $ca $16 $0a

	rst GetHLinHL                                          ; $6969: $cf
	add hl, de                                       ; $696a: $19
	inc c                                            ; $696b: $0c
	jp z, $0c19                                      ; $696c: $ca $19 $0c

	or l                                             ; $696f: $b5
	ldh a, [c]                                       ; $6970: $f2
	nop                                              ; $6971: $00
	ld h, h                                          ; $6972: $64
	ld [bc], a                                       ; $6973: $02
	ld a, [hl]                                       ; $6974: $7e
	nop                                              ; $6975: $00
	inc l                                            ; $6976: $2c
	inc c                                            ; $6977: $0c
	inc l                                            ; $6978: $2c
	inc c                                            ; $6979: $0c
	or l                                             ; $697a: $b5
	pop de                                           ; $697b: $d1
	inc bc                                           ; $697c: $03
	ld h, h                                          ; $697d: $64
	rlca                                             ; $697e: $07
	ld a, [hl]                                       ; $697f: $7e
	ld a, [hl+]                                      ; $6980: $2a
	nop                                              ; $6981: $00
	and b                                            ; $6982: $a0
	dec e                                            ; $6983: $1d
	inc c                                            ; $6984: $0c
	rst JumpTable                                          ; $6985: $c7
	dec e                                            ; $6986: $1d
	inc c                                            ; $6987: $0c
	call z, $0c20                                    ; $6988: $cc $20 $0c
	rst JumpTable                                          ; $698b: $c7
	jr nz, jr_034_699a                               ; $698c: $20 $0c

	call z, $0c24                                    ; $698e: $cc $24 $0c
	rst JumpTable                                          ; $6991: $c7
	inc h                                            ; $6992: $24
	inc c                                            ; $6993: $0c
	push bc                                          ; $6994: $c5
	inc h                                            ; $6995: $24
	inc c                                            ; $6996: $0c
	call z, $0a25                                    ; $6997: $cc $25 $0a

jr_034_699a:
	rst JumpTable                                          ; $699a: $c7
	dec h                                            ; $699b: $25
	ld [bc], a                                       ; $699c: $02
	call $0c20                                       ; $699d: $cd $20 $0c
	ret z                                            ; $69a0: $c8

	jr nz, jr_034_69af                               ; $69a1: $20 $0c

	rst GetHLinHL                                          ; $69a3: $cf
	dec e                                            ; $69a4: $1d
	inc c                                            ; $69a5: $0c
	ret z                                            ; $69a6: $c8

	dec e                                            ; $69a7: $1d
	inc c                                            ; $69a8: $0c
	rst GetHLinHL                                          ; $69a9: $cf
	inc d                                            ; $69aa: $14
	inc c                                            ; $69ab: $0c
	ret z                                            ; $69ac: $c8

	inc d                                            ; $69ad: $14
	inc c                                            ; $69ae: $0c

jr_034_69af:
	rst GetHLinHL                                          ; $69af: $cf
	jr jr_034_69be                                   ; $69b0: $18 $0c

	ret z                                            ; $69b2: $c8

	jr jr_034_69c1                                   ; $69b3: $18 $0c

	rst GetHLinHL                                          ; $69b5: $cf
	add hl, de                                       ; $69b6: $19

jr_034_69b7:
	ld de, $19ca                                     ; $69b7: $11 $ca $19
	rlca                                             ; $69ba: $07
	or l                                             ; $69bb: $b5
	ldh a, [c]                                       ; $69bc: $f2
	nop                                              ; $69bd: $00

jr_034_69be:
	ld h, h                                          ; $69be: $64
	ld [bc], a                                       ; $69bf: $02
	ld a, [hl]                                       ; $69c0: $7e

jr_034_69c1:
	nop                                              ; $69c1: $00
	inc l                                            ; $69c2: $2c
	inc c                                            ; $69c3: $0c
	inc l                                            ; $69c4: $2c
	inc c                                            ; $69c5: $0c
	nop                                              ; $69c6: $00
	jr jr_034_69f5                                   ; $69c7: $18 $2c

	inc c                                            ; $69c9: $0c
	inc l                                            ; $69ca: $2c
	inc c                                            ; $69cb: $0c
	nop                                              ; $69cc: $00
	jr jr_034_69fc                                   ; $69cd: $18 $2d

	inc c                                            ; $69cf: $0c
	dec l                                            ; $69d0: $2d
	inc c                                            ; $69d1: $0c
	or l                                             ; $69d2: $b5
	pop de                                           ; $69d3: $d1
	inc bc                                           ; $69d4: $03
	ld h, h                                          ; $69d5: $64
	rlca                                             ; $69d6: $07
	ld a, [hl]                                       ; $69d7: $7e
	ld a, [hl+]                                      ; $69d8: $2a
	nop                                              ; $69d9: $00
	and b                                            ; $69da: $a0
	dec de                                           ; $69db: $1b
	inc c                                            ; $69dc: $0c
	add $1b                                          ; $69dd: $c6 $1b
	inc c                                            ; $69df: $0c
	call $0c1d                                       ; $69e0: $cd $1d $0c
	add $1d                                          ; $69e3: $c6 $1d
	inc c                                            ; $69e5: $0c
	or l                                             ; $69e6: $b5
	pop bc                                           ; $69e7: $c1
	inc bc                                           ; $69e8: $03
	ld h, h                                          ; $69e9: $64
	rlca                                             ; $69ea: $07
	ld a, [hl]                                       ; $69eb: $7e
	ld a, [hl+]                                      ; $69ec: $2a
	nop                                              ; $69ed: $00
	and b                                            ; $69ee: $a0
	jr nz, jr_034_69fd                               ; $69ef: $20 $0c

	ret z                                            ; $69f1: $c8

	jr nz, jr_034_6a00                               ; $69f2: $20 $0c

	or l                                             ; $69f4: $b5

jr_034_69f5:
	jp nc, Jump_034_6400                             ; $69f5: $d2 $00 $64

	ld [bc], a                                       ; $69f8: $02
	ld a, [hl]                                       ; $69f9: $7e
	nop                                              ; $69fa: $00
	inc l                                            ; $69fb: $2c

jr_034_69fc:
	inc c                                            ; $69fc: $0c

jr_034_69fd:
	inc l                                            ; $69fd: $2c
	inc c                                            ; $69fe: $0c
	nop                                              ; $69ff: $00

jr_034_6a00:
	jr jr_034_69b7                                   ; $6a00: $18 $b5

	pop bc                                           ; $6a02: $c1
	inc bc                                           ; $6a03: $03
	ld h, h                                          ; $6a04: $64
	rlca                                             ; $6a05: $07
	ld a, [hl]                                       ; $6a06: $7e
	ld a, [hl+]                                      ; $6a07: $2a
	nop                                              ; $6a08: $00
	and b                                            ; $6a09: $a0
	inc h                                            ; $6a0a: $24
	inc c                                            ; $6a0b: $0c
	add $24                                          ; $6a0c: $c6 $24
	inc c                                            ; $6a0e: $0c
	call z, $0e25                                    ; $6a0f: $cc $25 $0e
	rst JumpTable                                          ; $6a12: $c7
	dec h                                            ; $6a13: $25
	ld a, [bc]                                       ; $6a14: $0a
	call $0c20                                       ; $6a15: $cd $20 $0c
	rst JumpTable                                          ; $6a18: $c7
	jr nz, jr_034_6a27                               ; $6a19: $20 $0c

	call $0c1e                                       ; $6a1b: $cd $1e $0c
	rst JumpTable                                          ; $6a1e: $c7
	ld e, $0c                                        ; $6a1f: $1e $0c
	call $0c1d                                       ; $6a21: $cd $1d $0c
	rst JumpTable                                          ; $6a24: $c7
	dec e                                            ; $6a25: $1d
	inc c                                            ; $6a26: $0c

jr_034_6a27:
	adc $1d                                          ; $6a27: $ce $1d
	inc c                                            ; $6a29: $0c
	ret z                                            ; $6a2a: $c8

	dec e                                            ; $6a2b: $1d
	inc c                                            ; $6a2c: $0c
	call $0c1e                                       ; $6a2d: $cd $1e $0c
	rst JumpTable                                          ; $6a30: $c7
	ld e, $0c                                        ; $6a31: $1e $0c
	rst GetHLinHL                                          ; $6a33: $cf
	jr jr_034_6a42                                   ; $6a34: $18 $0c

	ret z                                            ; $6a36: $c8

	jr jr_034_6a45                                   ; $6a37: $18 $0c

	rst GetHLinHL                                          ; $6a39: $cf
	jr @+$0e                                         ; $6a3a: $18 $0c

	ret z                                            ; $6a3c: $c8

	jr jr_034_6a4b                                   ; $6a3d: $18 $0c

	rst GetHLinHL                                          ; $6a3f: $cf
	add hl, de                                       ; $6a40: $19
	inc c                                            ; $6a41: $0c

jr_034_6a42:
	ret z                                            ; $6a42: $c8

	add hl, de                                       ; $6a43: $19
	inc c                                            ; $6a44: $0c

jr_034_6a45:
	or l                                             ; $6a45: $b5
	jp nc, Jump_034_6400                             ; $6a46: $d2 $00 $64

	ld [bc], a                                       ; $6a49: $02
	ld a, [hl]                                       ; $6a4a: $7e

jr_034_6a4b:
	nop                                              ; $6a4b: $00
	inc l                                            ; $6a4c: $2c
	inc c                                            ; $6a4d: $0c
	inc l                                            ; $6a4e: $2c
	inc c                                            ; $6a4f: $0c
	nop                                              ; $6a50: $00
	jr jr_034_6a7f                                   ; $6a51: $18 $2c

	inc c                                            ; $6a53: $0c
	inc l                                            ; $6a54: $2c
	inc c                                            ; $6a55: $0c
	nop                                              ; $6a56: $00
	jr jr_034_6a85                                   ; $6a57: $18 $2c

	inc c                                            ; $6a59: $0c
	inc l                                            ; $6a5a: $2c
	inc c                                            ; $6a5b: $0c
	nop                                              ; $6a5c: $00

jr_034_6a5d:
	jr jr_034_6a8b                                   ; $6a5d: $18 $2c

	inc c                                            ; $6a5f: $0c
	inc l                                            ; $6a60: $2c
	inc c                                            ; $6a61: $0c
	nop                                              ; $6a62: $00
	jr jr_034_6a91                                   ; $6a63: $18 $2c

	inc c                                            ; $6a65: $0c
	inc l                                            ; $6a66: $2c
	inc c                                            ; $6a67: $0c
	nop                                              ; $6a68: $00
	jr @+$2e                                         ; $6a69: $18 $2c

	inc c                                            ; $6a6b: $0c
	inc l                                            ; $6a6c: $2c
	inc c                                            ; $6a6d: $0c
	nop                                              ; $6a6e: $00
	jr jr_034_6a9d                                   ; $6a6f: $18 $2c

	inc c                                            ; $6a71: $0c
	inc l                                            ; $6a72: $2c
	inc c                                            ; $6a73: $0c
	cp $ff                                           ; $6a74: $fe $ff
	ret nc                                           ; $6a76: $d0

	cp [hl]                                          ; $6a77: $be
	nop                                              ; $6a78: $00

jr_034_6a79:
	jr nc, jr_034_6a79                               ; $6a79: $30 $fe

	or l                                             ; $6a7b: $b5
	ld hl, $0222                                     ; $6a7c: $21 $22 $02

jr_034_6a7f:
	ld bc, $2419                                     ; $6a7f: $01 $19 $24
	add hl, de                                       ; $6a82: $19
	inc c                                            ; $6a83: $0c
	dec e                                            ; $6a84: $1d

jr_034_6a85:
	jr jr_034_6aa0                                   ; $6a85: $18 $19

	jr jr_034_6a89                                   ; $6a87: $18 $00

jr_034_6a89:
	jr jr_034_6a5d                                   ; $6a89: $18 $d2

jr_034_6a8b:
	ld a, a                                          ; $6a8b: $7f
	dec h                                            ; $6a8c: $25
	ld [hl], $0c                                     ; $6a8d: $36 $0c
	ld [hl], $0c                                     ; $6a8f: $36 $0c

jr_034_6a91:
	pop de                                           ; $6a91: $d1
	ld a, a                                          ; $6a92: $7f
	ld [hl+], a                                      ; $6a93: $22
	ld d, $18                                        ; $6a94: $16 $18
	jp nc, $257f                                     ; $6a96: $d2 $7f $25

	jr c, jr_034_6aa7                                ; $6a99: $38 $0c

	nop                                              ; $6a9b: $00
	inc c                                            ; $6a9c: $0c

jr_034_6a9d:
	pop de                                           ; $6a9d: $d1
	ld a, a                                          ; $6a9e: $7f
	ld [hl+], a                                      ; $6a9f: $22

jr_034_6aa0:
	inc d                                            ; $6aa0: $14
	jr jr_034_6abb                                   ; $6aa1: $18 $18

	jr @+$1b                                         ; $6aa3: $18 $19

	jr jr_034_6a79                                   ; $6aa5: $18 $d2

jr_034_6aa7:
	ld a, a                                          ; $6aa7: $7f
	dec h                                            ; $6aa8: $25

jr_034_6aa9:
	jr c, jr_034_6ab7                                ; $6aa9: $38 $0c

	jr c, jr_034_6ab9                                ; $6aab: $38 $0c

	nop                                              ; $6aad: $00
	jr jr_034_6ae8                                   ; $6aae: $18 $38

	inc c                                            ; $6ab0: $0c
	jr c, @+$0e                                      ; $6ab1: $38 $0c

	nop                                              ; $6ab3: $00
	jr jr_034_6aee                                   ; $6ab4: $18 $38

	inc c                                            ; $6ab6: $0c

jr_034_6ab7:
	jr c, @+$0e                                      ; $6ab7: $38 $0c

jr_034_6ab9:
	or l                                             ; $6ab9: $b5
	ld b, c                                          ; $6aba: $41

jr_034_6abb:
	inc hl                                           ; $6abb: $23
	ld [bc], a                                       ; $6abc: $02
	ld bc, $017d                                     ; $6abd: $01 $7d $01
	nop                                              ; $6ac0: $00
	inc b                                            ; $6ac1: $04
	jr nz, jr_034_6ad8                               ; $6ac2: $20 $14

	jp nz, Jump_034_7fd2                             ; $6ac4: $c2 $d2 $7f

	dec h                                            ; $6ac7: $25
	ld a, l                                          ; $6ac8: $7d
	nop                                              ; $6ac9: $00
	jr c, jr_034_6ad8                                ; $6aca: $38 $0c

	jr c, @+$0e                                      ; $6acc: $38 $0c

	nop                                              ; $6ace: $00
	ld b, $c4                                        ; $6acf: $06 $c4
	pop de                                           ; $6ad1: $d1
	ld a, a                                          ; $6ad2: $7f
	inc hl                                           ; $6ad3: $23

jr_034_6ad4:
	ld a, l                                          ; $6ad4: $7d
	ld bc, $1e25                                     ; $6ad5: $01 $25 $1e

jr_034_6ad8:
	jp nz, Jump_034_7fd1                             ; $6ad8: $c2 $d1 $7f

	ld [hl+], a                                      ; $6adb: $22
	ld a, l                                          ; $6adc: $7d
	nop                                              ; $6add: $00
	add hl, de                                       ; $6ade: $19
	inc c                                            ; $6adf: $0c
	dec e                                            ; $6ae0: $1d
	jr @+$1b                                         ; $6ae1: $18 $19

	jr jr_034_6aa9                                   ; $6ae3: $18 $c4

	pop de                                           ; $6ae5: $d1
	ld a, a                                          ; $6ae6: $7f
	inc hl                                           ; $6ae7: $23

jr_034_6ae8:
	ld a, l                                          ; $6ae8: $7d
	ld bc, $0400                                     ; $6ae9: $01 $00 $04
	jr nc, jr_034_6b02                               ; $6aec: $30 $14

jr_034_6aee:
	jp nz, Jump_034_7fd2                             ; $6aee: $c2 $d2 $7f

	dec h                                            ; $6af1: $25
	ld a, l                                          ; $6af2: $7d
	nop                                              ; $6af3: $00
	jr c, jr_034_6b02                                ; $6af4: $38 $0c

	jr c, jr_034_6b04                                ; $6af6: $38 $0c

	pop de                                           ; $6af8: $d1
	ld a, a                                          ; $6af9: $7f
	ld [hl+], a                                      ; $6afa: $22

jr_034_6afb:
	jr nz, jr_034_6b15                               ; $6afb: $20 $18

jr_034_6afd:
	dec e                                            ; $6afd: $1d
	jr @+$16                                         ; $6afe: $18 $14

	jr jr_034_6ad4                                   ; $6b00: $18 $d2

jr_034_6b02:
	ld a, a                                          ; $6b02: $7f
	dec h                                            ; $6b03: $25

jr_034_6b04:
	jr c, jr_034_6b12                                ; $6b04: $38 $0c

	jr c, @+$0e                                      ; $6b06: $38 $0c

	pop de                                           ; $6b08: $d1
	ld a, a                                          ; $6b09: $7f
	ld [hl+], a                                      ; $6b0a: $22
	jr @+$1a                                         ; $6b0b: $18 $18

	inc d                                            ; $6b0d: $14
	jr @-$2c                                         ; $6b0e: $18 $d2

	ld a, a                                          ; $6b10: $7f
	dec h                                            ; $6b11: $25

jr_034_6b12:
	nop                                              ; $6b12: $00
	jr jr_034_6b4d                                   ; $6b13: $18 $38

jr_034_6b15:
	inc c                                            ; $6b15: $0c
	jr c, @+$0e                                      ; $6b16: $38 $0c

	or l                                             ; $6b18: $b5
	ld b, c                                          ; $6b19: $41
	inc hl                                           ; $6b1a: $23
	ld [bc], a                                       ; $6b1b: $02
	ld bc, $017d                                     ; $6b1c: $01 $7d $01
	nop                                              ; $6b1f: $00
	inc b                                            ; $6b20: $04
	jr nz, jr_034_6b37                               ; $6b21: $20 $14

	jp nz, Jump_034_7fd2                             ; $6b23: $c2 $d2 $7f

	dec h                                            ; $6b26: $25
	ld a, l                                          ; $6b27: $7d
	nop                                              ; $6b28: $00
	jr c, jr_034_6b37                                ; $6b29: $38 $0c

	jr c, jr_034_6b39                                ; $6b2b: $38 $0c

	pop de                                           ; $6b2d: $d1
	ld a, a                                          ; $6b2e: $7f
	ld [hl+], a                                      ; $6b2f: $22
	add hl, de                                       ; $6b30: $19
	inc h                                            ; $6b31: $24
	add hl, de                                       ; $6b32: $19
	inc c                                            ; $6b33: $0c
	dec e                                            ; $6b34: $1d
	jr @+$1b                                         ; $6b35: $18 $19

jr_034_6b37:
	jr jr_034_6afd                                   ; $6b37: $18 $c4

jr_034_6b39:
	pop de                                           ; $6b39: $d1
	ld a, a                                          ; $6b3a: $7f
	inc hl                                           ; $6b3b: $23
	ld a, l                                          ; $6b3c: $7d
	ld bc, $0400                                     ; $6b3d: $01 $00 $04
	jr nc, jr_034_6b56                               ; $6b40: $30 $14

	jp nz, Jump_034_7fd2                             ; $6b42: $c2 $d2 $7f

	dec h                                            ; $6b45: $25
	ld a, l                                          ; $6b46: $7d
	nop                                              ; $6b47: $00
	ld [hl], $0c                                     ; $6b48: $36 $0c
	ld [hl], $0c                                     ; $6b4a: $36 $0c
	pop de                                           ; $6b4c: $d1

jr_034_6b4d:
	ld a, a                                          ; $6b4d: $7f
	ld [hl+], a                                      ; $6b4e: $22
	ld d, $18                                        ; $6b4f: $16 $18
	or l                                             ; $6b51: $b5
	ld [hl+], a                                      ; $6b52: $22
	dec h                                            ; $6b53: $25
	nop                                              ; $6b54: $00
	nop                                              ; $6b55: $00

jr_034_6b56:
	jr c, @+$0e                                      ; $6b56: $38 $0c

	call nz, $0c38                                   ; $6b58: $c4 $38 $0c
	or l                                             ; $6b5b: $b5
	ld hl, $0222                                     ; $6b5c: $21 $22 $02
	ld bc, $1814                                     ; $6b5f: $01 $14 $18
	dec d                                            ; $6b62: $15
	jr jr_034_6afb                                   ; $6b63: $18 $96

	nop                                              ; $6b65: $00
	nop                                              ; $6b66: $00
	ld d, $49                                        ; $6b67: $16 $49
	call nz, $0d16                                   ; $6b69: $c4 $16 $0d
	add $16                                          ; $6b6c: $c6 $16
	ld a, [bc]                                       ; $6b6e: $0a

jr_034_6b6f:
	or c                                             ; $6b6f: $b1
	ld hl, $0102                                     ; $6b70: $21 $02 $01
	ld a, [hl]                                       ; $6b73: $7e
	ld l, $41                                        ; $6b74: $2e $41
	and b                                            ; $6b76: $a0
	ld hl, $b560                                     ; $6b77: $21 $60 $b5
	ld hl, $0222                                     ; $6b7a: $21 $22 $02
	ld bc, $007e                                     ; $6b7d: $01 $7e $00
	jr nz, @+$1a                                     ; $6b80: $20 $18

	inc d                                            ; $6b82: $14
	inc c                                            ; $6b83: $0c
	inc d                                            ; $6b84: $14
	inc c                                            ; $6b85: $0c
	add hl, de                                       ; $6b86: $19
	jr jr_034_6ba6                                   ; $6b87: $18 $1d

	jr @-$2c                                         ; $6b89: $18 $d2

	ld a, a                                          ; $6b8b: $7f
	dec h                                            ; $6b8c: $25
	nop                                              ; $6b8d: $00
	jr jr_034_6bc8                                   ; $6b8e: $18 $38

	inc c                                            ; $6b90: $0c
	jr c, jr_034_6b9f                                ; $6b91: $38 $0c

	pop de                                           ; $6b93: $d1
	ld a, a                                          ; $6b94: $7f
	ld [hl+], a                                      ; $6b95: $22
	ld e, $18                                        ; $6b96: $1e $18
	dec e                                            ; $6b98: $1d
	jr jr_034_6bb6                                   ; $6b99: $18 $1b

	jr jr_034_6b6f                                   ; $6b9b: $18 $d2

	ld a, a                                          ; $6b9d: $7f
	dec h                                            ; $6b9e: $25

jr_034_6b9f:
	jr c, jr_034_6bad                                ; $6b9f: $38 $0c

	jr c, jr_034_6baf                                ; $6ba1: $38 $0c

	pop de                                           ; $6ba3: $d1
	ld a, a                                          ; $6ba4: $7f
	ld [hl+], a                                      ; $6ba5: $22

jr_034_6ba6:
	inc d                                            ; $6ba6: $14
	jr @-$2c                                         ; $6ba7: $18 $d2

	ld a, a                                          ; $6ba9: $7f
	dec h                                            ; $6baa: $25
	jr c, jr_034_6bb9                                ; $6bab: $38 $0c

jr_034_6bad:
	jr c, jr_034_6bbb                                ; $6bad: $38 $0c

jr_034_6baf:
	pop de                                           ; $6baf: $d1
	ld a, a                                          ; $6bb0: $7f
	ld [hl+], a                                      ; $6bb1: $22
	call nz, $237f                                   ; $6bb2: $c4 $7f $23
	ld a, l                                          ; $6bb5: $7d

jr_034_6bb6:
	ld bc, $0600                                     ; $6bb6: $01 $00 $06

jr_034_6bb9:
	dec h                                            ; $6bb9: $25
	ld [de], a                                       ; $6bba: $12

jr_034_6bbb:
	jp nz, $227f                                     ; $6bbb: $c2 $7f $22

	ld a, l                                          ; $6bbe: $7d
	nop                                              ; $6bbf: $00
	add hl, de                                       ; $6bc0: $19
	inc c                                            ; $6bc1: $0c
	add hl, de                                       ; $6bc2: $19
	inc c                                            ; $6bc3: $0c
	cp [hl]                                          ; $6bc4: $be
	jr jr_034_6be4                                   ; $6bc5: $18 $1d

	add hl, de                                       ; $6bc7: $19

jr_034_6bc8:
	nop                                              ; $6bc8: $00
	jr jr_034_6be4                                   ; $6bc9: $18 $19

	nop                                              ; $6bcb: $00
	cp [hl]                                          ; $6bcc: $be
	nop                                              ; $6bcd: $00
	jr jr_034_6be9                                   ; $6bce: $18 $19

	inc c                                            ; $6bd0: $0c
	add hl, de                                       ; $6bd1: $19
	inc c                                            ; $6bd2: $0c
	cp [hl]                                          ; $6bd3: $be
	jr jr_034_6bf3                                   ; $6bd4: $18 $1d

	jr nz, jr_034_6bd8                               ; $6bd6: $20 $00

jr_034_6bd8:
	inc h                                            ; $6bd8: $24
	dec h                                            ; $6bd9: $25
	nop                                              ; $6bda: $00
	cp [hl]                                          ; $6bdb: $be
	cp $ff                                           ; $6bdc: $fe $ff
	cp $d0                                           ; $6bde: $fe $d0
	cp [hl]                                          ; $6be0: $be

jr_034_6be1:
	inc [hl]                                         ; $6be1: $34
	jr jr_034_6c18                                   ; $6be2: $18 $34

jr_034_6be4:
	jr jr_034_6be1                                   ; $6be4: $18 $fb

	ld sp, $4218                                     ; $6be6: $31 $18 $42

jr_034_6be9:
	inc c                                            ; $6be9: $0c
	ld [hl-], a                                      ; $6bea: $32
	inc c                                            ; $6beb: $0c
	ld b, d                                          ; $6bec: $42
	jr jr_034_6c21                                   ; $6bed: $18 $32

	inc c                                            ; $6bef: $0c
	ld sp, $fb0c                                     ; $6bf0: $31 $0c $fb

jr_034_6bf3:
	inc bc                                           ; $6bf3: $03
	ld sp, $4318                                     ; $6bf4: $31 $18 $43
	inc c                                            ; $6bf7: $0c
	ld [hl-], a                                      ; $6bf8: $32
	inc c                                            ; $6bf9: $0c
	ccf                                              ; $6bfa: $3f
	jr jr_034_6c2f                                   ; $6bfb: $18 $32

	inc c                                            ; $6bfd: $0c
	ld sp, $430c                                     ; $6bfe: $31 $0c $43
	jr @+$33                                         ; $6c01: $18 $31

	inc c                                            ; $6c03: $0c
	ld [hl-], a                                      ; $6c04: $32
	inc c                                            ; $6c05: $0c
	ei                                               ; $6c06: $fb
	ld sp, $4218                                     ; $6c07: $31 $18 $42
	inc c                                            ; $6c0a: $0c
	ld [hl-], a                                      ; $6c0b: $32
	inc c                                            ; $6c0c: $0c
	ld b, d                                          ; $6c0d: $42
	jr jr_034_6c42                                   ; $6c0e: $18 $32

	inc c                                            ; $6c10: $0c
	ld sp, $fb0c                                     ; $6c11: $31 $0c $fb
	inc bc                                           ; $6c14: $03
	dec a                                            ; $6c15: $3d
	db $10                                           ; $6c16: $10
	ld [hl-], a                                      ; $6c17: $32

jr_034_6c18:
	db $10                                           ; $6c18: $10

jr_034_6c19:
	ld [hl-], a                                      ; $6c19: $32

jr_034_6c1a:
	db $10                                           ; $6c1a: $10
	inc [hl]                                         ; $6c1b: $34
	jr nc, jr_034_6c19                               ; $6c1c: $30 $fb

	ld sp, $4218                                     ; $6c1e: $31 $18 $42

jr_034_6c21:
	inc c                                            ; $6c21: $0c
	ld [hl-], a                                      ; $6c22: $32
	inc c                                            ; $6c23: $0c
	ld b, d                                          ; $6c24: $42
	jr jr_034_6c59                                   ; $6c25: $18 $32

	inc c                                            ; $6c27: $0c
	ld sp, $fb0c                                     ; $6c28: $31 $0c $fb
	inc bc                                           ; $6c2b: $03
	ld sp, $4318                                     ; $6c2c: $31 $18 $43

jr_034_6c2f:
	inc c                                            ; $6c2f: $0c
	ld [hl-], a                                      ; $6c30: $32
	inc c                                            ; $6c31: $0c
	ccf                                              ; $6c32: $3f
	jr jr_034_6c67                                   ; $6c33: $18 $32

	inc c                                            ; $6c35: $0c
	ld sp, $320c                                     ; $6c36: $31 $0c $32
	jr jr_034_6c7e                                   ; $6c39: $18 $43

	inc c                                            ; $6c3b: $0c
	inc [hl]                                         ; $6c3c: $34
	inc c                                            ; $6c3d: $0c
	ei                                               ; $6c3e: $fb
	ld sp, $4218                                     ; $6c3f: $31 $18 $42

jr_034_6c42:
	inc c                                            ; $6c42: $0c
	ld [hl-], a                                      ; $6c43: $32
	inc c                                            ; $6c44: $0c
	ld b, d                                          ; $6c45: $42
	jr @+$34                                         ; $6c46: $18 $32

	inc c                                            ; $6c48: $0c
	ld sp, $fb0c                                     ; $6c49: $31 $0c $fb
	ld [bc], a                                       ; $6c4c: $02
	inc [hl]                                         ; $6c4d: $34
	jr @+$33                                         ; $6c4e: $18 $31

	inc c                                            ; $6c50: $0c
	ld [hl-], a                                      ; $6c51: $32

jr_034_6c52:
	inc c                                            ; $6c52: $0c
	inc [hl]                                         ; $6c53: $34
	jr jr_034_6c87                                   ; $6c54: $18 $31

	inc c                                            ; $6c56: $0c
	ld [hl-], a                                      ; $6c57: $32

jr_034_6c58:
	inc c                                            ; $6c58: $0c

jr_034_6c59:
	ei                                               ; $6c59: $fb
	ld [hl-], a                                      ; $6c5a: $32
	jr jr_034_6c9f                                   ; $6c5b: $18 $42

	inc c                                            ; $6c5d: $0c
	ld [hl-], a                                      ; $6c5e: $32
	inc c                                            ; $6c5f: $0c
	ld b, d                                          ; $6c60: $42
	jr jr_034_6c95                                   ; $6c61: $18 $32

	inc c                                            ; $6c63: $0c

jr_034_6c64:
	ld sp, $fb0c                                     ; $6c64: $31 $0c $fb

jr_034_6c67:
	inc bc                                           ; $6c67: $03
	dec a                                            ; $6c68: $3d
	db $10                                           ; $6c69: $10
	dec a                                            ; $6c6a: $3d
	db $10                                           ; $6c6b: $10
	dec a                                            ; $6c6c: $3d
	db $10                                           ; $6c6d: $10
	cp $ff                                           ; $6c6e: $fe $ff
	ret nc                                           ; $6c70: $d0

	ld a, $fe                                        ; $6c71: $3e $fe
	or l                                             ; $6c73: $b5
	pop bc                                           ; $6c74: $c1
	nop                                              ; $6c75: $00
	rst $38                                          ; $6c76: $ff
	ld b, $be                                        ; $6c77: $06 $be
	jr jr_034_6c8e                                   ; $6c79: $18 $13

	inc de                                           ; $6c7b: $13
	ld d, $16                                        ; $6c7c: $16 $16

jr_034_6c7e:
	cp [hl]                                          ; $6c7e: $be
	inc de                                           ; $6c7f: $13
	jr jr_034_6c95                                   ; $6c80: $18 $13

	jr jr_034_6c1a                                   ; $6c82: $18 $96

	rst $38                                          ; $6c84: $ff
	inc b                                            ; $6c85: $04
	inc de                                           ; $6c86: $13

jr_034_6c87:
	inc c                                            ; $6c87: $0c
	or l                                             ; $6c88: $b5
	ld [hl], c                                       ; $6c89: $71
	ld [bc], a                                       ; $6c8a: $02
	rst $38                                          ; $6c8b: $ff
	rlca                                             ; $6c8c: $07
	rra                                              ; $6c8d: $1f

jr_034_6c8e:
	inc c                                            ; $6c8e: $0c
	push bc                                          ; $6c8f: $c5
	ld h, $06                                        ; $6c90: $26 $06
	daa                                              ; $6c92: $27
	ld b, $96                                        ; $6c93: $06 $96

jr_034_6c95:
	rst $38                                          ; $6c95: $ff
	rlca                                             ; $6c96: $07
	ld [hl+], a                                      ; $6c97: $22
	inc c                                            ; $6c98: $0c
	or l                                             ; $6c99: $b5
	and c                                            ; $6c9a: $a1
	nop                                              ; $6c9b: $00
	rst $38                                          ; $6c9c: $ff
	ld b, $18                                        ; $6c9d: $06 $18

jr_034_6c9f:
	jr jr_034_6c52                                   ; $6c9f: $18 $b1

	sub c                                            ; $6ca1: $91
	rst $38                                          ; $6ca2: $ff
	dec b                                            ; $6ca3: $05
	dec de                                           ; $6ca4: $1b
	jr jr_034_6c58                                   ; $6ca5: $18 $b1

	and c                                            ; $6ca7: $a1
	rst $38                                          ; $6ca8: $ff
	rlca                                             ; $6ca9: $07
	ld a, [de]                                       ; $6caa: $1a
	jr jr_034_6cc8                                   ; $6cab: $18 $1b

	jr jr_034_6c64                                   ; $6cad: $18 $b5

	and c                                            ; $6caf: $a1
	nop                                              ; $6cb0: $00
	rst $38                                          ; $6cb1: $ff
	ld b, $14                                        ; $6cb2: $06 $14
	inc c                                            ; $6cb4: $0c
	jp z, $0c13                                      ; $6cb5: $ca $13 $0c

	sub d                                            ; $6cb8: $92
	ret                                              ; $6cb9: $c9


	inc d                                            ; $6cba: $14
	ld b, $18                                        ; $6cbb: $06 $18
	ld b, $c6                                        ; $6cbd: $06 $c6
	dec de                                           ; $6cbf: $1b
	ld b, $c9                                        ; $6cc0: $06 $c9
	jr jr_034_6cca                                   ; $6cc2: $18 $06

	or c                                             ; $6cc4: $b1
	ld [hl], c                                       ; $6cc5: $71
	rst $38                                          ; $6cc6: $ff
	rlca                                             ; $6cc7: $07

jr_034_6cc8:
	add hl, hl                                       ; $6cc8: $29
	inc c                                            ; $6cc9: $0c

jr_034_6cca:
	ld h, $0c                                        ; $6cca: $26 $0c
	or c                                             ; $6ccc: $b1
	sub c                                            ; $6ccd: $91
	rst $38                                          ; $6cce: $ff
	rlca                                             ; $6ccf: $07
	ld [hl+], a                                      ; $6cd0: $22
	inc c                                            ; $6cd1: $0c
	jr nz, jr_034_6ce0                               ; $6cd2: $20 $0c

	or l                                             ; $6cd4: $b5
	add c                                            ; $6cd5: $81
	ld bc, $07ff                                     ; $6cd6: $01 $ff $07
	ld d, $0e                                        ; $6cd9: $16 $0e
	or l                                             ; $6cdb: $b5
	ld hl, $0001                                     ; $6cdc: $21 $01 $00
	nop                                              ; $6cdf: $00

jr_034_6ce0:
	ld a, l                                          ; $6ce0: $7d
	nop                                              ; $6ce1: $00
	ld l, $0c                                        ; $6ce2: $2e $0c
	inc l                                            ; $6ce4: $2c
	inc b                                            ; $6ce5: $04
	or l                                             ; $6ce6: $b5
	add c                                            ; $6ce7: $81
	ld [bc], a                                       ; $6ce8: $02
	rst $38                                          ; $6ce9: $ff
	inc bc                                           ; $6cea: $03
	ld a, l                                          ; $6ceb: $7d
	nop                                              ; $6cec: $00
	ld d, $06                                        ; $6ced: $16 $06
	dec de                                           ; $6cef: $1b
	ld b, $1d                                        ; $6cf0: $06 $1d
	ld b, $b1                                        ; $6cf2: $06 $b1
	add c                                            ; $6cf4: $81
	rst $38                                          ; $6cf5: $ff
	inc b                                            ; $6cf6: $04
	rra                                              ; $6cf7: $1f
	inc c                                            ; $6cf8: $0c
	rst JumpTable                                          ; $6cf9: $c7
	jr nz, jr_034_6d08                               ; $6cfa: $20 $0c

	ret z                                            ; $6cfc: $c8

	rra                                              ; $6cfd: $1f
	inc c                                            ; $6cfe: $0c
	dec e                                            ; $6cff: $1d
	inc c                                            ; $6d00: $0c
	dec de                                           ; $6d01: $1b
	inc c                                            ; $6d02: $0c
	rra                                              ; $6d03: $1f
	inc c                                            ; $6d04: $0c
	ret z                                            ; $6d05: $c8

	inc h                                            ; $6d06: $24
	inc c                                            ; $6d07: $0c

jr_034_6d08:
	ret z                                            ; $6d08: $c8

	rra                                              ; $6d09: $1f
	inc c                                            ; $6d0a: $0c
	daa                                              ; $6d0b: $27
	inc c                                            ; $6d0c: $0c
	rra                                              ; $6d0d: $1f
	inc c                                            ; $6d0e: $0c
	dec e                                            ; $6d0f: $1d
	ld b, $1f                                        ; $6d10: $06 $1f
	ld b, $1a                                        ; $6d12: $06 $1a
	inc c                                            ; $6d14: $0c
	or c                                             ; $6d15: $b1
	add c                                            ; $6d16: $81
	rst $38                                          ; $6d17: $ff
	inc b                                            ; $6d18: $04
	jr jr_034_6d27                                   ; $6d19: $18 $0c

	jr nz, jr_034_6d29                               ; $6d1b: $20 $0c

	ld [hl+], a                                      ; $6d1d: $22
	inc c                                            ; $6d1e: $0c
	ret                                              ; $6d1f: $c9


	jr nz, jr_034_6d2e                               ; $6d20: $20 $0c

	ret                                              ; $6d22: $c9


	cp [hl]                                          ; $6d23: $be
	inc c                                            ; $6d24: $0c
	rra                                              ; $6d25: $1f
	dec de                                           ; $6d26: $1b

jr_034_6d27:
	dec e                                            ; $6d27: $1d
	dec de                                           ; $6d28: $1b

jr_034_6d29:
	cp [hl]                                          ; $6d29: $be
	jr jr_034_6d38                                   ; $6d2a: $18 $0c

	jr nz, jr_034_6d3a                               ; $6d2c: $20 $0c

jr_034_6d2e:
	rra                                              ; $6d2e: $1f
	inc c                                            ; $6d2f: $0c
	jp z, $0c1b                                      ; $6d30: $ca $1b $0c

	or c                                             ; $6d33: $b1
	sub c                                            ; $6d34: $91
	rst $38                                          ; $6d35: $ff
	dec b                                            ; $6d36: $05
	ld a, [de]                                       ; $6d37: $1a

jr_034_6d38:
	ld [de], a                                       ; $6d38: $12
	or c                                             ; $6d39: $b1

jr_034_6d3a:
	add c                                            ; $6d3a: $81
	rst $38                                          ; $6d3b: $ff
	ld [bc], a                                       ; $6d3c: $02
	ld [hl+], a                                      ; $6d3d: $22
	inc bc                                           ; $6d3e: $03
	rst JumpTable                                          ; $6d3f: $c7
	inc h                                            ; $6d40: $24
	inc bc                                           ; $6d41: $03
	or c                                             ; $6d42: $b1
	add c                                            ; $6d43: $81
	rst $38                                          ; $6d44: $ff
	ld b, $26                                        ; $6d45: $06 $26
	inc c                                            ; $6d47: $0c
	or c                                             ; $6d48: $b1
	ld sp, $0000                                     ; $6d49: $31 $00 $00
	ld a, [hl]                                       ; $6d4c: $7e
	ld bc, $a900                                     ; $6d4d: $01 $00 $a9
	ld h, $0c                                        ; $6d50: $26 $0c
	ld a, [hl]                                       ; $6d52: $7e
	nop                                              ; $6d53: $00
	or l                                             ; $6d54: $b5
	and c                                            ; $6d55: $a1
	ld bc, $05ff                                     ; $6d56: $01 $ff $05
	rra                                              ; $6d59: $1f
	ld a, [de]                                       ; $6d5a: $1a
	nop                                              ; $6d5b: $00
	inc b                                            ; $6d5c: $04
	or l                                             ; $6d5d: $b5
	and c                                            ; $6d5e: $a1
	ld [bc], a                                       ; $6d5f: $02
	rst $38                                          ; $6d60: $ff
	ld [bc], a                                       ; $6d61: $02
	ld d, $06                                        ; $6d62: $16 $06
	dec de                                           ; $6d64: $1b

jr_034_6d65:
	ld b, $1d                                        ; $6d65: $06 $1d
	ld b, $b1                                        ; $6d67: $06 $b1
	sub c                                            ; $6d69: $91
	rst $38                                          ; $6d6a: $ff
	inc bc                                           ; $6d6b: $03
	rra                                              ; $6d6c: $1f
	inc c                                            ; $6d6d: $0c
	jr nz, jr_034_6d7c                               ; $6d6e: $20 $0c

	sub [hl]                                         ; $6d70: $96
	rst $38                                          ; $6d71: $ff
	inc b                                            ; $6d72: $04
	ld [hl+], a                                      ; $6d73: $22
	inc c                                            ; $6d74: $0c
	sub [hl]                                         ; $6d75: $96

jr_034_6d76:
	rst $38                                          ; $6d76: $ff
	inc b                                            ; $6d77: $04
	rra                                              ; $6d78: $1f
	inc c                                            ; $6d79: $0c
	or l                                             ; $6d7a: $b5
	ld [hl], c                                       ; $6d7b: $71

jr_034_6d7c:
	ld bc, $0000                                     ; $6d7c: $01 $00 $00
	ld h, $10                                        ; $6d7f: $26 $10
	or c                                             ; $6d81: $b1
	ld b, c                                          ; $6d82: $41
	nop                                              ; $6d83: $00
	nop                                              ; $6d84: $00
	ld h, $02                                        ; $6d85: $26 $02

jr_034_6d87:
	rst JumpTable                                          ; $6d87: $c7
	ld a, [hl]                                       ; $6d88: $7e
	nop                                              ; $6d89: $00
	inc h                                            ; $6d8a: $24
	inc b                                            ; $6d8b: $04
	jp $0324                                         ; $6d8c: $c3 $24 $03


	or c                                             ; $6d8f: $b1
	ld [hl], c                                       ; $6d90: $71
	nop                                              ; $6d91: $00
	nop                                              ; $6d92: $00
	ld a, [hl]                                       ; $6d93: $7e
	ld bc, $a00c                                     ; $6d94: $01 $0c $a0
	inc h                                            ; $6d97: $24
	inc c                                            ; $6d98: $0c
	rst JumpTable                                          ; $6d99: $c7
	ld a, [hl]                                       ; $6d9a: $7e
	ld bc, $a000                                     ; $6d9b: $01 $00 $a0
	inc h                                            ; $6d9e: $24
	inc c                                            ; $6d9f: $0c
	add $24                                          ; $6da0: $c6 $24
	ld b, $b1                                        ; $6da2: $06 $b1
	ld b, c                                          ; $6da4: $41
	nop                                              ; $6da5: $00
	nop                                              ; $6da6: $00
	inc h                                            ; $6da7: $24
	dec b                                            ; $6da8: $05
	or c                                             ; $6da9: $b1
	ld [hl], c                                       ; $6daa: $71
	rst $38                                          ; $6dab: $ff
	dec b                                            ; $6dac: $05
	ld a, [hl]                                       ; $6dad: $7e
	nop                                              ; $6dae: $00
	rra                                              ; $6daf: $1f
	inc c                                            ; $6db0: $0c
	or c                                             ; $6db1: $b1
	ld h, c                                          ; $6db2: $61
	rst $38                                          ; $6db3: $ff
	ld b, $27                                        ; $6db4: $06 $27
	inc c                                            ; $6db6: $0c
	or c                                             ; $6db7: $b1
	ld [hl], c                                       ; $6db8: $71
	rst $38                                          ; $6db9: $ff
	ld b, $22                                        ; $6dba: $06 $22
	inc c                                            ; $6dbc: $0c
	or l                                             ; $6dbd: $b5
	ld [hl], c                                       ; $6dbe: $71
	ld [bc], a                                       ; $6dbf: $02
	rst $38                                          ; $6dc0: $ff
	inc b                                            ; $6dc1: $04
	inc h                                            ; $6dc2: $24
	jr jr_034_6d76                                   ; $6dc3: $18 $b1

	sub c                                            ; $6dc5: $91
	rst $38                                          ; $6dc6: $ff
	dec b                                            ; $6dc7: $05
	jr jr_034_6de2                                   ; $6dc8: $18 $18

	dec de                                           ; $6dca: $1b
	jr jr_034_6de8                                   ; $6dcb: $18 $1b

	jr jr_034_6d65                                   ; $6dcd: $18 $96

	rst $38                                          ; $6dcf: $ff
	ld b, $18                                        ; $6dd0: $06 $18
	jr jr_034_6def                                   ; $6dd2: $18 $1b

	jr jr_034_6d87                                   ; $6dd4: $18 $b1

	ld [hl], c                                       ; $6dd6: $71
	rst $38                                          ; $6dd7: $ff
	rlca                                             ; $6dd8: $07
	cp [hl]                                          ; $6dd9: $be
	inc c                                            ; $6dda: $0c
	ld h, $27                                        ; $6ddb: $26 $27
	add hl, hl                                       ; $6ddd: $29
	ld h, $be                                        ; $6dde: $26 $be
	sub [hl]                                         ; $6de0: $96
	nop                                              ; $6de1: $00

jr_034_6de2:
	nop                                              ; $6de2: $00
	sub d                                            ; $6de3: $92
	rst JumpTable                                          ; $6de4: $c7
	ld a, [hl]                                       ; $6de5: $7e
	dec bc                                           ; $6de6: $0b
	ld a, [bc]                                       ; $6de7: $0a

jr_034_6de8:
	xor c                                            ; $6de8: $a9
	daa                                              ; $6de9: $27
	jr @+$80                                         ; $6dea: $18 $7e

	dec bc                                           ; $6dec: $0b
	nop                                              ; $6ded: $00
	xor c                                            ; $6dee: $a9

jr_034_6def:
	call nz, $0627                                   ; $6def: $c4 $27 $06
	ld a, [hl]                                       ; $6df2: $7e
	nop                                              ; $6df3: $00
	or c                                             ; $6df4: $b1
	ld [hl], c                                       ; $6df5: $71
	rst $38                                          ; $6df6: $ff
	ld b, $20                                        ; $6df7: $06 $20
	ld b, $24                                        ; $6df9: $06 $24
	ld b, $c8                                        ; $6dfb: $06 $c8
	daa                                              ; $6dfd: $27
	ld b, $c7                                        ; $6dfe: $06 $c7
	ld a, [hl]                                       ; $6e00: $7e
	dec b                                            ; $6e01: $05
	nop                                              ; $6e02: $00
	xor e                                            ; $6e03: $ab
	sub [hl]                                         ; $6e04: $96
	rst $38                                          ; $6e05: $ff
	rlca                                             ; $6e06: $07
	add hl, hl                                       ; $6e07: $29
	inc c                                            ; $6e08: $0c
	ld a, [hl]                                       ; $6e09: $7e
	nop                                              ; $6e0a: $00
	add $2b                                          ; $6e0b: $c6 $2b
	ld b, $c7                                        ; $6e0d: $06 $c7
	add hl, hl                                       ; $6e0f: $29
	inc c                                            ; $6e10: $0c
	or c                                             ; $6e11: $b1
	ld sp, $0000                                     ; $6e12: $31 $00 $00
	add hl, hl                                       ; $6e15: $29
	ld b, $b1                                        ; $6e16: $06 $b1
	add c                                            ; $6e18: $81
	rst $38                                          ; $6e19: $ff
	ld b, $27                                        ; $6e1a: $06 $27
	inc c                                            ; $6e1c: $0c
	ret z                                            ; $6e1d: $c8

	ld a, [hl]                                       ; $6e1e: $7e
	ld bc, $a90f                                     ; $6e1f: $01 $0f $a9
	sub [hl]                                         ; $6e22: $96
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	ld h, $18                                        ; $6e25: $26 $18
	ld a, [hl]                                       ; $6e27: $7e
	ld bc, $a900                                     ; $6e28: $01 $00 $a9
	jp $0626                                         ; $6e2b: $c3 $26 $06


	ld a, [hl]                                       ; $6e2e: $7e
	nop                                              ; $6e2f: $00
	or c                                             ; $6e30: $b1
	sub c                                            ; $6e31: $91
	rst $38                                          ; $6e32: $ff
	inc b                                            ; $6e33: $04
	dec e                                            ; $6e34: $1d
	ld b, $c6                                        ; $6e35: $06 $c6
	rra                                              ; $6e37: $1f
	ld b, $c9                                        ; $6e38: $06 $c9
	ld h, $06                                        ; $6e3a: $26 $06
	or c                                             ; $6e3c: $b1
	add c                                            ; $6e3d: $81
	rst $38                                          ; $6e3e: $ff
	ld [bc], a                                       ; $6e3f: $02
	jr z, jr_034_6e48                                ; $6e40: $28 $06

	rst JumpTable                                          ; $6e42: $c7
	inc e                                            ; $6e43: $1c
	ld b, $1f                                        ; $6e44: $06 $1f
	ld b, $b1                                        ; $6e46: $06 $b1

jr_034_6e48:
	ld [hl], c                                       ; $6e48: $71
	rst $38                                          ; $6e49: $ff
	ld b, $28                                        ; $6e4a: $06 $28
	inc c                                            ; $6e4c: $0c
	ld a, [hl]                                       ; $6e4d: $7e
	ld bc, $a900                                     ; $6e4e: $01 $00 $a9
	or c                                             ; $6e51: $b1
	ld h, c                                          ; $6e52: $61
	nop                                              ; $6e53: $00
	nop                                              ; $6e54: $00
	rra                                              ; $6e55: $1f
	ld b, $7e                                        ; $6e56: $06 $7e
	ld bc, $a90c                                     ; $6e58: $01 $0c $a9
	or c                                             ; $6e5b: $b1
	ld h, c                                          ; $6e5c: $61
	rst $38                                          ; $6e5d: $ff
	ld b, $2b                                        ; $6e5e: $06 $2b
	inc c                                            ; $6e60: $0c
	or c                                             ; $6e61: $b1
	ld [hl], c                                       ; $6e62: $71
	nop                                              ; $6e63: $00
	nop                                              ; $6e64: $00
	inc h                                            ; $6e65: $24
	ld e, $7e                                        ; $6e66: $1e $7e
	ld bc, $a900                                     ; $6e68: $01 $00 $a9
	jp $0624                                         ; $6e6b: $c3 $24 $06


	ld a, [hl]                                       ; $6e6e: $7e
	nop                                              ; $6e6f: $00
	or c                                             ; $6e70: $b1
	sub c                                            ; $6e71: $91
	rst $38                                          ; $6e72: $ff
	ld [bc], a                                       ; $6e73: $02
	ld [hl+], a                                      ; $6e74: $22
	ld b, $96                                        ; $6e75: $06 $96
	rst $38                                          ; $6e77: $ff
	inc b                                            ; $6e78: $04
	inc h                                            ; $6e79: $24
	ld b, $b1                                        ; $6e7a: $06 $b1
	add c                                            ; $6e7c: $81
	rst $38                                          ; $6e7d: $ff
	dec b                                            ; $6e7e: $05
	ld h, $0c                                        ; $6e7f: $26 $0c
	sub [hl]                                         ; $6e81: $96
	rst $38                                          ; $6e82: $ff
	ld [bc], a                                       ; $6e83: $02
	daa                                              ; $6e84: $27
	ld b, $96                                        ; $6e85: $06 $96
	rst $38                                          ; $6e87: $ff
	dec b                                            ; $6e88: $05
	ld h, $0c                                        ; $6e89: $26 $0c
	or c                                             ; $6e8b: $b1
	add c                                            ; $6e8c: $81
	rst $38                                          ; $6e8d: $ff
	ld [bc], a                                       ; $6e8e: $02
	daa                                              ; $6e8f: $27
	ld b, $c8                                        ; $6e90: $06 $c8
	ld h, $06                                        ; $6e92: $26 $06
	or c                                             ; $6e94: $b1
	add c                                            ; $6e95: $81
	rst $38                                          ; $6e96: $ff
	ld [bc], a                                       ; $6e97: $02
	ld [hl+], a                                      ; $6e98: $22
	ld b, $b1                                        ; $6e99: $06 $b1
	add c                                            ; $6e9b: $81
	nop                                              ; $6e9c: $00
	nop                                              ; $6e9d: $00
	ld a, [hl]                                       ; $6e9e: $7e
	nop                                              ; $6e9f: $00
	daa                                              ; $6ea0: $27
	inc bc                                           ; $6ea1: $03
	ld a, [hl]                                       ; $6ea2: $7e
	ld bc, $aa00                                     ; $6ea3: $01 $00 $aa
	jp $0927                                         ; $6ea6: $c3 $27 $09


	or c                                             ; $6ea9: $b1
	ld [hl], c                                       ; $6eaa: $71
	nop                                              ; $6eab: $00
	nop                                              ; $6eac: $00
	ld a, [hl]                                       ; $6ead: $7e
	nop                                              ; $6eae: $00
	daa                                              ; $6eaf: $27
	inc bc                                           ; $6eb0: $03
	ld a, [hl]                                       ; $6eb1: $7e
	ld bc, $aa00                                     ; $6eb2: $01 $00 $aa
	jp $0927                                         ; $6eb5: $c3 $27 $09


	ei                                               ; $6eb8: $fb
	or c                                             ; $6eb9: $b1
	ld [hl], c                                       ; $6eba: $71
	nop                                              ; $6ebb: $00
	nop                                              ; $6ebc: $00
	ld a, [hl]                                       ; $6ebd: $7e
	nop                                              ; $6ebe: $00
	add hl, hl                                       ; $6ebf: $29
	inc bc                                           ; $6ec0: $03
	ld a, [hl]                                       ; $6ec1: $7e
	ld bc, $aa00                                     ; $6ec2: $01 $00 $aa
	jp $0929                                         ; $6ec5: $c3 $29 $09


	ei                                               ; $6ec8: $fb
	ld [bc], a                                       ; $6ec9: $02
	ei                                               ; $6eca: $fb
	or c                                             ; $6ecb: $b1
	ld [hl], c                                       ; $6ecc: $71
	nop                                              ; $6ecd: $00
	nop                                              ; $6ece: $00
	ld a, [hl]                                       ; $6ecf: $7e
	nop                                              ; $6ed0: $00
	ld a, [hl+]                                      ; $6ed1: $2a
	inc bc                                           ; $6ed2: $03
	ld a, [hl]                                       ; $6ed3: $7e
	ld bc, $aa00                                     ; $6ed4: $01 $00 $aa
	jp $092a                                         ; $6ed7: $c3 $2a $09


	ei                                               ; $6eda: $fb
	ld [bc], a                                       ; $6edb: $02
	ei                                               ; $6edc: $fb
	or c                                             ; $6edd: $b1
	ld [hl], c                                       ; $6ede: $71
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	ld a, [hl]                                       ; $6ee1: $7e
	nop                                              ; $6ee2: $00
	dec hl                                           ; $6ee3: $2b
	inc bc                                           ; $6ee4: $03
	ld a, [hl]                                       ; $6ee5: $7e
	ld bc, $aa00                                     ; $6ee6: $01 $00 $aa
	jp $092b                                         ; $6ee9: $c3 $2b $09


	ei                                               ; $6eec: $fb
	ld [bc], a                                       ; $6eed: $02
	sub d                                            ; $6eee: $92
	add $7e                                          ; $6eef: $c6 $7e
	dec bc                                           ; $6ef1: $0b
	ld a, [bc]                                       ; $6ef2: $0a
	xor c                                            ; $6ef3: $a9
	inc l                                            ; $6ef4: $2c
	jr jr_034_6f75                                   ; $6ef5: $18 $7e

	dec bc                                           ; $6ef7: $0b
	nop                                              ; $6ef8: $00
	xor c                                            ; $6ef9: $a9
	jp $0627                                         ; $6efa: $c3 $27 $06


	ld a, [hl]                                       ; $6efd: $7e
	nop                                              ; $6efe: $00
	or c                                             ; $6eff: $b1
	add c                                            ; $6f00: $81
	rst $38                                          ; $6f01: $ff
	inc bc                                           ; $6f02: $03
	inc h                                            ; $6f03: $24
	ld b, $c7                                        ; $6f04: $06 $c7
	add hl, hl                                       ; $6f06: $29
	ld b, $c6                                        ; $6f07: $06 $c6
	inc l                                            ; $6f09: $2c
	ld b, $70                                        ; $6f0a: $06 $70
	add $fd                                          ; $6f0c: $c6 $fd
	or h                                             ; $6f0e: $b4
	ld l, a                                          ; $6f0f: $6f
	add $fd                                          ; $6f10: $c6 $fd
	or h                                             ; $6f12: $b4
	ld l, a                                          ; $6f13: $6f
	add $75                                          ; $6f14: $c6 $75
	db $fd                                           ; $6f16: $fd
	or h                                             ; $6f17: $b4
	ld l, a                                          ; $6f18: $6f
	add $72                                          ; $6f19: $c6 $72
	db $fd                                           ; $6f1b: $fd
	or h                                             ; $6f1c: $b4
	ld l, a                                          ; $6f1d: $6f
	ld [hl], e                                       ; $6f1e: $73
	or c                                             ; $6f1f: $b1
	ld d, c                                          ; $6f20: $51
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	ld l, $02                                        ; $6f23: $2e $02
	jp nz, $042e                                     ; $6f25: $c2 $2e $04

	push bc                                          ; $6f28: $c5
	ld l, $02                                        ; $6f29: $2e $02
	jp nz, $042e                                     ; $6f2b: $c2 $2e $04

	sub c                                            ; $6f2e: $91
	ld [hl], b                                       ; $6f2f: $70
	add $2b                                          ; $6f30: $c6 $2b
	ld b, $97                                        ; $6f32: $06 $97
	ld l, e                                          ; $6f34: $6b
	ld a, [hl+]                                      ; $6f35: $2a
	ld [bc], a                                       ; $6f36: $02
	add hl, hl                                       ; $6f37: $29
	ld [bc], a                                       ; $6f38: $02
	sub a                                            ; $6f39: $97
	ld l, e                                          ; $6f3a: $6b
	jr z, jr_034_6f3f                                ; $6f3b: $28 $02

	daa                                              ; $6f3d: $27
	ld [bc], a                                       ; $6f3e: $02

jr_034_6f3f:
	sub a                                            ; $6f3f: $97
	nop                                              ; $6f40: $00
	ret z                                            ; $6f41: $c8

	ld a, [hl]                                       ; $6f42: $7e
	ld bc, $a008                                     ; $6f43: $01 $08 $a0
	ld h, $16                                        ; $6f46: $26 $16
	ld a, [hl]                                       ; $6f48: $7e
	ld bc, $a008                                     ; $6f49: $01 $08 $a0
	ret z                                            ; $6f4c: $c8

	rra                                              ; $6f4d: $1f
	inc c                                            ; $6f4e: $0c
	add hl, hl                                       ; $6f4f: $29
	ld b, $27                                        ; $6f50: $06 $27
	ld b, $c8                                        ; $6f52: $06 $c8
	ld a, l                                          ; $6f54: $7d
	dec c                                            ; $6f55: $0d
	dec h                                            ; $6f56: $25
	ld a, [bc]                                       ; $6f57: $0a
	ld a, l                                          ; $6f58: $7d
	nop                                              ; $6f59: $00
	ret z                                            ; $6f5a: $c8

	ld [hl+], a                                      ; $6f5b: $22
	ld [$061f], sp                                   ; $6f5c: $08 $1f $06
	or l                                             ; $6f5f: $b5
	ld [hl], c                                       ; $6f60: $71
	ld bc, $07ff                                     ; $6f61: $01 $ff $07
	ld a, [hl]                                       ; $6f64: $7e
	ld bc, $aa00                                     ; $6f65: $01 $00 $aa
	daa                                              ; $6f68: $27
	inc c                                            ; $6f69: $0c
	add $24                                          ; $6f6a: $c6 $24
	inc c                                            ; $6f6c: $0c
	jr nz, jr_034_6f7b                               ; $6f6d: $20 $0c

	inc h                                            ; $6f6f: $24
	inc c                                            ; $6f70: $0c
	sub [hl]                                         ; $6f71: $96
	nop                                              ; $6f72: $00
	nop                                              ; $6f73: $00
	sub d                                            ; $6f74: $92

jr_034_6f75:
	ld a, [hl]                                       ; $6f75: $7e
	nop                                              ; $6f76: $00
	ld [hl], b                                       ; $6f77: $70
	push bc                                          ; $6f78: $c5
	ld l, $03                                        ; $6f79: $2e $03

jr_034_6f7b:
	jp nz, $092e                                     ; $6f7b: $c2 $2e $09

	push bc                                          ; $6f7e: $c5
	ld l, $03                                        ; $6f7f: $2e $03
	jp nz, $092e                                     ; $6f81: $c2 $2e $09

	call nz, $032c                                   ; $6f84: $c4 $2c $03
	jp nz, $092c                                     ; $6f87: $c2 $2c $09

	push bc                                          ; $6f8a: $c5
	inc l                                            ; $6f8b: $2c
	inc c                                            ; $6f8c: $0c
	call nz, $062c                                   ; $6f8d: $c4 $2c $06
	jp $062c                                         ; $6f90: $c3 $2c $06


	sub d                                            ; $6f93: $92
	add $20                                          ; $6f94: $c6 $20
	ld a, [bc]                                       ; $6f96: $0a
	jp $0220                                         ; $6f97: $c3 $20 $02


	rst JumpTable                                          ; $6f9a: $c7
	ld a, [hl]                                       ; $6f9b: $7e
	ld bc, $a900                                     ; $6f9c: $01 $00 $a9
	inc hl                                           ; $6f9f: $23
	jr @-$39                                         ; $6fa0: $18 $c5

	ld [hl+], a                                      ; $6fa2: $22
	inc c                                            ; $6fa3: $0c
	call nz, $0c22                                   ; $6fa4: $c4 $22 $0c
	call nz, $0c22                                   ; $6fa7: $c4 $22 $0c
	jp $0622                                         ; $6faa: $c3 $22 $06


	jp nz, $0622                                     ; $6fad: $c2 $22 $06

	ld a, [hl]                                       ; $6fb0: $7e
	nop                                              ; $6fb1: $00
	cp $ff                                           ; $6fb2: $fe $ff
	ld l, $02                                        ; $6fb4: $2e $02
	jp $2ed1                                         ; $6fb6: $c3 $d1 $2e


	inc b                                            ; $6fb9: $04
	pop de                                           ; $6fba: $d1
	push bc                                          ; $6fbb: $c5
	ld l, $02                                        ; $6fbc: $2e $02
	pop de                                           ; $6fbe: $d1
	jp $042e                                         ; $6fbf: $c3 $2e $04


	pop de                                           ; $6fc2: $d1
	ret                                              ; $6fc3: $c9


	db $fd                                           ; $6fc4: $fd
	ret nc                                           ; $6fc5: $d0

	ld a, $fe                                        ; $6fc6: $3e $fe
	or l                                             ; $6fc8: $b5
	or c                                             ; $6fc9: $b1
	inc bc                                           ; $6fca: $03
	rst $38                                          ; $6fcb: $ff
	rlca                                             ; $6fcc: $07
	ld d, $18                                        ; $6fcd: $16 $18
	or c                                             ; $6fcf: $b1
	ld [hl], c                                       ; $6fd0: $71
	rst $38                                          ; $6fd1: $ff
	inc b                                            ; $6fd2: $04
	nop                                              ; $6fd3: $00
	ld b, $b5                                        ; $6fd4: $06 $b5
	pop af                                           ; $6fd6: $f1
	ld [bc], a                                       ; $6fd7: $02
	rst $38                                          ; $6fd8: $ff
	ld [bc], a                                       ; $6fd9: $02
	ld d, $06                                        ; $6fda: $16 $06
	dec de                                           ; $6fdc: $1b
	ld b, $1d                                        ; $6fdd: $06 $1d
	ld b, $96                                        ; $6fdf: $06 $96
	rst $38                                          ; $6fe1: $ff
	ld [bc], a                                       ; $6fe2: $02
	cp [hl]                                          ; $6fe3: $be
	inc c                                            ; $6fe4: $0c
	rra                                              ; $6fe5: $1f
	jr nz, jr_034_7007                               ; $6fe6: $20 $1f

	dec e                                            ; $6fe8: $1d
	cp [hl]                                          ; $6fe9: $be
	rst GetHLinHL                                          ; $6fea: $cf
	dec de                                           ; $6feb: $1b
	inc c                                            ; $6fec: $0c
	rst GetHLinHL                                          ; $6fed: $cf
	inc h                                            ; $6fee: $24
	inc c                                            ; $6fef: $0c
	or c                                             ; $6ff0: $b1
	pop hl                                           ; $6ff1: $e1
	rst $38                                          ; $6ff2: $ff
	inc bc                                           ; $6ff3: $03
	daa                                              ; $6ff4: $27
	inc c                                            ; $6ff5: $0c
	or c                                             ; $6ff6: $b1
	pop af                                           ; $6ff7: $f1
	rst $38                                          ; $6ff8: $ff
	ld [bc], a                                       ; $6ff9: $02
	inc h                                            ; $6ffa: $24
	inc c                                            ; $6ffb: $0c
	ld h, $0c                                        ; $6ffc: $26 $0c
	ld [hl+], a                                      ; $6ffe: $22
	inc c                                            ; $6fff: $0c
	dec e                                            ; $7000: $1d
	ld b, $cd                                        ; $7001: $06 $cd
	rra                                              ; $7003: $1f
	ld b, $ce                                        ; $7004: $06 $ce
	ld a, [de]                                       ; $7006: $1a

jr_034_7007:
	inc c                                            ; $7007: $0c
	or c                                             ; $7008: $b1
	pop af                                           ; $7009: $f1
	rst $38                                          ; $700a: $ff
	ld [bc], a                                       ; $700b: $02
	cp [hl]                                          ; $700c: $be
	inc c                                            ; $700d: $0c
	dec de                                           ; $700e: $1b
	jr nz, jr_034_7035                               ; $700f: $20 $24

	jr nz, jr_034_7035                               ; $7011: $20 $22

	rra                                              ; $7013: $1f
	ld a, [de]                                       ; $7014: $1a
	ld d, $be                                        ; $7015: $16 $be
	jr jr_034_7025                                   ; $7017: $18 $0c

	jr nz, jr_034_7027                               ; $7019: $20 $0c

	inc h                                            ; $701b: $24
	inc c                                            ; $701c: $0c
	rst GetHLinHL                                          ; $701d: $cf
	jr nz, jr_034_702c                               ; $701e: $20 $0c

	rst GetHLinHL                                          ; $7020: $cf
	ld [hl+], a                                      ; $7021: $22
	ld [de], a                                       ; $7022: $12
	or c                                             ; $7023: $b1
	pop af                                           ; $7024: $f1

jr_034_7025:
	rst $38                                          ; $7025: $ff
	ld [bc], a                                       ; $7026: $02

jr_034_7027:
	ld [hl+], a                                      ; $7027: $22
	inc bc                                           ; $7028: $03
	inc h                                            ; $7029: $24
	inc bc                                           ; $702a: $03
	or c                                             ; $702b: $b1

jr_034_702c:
	pop af                                           ; $702c: $f1
	rst $38                                          ; $702d: $ff
	ld [bc], a                                       ; $702e: $02
	ld h, $06                                        ; $702f: $26 $06
	or c                                             ; $7031: $b1
	sub c                                            ; $7032: $91
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00

jr_034_7035:
	ld h, $06                                        ; $7035: $26 $06
	ld a, [hl]                                       ; $7037: $7e
	ld [bc], a                                       ; $7038: $02
	nop                                              ; $7039: $00
	xor c                                            ; $703a: $a9
	push bc                                          ; $703b: $c5
	ld h, $0c                                        ; $703c: $26 $0c
	ld a, [hl]                                       ; $703e: $7e
	nop                                              ; $703f: $00
	or l                                             ; $7040: $b5
	sub c                                            ; $7041: $91
	ld bc, $07ff                                     ; $7042: $01 $ff $07
	rra                                              ; $7045: $1f
	inc c                                            ; $7046: $0c
	or l                                             ; $7047: $b5
	add c                                            ; $7048: $81
	ld bc, $07ff                                     ; $7049: $01 $ff $07
	ld a, [hl]                                       ; $704c: $7e
	ld a, [bc]                                       ; $704d: $0a
	nop                                              ; $704e: $00
	xor e                                            ; $704f: $ab
	ld a, l                                          ; $7050: $7d
	add hl, bc                                       ; $7051: $09
	dec l                                            ; $7052: $2d
	inc c                                            ; $7053: $0c
	ld a, l                                          ; $7054: $7d
	nop                                              ; $7055: $00
	sub [hl]                                         ; $7056: $96
	rst $38                                          ; $7057: $ff
	dec b                                            ; $7058: $05
	ld a, [hl]                                       ; $7059: $7e
	nop                                              ; $705a: $00
	ret z                                            ; $705b: $c8

	inc l                                            ; $705c: $2c
	ld b, $c8                                        ; $705d: $06 $c8
	dec hl                                           ; $705f: $2b
	ld b, $b1                                        ; $7060: $06 $b1
	ld sp, $0000                                     ; $7062: $31 $00 $00
	dec hl                                           ; $7065: $2b
	ld b, $b1                                        ; $7066: $06 $b1
	sub c                                            ; $7068: $91
	rst $38                                          ; $7069: $ff
	rlca                                             ; $706a: $07
	add hl, hl                                       ; $706b: $29
	ld [de], a                                       ; $706c: $12
	or c                                             ; $706d: $b1
	and c                                            ; $706e: $a1
	rst $38                                          ; $706f: $ff
	dec b                                            ; $7070: $05
	daa                                              ; $7071: $27
	inc c                                            ; $7072: $0c
	add hl, hl                                       ; $7073: $29
	inc c                                            ; $7074: $0c
	dec hl                                           ; $7075: $2b
	inc c                                            ; $7076: $0c
	or c                                             ; $7077: $b1
	or c                                             ; $7078: $b1
	rst $38                                          ; $7079: $ff
	ld b, $29                                        ; $707a: $06 $29
	inc de                                           ; $707c: $13
	jp z, $032b                                      ; $707d: $ca $2b $03

	add hl, hl                                       ; $7080: $29

Jump_034_7081:
	ld [bc], a                                       ; $7081: $02
	or c                                             ; $7082: $b1
	or c                                             ; $7083: $b1
	rst $38                                          ; $7084: $ff
	rlca                                             ; $7085: $07
	ld a, [hl]                                       ; $7086: $7e
	ld bc, $a90a                                     ; $7087: $01 $0a $a9
	daa                                              ; $708a: $27
	jr jr_034_710b                                   ; $708b: $18 $7e

	ld bc, $a900                                     ; $708d: $01 $00 $a9
	or c                                             ; $7090: $b1
	ld sp, $0000                                     ; $7091: $31 $00 $00
	daa                                              ; $7094: $27
	inc c                                            ; $7095: $0c
	or c                                             ; $7096: $b1
	pop bc                                           ; $7097: $c1
	rst $38                                          ; $7098: $ff
	inc bc                                           ; $7099: $03
	ld a, [hl]                                       ; $709a: $7e
	nop                                              ; $709b: $00
	inc h                                            ; $709c: $24
	ld b, $26                                        ; $709d: $06 $26
	ld b, $27                                        ; $709f: $06 $27
	ld b, $ca                                        ; $70a1: $06 $ca
	add hl, hl                                       ; $70a3: $29
	ld b, $ca                                        ; $70a4: $06 $ca
	dec hl                                           ; $70a6: $2b
	ld b, $cb                                        ; $70a7: $06 $cb
	daa                                              ; $70a9: $27
	ld b, $b1                                        ; $70aa: $06 $b1
	ld sp, $0000                                     ; $70ac: $31 $00 $00
	daa                                              ; $70af: $27
	inc c                                            ; $70b0: $0c
	or c                                             ; $70b1: $b1
	pop de                                           ; $70b2: $d1
	rst $38                                          ; $70b3: $ff
	inc b                                            ; $70b4: $04
	inc h                                            ; $70b5: $24
	inc c                                            ; $70b6: $0c
	ld h, $0c                                        ; $70b7: $26 $0c
	daa                                              ; $70b9: $27
	inc c                                            ; $70ba: $0c
	or c                                             ; $70bb: $b1
	and c                                            ; $70bc: $a1
	rst $38                                          ; $70bd: $ff
	dec b                                            ; $70be: $05
	add hl, hl                                       ; $70bf: $29
	inc c                                            ; $70c0: $0c
	or c                                             ; $70c1: $b1
	pop de                                           ; $70c2: $d1
	rst $38                                          ; $70c3: $ff
	inc b                                            ; $70c4: $04
	daa                                              ; $70c5: $27
	inc c                                            ; $70c6: $0c
	ld h, $06                                        ; $70c7: $26 $06
	ld [hl+], a                                      ; $70c9: $22
	inc c                                            ; $70ca: $0c
	or c                                             ; $70cb: $b1
	pop bc                                           ; $70cc: $c1
	rst $38                                          ; $70cd: $ff
	rlca                                             ; $70ce: $07
	ld a, [hl]                                       ; $70cf: $7e
	ld bc, $a90a                                     ; $70d0: $01 $0a $a9
	cp l                                             ; $70d3: $bd
	ld [bc], a                                       ; $70d4: $02
	inc h                                            ; $70d5: $24
	ld b, $18                                        ; $70d6: $06 $18
	or c                                             ; $70d8: $b1
	ld b, c                                          ; $70d9: $41
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	inc h                                            ; $70dc: $24
	inc c                                            ; $70dd: $0c
	or c                                             ; $70de: $b1
	pop bc                                           ; $70df: $c1
	rst $38                                          ; $70e0: $ff
	dec b                                            ; $70e1: $05
	dec hl                                           ; $70e2: $2b
	inc c                                            ; $70e3: $0c
	or c                                             ; $70e4: $b1
	or c                                             ; $70e5: $b1
	rst $38                                          ; $70e6: $ff
	rlca                                             ; $70e7: $07
	add hl, hl                                       ; $70e8: $29
	inc c                                            ; $70e9: $0c
	or c                                             ; $70ea: $b1
	add c                                            ; $70eb: $81
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	add hl, hl                                       ; $70ee: $29
	inc c                                            ; $70ef: $0c
	ld a, [hl]                                       ; $70f0: $7e
	ld bc, $a900                                     ; $70f1: $01 $00 $a9
	or c                                             ; $70f4: $b1
	ld d, c                                          ; $70f5: $51
	nop                                              ; $70f6: $00
	nop                                              ; $70f7: $00
	add hl, hl                                       ; $70f8: $29
	inc c                                            ; $70f9: $0c
	jp $0c29                                         ; $70fa: $c3 $29 $0c


	ld a, [hl]                                       ; $70fd: $7e
	nop                                              ; $70fe: $00
	or l                                             ; $70ff: $b5
	and c                                            ; $7100: $a1
	ld [bc], a                                       ; $7101: $02
	rst $38                                          ; $7102: $ff
	dec b                                            ; $7103: $05
	ld [hl+], a                                      ; $7104: $22
	inc c                                            ; $7105: $0c
	or l                                             ; $7106: $b5
	and c                                            ; $7107: $a1
	ld bc, $07ff                                     ; $7108: $01 $ff $07

jr_034_710b:
	ld a, l                                          ; $710b: $7d
	add hl, bc                                       ; $710c: $09
	dec l                                            ; $710d: $2d
	inc c                                            ; $710e: $0c
	ld a, l                                          ; $710f: $7d
	nop                                              ; $7110: $00
	jp z, $062b                                      ; $7111: $ca $2b $06

	ret z                                            ; $7114: $c8

	inc l                                            ; $7115: $2c
	ld b, $b1                                        ; $7116: $06 $b1
	ld b, c                                          ; $7118: $41
	nop                                              ; $7119: $00
	nop                                              ; $711a: $00
	inc l                                            ; $711b: $2c
	ld b, $b1                                        ; $711c: $06 $b1
	or c                                             ; $711e: $b1
	rst $38                                          ; $711f: $ff
	rlca                                             ; $7120: $07
	ld l, $0c                                        ; $7121: $2e $0c
	or c                                             ; $7123: $b1
	ld b, c                                          ; $7124: $41
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	ld l, $04                                        ; $7127: $2e $04
	ret                                              ; $7129: $c9


	cpl                                              ; $712a: $2f
	ld [bc], a                                       ; $712b: $02
	or c                                             ; $712c: $b1
	and c                                            ; $712d: $a1
	rst $38                                          ; $712e: $ff
	dec b                                            ; $712f: $05
	jr nc, jr_034_713e                               ; $7130: $30 $0c

	or c                                             ; $7132: $b1
	and c                                            ; $7133: $a1
	rst $38                                          ; $7134: $ff
	inc b                                            ; $7135: $04
	ld [hl-], a                                      ; $7136: $32
	inc c                                            ; $7137: $0c
	or c                                             ; $7138: $b1
	or c                                             ; $7139: $b1
	rst $38                                          ; $713a: $ff
	ld b, $2e                                        ; $713b: $06 $2e
	dec bc                                           ; $713d: $0b

jr_034_713e:
	push bc                                          ; $713e: $c5
	inc [hl]                                         ; $713f: $34
	ld bc, $a1b1                                     ; $7140: $01 $b1 $a1
	rst $38                                          ; $7143: $ff
	ld b, $35                                        ; $7144: $06 $35
	db $10                                           ; $7146: $10
	or c                                             ; $7147: $b1
	ld d, c                                          ; $7148: $51
	nop                                              ; $7149: $00
	nop                                              ; $714a: $00
	dec [hl]                                         ; $714b: $35
	ld [bc], a                                       ; $714c: $02
	or c                                             ; $714d: $b1
	pop bc                                           ; $714e: $c1
	rst $38                                          ; $714f: $ff
	inc bc                                           ; $7150: $03
	ld a, [hl]                                       ; $7151: $7e
	nop                                              ; $7152: $00
	inc sp                                           ; $7153: $33
	dec b                                            ; $7154: $05
	push bc                                          ; $7155: $c5
	inc sp                                           ; $7156: $33
	ld bc, $b1b1                                     ; $7157: $01 $b1 $b1
	nop                                              ; $715a: $00
	nop                                              ; $715b: $00
	inc sp                                           ; $715c: $33
	ld b, $c9                                        ; $715d: $06 $c9
	inc sp                                           ; $715f: $33
	ld b, $7e                                        ; $7160: $06 $7e
	ld bc, $a900                                     ; $7162: $01 $00 $a9
	rst JumpTable                                          ; $7165: $c7
	inc sp                                           ; $7166: $33
	ld b, $c5                                        ; $7167: $06 $c5
	inc sp                                           ; $7169: $33
	inc c                                            ; $716a: $0c
	call nz, $0633                                   ; $716b: $c4 $33 $06
	or c                                             ; $716e: $b1
	and c                                            ; $716f: $a1
	rst $38                                          ; $7170: $ff
	dec b                                            ; $7171: $05
	ld a, [hl]                                       ; $7172: $7e
	nop                                              ; $7173: $00
	jr nc, jr_034_7182                               ; $7174: $30 $0c

	ld l, $0c                                        ; $7176: $2e $0c
	sub [hl]                                         ; $7178: $96
	rst $38                                          ; $7179: $ff
	ld b, $2b                                        ; $717a: $06 $2b
	inc c                                            ; $717c: $0c
	or c                                             ; $717d: $b1
	ld b, c                                          ; $717e: $41
	nop                                              ; $717f: $00
	nop                                              ; $7180: $00
	dec hl                                           ; $7181: $2b

jr_034_7182:
	inc c                                            ; $7182: $0c
	or c                                             ; $7183: $b1
	or c                                             ; $7184: $b1
	rst $38                                          ; $7185: $ff
	dec b                                            ; $7186: $05
	inc h                                            ; $7187: $24
	inc c                                            ; $7188: $0c
	sla a                                            ; $7189: $cb $27
	inc c                                            ; $718b: $0c
	or c                                             ; $718c: $b1
	and c                                            ; $718d: $a1
	rst $38                                          ; $718e: $ff
	ld b, $2c                                        ; $718f: $06 $2c
	inc c                                            ; $7191: $0c
	or c                                             ; $7192: $b1
	sub c                                            ; $7193: $91
	rst $38                                          ; $7194: $ff
	dec b                                            ; $7195: $05
	ld l, $0c                                        ; $7196: $2e $0c
	or c                                             ; $7198: $b1
	or c                                             ; $7199: $b1
	rst $38                                          ; $719a: $ff
	dec b                                            ; $719b: $05
	daa                                              ; $719c: $27
	dec bc                                           ; $719d: $0b
	ret z                                            ; $719e: $c8

	ld a, [hl+]                                      ; $719f: $2a
	ld bc, $2bc9                                     ; $71a0: $01 $c9 $2b
	ld b, $b1                                        ; $71a3: $06 $b1
	sub c                                            ; $71a5: $91
	rst $38                                          ; $71a6: $ff
	ld b, $2e                                        ; $71a7: $06 $2e
	inc c                                            ; $71a9: $0c
	ld a, [hl]                                       ; $71aa: $7e
	ld bc, $a90a                                     ; $71ab: $01 $0a $a9
	or c                                             ; $71ae: $b1
	sub c                                            ; $71af: $91
	rst $38                                          ; $71b0: $ff
	rlca                                             ; $71b1: $07
	add hl, hl                                       ; $71b2: $29
	ld b, $b1                                        ; $71b3: $06 $b1
	ld [hl], c                                       ; $71b5: $71
	nop                                              ; $71b6: $00
	nop                                              ; $71b7: $00
	add hl, hl                                       ; $71b8: $29
	jr @-$4d                                         ; $71b9: $18 $b1

	ld b, c                                          ; $71bb: $41
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	add hl, hl                                       ; $71be: $29
	inc c                                            ; $71bf: $0c
	or c                                             ; $71c0: $b1
	and c                                            ; $71c1: $a1
	rst $38                                          ; $71c2: $ff
	ld b, $30                                        ; $71c3: $06 $30
	inc c                                            ; $71c5: $0c
	or c                                             ; $71c6: $b1
	or c                                             ; $71c7: $b1
	rst $38                                          ; $71c8: $ff
	rlca                                             ; $71c9: $07
	ld l, $18                                        ; $71ca: $2e $18
	or c                                             ; $71cc: $b1
	ld d, c                                          ; $71cd: $51
	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	ld l, $18                                        ; $71d0: $2e $18
	ld a, [hl]                                       ; $71d2: $7e
	nop                                              ; $71d3: $00
	sub d                                            ; $71d4: $92
	ret                                              ; $71d5: $c9


	ld a, [hl]                                       ; $71d6: $7e
	dec bc                                           ; $71d7: $0b
	ld a, [bc]                                       ; $71d8: $0a
	xor c                                            ; $71d9: $a9
	jr nc, jr_034_71e8                               ; $71da: $30 $0c

	ld a, [hl]                                       ; $71dc: $7e
	ld bc, $a900                                     ; $71dd: $01 $00 $a9
	ret z                                            ; $71e0: $c8

	jr nc, jr_034_71ef                               ; $71e1: $30 $0c

	ld a, [hl]                                       ; $71e3: $7e
	dec bc                                           ; $71e4: $0b
	nop                                              ; $71e5: $00
	xor c                                            ; $71e6: $a9
	push bc                                          ; $71e7: $c5

jr_034_71e8:
	jr nc, jr_034_71f0                               ; $71e8: $30 $06

	ld a, [hl]                                       ; $71ea: $7e
	nop                                              ; $71eb: $00
	or c                                             ; $71ec: $b1
	pop bc                                           ; $71ed: $c1
	rst $38                                          ; $71ee: $ff

jr_034_71ef:
	ld [bc], a                                       ; $71ef: $02

jr_034_71f0:
	daa                                              ; $71f0: $27
	ld b, $b1                                        ; $71f1: $06 $b1
	add c                                            ; $71f3: $81
	rst $38                                          ; $71f4: $ff
	inc bc                                           ; $71f5: $03
	inc l                                            ; $71f6: $2c
	ld b, $c9                                        ; $71f7: $06 $c9
	jr nc, jr_034_7201                               ; $71f9: $30 $06

	jp z, $057e                                      ; $71fb: $ca $7e $05

	nop                                              ; $71fe: $00
	xor d                                            ; $71ff: $aa
	sub [hl]                                         ; $7200: $96

jr_034_7201:
	rst $38                                          ; $7201: $ff
	dec b                                            ; $7202: $05
	ld [hl-], a                                      ; $7203: $32
	inc c                                            ; $7204: $0c
	ld a, [hl]                                       ; $7205: $7e
	nop                                              ; $7206: $00
	inc sp                                           ; $7207: $33
	ld b, $32                                        ; $7208: $06 $32
	inc c                                            ; $720a: $0c
	or c                                             ; $720b: $b1
	ld d, c                                          ; $720c: $51
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	ld [hl-], a                                      ; $720f: $32
	ld b, $b1                                        ; $7210: $06 $b1
	sub c                                            ; $7212: $91
	rst $38                                          ; $7213: $ff
	rlca                                             ; $7214: $07
	jr nc, @+$0e                                     ; $7215: $30 $0c

	or c                                             ; $7217: $b1
	add c                                            ; $7218: $81
	rst $38                                          ; $7219: $ff
	rlca                                             ; $721a: $07
	ld a, [hl]                                       ; $721b: $7e
	ld bc, $a90f                                     ; $721c: $01 $0f $a9
	sub [hl]                                         ; $721f: $96
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	ld l, $18                                        ; $7222: $2e $18
	ld a, [hl]                                       ; $7224: $7e
	ld bc, $a900                                     ; $7225: $01 $00 $a9
	call nz, $062e                                   ; $7228: $c4 $2e $06
	ld a, [hl]                                       ; $722b: $7e
	nop                                              ; $722c: $00
	or c                                             ; $722d: $b1
	and c                                            ; $722e: $a1
	rst $38                                          ; $722f: $ff
	ld [bc], a                                       ; $7230: $02
	ld h, $06                                        ; $7231: $26 $06
	or c                                             ; $7233: $b1
	add c                                            ; $7234: $81
	rst $38                                          ; $7235: $ff
	inc bc                                           ; $7236: $03
	add hl, hl                                       ; $7237: $29
	ld b, $b1                                        ; $7238: $06 $b1
	and c                                            ; $723a: $a1
	rst $38                                          ; $723b: $ff
	inc bc                                           ; $723c: $03
	ld l, $06                                        ; $723d: $2e $06
	or c                                             ; $723f: $b1
	and c                                            ; $7240: $a1
	rst $38                                          ; $7241: $ff
	dec b                                            ; $7242: $05
	jr nc, jr_034_7251                               ; $7243: $30 $0c

	ret                                              ; $7245: $c9


	ld sp, $9606                                     ; $7246: $31 $06 $96
	rst $38                                          ; $7249: $ff
	dec b                                            ; $724a: $05
	jr nc, @+$0e                                     ; $724b: $30 $0c

	ld a, [hl]                                       ; $724d: $7e
	ld bc, $a900                                     ; $724e: $01 $00 $a9

jr_034_7251:
	or c                                             ; $7251: $b1
	ld b, c                                          ; $7252: $41
	nop                                              ; $7253: $00
	nop                                              ; $7254: $00
	jr nc, jr_034_725d                               ; $7255: $30 $06

	ld a, [hl]                                       ; $7257: $7e
	ld bc, $a90c                                     ; $7258: $01 $0c $a9
	or c                                             ; $725b: $b1
	add c                                            ; $725c: $81

jr_034_725d:
	rst $38                                          ; $725d: $ff
	rlca                                             ; $725e: $07
	ld l, $0c                                        ; $725f: $2e $0c
	or c                                             ; $7261: $b1
	ld [hl], c                                       ; $7262: $71
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	inc l                                            ; $7265: $2c
	ld [de], a                                       ; $7266: $12
	ld a, [hl]                                       ; $7267: $7e
	ld bc, $a900                                     ; $7268: $01 $00 $a9
	inc l                                            ; $726b: $2c
	ld b, $c5                                        ; $726c: $06 $c5
	inc l                                            ; $726e: $2c
	ld b, $c4                                        ; $726f: $06 $c4
	inc l                                            ; $7271: $2c
	ld b, $7e                                        ; $7272: $06 $7e
	nop                                              ; $7274: $00
	or c                                             ; $7275: $b1
	sub c                                            ; $7276: $91
	rst $38                                          ; $7277: $ff
	ld [bc], a                                       ; $7278: $02
	dec hl                                           ; $7279: $2b
	ld b, $c8                                        ; $727a: $06 $c8
	inc l                                            ; $727c: $2c
	ld b, $b1                                        ; $727d: $06 $b1
	sub c                                            ; $727f: $91
	rst $38                                          ; $7280: $ff
	dec b                                            ; $7281: $05
	ld l, $0c                                        ; $7282: $2e $0c
	or c                                             ; $7284: $b1
	and c                                            ; $7285: $a1
	rst $38                                          ; $7286: $ff
	ld [bc], a                                       ; $7287: $02
	jr nc, jr_034_7290                               ; $7288: $30 $06

	or c                                             ; $728a: $b1
	sub c                                            ; $728b: $91
	rst $38                                          ; $728c: $ff
	dec b                                            ; $728d: $05
	ld l, $0c                                        ; $728e: $2e $0c

jr_034_7290:
	or c                                             ; $7290: $b1
	and c                                            ; $7291: $a1
	rst $38                                          ; $7292: $ff
	ld [bc], a                                       ; $7293: $02
	jr nc, jr_034_729c                               ; $7294: $30 $06

	ret                                              ; $7296: $c9


	ld l, $06                                        ; $7297: $2e $06
	inc l                                            ; $7299: $2c
	ld b, $b1                                        ; $729a: $06 $b1

jr_034_729c:
	sub c                                            ; $729c: $91
	rst $38                                          ; $729d: $ff
	rlca                                             ; $729e: $07
	ld a, [hl]                                       ; $729f: $7e
	nop                                              ; $72a0: $00
	dec hl                                           ; $72a1: $2b
	inc c                                            ; $72a2: $0c
	ld a, [hl]                                       ; $72a3: $7e
	ld bc, $aa00                                     ; $72a4: $01 $00 $aa
	or c                                             ; $72a7: $b1
	ld d, c                                          ; $72a8: $51
	nop                                              ; $72a9: $00
	nop                                              ; $72aa: $00
	dec hl                                           ; $72ab: $2b
	ld b, $c4                                        ; $72ac: $06 $c4
	dec hl                                           ; $72ae: $2b
	ld b, $b1                                        ; $72af: $06 $b1
	add c                                            ; $72b1: $81
	rst $38                                          ; $72b2: $ff
	rlca                                             ; $72b3: $07
	ld a, [hl]                                       ; $72b4: $7e
	nop                                              ; $72b5: $00
	inc l                                            ; $72b6: $2c
	inc c                                            ; $72b7: $0c
	ld a, [hl]                                       ; $72b8: $7e
	ld bc, $aa00                                     ; $72b9: $01 $00 $aa
	or c                                             ; $72bc: $b1
	ld d, c                                          ; $72bd: $51
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	inc l                                            ; $72c0: $2c
	ld b, $c4                                        ; $72c1: $06 $c4
	inc l                                            ; $72c3: $2c
	ld b, $b1                                        ; $72c4: $06 $b1
	sub c                                            ; $72c6: $91
	rst $38                                          ; $72c7: $ff
	rlca                                             ; $72c8: $07
	ld a, [hl]                                       ; $72c9: $7e
	nop                                              ; $72ca: $00
	ld l, $0c                                        ; $72cb: $2e $0c
	ld a, [hl]                                       ; $72cd: $7e
	ld bc, $aa00                                     ; $72ce: $01 $00 $aa
	or c                                             ; $72d1: $b1
	ld d, c                                          ; $72d2: $51
	nop                                              ; $72d3: $00
	nop                                              ; $72d4: $00
	ld l, $06                                        ; $72d5: $2e $06
	call nz, $062e                                   ; $72d7: $c4 $2e $06
	or c                                             ; $72da: $b1
	sub c                                            ; $72db: $91
	rst $38                                          ; $72dc: $ff
	rlca                                             ; $72dd: $07
	ld a, [hl]                                       ; $72de: $7e
	nop                                              ; $72df: $00
	inc sp                                           ; $72e0: $33
	inc c                                            ; $72e1: $0c
	ld a, [hl]                                       ; $72e2: $7e
	ld bc, $aa00                                     ; $72e3: $01 $00 $aa
	or c                                             ; $72e6: $b1
	ld d, c                                          ; $72e7: $51
	nop                                              ; $72e8: $00
	nop                                              ; $72e9: $00
	inc sp                                           ; $72ea: $33
	ld b, $c4                                        ; $72eb: $06 $c4
	inc sp                                           ; $72ed: $33
	ld b, $b5                                        ; $72ee: $06 $b5
	add c                                            ; $72f0: $81
	ld [bc], a                                       ; $72f1: $02
	nop                                              ; $72f2: $00
	nop                                              ; $72f3: $00
	ld a, [hl]                                       ; $72f4: $7e
	dec bc                                           ; $72f5: $0b
	ld a, [bc]                                       ; $72f6: $0a
	xor c                                            ; $72f7: $a9
	jr nc, jr_034_7306                               ; $72f8: $30 $0c

	ld a, [hl]                                       ; $72fa: $7e
	ld bc, $a900                                     ; $72fb: $01 $00 $a9
	jr nc, @+$0e                                     ; $72fe: $30 $0c

	call nz, $0630                                   ; $7300: $c4 $30 $06
	ld a, [hl]                                       ; $7303: $7e
	nop                                              ; $7304: $00
	and b                                            ; $7305: $a0

jr_034_7306:
	or c                                             ; $7306: $b1
	sub c                                            ; $7307: $91
	rst $38                                          ; $7308: $ff
	ld [bc], a                                       ; $7309: $02
	daa                                              ; $730a: $27
	ld b, $b1                                        ; $730b: $06 $b1
	ld [hl], c                                       ; $730d: $71
	rst $38                                          ; $730e: $ff
	inc bc                                           ; $730f: $03
	inc l                                            ; $7310: $2c
	ld b, $c8                                        ; $7311: $06 $c8
	jr nc, jr_034_731b                               ; $7313: $30 $06

	ld a, [hl]                                       ; $7315: $7e
	dec b                                            ; $7316: $05
	nop                                              ; $7317: $00
	xor d                                            ; $7318: $aa
	or c                                             ; $7319: $b1
	sub c                                            ; $731a: $91

jr_034_731b:
	rst $38                                          ; $731b: $ff
	rlca                                             ; $731c: $07
	ld [hl-], a                                      ; $731d: $32
	dec bc                                           ; $731e: $0b
	nop                                              ; $731f: $00

jr_034_7320:
	ld bc, $7ec8                                     ; $7320: $01 $c8 $7e
	nop                                              ; $7323: $00
	inc sp                                           ; $7324: $33
	ld b, $c9                                        ; $7325: $06 $c9
	ld [hl-], a                                      ; $7327: $32
	inc c                                            ; $7328: $0c
	or c                                             ; $7329: $b1
	ld b, c                                          ; $732a: $41
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	ld [hl-], a                                      ; $732d: $32
	dec b                                            ; $732e: $05
	nop                                              ; $732f: $00
	ld bc, $81b1                                     ; $7330: $01 $b1 $81
	rst $38                                          ; $7333: $ff
	ld b, $30                                        ; $7334: $06 $30
	inc c                                            ; $7336: $0c
	or c                                             ; $7337: $b1
	add c                                            ; $7338: $81
	rst $38                                          ; $7339: $ff
	ld b, $32                                        ; $733a: $06 $32
	dec bc                                           ; $733c: $0b
	nop                                              ; $733d: $00
	ld bc, $91b1                                     ; $733e: $01 $b1 $91
	rst $38                                          ; $7341: $ff
	dec b                                            ; $7342: $05
	inc sp                                           ; $7343: $33
	dec bc                                           ; $7344: $0b
	nop                                              ; $7345: $00
	ld bc, $017e                                     ; $7346: $01 $7e $01
	nop                                              ; $7349: $00
	xor e                                            ; $734a: $ab
	or c                                             ; $734b: $b1
	ld h, c                                          ; $734c: $61
	rst $38                                          ; $734d: $ff
	rlca                                             ; $734e: $07
	dec [hl]                                         ; $734f: $35
	inc c                                            ; $7350: $0c
	or c                                             ; $7351: $b1
	sub c                                            ; $7352: $91
	rst $38                                          ; $7353: $ff
	ld b, $7e                                        ; $7354: $06 $7e
	dec bc                                           ; $7356: $0b
	nop                                              ; $7357: $00
	xor e                                            ; $7358: $ab
	ld [hl-], a                                      ; $7359: $32
	dec bc                                           ; $735a: $0b
	nop                                              ; $735b: $00
	ld bc, $0b7e                                     ; $735c: $01 $7e $0b
	ld a, [bc]                                       ; $735f: $0a
	xor c                                            ; $7360: $a9
	or c                                             ; $7361: $b1
	and c                                            ; $7362: $a1
	rst $38                                          ; $7363: $ff
	rlca                                             ; $7364: $07
	inc sp                                           ; $7365: $33
	jr @-$34                                         ; $7366: $18 $ca

	ld [hl-], a                                      ; $7368: $32
	jr jr_034_7320                                   ; $7369: $18 $b5

	ld h, c                                          ; $736b: $61
	ld [bc], a                                       ; $736c: $02
	nop                                              ; $736d: $00
	nop                                              ; $736e: $00
	ld a, [hl]                                       ; $736f: $7e
	dec bc                                           ; $7370: $0b
	ld a, [bc]                                       ; $7371: $0a
	xor c                                            ; $7372: $a9
	jr nc, jr_034_7381                               ; $7373: $30 $0c

	or c                                             ; $7375: $b1
	ld [hl], c                                       ; $7376: $71
	rst $38                                          ; $7377: $ff
	rlca                                             ; $7378: $07
	inc l                                            ; $7379: $2c
	inc c                                            ; $737a: $0c
	or c                                             ; $737b: $b1
	sub c                                            ; $737c: $91
	rst $38                                          ; $737d: $ff
	dec b                                            ; $737e: $05
	add hl, hl                                       ; $737f: $29
	inc c                                            ; $7380: $0c

jr_034_7381:
	ret z                                            ; $7381: $c8

	daa                                              ; $7382: $27
	inc c                                            ; $7383: $0c
	jp z, $1826                                      ; $7384: $ca $26 $18

	or c                                             ; $7387: $b1
	add c                                            ; $7388: $81
	rst $38                                          ; $7389: $ff
	inc b                                            ; $738a: $04
	add hl, hl                                       ; $738b: $29
	dec b                                            ; $738c: $05
	or c                                             ; $738d: $b1
	ld b, c                                          ; $738e: $41
	nop                                              ; $738f: $00
	nop                                              ; $7390: $00
	add hl, hl                                       ; $7391: $29
	rlca                                             ; $7392: $07
	or c                                             ; $7393: $b1
	add c                                            ; $7394: $81
	rst $38                                          ; $7395: $ff
	ld b, $bd                                        ; $7396: $06 $bd
	ld [bc], a                                       ; $7398: $02
	add hl, hl                                       ; $7399: $29
	inc c                                            ; $739a: $0c
	inc c                                            ; $739b: $0c
	ld a, [hl]                                       ; $739c: $7e
	nop                                              ; $739d: $00
	or c                                             ; $739e: $b1
	ld [hl], c                                       ; $739f: $71
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	ld a, l                                          ; $73a2: $7d
	ld bc, $1827                                     ; $73a3: $01 $27 $18
	add $27                                          ; $73a6: $c6 $27
	inc c                                            ; $73a8: $0c
	daa                                              ; $73a9: $27
	inc c                                            ; $73aa: $0c
	rst JumpTable                                          ; $73ab: $c7
	daa                                              ; $73ac: $27
	inc c                                            ; $73ad: $0c
	push bc                                          ; $73ae: $c5
	daa                                              ; $73af: $27
	inc c                                            ; $73b0: $0c
	call nz, $0c27                                   ; $73b1: $c4 $27 $0c
	ld a, l                                          ; $73b4: $7d
	nop                                              ; $73b5: $00
	cp $ff                                           ; $73b6: $fe $ff
	ret nc                                           ; $73b8: $d0

	ld a, $fe                                        ; $73b9: $3e $fe
	jp nz, Jump_034_7081                             ; $73bb: $c2 $81 $70

	dec de                                           ; $73be: $1b
	ld a, [bc]                                       ; $73bf: $0a
	call nz, $081b                                   ; $73c0: $c4 $1b $08
	add $1b                                          ; $73c3: $c6 $1b
	ld b, $c2                                        ; $73c5: $06 $c2
	dec de                                           ; $73c7: $1b
	ld a, [bc]                                       ; $73c8: $0a
	call nz, $081b                                   ; $73c9: $c4 $1b $08
	add $1b                                          ; $73cc: $c6 $1b
	ld b, $c2                                        ; $73ce: $06 $c2
	ld a, [de]                                       ; $73d0: $1a
	ld a, [bc]                                       ; $73d1: $0a
	call nz, $081a                                   ; $73d2: $c4 $1a $08
	add $1a                                          ; $73d5: $c6 $1a
	ld b, $c2                                        ; $73d7: $06 $c2
	ld a, [de]                                       ; $73d9: $1a
	ld a, [bc]                                       ; $73da: $0a
	call nz, $081a                                   ; $73db: $c4 $1a $08
	add $1a                                          ; $73de: $c6 $1a
	ld b, $c2                                        ; $73e0: $06 $c2
	jr @+$0c                                         ; $73e2: $18 $0a

	call nz, $0818                                   ; $73e4: $c4 $18 $08
	add $18                                          ; $73e7: $c6 $18
	ld b, $c2                                        ; $73e9: $06 $c2
	jr @+$0c                                         ; $73eb: $18 $0a

	call nz, $0818                                   ; $73ed: $c4 $18 $08
	add $18                                          ; $73f0: $c6 $18
	ld b, $c2                                        ; $73f2: $06 $c2
	ld d, $0a                                        ; $73f4: $16 $0a
	call nz, $0816                                   ; $73f6: $c4 $16 $08
	add $16                                          ; $73f9: $c6 $16
	ld b, $c2                                        ; $73fb: $06 $c2
	ld d, $0a                                        ; $73fd: $16 $0a
	call nz, $0816                                   ; $73ff: $c4 $16 $08
	add $16                                          ; $7402: $c6 $16
	ld b, $c2                                        ; $7404: $06 $c2
	inc d                                            ; $7406: $14
	ld a, [bc]                                       ; $7407: $0a
	call nz, $0814                                   ; $7408: $c4 $14 $08
	add $14                                          ; $740b: $c6 $14
	ld b, $c2                                        ; $740d: $06 $c2
	inc d                                            ; $740f: $14
	ld a, [bc]                                       ; $7410: $0a
	call nz, $0814                                   ; $7411: $c4 $14 $08
	add $14                                          ; $7414: $c6 $14
	ld b, $c2                                        ; $7416: $06 $c2
	inc de                                           ; $7418: $13
	ld a, [bc]                                       ; $7419: $0a
	call nz, $0813                                   ; $741a: $c4 $13 $08
	add $13                                          ; $741d: $c6 $13
	ld b, $c2                                        ; $741f: $06 $c2
	inc de                                           ; $7421: $13
	ld a, [bc]                                       ; $7422: $0a
	call nz, $0813                                   ; $7423: $c4 $13 $08
	add $13                                          ; $7426: $c6 $13
	ld b, $c2                                        ; $7428: $06 $c2
	ld de, $c40a                                     ; $742a: $11 $0a $c4
	ld de, $c608                                     ; $742d: $11 $08 $c6
	ld de, $c206                                     ; $7430: $11 $06 $c2
	ld de, $c40a                                     ; $7433: $11 $0a $c4
	ld de, $c608                                     ; $7436: $11 $08 $c6
	ld de, $c206                                     ; $7439: $11 $06 $c2
	ld d, $0a                                        ; $743c: $16 $0a
	call nz, $0816                                   ; $743e: $c4 $16 $08
	add $16                                          ; $7441: $c6 $16
	ld b, $c2                                        ; $7443: $06 $c2
	ld a, [de]                                       ; $7445: $1a
	ld a, [bc]                                       ; $7446: $0a
	call nz, $081a                                   ; $7447: $c4 $1a $08
	add $1a                                          ; $744a: $c6 $1a
	ld b, $c2                                        ; $744c: $06 $c2
	ld a, a                                          ; $744e: $7f
	ld [hl+], a                                      ; $744f: $22
	dec de                                           ; $7450: $1b
	ld a, [bc]                                       ; $7451: $0a
	call nz, $081b                                   ; $7452: $c4 $1b $08
	add $1b                                          ; $7455: $c6 $1b
	ld b, $c2                                        ; $7457: $06 $c2
	dec de                                           ; $7459: $1b
	ld a, [bc]                                       ; $745a: $0a
	call nz, $081b                                   ; $745b: $c4 $1b $08
	add $1b                                          ; $745e: $c6 $1b
	ld b, $c2                                        ; $7460: $06 $c2
	ld a, [de]                                       ; $7462: $1a
	ld a, [bc]                                       ; $7463: $0a
	call nz, $081a                                   ; $7464: $c4 $1a $08
	add $1a                                          ; $7467: $c6 $1a
	ld b, $c2                                        ; $7469: $06 $c2
	ld a, [de]                                       ; $746b: $1a
	ld a, [bc]                                       ; $746c: $0a
	call nz, $081a                                   ; $746d: $c4 $1a $08
	add $1a                                          ; $7470: $c6 $1a
	ld b, $c2                                        ; $7472: $06 $c2
	jr @+$0c                                         ; $7474: $18 $0a

	call nz, $0818                                   ; $7476: $c4 $18 $08
	add $18                                          ; $7479: $c6 $18
	ld b, $c2                                        ; $747b: $06 $c2
	jr @+$0c                                         ; $747d: $18 $0a

	call nz, $0818                                   ; $747f: $c4 $18 $08
	add $18                                          ; $7482: $c6 $18
	ld b, $c2                                        ; $7484: $06 $c2
	ld d, $0a                                        ; $7486: $16 $0a
	call nz, $0816                                   ; $7488: $c4 $16 $08
	add $16                                          ; $748b: $c6 $16
	ld b, $c2                                        ; $748d: $06 $c2
	ld d, $0a                                        ; $748f: $16 $0a
	call nz, $0816                                   ; $7491: $c4 $16 $08
	add $16                                          ; $7494: $c6 $16
	ld b, $c2                                        ; $7496: $06 $c2
	inc d                                            ; $7498: $14
	ld a, [bc]                                       ; $7499: $0a
	call nz, $0814                                   ; $749a: $c4 $14 $08
	add $14                                          ; $749d: $c6 $14
	ld b, $c2                                        ; $749f: $06 $c2
	inc d                                            ; $74a1: $14
	ld a, [bc]                                       ; $74a2: $0a
	call nz, $0814                                   ; $74a3: $c4 $14 $08
	add $14                                          ; $74a6: $c6 $14
	ld b, $c2                                        ; $74a8: $06 $c2
	inc de                                           ; $74aa: $13
	ld a, [bc]                                       ; $74ab: $0a
	call nz, $0813                                   ; $74ac: $c4 $13 $08
	add $13                                          ; $74af: $c6 $13
	ld b, $c2                                        ; $74b1: $06 $c2
	inc de                                           ; $74b3: $13
	ld a, [bc]                                       ; $74b4: $0a
	call nz, $0813                                   ; $74b5: $c4 $13 $08
	add $13                                          ; $74b8: $c6 $13
	ld b, $c2                                        ; $74ba: $06 $c2
	ld de, $c40a                                     ; $74bc: $11 $0a $c4
	ld de, $c608                                     ; $74bf: $11 $08 $c6
	ld de, $c206                                     ; $74c2: $11 $06 $c2
	ld de, $c40a                                     ; $74c5: $11 $0a $c4
	ld de, $c608                                     ; $74c8: $11 $08 $c6
	ld de, $c206                                     ; $74cb: $11 $06 $c2
	ld d, $0a                                        ; $74ce: $16 $0a
	call nz, $0816                                   ; $74d0: $c4 $16 $08
	add $16                                          ; $74d3: $c6 $16
	ld b, $c2                                        ; $74d5: $06 $c2
	ld d, $08                                        ; $74d7: $16 $08
	call nz, $0416                                   ; $74d9: $c4 $16 $04
	jp nz, $081a                                     ; $74dc: $c2 $1a $08

	call nz, $041a                                   ; $74df: $c4 $1a $04
	jp nz, $227f                                     ; $74e2: $c2 $7f $22

	dec de                                           ; $74e5: $1b
	ld a, [bc]                                       ; $74e6: $0a
	call nz, $081b                                   ; $74e7: $c4 $1b $08
	add $1b                                          ; $74ea: $c6 $1b
	ld b, $c2                                        ; $74ec: $06 $c2
	dec de                                           ; $74ee: $1b
	ld a, [bc]                                       ; $74ef: $0a
	call nz, $081b                                   ; $74f0: $c4 $1b $08
	add $1b                                          ; $74f3: $c6 $1b
	ld b, $c2                                        ; $74f5: $06 $c2
	ld a, [de]                                       ; $74f7: $1a
	ld a, [bc]                                       ; $74f8: $0a
	call nz, $081a                                   ; $74f9: $c4 $1a $08
	add $1a                                          ; $74fc: $c6 $1a
	ld b, $c2                                        ; $74fe: $06 $c2
	ld a, [de]                                       ; $7500: $1a
	ld a, [bc]                                       ; $7501: $0a
	call nz, $081a                                   ; $7502: $c4 $1a $08
	add $1a                                          ; $7505: $c6 $1a
	ld b, $c2                                        ; $7507: $06 $c2
	jr @+$0c                                         ; $7509: $18 $0a

	call nz, $0818                                   ; $750b: $c4 $18 $08
	add $18                                          ; $750e: $c6 $18
	ld b, $c2                                        ; $7510: $06 $c2
	jr @+$0c                                         ; $7512: $18 $0a

	call nz, $0818                                   ; $7514: $c4 $18 $08
	add $18                                          ; $7517: $c6 $18
	ld b, $c2                                        ; $7519: $06 $c2
	ld d, $0a                                        ; $751b: $16 $0a
	call nz, $0816                                   ; $751d: $c4 $16 $08
	add $16                                          ; $7520: $c6 $16
	ld b, $c2                                        ; $7522: $06 $c2
	ld d, $0a                                        ; $7524: $16 $0a
	call nz, $0816                                   ; $7526: $c4 $16 $08
	add $16                                          ; $7529: $c6 $16
	ld b, $c2                                        ; $752b: $06 $c2
	inc d                                            ; $752d: $14
	ld a, [bc]                                       ; $752e: $0a
	call nz, $0814                                   ; $752f: $c4 $14 $08
	add $14                                          ; $7532: $c6 $14
	ld b, $c2                                        ; $7534: $06 $c2
	inc d                                            ; $7536: $14
	ld a, [bc]                                       ; $7537: $0a
	call nz, $0814                                   ; $7538: $c4 $14 $08
	add $14                                          ; $753b: $c6 $14
	ld b, $c2                                        ; $753d: $06 $c2
	inc de                                           ; $753f: $13
	ld a, [bc]                                       ; $7540: $0a
	call nz, $0813                                   ; $7541: $c4 $13 $08
	add $13                                          ; $7544: $c6 $13
	ld b, $c2                                        ; $7546: $06 $c2
	inc de                                           ; $7548: $13
	ld a, [bc]                                       ; $7549: $0a
	call nz, $0813                                   ; $754a: $c4 $13 $08
	add $13                                          ; $754d: $c6 $13
	ld b, $c2                                        ; $754f: $06 $c2
	ld de, $c40a                                     ; $7551: $11 $0a $c4
	ld de, $c608                                     ; $7554: $11 $08 $c6
	ld de, $c206                                     ; $7557: $11 $06 $c2
	ld de, $c40a                                     ; $755a: $11 $0a $c4
	ld de, $c608                                     ; $755d: $11 $08 $c6
	ld de, $c206                                     ; $7560: $11 $06 $c2
	ld d, $0c                                        ; $7563: $16 $0c
	call nz, $0616                                   ; $7565: $c4 $16 $06
	jp nz, $0411                                     ; $7568: $c2 $11 $04

	add $11                                          ; $756b: $c6 $11
	ld [bc], a                                       ; $756d: $02
	call nz, $0611                                   ; $756e: $c4 $11 $06
	jp nz, $0416                                     ; $7571: $c2 $16 $04

	call nz, $0216                                   ; $7574: $c4 $16 $02
	jp nz, $0615                                     ; $7577: $c2 $15 $06

	ld a, [hl]                                       ; $757a: $7e
	stop                                             ; $757b: $10 $00
	and e                                            ; $757d: $a3
	call nz, $0615                                   ; $757e: $c4 $15 $06
	ld a, [hl]                                       ; $7581: $7e
	nop                                              ; $7582: $00
	jp nz, $6c81                                     ; $7583: $c2 $81 $6c

	ld [$c405], sp                                   ; $7586: $08 $05 $c4
	ld [$0012], sp                                   ; $7589: $08 $12 $00
	ld bc, $14c2                                     ; $758c: $01 $c2 $14
	dec b                                            ; $758f: $05
	call nz, $0714                                   ; $7590: $c4 $14 $07
	jp nz, $0413                                     ; $7593: $c2 $13 $04

	call nz, $0213                                   ; $7596: $c4 $13 $02
	jp nz, $0414                                     ; $7599: $c2 $14 $04

	call nz, $0214                                   ; $759c: $c4 $14 $02
	jp nz, $0508                                     ; $759f: $c2 $08 $05

	call nz, $0c08                                   ; $75a2: $c4 $08 $0c
	nop                                              ; $75a5: $00
	ld bc, $14c2                                     ; $75a6: $01 $c2 $14
	inc b                                            ; $75a9: $04
	call nz, $0214                                   ; $75aa: $c4 $14 $02
	jp nz, $0414                                     ; $75ad: $c2 $14 $04

	call nz, $0814                                   ; $75b0: $c4 $14 $08
	jp nz, $0414                                     ; $75b3: $c2 $14 $04

	call nz, $0814                                   ; $75b6: $c4 $14 $08
	jp nz, $0413                                     ; $75b9: $c2 $13 $04

	call nz, $1413                                   ; $75bc: $c4 $13 $14
	jp nz, $0507                                     ; $75bf: $c2 $07 $05

	call nz, $0707                                   ; $75c2: $c4 $07 $07
	jp nz, $040e                                     ; $75c5: $c2 $0e $04

	call nz, $020e                                   ; $75c8: $c4 $0e $02
	jp nz, $0411                                     ; $75cb: $c2 $11 $04

	call nz, $0211                                   ; $75ce: $c4 $11 $02
	jp nz, $060c                                     ; $75d1: $c2 $0c $06

	call nz, $0c0c                                   ; $75d4: $c4 $0c $0c
	jp nz, $040c                                     ; $75d7: $c2 $0c $04

	call nz, $020c                                   ; $75da: $c4 $0c $02
	jp nz, $050e                                     ; $75dd: $c2 $0e $05

	call nz, $070e                                   ; $75e0: $c4 $0e $07
	jp nz, $0510                                     ; $75e3: $c2 $10 $05

	call nz, $0710                                   ; $75e6: $c4 $10 $07
	jp nz, $0611                                     ; $75e9: $c2 $11 $06

	call nz, $1211                                   ; $75ec: $c4 $11 $12
	jp nz, $0511                                     ; $75ef: $c2 $11 $05

	call nz, $0411                                   ; $75f2: $c4 $11 $04
	call nz, $0311                                   ; $75f5: $c4 $11 $03
	jp nz, $040f                                     ; $75f8: $c2 $0f $04

	call nz, $020f                                   ; $75fb: $c4 $0f $02
	jp nz, $0411                                     ; $75fe: $c2 $11 $04

	call nz, $0211                                   ; $7601: $c4 $11 $02
	jp nz, $070a                                     ; $7604: $c2 $0a $07

	call nz, $050a                                   ; $7607: $c4 $0a $05
	jp nz, $050a                                     ; $760a: $c2 $0a $05

	call nz, $070a                                   ; $760d: $c4 $0a $07
	jp nz, $050c                                     ; $7610: $c2 $0c $05

	call nz, $070c                                   ; $7613: $c4 $0c $07
	jp nz, $050e                                     ; $7616: $c2 $0e $05

	call nz, $070e                                   ; $7619: $c4 $0e $07
	jp nz, $030f                                     ; $761c: $c2 $0f $03

	add $0f                                          ; $761f: $c6 $0f
	add hl, bc                                       ; $7621: $09
	jp nz, $030f                                     ; $7622: $c2 $0f $03

	call nz, $030f                                   ; $7625: $c4 $0f $03
	add $0f                                          ; $7628: $c6 $0f
	ld b, $c2                                        ; $762a: $06 $c2
	ld de, $c603                                     ; $762c: $11 $03 $c6
	ld de, $c603                                     ; $762f: $11 $03 $c6
	ld de, $c206                                     ; $7632: $11 $06 $c2
	ld de, $c403                                     ; $7635: $11 $03 $c4
	ld de, $c603                                     ; $7638: $11 $03 $c6
	ld de, $c206                                     ; $763b: $11 $06 $c2
	ld [de], a                                       ; $763e: $12
	inc bc                                           ; $763f: $03
	add $12                                          ; $7640: $c6 $12
	add hl, bc                                       ; $7642: $09
	jp nz, $0312                                     ; $7643: $c2 $12 $03

	call nz, $0312                                   ; $7646: $c4 $12 $03
	add $12                                          ; $7649: $c6 $12
	ld b, $c2                                        ; $764b: $06 $c2
	inc de                                           ; $764d: $13
	inc bc                                           ; $764e: $03
	add $13                                          ; $764f: $c6 $13
	add hl, bc                                       ; $7651: $09
	jp nz, $0313                                     ; $7652: $c2 $13 $03

	call nz, $0313                                   ; $7655: $c4 $13 $03
	add $13                                          ; $7658: $c6 $13
	ld b, $c2                                        ; $765a: $06 $c2
	add c                                            ; $765c: $81
	ld l, h                                          ; $765d: $6c
	ld de, $c405                                     ; $765e: $11 $05 $c4
	ld de, $c213                                     ; $7661: $11 $13 $c2
	inc de                                           ; $7664: $13
	inc b                                            ; $7665: $04
	call nz, $0813                                   ; $7666: $c4 $13 $08
	jp nz, $0414                                     ; $7669: $c2 $14 $04

	call nz, $0214                                   ; $766c: $c4 $14 $02
	jp nz, $0411                                     ; $766f: $c2 $11 $04

	call nz, $0211                                   ; $7672: $c4 $11 $02
	jp nz, $050a                                     ; $7675: $c2 $0a $05

	call nz, $0d0a                                   ; $7678: $c4 $0a $0d
	jp nz, $0416                                     ; $767b: $c2 $16 $04

	call nz, $0216                                   ; $767e: $c4 $16 $02
	jp nz, $0416                                     ; $7681: $c2 $16 $04

	call nz, $0816                                   ; $7684: $c4 $16 $08
	jp nz, $0414                                     ; $7687: $c2 $14 $04

	call nz, $0814                                   ; $768a: $c4 $14 $08
	jp nz, $0a13                                     ; $768d: $c2 $13 $0a

	call nz, $0813                                   ; $7690: $c4 $13 $08
	add $13                                          ; $7693: $c6 $13
	ld b, $c2                                        ; $7695: $06 $c2
	rla                                              ; $7697: $17
	inc b                                            ; $7698: $04
	call nz, $0817                                   ; $7699: $c4 $17 $08
	jp nz, $0513                                     ; $769c: $c2 $13 $05

	call nz, $0713                                   ; $769f: $c4 $13 $07
	jp nz, $050c                                     ; $76a2: $c2 $0c $05

	call nz, $010c                                   ; $76a5: $c4 $0c $01
	jp nz, $040f                                     ; $76a8: $c2 $0f $04

	call nz, $020f                                   ; $76ab: $c4 $0f $02
	jp nz, $0413                                     ; $76ae: $c2 $13 $04

	call nz, $0213                                   ; $76b1: $c4 $13 $02
	jp nz, $0318                                     ; $76b4: $c2 $18 $03

	call nz, $0318                                   ; $76b7: $c4 $18 $03
	jp nz, $050a                                     ; $76ba: $c2 $0a $05

	call nz, $010a                                   ; $76bd: $c4 $0a $01
	jp nz, $040f                                     ; $76c0: $c2 $0f $04

	call nz, $020f                                   ; $76c3: $c4 $0f $02
	jp nz, $0413                                     ; $76c6: $c2 $13 $04

	call nz, $0213                                   ; $76c9: $c4 $13 $02
	jp nz, $0316                                     ; $76cc: $c2 $16 $03

	call nz, $0316                                   ; $76cf: $c4 $16 $03
	jp nz, $6c81                                     ; $76d2: $c2 $81 $6c

	inc d                                            ; $76d5: $14
	dec b                                            ; $76d6: $05
	call nz, $0714                                   ; $76d7: $c4 $14 $07
	jp nz, $050f                                     ; $76da: $c2 $0f $05

	call nz, $070f                                   ; $76dd: $c4 $0f $07
	jp nz, $0708                                     ; $76e0: $c2 $08 $07

	call nz, $0b08                                   ; $76e3: $c4 $08 $0b
	jp nz, $040c                                     ; $76e6: $c2 $0c $04

	call nz, $020c                                   ; $76e9: $c4 $0c $02
	jp nz, $070a                                     ; $76ec: $c2 $0a $07

	call nz, $0b0a                                   ; $76ef: $c4 $0a $0b
	add $0a                                          ; $76f2: $c6 $0a
	ld b, $c2                                        ; $76f4: $06 $c2
	ld c, $05                                        ; $76f6: $0e $05
	call nz, $030e                                   ; $76f8: $c4 $0e $03
	add $0e                                          ; $76fb: $c6 $0e
	inc b                                            ; $76fd: $04
	jp nz, $0d0e                                     ; $76fe: $c2 $0e $0d

	call nz, $070e                                   ; $7701: $c4 $0e $07
	add $0e                                          ; $7704: $c6 $0e
	inc b                                            ; $7706: $04
	jp nz, $080f                                     ; $7707: $c2 $0f $08

	call nz, $040f                                   ; $770a: $c4 $0f $04
	jp nz, $0e0f                                     ; $770d: $c2 $0f $0e

	call nz, $060f                                   ; $7710: $c4 $0f $06
	add $0f                                          ; $7713: $c6 $0f
	inc b                                            ; $7715: $04
	jp nz, $240f                                     ; $7716: $c2 $0f $24

	call nz, $080f                                   ; $7719: $c4 $0f $08
	add $0f                                          ; $771c: $c6 $0f
	inc b                                            ; $771e: $04
	cp $ff                                           ; $771f: $fe $ff
	ret nc                                           ; $7721: $d0

	ld a, $fe                                        ; $7722: $3e $fe
	ei                                               ; $7724: $fb
	cp [hl]                                          ; $7725: $be
	jr @+$14                                         ; $7726: $18 $12

	add hl, bc                                       ; $7728: $09
	ld [de], a                                       ; $7729: $12
	add hl, bc                                       ; $772a: $09
	cp [hl]                                          ; $772b: $be
	ei                                               ; $772c: $fb
	inc bc                                           ; $772d: $03
	ld [de], a                                       ; $772e: $12
	jr @+$0b                                         ; $772f: $18 $09

	jr jr_034_773c                                   ; $7731: $18 $09

	inc c                                            ; $7733: $0c
	ld [de], a                                       ; $7734: $12
	inc c                                            ; $7735: $0c
	add hl, bc                                       ; $7736: $09
	ld b, $12                                        ; $7737: $06 $12
	ld b, $18                                        ; $7739: $06 $18
	inc c                                            ; $773b: $0c

jr_034_773c:
	ei                                               ; $773c: $fb
	cp [hl]                                          ; $773d: $be
	jr jr_034_7752                                   ; $773e: $18 $12

jr_034_7740:
	add hl, bc                                       ; $7740: $09
	ld [de], a                                       ; $7741: $12
	add hl, bc                                       ; $7742: $09
	cp [hl]                                          ; $7743: $be
	ei                                               ; $7744: $fb
	inc bc                                           ; $7745: $03
	ld [de], a                                       ; $7746: $12
	jr jr_034_7752                                   ; $7747: $18 $09

	jr @-$40                                         ; $7749: $18 $be

	inc c                                            ; $774b: $0c
	add hl, bc                                       ; $774c: $09
	ld [de], a                                       ; $774d: $12
	add hl, bc                                       ; $774e: $09
	ld [de], a                                       ; $774f: $12
	cp [hl]                                          ; $7750: $be
	ei                                               ; $7751: $fb

jr_034_7752:
	cp [hl]                                          ; $7752: $be
	jr jr_034_7767                                   ; $7753: $18 $12

	add hl, bc                                       ; $7755: $09
	ld [de], a                                       ; $7756: $12
	add hl, bc                                       ; $7757: $09
	cp [hl]                                          ; $7758: $be
	ei                                               ; $7759: $fb
	inc bc                                           ; $775a: $03
	ld [de], a                                       ; $775b: $12
	jr jr_034_7767                                   ; $775c: $18 $09

	jr jr_034_7769                                   ; $775e: $18 $09

	ld b, $12                                        ; $7760: $06 $12
	ld b, $12                                        ; $7762: $06 $12
	ld b, $13                                        ; $7764: $06 $13
	inc bc                                           ; $7766: $03

jr_034_7767:
	inc de                                           ; $7767: $13
	inc bc                                           ; $7768: $03

jr_034_7769:
	inc c                                            ; $7769: $0c
	ld b, $13                                        ; $776a: $06 $13
	ld b, $19                                        ; $776c: $06 $19
	inc c                                            ; $776e: $0c
	jr jr_034_777d                                   ; $776f: $18 $0c

	cp [hl]                                          ; $7771: $be
	ld b, $09                                        ; $7772: $06 $09
	ld [de], a                                       ; $7774: $12
	ld c, a                                          ; $7775: $4f
	ld d, $0b                                        ; $7776: $16 $0b
	ld [de], a                                       ; $7778: $12
	dec bc                                           ; $7779: $0b
	ld [de], a                                       ; $777a: $12
	add hl, bc                                       ; $777b: $09
	dec bc                                           ; $777c: $0b

jr_034_777d:
	ld c, a                                          ; $777d: $4f
	ld [de], a                                       ; $777e: $12
	dec bc                                           ; $777f: $0b
	jr jr_034_7740                                   ; $7780: $18 $be

	dec bc                                           ; $7782: $0b
	ld b, $12                                        ; $7783: $06 $12
	ld b, $09                                        ; $7785: $06 $09
	ld b, $17                                        ; $7787: $06 $17
	inc bc                                           ; $7789: $03
	ld d, $03                                        ; $778a: $16 $03
	cp [hl]                                          ; $778c: $be
	ld b, $4f                                        ; $778d: $06 $4f
	ld d, $0b                                        ; $778f: $16 $0b
	ld [de], a                                       ; $7791: $12
	dec bc                                           ; $7792: $0b
	ld [de], a                                       ; $7793: $12
	add hl, bc                                       ; $7794: $09
	dec bc                                           ; $7795: $0b
	ld c, a                                          ; $7796: $4f
	ld [de], a                                       ; $7797: $12
	dec bc                                           ; $7798: $0b
	ld d, $be                                        ; $7799: $16 $be
	cp [hl]                                          ; $779b: $be
	ld b, $0b                                        ; $779c: $06 $0b
	ld [de], a                                       ; $779e: $12
	add hl, bc                                       ; $779f: $09
	ld [de], a                                       ; $77a0: $12
	ld c, a                                          ; $77a1: $4f
	ld d, $0b                                        ; $77a2: $16 $0b

jr_034_77a4:
	ld [de], a                                       ; $77a4: $12
	cp [hl]                                          ; $77a5: $be
	cp [hl]                                          ; $77a6: $be
	ld b, $0b                                        ; $77a7: $06 $0b
	ld [de], a                                       ; $77a9: $12
	add hl, bc                                       ; $77aa: $09
	dec bc                                           ; $77ab: $0b
	ld c, a                                          ; $77ac: $4f
	dec bc                                           ; $77ad: $0b
	ld c, a                                          ; $77ae: $4f
	cp [hl]                                          ; $77af: $be
	dec bc                                           ; $77b0: $0b
	inc bc                                           ; $77b1: $03
	ld [de], a                                       ; $77b2: $12
	inc bc                                           ; $77b3: $03
	cp [hl]                                          ; $77b4: $be
	ld b, $0b                                        ; $77b5: $06 $0b
	ld [de], a                                       ; $77b7: $12
	ld c, a                                          ; $77b8: $4f
	ld [de], a                                       ; $77b9: $12
	dec bc                                           ; $77ba: $0b
	ld [de], a                                       ; $77bb: $12
	ld c, a                                          ; $77bc: $4f
	ld [de], a                                       ; $77bd: $12
	dec bc                                           ; $77be: $0b
	cp [hl]                                          ; $77bf: $be
	ld c, $02                                        ; $77c0: $0e $02
	ld c, $02                                        ; $77c2: $0e $02
	ld c, $02                                        ; $77c4: $0e $02
	cp [hl]                                          ; $77c6: $be
	ld b, $4f                                        ; $77c7: $06 $4f
	ld [de], a                                       ; $77c9: $12
	ld c, a                                          ; $77ca: $4f
	inc c                                            ; $77cb: $0c
	dec bc                                           ; $77cc: $0b
	ld [de], a                                       ; $77cd: $12
	cp [hl]                                          ; $77ce: $be
	dec bc                                           ; $77cf: $0b
	inc c                                            ; $77d0: $0c
	add hl, bc                                       ; $77d1: $09
	ld b, $17                                        ; $77d2: $06 $17
	inc bc                                           ; $77d4: $03
	ld d, $03                                        ; $77d5: $16 $03
	cp [hl]                                          ; $77d7: $be
	ld b, $4f                                        ; $77d8: $06 $4f
	ld d, $0b                                        ; $77da: $16 $0b
	ld [de], a                                       ; $77dc: $12
	dec bc                                           ; $77dd: $0b
	ld [de], a                                       ; $77de: $12
	add hl, bc                                       ; $77df: $09
	dec bc                                           ; $77e0: $0b
	ld c, a                                          ; $77e1: $4f
	ld [de], a                                       ; $77e2: $12
	dec bc                                           ; $77e3: $0b
	jr jr_034_77a4                                   ; $77e4: $18 $be

	cp [hl]                                          ; $77e6: $be
	ld b, $0b                                        ; $77e7: $06 $0b
	ld [de], a                                       ; $77e9: $12
	add hl, bc                                       ; $77ea: $09
	ld [de], a                                       ; $77eb: $12
	ld c, a                                          ; $77ec: $4f
	ld d, $0b                                        ; $77ed: $16 $0b
	ld [de], a                                       ; $77ef: $12
	dec bc                                           ; $77f0: $0b
	ld [de], a                                       ; $77f1: $12
	add hl, bc                                       ; $77f2: $09
	add hl, bc                                       ; $77f3: $09
	dec bc                                           ; $77f4: $0b
	ld d, $4f                                        ; $77f5: $16 $4f
	add hl, bc                                       ; $77f7: $09
	cp [hl]                                          ; $77f8: $be
	dec bc                                           ; $77f9: $0b
	ld b, $12                                        ; $77fa: $06 $12
	ld b, $09                                        ; $77fc: $06 $09
	ld b, $17                                        ; $77fe: $06 $17
	inc bc                                           ; $7800: $03
	ld d, $03                                        ; $7801: $16 $03
	cp [hl]                                          ; $7803: $be
	ld b, $4f                                        ; $7804: $06 $4f
	ld d, $0b                                        ; $7806: $16 $0b
	ld [de], a                                       ; $7808: $12
	dec bc                                           ; $7809: $0b
	ld [de], a                                       ; $780a: $12
	add hl, bc                                       ; $780b: $09
	dec bc                                           ; $780c: $0b
	ld c, a                                          ; $780d: $4f
	cp [hl]                                          ; $780e: $be
	add hl, bc                                       ; $780f: $09
	inc bc                                           ; $7810: $03
	ld [de], a                                       ; $7811: $12
	inc bc                                           ; $7812: $03
	dec bc                                           ; $7813: $0b
	ld b, $12                                        ; $7814: $06 $12
	ld b, $be                                        ; $7816: $06 $be
	inc c                                            ; $7818: $0c
	add hl, bc                                       ; $7819: $09
	dec bc                                           ; $781a: $0b
	inc de                                           ; $781b: $13
	ld [de], a                                       ; $781c: $12
	cp [hl]                                          ; $781d: $be
	add hl, bc                                       ; $781e: $09
	ld b, $12                                        ; $781f: $06 $12
	inc bc                                           ; $7821: $03
	ld [de], a                                       ; $7822: $12
	inc bc                                           ; $7823: $03
	add hl, bc                                       ; $7824: $09
	ld b, $12                                        ; $7825: $06 $12
	ld b, $18                                        ; $7827: $06 $18

jr_034_7829:
	jr jr_034_7829                                   ; $7829: $18 $fe

	rst $38                                          ; $782b: $ff
	or h                                             ; $782c: $b4
	jp nc, $02f1                                     ; $782d: $d2 $f1 $02

	nop                                              ; $7830: $00

jr_034_7831:
	jr nc, jr_034_7831                               ; $7831: $30 $fe

	ei                                               ; $7833: $fb
	push bc                                          ; $7834: $c5
	jr c, @+$08                                      ; $7835: $38 $06

	jp nz, $0638                                     ; $7837: $c2 $38 $06

	push bc                                          ; $783a: $c5
	inc l                                            ; $783b: $2c
	ld b, $c2                                        ; $783c: $06 $c2
	jr c, @+$08                                      ; $783e: $38 $06

	push bc                                          ; $7840: $c5
	ld sp, $c206                                     ; $7841: $31 $06 $c2
	inc l                                            ; $7844: $2c
	ld b, $c5                                        ; $7845: $06 $c5
	dec [hl]                                         ; $7847: $35
	ld b, $c2                                        ; $7848: $06 $c2
	ld sp, $fb06                                     ; $784a: $31 $06 $fb
	inc b                                            ; $784d: $04
	ei                                               ; $784e: $fb
	push bc                                          ; $784f: $c5
	jr c, @+$08                                      ; $7850: $38 $06

	jp nz, $0638                                     ; $7852: $c2 $38 $06

	push bc                                          ; $7855: $c5
	cpl                                              ; $7856: $2f
	ld b, $c2                                        ; $7857: $06 $c2
	jr c, @+$08                                      ; $7859: $38 $06

	push bc                                          ; $785b: $c5
	inc sp                                           ; $785c: $33
	ld b, $c2                                        ; $785d: $06 $c2
	cpl                                              ; $785f: $2f
	ld b, $c5                                        ; $7860: $06 $c5
	ld [hl], $06                                     ; $7862: $36 $06
	jp nz, $0633                                     ; $7864: $c2 $33 $06

	ei                                               ; $7867: $fb
	inc b                                            ; $7868: $04
	ei                                               ; $7869: $fb
	push bc                                          ; $786a: $c5
	ld [hl], $06                                     ; $786b: $36 $06
	jp nz, $0636                                     ; $786d: $c2 $36 $06

	push bc                                          ; $7870: $c5
	ld a, [hl+]                                      ; $7871: $2a
	ld b, $c2                                        ; $7872: $06 $c2
	ld [hl], $06                                     ; $7874: $36 $06
	push bc                                          ; $7876: $c5
	ld l, $06                                        ; $7877: $2e $06
	jp nz, $062a                                     ; $7879: $c2 $2a $06

	push bc                                          ; $787c: $c5
	ld sp, $c206                                     ; $787d: $31 $06 $c2
	ld l, $06                                        ; $7880: $2e $06
	ei                                               ; $7882: $fb
	inc b                                            ; $7883: $04
	ei                                               ; $7884: $fb
	push bc                                          ; $7885: $c5
	jr c, @+$08                                      ; $7886: $38 $06

	jp nz, $0638                                     ; $7888: $c2 $38 $06

jr_034_788b:
	push bc                                          ; $788b: $c5
	inc l                                            ; $788c: $2c
	ld b, $c2                                        ; $788d: $06 $c2
	jr c, jr_034_7897                                ; $788f: $38 $06

	push bc                                          ; $7891: $c5

jr_034_7892:
	jr nc, @+$08                                     ; $7892: $30 $06

	jp nz, $062c                                     ; $7894: $c2 $2c $06

jr_034_7897:
	push bc                                          ; $7897: $c5
	inc sp                                           ; $7898: $33
	ld b, $c2                                        ; $7899: $06 $c2
	jr nc, @+$08                                     ; $789b: $30 $06

	ei                                               ; $789d: $fb
	inc b                                            ; $789e: $04
	cp $ff                                           ; $789f: $fe $ff
	or h                                             ; $78a1: $b4
	jp nc, $00a1                                     ; $78a2: $d2 $a1 $00

	nop                                              ; $78a5: $00
	jr jr_034_78d4                                   ; $78a6: $18 $2c

	inc c                                            ; $78a8: $0c
	ld a, [hl+]                                      ; $78a9: $2a
	inc c                                            ; $78aa: $0c
	cp $fd                                           ; $78ab: $fe $fd
	xor c                                            ; $78ad: $a9
	ld a, c                                          ; $78ae: $79
	inc l                                            ; $78af: $2c
	ld [de], a                                       ; $78b0: $12
	call nz, $062c                                   ; $78b1: $c4 $2c $06
	jp z, $0c31                                      ; $78b4: $ca $31 $0c

	call nz, $0c31                                   ; $78b7: $c4 $31 $0c

jr_034_78ba:
	rst JumpTable                                          ; $78ba: $c7
	ld a, [hl]                                       ; $78bb: $7e
	dec e                                            ; $78bc: $1d
	inc h                                            ; $78bd: $24
	xor d                                            ; $78be: $aa
	cpl                                              ; $78bf: $2f
	inc a                                            ; $78c0: $3c
	call nz, $1d7e                                   ; $78c1: $c4 $7e $1d
	nop                                              ; $78c4: $00
	xor c                                            ; $78c5: $a9
	cpl                                              ; $78c6: $2f
	jr jr_034_788b                                   ; $78c7: $18 $c2

	cpl                                              ; $78c9: $2f
	inc c                                            ; $78ca: $0c
	ret                                              ; $78cb: $c9


	ld a, [hl]                                       ; $78cc: $7e
	nop                                              ; $78cd: $00
	xor c                                            ; $78ce: $a9
	ld l, $18                                        ; $78cf: $2e $18
	call nz, $0c2e                                   ; $78d1: $c4 $2e $0c

jr_034_78d4:
	jp z, $0c2c                                      ; $78d4: $ca $2c $0c

	jp z, $122e                                      ; $78d7: $ca $2e $12

	jp $062e                                         ; $78da: $c3 $2e $06


	jp z, $0c2c                                      ; $78dd: $ca $2c $0c

	jp $0c2c                                         ; $78e0: $c3 $2c $0c


jr_034_78e3:
	ret                                              ; $78e3: $c9


	ld a, [hl]                                       ; $78e4: $7e
	dec e                                            ; $78e5: $1d
	jr nc, jr_034_7892                               ; $78e6: $30 $aa

	ld a, [hl+]                                      ; $78e8: $2a
	inc a                                            ; $78e9: $3c
	ld a, [hl]                                       ; $78ea: $7e
	dec e                                            ; $78eb: $1d
	nop                                              ; $78ec: $00
	xor c                                            ; $78ed: $a9
	jp $182a                                         ; $78ee: $c3 $2a $18


	jp nz, $0c2a                                     ; $78f1: $c2 $2a $0c

	jp z, $007e                                      ; $78f4: $ca $7e $00

	xor c                                            ; $78f7: $a9
	ld l, $18                                        ; $78f8: $2e $18
	jp $0c2e                                         ; $78fa: $c3 $2e $0c


	jp z, $0c2f                                      ; $78fd: $ca $2f $0c

	ld l, $12                                        ; $7900: $2e $12
	call nz, $062e                                   ; $7902: $c4 $2e $06
	call z, $0c2c                                    ; $7905: $cc $2c $0c
	jp $0c2c                                         ; $7908: $c3 $2c $0c


	call z, $1d7e                                    ; $790b: $cc $7e $1d
	jr nc, jr_034_78ba                               ; $790e: $30 $aa

	inc l                                            ; $7910: $2c
	inc a                                            ; $7911: $3c
	jp $027e                                         ; $7912: $c3 $7e $02


	nop                                              ; $7915: $00
	xor c                                            ; $7916: $a9
	inc l                                            ; $7917: $2c
	inc h                                            ; $7918: $24
	jp nz, $182c                                     ; $7919: $c2 $2c $18

	ld a, [hl]                                       ; $791c: $7e
	nop                                              ; $791d: $00
	xor c                                            ; $791e: $a9
	jp z, $0c2c                                      ; $791f: $ca $2c $0c

	ld a, [hl+]                                      ; $7922: $2a
	inc c                                            ; $7923: $0c
	db $fd                                           ; $7924: $fd
	xor c                                            ; $7925: $a9
	ld a, c                                          ; $7926: $79
	jp z, $122c                                      ; $7927: $ca $2c $12

	jp $062c                                         ; $792a: $c3 $2c $06


	ret                                              ; $792d: $c9


	ld sp, $c30c                                     ; $792e: $31 $0c $c3
	ld sp, $c90c                                     ; $7931: $31 $0c $c9
	ld a, [hl]                                       ; $7934: $7e
	dec e                                            ; $7935: $1d
	jr nc, jr_034_78e3                               ; $7936: $30 $ab

	inc sp                                           ; $7938: $33
	inc a                                            ; $7939: $3c
	jp $1d7e                                         ; $793a: $c3 $7e $1d


	nop                                              ; $793d: $00
	xor d                                            ; $793e: $aa
	inc sp                                           ; $793f: $33
	jr @-$3c                                         ; $7940: $18 $c2

	inc sp                                           ; $7942: $33
	inc c                                            ; $7943: $0c
	ret z                                            ; $7944: $c8

	ld a, [hl]                                       ; $7945: $7e
	nop                                              ; $7946: $00
	and b                                            ; $7947: $a0
	ld [hl], $18                                     ; $7948: $36 $18
	jp $0c36                                         ; $794a: $c3 $36 $0c


	jp z, $0c36                                      ; $794d: $ca $36 $0c

	ret                                              ; $7950: $c9


	dec [hl]                                         ; $7951: $35
	ld [de], a                                       ; $7952: $12
	jp $0635                                         ; $7953: $c3 $35 $06


	ret                                              ; $7956: $c9


	ld sp, $c312                                     ; $7957: $31 $12 $c3
	ld sp, $c806                                     ; $795a: $31 $06 $c8
	ld l, $12                                        ; $795d: $2e $12
	jp nz, $062e                                     ; $795f: $c2 $2e $06

	jp z, $122a                                      ; $7962: $ca $2a $12

	jp $062a                                         ; $7965: $c3 $2a $06


	jp z, $1225                                      ; $7968: $ca $25 $12

	jp $0625                                         ; $796b: $c3 $25 $06


jr_034_796e:
	sra d                                            ; $796e: $cb $2a
	ld [de], a                                       ; $7970: $12
	call nz, $062a                                   ; $7971: $c4 $2a $06
	ret                                              ; $7974: $c9


	ld l, $12                                        ; $7975: $2e $12
	jp $062e                                         ; $7977: $c3 $2e $06


	ret                                              ; $797a: $c9


	dec [hl]                                         ; $797b: $35
	ld [de], a                                       ; $797c: $12
	jp $0635                                         ; $797d: $c3 $35 $06


	jp z, $1d7e                                      ; $7980: $ca $7e $1d

	inc h                                            ; $7983: $24
	xor d                                            ; $7984: $aa

jr_034_7985:
	inc sp                                           ; $7985: $33
	jr nc, @-$3b                                     ; $7986: $30 $c3

	ld a, [hl]                                       ; $7988: $7e
	dec e                                            ; $7989: $1d
	nop                                              ; $798a: $00

jr_034_798b:
	xor c                                            ; $798b: $a9
	inc sp                                           ; $798c: $33
	jr @-$35                                         ; $798d: $18 $c9

	ld a, [hl]                                       ; $798f: $7e
	nop                                              ; $7990: $00
	xor c                                            ; $7991: $a9
	jr nc, @+$0e                                     ; $7992: $30 $0c

	ld l, $0c                                        ; $7994: $2e $0c
	ld a, [hl]                                       ; $7996: $7e
	dec e                                            ; $7997: $1d
	inc h                                            ; $7998: $24
	xor d                                            ; $7999: $aa
	jr nc, jr_034_79cc                               ; $799a: $30 $30

	jp $1830                                         ; $799c: $c3 $30 $18


	jp z, $007e                                      ; $799f: $ca $7e $00

	xor c                                            ; $79a2: $a9
	inc l                                            ; $79a3: $2c
	inc c                                            ; $79a4: $0c
	ld a, [hl+]                                      ; $79a5: $2a
	inc c                                            ; $79a6: $0c
	cp $ff                                           ; $79a7: $fe $ff
	pop de                                           ; $79a9: $d1
	jp z, $1d7e                                      ; $79aa: $ca $7e $1d

	inc h                                            ; $79ad: $24
	xor d                                            ; $79ae: $aa
	inc l                                            ; $79af: $2c
	jr nc, @-$3a                                     ; $79b0: $30 $c4

	ld a, [hl]                                       ; $79b2: $7e
	dec e                                            ; $79b3: $1d
	nop                                              ; $79b4: $00
	xor c                                            ; $79b5: $a9
	inc l                                            ; $79b6: $2c
	jr jr_034_7985                                   ; $79b7: $18 $cc

	ld a, [hl]                                       ; $79b9: $7e
	nop                                              ; $79ba: $00
	and b                                            ; $79bb: $a0
	dec h                                            ; $79bc: $25
	inc c                                            ; $79bd: $0c
	inc h                                            ; $79be: $24
	inc c                                            ; $79bf: $0c
	ld a, [hl]                                       ; $79c0: $7e
	dec e                                            ; $79c1: $1d
	jr nc, jr_034_796e                               ; $79c2: $30 $aa

	dec h                                            ; $79c4: $25
	jr nc, jr_034_798b                               ; $79c5: $30 $c4

	ld a, [hl]                                       ; $79c7: $7e
	dec e                                            ; $79c8: $1d
	nop                                              ; $79c9: $00
	and b                                            ; $79ca: $a0
	dec h                                            ; $79cb: $25

jr_034_79cc:
	jr @+$80                                         ; $79cc: $18 $7e

	nop                                              ; $79ce: $00
	and b                                            ; $79cf: $a0
	jp z, $0c2c                                      ; $79d0: $ca $2c $0c

	ld a, [hl+]                                      ; $79d3: $2a
	inc c                                            ; $79d4: $0c
	db $fd                                           ; $79d5: $fd
	or h                                             ; $79d6: $b4
	jp nc, $1821                                     ; $79d7: $d2 $21 $18

	nop                                              ; $79da: $00

jr_034_79db:
	jr nc, jr_034_79db                               ; $79db: $30 $fe

	db $fd                                           ; $79dd: $fd
	push hl                                          ; $79de: $e5
	ld a, c                                          ; $79df: $79
	db $fd                                           ; $79e0: $fd
	push hl                                          ; $79e1: $e5
	ld a, c                                          ; $79e2: $79
	cp $ff                                           ; $79e3: $fe $ff
	pop de                                           ; $79e5: $d1
	jp nz, $0dfb                                     ; $79e6: $c2 $fb $0d

	jr @-$38                                         ; $79e9: $18 $c6

	dec c                                            ; $79eb: $0d
	ld d, $00                                        ; $79ec: $16 $00
	ld [bc], a                                       ; $79ee: $02
	jp nz, $180d                                     ; $79ef: $c2 $0d $18

	add $0d                                          ; $79f2: $c6 $0d
	ld d, $00                                        ; $79f4: $16 $00
	ld [bc], a                                       ; $79f6: $02
	jp nz, $180d                                     ; $79f7: $c2 $0d $18

	add $01                                          ; $79fa: $c6 $01
	ld d, $00                                        ; $79fc: $16 $00
	ld [bc], a                                       ; $79fe: $02
	jp nz, $160d                                     ; $79ff: $c2 $0d $16

	nop                                              ; $7a02: $00
	ld [bc], a                                       ; $7a03: $02
	dec c                                            ; $7a04: $0d
	ld a, [bc]                                       ; $7a05: $0a
	nop                                              ; $7a06: $00
	ld [bc], a                                       ; $7a07: $02
	ld a, a                                          ; $7a08: $7f
	inc e                                            ; $7a09: $1c

jr_034_7a0a:
	add hl, de                                       ; $7a0a: $19
	inc c                                            ; $7a0b: $0c
	ld a, a                                          ; $7a0c: $7f
	jr jr_034_7a0a                                   ; $7a0d: $18 $fb

	ld [bc], a                                       ; $7a0f: $02
	ld b, $18                                        ; $7a10: $06 $18
	add $06                                          ; $7a12: $c6 $06
	ld d, $00                                        ; $7a14: $16 $00
	ld [bc], a                                       ; $7a16: $02
	jp nz, $1806                                     ; $7a17: $c2 $06 $18

	add $06                                          ; $7a1a: $c6 $06
	ld d, $00                                        ; $7a1c: $16 $00
	ld [bc], a                                       ; $7a1e: $02
	jp nz, $1806                                     ; $7a1f: $c2 $06 $18

	add $06                                          ; $7a22: $c6 $06
	ld d, $00                                        ; $7a24: $16 $00
	ld [bc], a                                       ; $7a26: $02
	jp nz, $1606                                     ; $7a27: $c2 $06 $16

	nop                                              ; $7a2a: $00
	ld [bc], a                                       ; $7a2b: $02
	ld b, $0a                                        ; $7a2c: $06 $0a
	nop                                              ; $7a2e: $00
	ld [bc], a                                       ; $7a2f: $02
	ld [de], a                                       ; $7a30: $12
	inc c                                            ; $7a31: $0c
	jp nz, $1808                                     ; $7a32: $c2 $08 $18

	add $08                                          ; $7a35: $c6 $08
	ld d, $00                                        ; $7a37: $16 $00
	ld [bc], a                                       ; $7a39: $02
	jp nz, $1808                                     ; $7a3a: $c2 $08 $18

	add $08                                          ; $7a3d: $c6 $08
	ld d, $00                                        ; $7a3f: $16 $00
	ld [bc], a                                       ; $7a41: $02
	jp nz, $1808                                     ; $7a42: $c2 $08 $18

	add $08                                          ; $7a45: $c6 $08
	ld d, $00                                        ; $7a47: $16 $00
	ld [bc], a                                       ; $7a49: $02
	jp nz, $1608                                     ; $7a4a: $c2 $08 $16

	nop                                              ; $7a4d: $00
	ld [bc], a                                       ; $7a4e: $02
	ld [$000a], sp                                   ; $7a4f: $08 $0a $00
	ld [bc], a                                       ; $7a52: $02
	inc d                                            ; $7a53: $14
	inc c                                            ; $7a54: $0c
	db $fd                                           ; $7a55: $fd
	ret nc                                           ; $7a56: $d0

	jp nc, $06be                                     ; $7a57: $d2 $be $06

	inc hl                                           ; $7a5a: $23
	inc hl                                           ; $7a5b: $23
	inc hl                                           ; $7a5c: $23
	ld [hl+], a                                      ; $7a5d: $22
	ld [hl+], a                                      ; $7a5e: $22
	ld [hl+], a                                      ; $7a5f: $22
	ld hl, $be21                                     ; $7a60: $21 $21 $be
	cp $fb                                           ; $7a63: $fe $fb
	db $fd                                           ; $7a65: $fd
	ld l, h                                          ; $7a66: $6c
	ld a, d                                          ; $7a67: $7a
	ei                                               ; $7a68: $fb
	ld [$fffe], sp                                   ; $7a69: $08 $fe $ff
	jr nz, jr_034_7a86                               ; $7a6c: $20 $18

	cp [hl]                                          ; $7a6e: $be
	ld b, $23                                        ; $7a6f: $06 $23
	ld [hl+], a                                      ; $7a71: $22
	ld hl, $be20                                     ; $7a72: $21 $20 $be
	jr nz, jr_034_7aa7                               ; $7a75: $20 $30

	jr nz, @+$32                                     ; $7a77: $20 $30

	jr nz, jr_034_7a93                               ; $7a79: $20 $18

	cp [hl]                                          ; $7a7b: $be
	ld b, $23                                        ; $7a7c: $06 $23
	ld [hl+], a                                      ; $7a7e: $22
	ld hl, $be20                                     ; $7a7f: $21 $20 $be
	db $fd                                           ; $7a82: $fd
	or [hl]                                          ; $7a83: $b6
	sub [hl]                                         ; $7a84: $96
	pop bc                                           ; $7a85: $c1

jr_034_7a86:
	inc bc                                           ; $7a86: $03
	ld [hl-], a                                      ; $7a87: $32
	inc bc                                           ; $7a88: $03
	ld a, [hl]                                       ; $7a89: $7e
	inc l                                            ; $7a8a: $2c
	nop                                              ; $7a8b: $00
	inc e                                            ; $7a8c: $1c
	jr @-$68                                         ; $7a8d: $18 $96

	ret z                                            ; $7a8f: $c8

	ld bc, $071c                                     ; $7a90: $01 $1c $07

jr_034_7a93:
	nop                                              ; $7a93: $00
	ld bc, $071c                                     ; $7a94: $01 $1c $07
	nop                                              ; $7a97: $00
	ld bc, $071c                                     ; $7a98: $01 $1c $07
	nop                                              ; $7a9b: $00
	ld bc, $08be                                     ; $7a9c: $01 $be $08
	dec de                                           ; $7a9f: $1b
	dec de                                           ; $7aa0: $1b
	dec de                                           ; $7aa1: $1b
	ld e, $1e                                        ; $7aa2: $1e $1e
	ld e, $be                                        ; $7aa4: $1e $be
	cp [hl]                                          ; $7aa6: $be

jr_034_7aa7:
	ld [$1d1d], sp                                   ; $7aa7: $08 $1d $1d
	dec e                                            ; $7aaa: $1d
	inc hl                                           ; $7aab: $23
	inc hl                                           ; $7aac: $23
	cp [hl]                                          ; $7aad: $be
	or c                                             ; $7aae: $b1
	sub c                                            ; $7aaf: $91
	ld e, d                                          ; $7ab0: $5a
	rlca                                             ; $7ab1: $07
	inc hl                                           ; $7ab2: $23

jr_034_7ab3:
	ld d, b                                          ; $7ab3: $50
	rst $38                                          ; $7ab4: $ff
	or [hl]                                          ; $7ab5: $b6
	sub [hl]                                         ; $7ab6: $96
	pop bc                                           ; $7ab7: $c1
	inc bc                                           ; $7ab8: $03
	ld [hl-], a                                      ; $7ab9: $32
	inc bc                                           ; $7aba: $03
	ld a, [hl]                                       ; $7abb: $7e
	inc l                                            ; $7abc: $2c
	nop                                              ; $7abd: $00
	jr nz, jr_034_7ad8                               ; $7abe: $20 $18

	sub [hl]                                         ; $7ac0: $96
	ret z                                            ; $7ac1: $c8

	ld bc, $0720                                     ; $7ac2: $01 $20 $07
	nop                                              ; $7ac5: $00
	ld bc, $0720                                     ; $7ac6: $01 $20 $07
	nop                                              ; $7ac9: $00
	ld bc, $0720                                     ; $7aca: $01 $20 $07
	nop                                              ; $7acd: $00
	ld bc, $08be                                     ; $7ace: $01 $be $08
	rra                                              ; $7ad1: $1f
	rra                                              ; $7ad2: $1f
	rra                                              ; $7ad3: $1f
	ld [hl+], a                                      ; $7ad4: $22
	ld [hl+], a                                      ; $7ad5: $22
	ld [hl+], a                                      ; $7ad6: $22
	cp [hl]                                          ; $7ad7: $be

jr_034_7ad8:
	cp [hl]                                          ; $7ad8: $be
	ld [$2121], sp                                   ; $7ad9: $08 $21 $21
	ld hl, $2727                                     ; $7adc: $21 $27 $27
	cp [hl]                                          ; $7adf: $be
	or c                                             ; $7ae0: $b1
	sub c                                            ; $7ae1: $91

jr_034_7ae2:
	ld e, d                                          ; $7ae2: $5a
	rlca                                             ; $7ae3: $07
	daa                                              ; $7ae4: $27
	ld d, b                                          ; $7ae5: $50
	rst $38                                          ; $7ae6: $ff
	or h                                             ; $7ae7: $b4
	sub [hl]                                         ; $7ae8: $96
	ld hl, $be25                                     ; $7ae9: $21 $25 $be
	inc bc                                           ; $7aec: $03
	rlca                                             ; $7aed: $07
	ld a, [bc]                                       ; $7aee: $0a
	ld c, $10                                        ; $7aef: $0e $10
	cp [hl]                                          ; $7af1: $be
	inc d                                            ; $7af2: $14
	jr jr_034_7ab3                                   ; $7af3: $18 $be

	inc bc                                           ; $7af5: $03
	ld [de], a                                       ; $7af6: $12
	rrca                                             ; $7af7: $0f
	inc c                                            ; $7af8: $0c
	ld a, [bc]                                       ; $7af9: $0a
	cp [hl]                                          ; $7afa: $be
	cp [hl]                                          ; $7afb: $be
	inc bc                                           ; $7afc: $03
	ld [$0c0a], sp                                   ; $7afd: $08 $0a $0c
	db $10                                           ; $7b00: $10
	ld [de], a                                       ; $7b01: $12
	inc d                                            ; $7b02: $14
	ld d, $be                                        ; $7b03: $16 $be
	rla                                              ; $7b05: $17
	dec d                                            ; $7b06: $15
	ld [$0303], sp                                   ; $7b07: $08 $03 $03
	inc bc                                           ; $7b0a: $03
	cp [hl]                                          ; $7b0b: $be
	inc bc                                           ; $7b0c: $03
	ld bc, $0804                                     ; $7b0d: $01 $04 $08
	dec bc                                           ; $7b10: $0b
	dec c                                            ; $7b11: $0d
	ld [de], a                                       ; $7b12: $12
	ld d, $be                                        ; $7b13: $16 $be
	sub [hl]                                         ; $7b15: $96
	ld bc, $7e05                                     ; $7b16: $01 $05 $7e
	inc l                                            ; $7b19: $2c
	ld e, $a4                                        ; $7b1a: $1e $a4
	dec de                                           ; $7b1c: $1b
	ld d, b                                          ; $7b1d: $50
	rst $38                                          ; $7b1e: $ff
	ret nc                                           ; $7b1f: $d0

	sub [hl]                                         ; $7b20: $96
	scf                                              ; $7b21: $37
	jr jr_034_7ae2                                   ; $7b22: $18 $be

	ld [$403e], sp                                   ; $7b24: $08 $3e $40
	ld a, $3b                                        ; $7b27: $3e $3b
	cp [hl]                                          ; $7b29: $be
	ld a, $10                                        ; $7b2a: $3e $10
	ld [hl-], a                                      ; $7b2c: $32
	ld [$1040], sp                                   ; $7b2d: $08 $40 $10
	dec sp                                           ; $7b30: $3b
	ld [$0834], sp                                   ; $7b31: $08 $34 $08
	ld a, $08                                        ; $7b34: $3e $08
	dec [hl]                                         ; $7b36: $35
	ld h, h                                          ; $7b37: $64
	rst $38                                          ; $7b38: $ff
	or [hl]                                          ; $7b39: $b6
	sub c                                            ; $7b3a: $91
	jp $3201                                         ; $7b3b: $c3 $01 $32


	dec b                                            ; $7b3e: $05
	cp [hl]                                          ; $7b3f: $be
	ld b, $1f                                        ; $7b40: $06 $1f
	ld hl, $2422                                     ; $7b42: $21 $22 $24
	cp [hl]                                          ; $7b45: $be
	db $fd                                           ; $7b46: $fd
	push af                                          ; $7b47: $f5
	ld a, e                                          ; $7b48: $7b
	jp z, $00d1                                      ; $7b49: $ca $d1 $00

	inc h                                            ; $7b4c: $24
	ld [hl+], a                                      ; $7b4d: $22
	inc c                                            ; $7b4e: $0c
	ld [hl+], a                                      ; $7b4f: $22
	inc c                                            ; $7b50: $0c
	ld [hl+], a                                      ; $7b51: $22
	inc c                                            ; $7b52: $0c
	ld [hl+], a                                      ; $7b53: $22

jr_034_7b54:
	jr jr_034_7b54                                   ; $7b54: $18 $fe

	db $fd                                           ; $7b56: $fd
	jr jr_034_7bd5                                   ; $7b57: $18 $7c

	db $fd                                           ; $7b59: $fd
	ld a, b                                          ; $7b5a: $78
	ld a, h                                          ; $7b5b: $7c
	db $fd                                           ; $7b5c: $fd
	ld a, b                                          ; $7b5d: $78
	ld a, h                                          ; $7b5e: $7c
	db $fd                                           ; $7b5f: $fd
	jr @+$7e                                         ; $7b60: $18 $7c

	db $fd                                           ; $7b62: $fd
	ld a, b                                          ; $7b63: $78
	ld a, h                                          ; $7b64: $7c
	cp [hl]                                          ; $7b65: $be
	inc c                                            ; $7b66: $0c
	ld a, [hl+]                                      ; $7b67: $2a
	ld l, $2c                                        ; $7b68: $2e $2c
	ld sp, $2930                                     ; $7b6a: $31 $30 $29
	cp [hl]                                          ; $7b6d: $be
	call Call_034_7e91                               ; $7b6e: $cd $91 $7e
	nop                                              ; $7b71: $00
	cp [hl]                                          ; $7b72: $be
	ld b, $1f                                        ; $7b73: $06 $1f
	ld hl, $2422                                     ; $7b75: $21 $22 $24
	cp [hl]                                          ; $7b78: $be
	db $fd                                           ; $7b79: $fd
	push af                                          ; $7b7a: $f5
	ld a, e                                          ; $7b7b: $7b
	call z, $00d1                                    ; $7b7c: $cc $d1 $00
	inc h                                            ; $7b7f: $24
	ld [hl+], a                                      ; $7b80: $22
	inc c                                            ; $7b81: $0c
	ld [hl+], a                                      ; $7b82: $22
	inc c                                            ; $7b83: $0c
	ld [hl+], a                                      ; $7b84: $22
	inc c                                            ; $7b85: $0c

jr_034_7b86:
	ld [hl+], a                                      ; $7b86: $22
	jr jr_034_7b86                                   ; $7b87: $18 $fd

	push af                                          ; $7b89: $f5
	ld a, e                                          ; $7b8a: $7b
	jp z, $00d1                                      ; $7b8b: $ca $d1 $00

	inc h                                            ; $7b8e: $24
	cp [hl]                                          ; $7b8f: $be
	inc c                                            ; $7b90: $0c
	dec l                                            ; $7b91: $2d
	dec l                                            ; $7b92: $2d
	inc l                                            ; $7b93: $2c
	dec hl                                           ; $7b94: $2b
	inc l                                            ; $7b95: $2c
	cp [hl]                                          ; $7b96: $be
	or l                                             ; $7b97: $b5
	ldh a, [c]                                       ; $7b98: $f2
	ld bc, $03ff                                     ; $7b99: $01 $ff $03
	ld hl, $150c                                     ; $7b9c: $21 $0c $15
	dec bc                                           ; $7b9f: $0b
	nop                                              ; $7ba0: $00
	ld bc, $0c15                                     ; $7ba1: $01 $15 $0c

jr_034_7ba4:
	ld hl, $150c                                     ; $7ba4: $21 $0c $15
	dec bc                                           ; $7ba7: $0b
	nop                                              ; $7ba8: $00
	ld bc, $0c15                                     ; $7ba9: $01 $15 $0c
	ld hl, $ca0c                                     ; $7bac: $21 $0c $ca
	ld [hl+], a                                      ; $7baf: $22
	inc c                                            ; $7bb0: $0c
	rst GetHLinHL                                          ; $7bb1: $cf
	ld [hl+], a                                      ; $7bb2: $22
	inc c                                            ; $7bb3: $0c
	ld d, $0b                                        ; $7bb4: $16 $0b
	nop                                              ; $7bb6: $00
	ld bc, $0c16                                     ; $7bb7: $01 $16 $0c
	ld [hl+], a                                      ; $7bba: $22
	inc c                                            ; $7bbb: $0c
	ld d, $0b                                        ; $7bbc: $16 $0b
	nop                                              ; $7bbe: $00
	ld bc, $0c16                                     ; $7bbf: $01 $16 $0c
	ld [hl+], a                                      ; $7bc2: $22
	inc c                                            ; $7bc3: $0c
	ld d, $0c                                        ; $7bc4: $16 $0c
	or l                                             ; $7bc6: $b5
	sub e                                            ; $7bc7: $93
	inc bc                                           ; $7bc8: $03
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	nop                                              ; $7bcb: $00
	ld de, $1829                                     ; $7bcc: $11 $29 $18
	inc h                                            ; $7bcf: $24
	jr jr_034_7ba4                                   ; $7bd0: $18 $d2

	daa                                              ; $7bd2: $27
	jr jr_034_7bf7                                   ; $7bd3: $18 $22

jr_034_7bd5:
	jr @-$2b                                         ; $7bd5: $18 $d3

	dec h                                            ; $7bd7: $25
	jr jr_034_7bfb                                   ; $7bd8: $18 $21

	jr @-$2c                                         ; $7bda: $18 $d2

	inc h                                            ; $7bdc: $24
	jr @+$20                                         ; $7bdd: $18 $1e

	rlca                                             ; $7bdf: $07
	rst GetHLinHL                                          ; $7be0: $cf
	ei                                               ; $7be1: $fb
	dec e                                            ; $7be2: $1d
	ld b, $1e                                        ; $7be3: $06 $1e
	ld b, $fb                                        ; $7be5: $06 $fb
	ld [$90d3], sp                                   ; $7be7: $08 $d3 $90
	sub a                                            ; $7bea: $97
	sbc c                                            ; $7beb: $99
	cp [hl]                                          ; $7bec: $be
	jr jr_034_7c0c                                   ; $7bed: $18 $1d

	dec de                                           ; $7bef: $1b

jr_034_7bf0:
	add hl, de                                       ; $7bf0: $19
	nop                                              ; $7bf1: $00
	cp [hl]                                          ; $7bf2: $be
	cp $ff                                           ; $7bf3: $fe $ff
	sub c                                            ; $7bf5: $91
	sub [hl]                                         ; $7bf6: $96

jr_034_7bf7:
	ld [hl-], a                                      ; $7bf7: $32
	ld [bc], a                                       ; $7bf8: $02
	set 2, c                                         ; $7bf9: $cb $d1

jr_034_7bfb:
	ld hl, $d30c                                     ; $7bfb: $21 $0c $d3
	ld hl, $c80c                                     ; $7bfe: $21 $0c $c8
	jp nc, $0c21                                     ; $7c01: $d2 $21 $0c

	set 2, c                                         ; $7c04: $cb $d1
	ld hl, $d20c                                     ; $7c06: $21 $0c $d2
	ld hl, $c80c                                     ; $7c09: $21 $0c $c8

jr_034_7c0c:
	db $d3                                           ; $7c0c: $d3
	ld hl, $cb0c                                     ; $7c0d: $21 $0c $cb
	pop de                                           ; $7c10: $d1
	ld hl, $c80c                                     ; $7c11: $21 $0c $c8
	db $d3                                           ; $7c14: $d3
	ld hl, $fd0c                                     ; $7c15: $21 $0c $fd
	or l                                             ; $7c18: $b5
	jp $3202                                         ; $7c19: $c3 $02 $32


	rlca                                             ; $7c1c: $07
	sub a                                            ; $7c1d: $97
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	inc c                                            ; $7c20: $0c
	add hl, hl                                       ; $7c21: $29
	jr nc, jr_034_7bf0                               ; $7c22: $30 $cc

	jp nc, $2422                                     ; $7c24: $d2 $22 $24

	ld e, $0c                                        ; $7c27: $1e $0c
	dec h                                            ; $7c29: $25
	inc c                                            ; $7c2a: $0c
	ld a, [hl+]                                      ; $7c2b: $2a
	inc h                                            ; $7c2c: $24
	dec h                                            ; $7c2d: $25
	inc c                                            ; $7c2e: $0c
	ld e, $18                                        ; $7c2f: $1e $18
	call z, $20d3                                    ; $7c31: $cc $d3 $20
	inc c                                            ; $7c34: $0c
	dec h                                            ; $7c35: $25
	inc c                                            ; $7c36: $0c
	inc l                                            ; $7c37: $2c
	inc h                                            ; $7c38: $24
	dec h                                            ; $7c39: $25
	inc c                                            ; $7c3a: $0c
	jr nz, @+$1a                                     ; $7c3b: $20 $18

	call z, $21d2                                    ; $7c3d: $cc $d2 $21
	inc c                                            ; $7c40: $0c
	dec h                                            ; $7c41: $25
	inc c                                            ; $7c42: $0c
	dec l                                            ; $7c43: $2d
	inc h                                            ; $7c44: $24
	dec h                                            ; $7c45: $25
	inc c                                            ; $7c46: $0c
	ld hl, $b118                                     ; $7c47: $21 $18 $b1
	and e                                            ; $7c4a: $a3
	ld [hl-], a                                      ; $7c4b: $32
	inc b                                            ; $7c4c: $04
	ld [hl+], a                                      ; $7c4d: $22
	inc c                                            ; $7c4e: $0c
	add hl, hl                                       ; $7c4f: $29
	inc c                                            ; $7c50: $0c
	inc l                                            ; $7c51: $2c
	inc c                                            ; $7c52: $0c
	jp z, $31d2                                      ; $7c53: $ca $d2 $31

	inc c                                            ; $7c56: $0c
	jr nc, jr_034_7c65                               ; $7c57: $30 $0c

	rst JumpTable                                          ; $7c59: $c7
	pop de                                           ; $7c5a: $d1
	inc l                                            ; $7c5b: $2c
	inc c                                            ; $7c5c: $0c
	add hl, hl                                       ; $7c5d: $29
	inc c                                            ; $7c5e: $0c
	ld [hl+], a                                      ; $7c5f: $22
	inc c                                            ; $7c60: $0c
	jp z, $27d2                                      ; $7c61: $ca $d2 $27

	inc c                                            ; $7c64: $0c

jr_034_7c65:
	dec hl                                           ; $7c65: $2b
	inc c                                            ; $7c66: $0c
	inc l                                            ; $7c67: $2c
	inc c                                            ; $7c68: $0c
	jp z, $2ed3                                      ; $7c69: $ca $d3 $2e

	inc c                                            ; $7c6c: $0c
	inc l                                            ; $7c6d: $2c
	inc c                                            ; $7c6e: $0c
	rst JumpTable                                          ; $7c6f: $c7
	pop de                                           ; $7c70: $d1
	dec hl                                           ; $7c71: $2b
	inc c                                            ; $7c72: $0c
	add hl, hl                                       ; $7c73: $29
	inc c                                            ; $7c74: $0c
	daa                                              ; $7c75: $27
	inc c                                            ; $7c76: $0c
	db $fd                                           ; $7c77: $fd
	add $d1                                          ; $7c78: $c6 $d1
	cp [hl]                                          ; $7c7a: $be
	inc c                                            ; $7c7b: $0c
	ld a, [hl+]                                      ; $7c7c: $2a
	ld l, $2c                                        ; $7c7d: $2e $2c
	ld sp, $2930                                     ; $7c7f: $31 $30 $29
	dec l                                            ; $7c82: $2d
	add hl, hl                                       ; $7c83: $29
	cp [hl]                                          ; $7c84: $be
	db $fd                                           ; $7c85: $fd
	or [hl]                                          ; $7c86: $b6
	sub c                                            ; $7c87: $91
	pop bc                                           ; $7c88: $c1
	ld bc, $0532                                     ; $7c89: $01 $32 $05
	cp [hl]                                          ; $7c8c: $be
	ld b, $22                                        ; $7c8d: $06 $22
	inc h                                            ; $7c8f: $24
	dec h                                            ; $7c90: $25
	daa                                              ; $7c91: $27
	cp [hl]                                          ; $7c92: $be
	db $fd                                           ; $7c93: $fd
	ld b, a                                          ; $7c94: $47
	ld a, l                                          ; $7c95: $7d
	jp z, $00d1                                      ; $7c96: $ca $d1 $00

	inc h                                            ; $7c99: $24
	ld a, [hl+]                                      ; $7c9a: $2a
	inc c                                            ; $7c9b: $0c
	ld a, [hl+]                                      ; $7c9c: $2a
	inc c                                            ; $7c9d: $0c
	ld a, [hl+]                                      ; $7c9e: $2a
	inc c                                            ; $7c9f: $0c
	ld a, [hl+]                                      ; $7ca0: $2a

jr_034_7ca1:
	jr jr_034_7ca1                                   ; $7ca1: $18 $fe

	or l                                             ; $7ca3: $b5
	pop de                                           ; $7ca4: $d1
	nop                                              ; $7ca5: $00
	ld [hl-], a                                      ; $7ca6: $32
	ld b, $7e                                        ; $7ca7: $06 $7e
	dec l                                            ; $7ca9: $2d
	inc d                                            ; $7caa: $14
	and d                                            ; $7cab: $a2
	db $fd                                           ; $7cac: $fd
	ld l, d                                          ; $7cad: $6a
	ld a, l                                          ; $7cae: $7d
	db $fd                                           ; $7caf: $fd
	sub l                                            ; $7cb0: $95
	ld a, l                                          ; $7cb1: $7d
	ld hl, $ca18                                     ; $7cb2: $21 $18 $ca
	ld a, [hl]                                       ; $7cb5: $7e
	inc l                                            ; $7cb6: $2c
	inc d                                            ; $7cb7: $14
	and b                                            ; $7cb8: $a0
	ld l, h                                          ; $7cb9: $6c
	db $fd                                           ; $7cba: $fd
	ld l, d                                          ; $7cbb: $6a
	ld a, l                                          ; $7cbc: $7d
	db $fd                                           ; $7cbd: $fd
	sub l                                            ; $7cbe: $95
	ld a, l                                          ; $7cbf: $7d
	ld [hl], b                                       ; $7cc0: $70
	sub c                                            ; $7cc1: $91
	ld a, [hl]                                       ; $7cc2: $7e
	nop                                              ; $7cc3: $00
	cp [hl]                                          ; $7cc4: $be
	ld b, $22                                        ; $7cc5: $06 $22
	inc h                                            ; $7cc7: $24
	dec h                                            ; $7cc8: $25
	daa                                              ; $7cc9: $27
	cp [hl]                                          ; $7cca: $be
	db $fd                                           ; $7ccb: $fd
	ld b, a                                          ; $7ccc: $47
	ld a, l                                          ; $7ccd: $7d
	call z, $00d1                                    ; $7cce: $cc $d1 $00
	inc h                                            ; $7cd1: $24
	ld a, [hl+]                                      ; $7cd2: $2a
	inc c                                            ; $7cd3: $0c
	ld a, [hl+]                                      ; $7cd4: $2a
	inc c                                            ; $7cd5: $0c
	ld a, [hl+]                                      ; $7cd6: $2a
	inc c                                            ; $7cd7: $0c

jr_034_7cd8:
	ld a, [hl+]                                      ; $7cd8: $2a
	jr jr_034_7cd8                                   ; $7cd9: $18 $fd

	ld b, a                                          ; $7cdb: $47
	ld a, l                                          ; $7cdc: $7d
	jp z, $00d1                                      ; $7cdd: $ca $d1 $00

	inc h                                            ; $7ce0: $24
	cp [hl]                                          ; $7ce1: $be
	inc c                                            ; $7ce2: $0c
	dec [hl]                                         ; $7ce3: $35
	dec [hl]                                         ; $7ce4: $35
	inc [hl]                                         ; $7ce5: $34
	inc sp                                           ; $7ce6: $33
	inc [hl]                                         ; $7ce7: $34
	cp [hl]                                          ; $7ce8: $be
	or l                                             ; $7ce9: $b5
	di                                               ; $7cea: $f3
	ld bc, $03ff                                     ; $7ceb: $01 $ff $03
	add hl, hl                                       ; $7cee: $29
	inc c                                            ; $7cef: $0c
	dec e                                            ; $7cf0: $1d
	dec bc                                           ; $7cf1: $0b
	nop                                              ; $7cf2: $00
	ld bc, $0c1d                                     ; $7cf3: $01 $1d $0c
	add hl, hl                                       ; $7cf6: $29
	inc c                                            ; $7cf7: $0c
	dec e                                            ; $7cf8: $1d
	dec bc                                           ; $7cf9: $0b
	nop                                              ; $7cfa: $00
	ld bc, $0c1d                                     ; $7cfb: $01 $1d $0c
	add hl, hl                                       ; $7cfe: $29
	inc c                                            ; $7cff: $0c
	jp z, $0c2a                                      ; $7d00: $ca $2a $0c

	rst GetHLinHL                                          ; $7d03: $cf
	ld a, [hl+]                                      ; $7d04: $2a
	inc c                                            ; $7d05: $0c
	ld e, $0b                                        ; $7d06: $1e $0b
	nop                                              ; $7d08: $00
	ld bc, $0c1e                                     ; $7d09: $01 $1e $0c
	ld a, [hl+]                                      ; $7d0c: $2a
	inc c                                            ; $7d0d: $0c
	ld e, $0b                                        ; $7d0e: $1e $0b
	nop                                              ; $7d10: $00
	ld bc, $0c1e                                     ; $7d11: $01 $1e $0c
	ld a, [hl+]                                      ; $7d14: $2a
	inc c                                            ; $7d15: $0c
	dec e                                            ; $7d16: $1d
	inc c                                            ; $7d17: $0c
	or l                                             ; $7d18: $b5
	add c                                            ; $7d19: $81
	inc bc                                           ; $7d1a: $03
	nop                                              ; $7d1b: $00
	nop                                              ; $7d1c: $00
	sub a                                            ; $7d1d: $97
	ld c, d                                          ; $7d1e: $4a
	cp [hl]                                          ; $7d1f: $be
	jr jr_034_7d4b                                   ; $7d20: $18 $29

	inc h                                            ; $7d22: $24
	daa                                              ; $7d23: $27
	ld [hl+], a                                      ; $7d24: $22
	dec h                                            ; $7d25: $25
	ld hl, $1e24                                     ; $7d26: $21 $24 $1e
	cp [hl]                                          ; $7d29: $be
	or c                                             ; $7d2a: $b1
	add c                                            ; $7d2b: $81
	ld [hl-], a                                      ; $7d2c: $32
	ld [bc], a                                       ; $7d2d: $02
	sub a                                            ; $7d2e: $97
	nop                                              ; $7d2f: $00
	dec [hl]                                         ; $7d30: $35
	inc h                                            ; $7d31: $24
	dec [hl]                                         ; $7d32: $35
	inc c                                            ; $7d33: $0c
	inc sp                                           ; $7d34: $33
	inc h                                            ; $7d35: $24
	cp [hl]                                          ; $7d36: $be
	inc c                                            ; $7d37: $0c
	inc sp                                           ; $7d38: $33
	ld sp, $2d29                                     ; $7d39: $31 $29 $2d
	ld sp, $2930                                     ; $7d3c: $31 $30 $29
	cp [hl]                                          ; $7d3f: $be
	sub c                                            ; $7d40: $91
	ld [hl+], a                                      ; $7d41: $22
	inc c                                            ; $7d42: $0c
	dec h                                            ; $7d43: $25
	inc c                                            ; $7d44: $0c
	cp $ff                                           ; $7d45: $fe $ff
	sub c                                            ; $7d47: $91
	sub [hl]                                         ; $7d48: $96
	ld [hl-], a                                      ; $7d49: $32
	ld [bc], a                                       ; $7d4a: $02

jr_034_7d4b:
	set 2, c                                         ; $7d4b: $cb $d1
	add hl, hl                                       ; $7d4d: $29
	inc c                                            ; $7d4e: $0c
	db $d3                                           ; $7d4f: $d3
	add hl, hl                                       ; $7d50: $29
	inc c                                            ; $7d51: $0c
	ret z                                            ; $7d52: $c8

	jp nc, $0c29                                     ; $7d53: $d2 $29 $0c

	set 2, c                                         ; $7d56: $cb $d1
	add hl, hl                                       ; $7d58: $29
	inc c                                            ; $7d59: $0c
	jp nc, $0c29                                     ; $7d5a: $d2 $29 $0c

	ret z                                            ; $7d5d: $c8

	db $d3                                           ; $7d5e: $d3
	add hl, hl                                       ; $7d5f: $29
	inc c                                            ; $7d60: $0c
	set 2, c                                         ; $7d61: $cb $d1
	add hl, hl                                       ; $7d63: $29
	inc c                                            ; $7d64: $0c
	ret z                                            ; $7d65: $c8

	db $d3                                           ; $7d66: $d3

jr_034_7d67:
	add hl, hl                                       ; $7d67: $29
	inc c                                            ; $7d68: $0c
	db $fd                                           ; $7d69: $fd
	sub b                                            ; $7d6a: $90
	sub [hl]                                         ; $7d6b: $96
	ld [hl-], a                                      ; $7d6c: $32
	ld b, $1d                                        ; $7d6d: $06 $1d
	jr nc, jr_034_7d87                               ; $7d6f: $30 $16

	jr nc, jr_034_7d8f                               ; $7d71: $30 $1c

	ld c, b                                          ; $7d73: $48
	jr jr_034_7d82                                   ; $7d74: $18 $0c

	add hl, de                                       ; $7d76: $19
	inc c                                            ; $7d77: $0c
	cp [hl]                                          ; $7d78: $be
	jr jr_034_7d96                                   ; $7d79: $18 $1b

	add hl, de                                       ; $7d7b: $19
	dec de                                           ; $7d7c: $1b
	dec e                                            ; $7d7d: $1d
	dec de                                           ; $7d7e: $1b
	cp [hl]                                          ; $7d7f: $be
	add hl, de                                       ; $7d80: $19
	inc c                                            ; $7d81: $0c

jr_034_7d82:
	dec de                                           ; $7d82: $1b
	ld b, $19                                        ; $7d83: $06 $19
	ld b, $18                                        ; $7d85: $06 $18

jr_034_7d87:
	jr jr_034_7d9e                                   ; $7d87: $18 $15

	jr jr_034_7da8                                   ; $7d89: $18 $1d

	jr nc, jr_034_7da3                               ; $7d8b: $30 $16

	jr nc, jr_034_7dae                               ; $7d8d: $30 $1f

jr_034_7d8f:
	ld c, b                                          ; $7d8f: $48
	dec de                                           ; $7d90: $1b
	inc c                                            ; $7d91: $0c
	dec e                                            ; $7d92: $1d
	inc c                                            ; $7d93: $0c
	db $fd                                           ; $7d94: $fd
	cp [hl]                                          ; $7d95: $be

jr_034_7d96:
	jr jr_034_7db6                                   ; $7d96: $18 $1e

	ld [hl+], a                                      ; $7d98: $22
	ld hl, $1e1d                                     ; $7d99: $21 $1d $1e
	dec h                                            ; $7d9c: $25
	inc h                                            ; $7d9d: $24

jr_034_7d9e:
	cp [hl]                                          ; $7d9e: $be
	db $fd                                           ; $7d9f: $fd
	ret nc                                           ; $7da0: $d0

	sub c                                            ; $7da1: $91
	nop                                              ; $7da2: $00

jr_034_7da3:
	jr jr_034_7d67                                   ; $7da3: $18 $c2

	ld a, a                                          ; $7da5: $7f
	inc hl                                           ; $7da6: $23
	db $fd                                           ; $7da7: $fd

jr_034_7da8:
	inc e                                            ; $7da8: $1c
	ld a, [hl]                                       ; $7da9: $7e
	ld de, $1d0c                                     ; $7daa: $11 $0c $1d
	ld a, [bc]                                       ; $7dad: $0a

jr_034_7dae:
	nop                                              ; $7dae: $00
	ld c, $1d                                        ; $7daf: $0e $1d
	inc c                                            ; $7db1: $0c
	ld de, $960c                                     ; $7db2: $11 $0c $96
	nop                                              ; $7db5: $00

jr_034_7db6:
	nop                                              ; $7db6: $00
	dec de                                           ; $7db7: $1b
	inc c                                            ; $7db8: $0c
	dec e                                            ; $7db9: $1d
	inc c                                            ; $7dba: $0c
	dec de                                           ; $7dbb: $1b
	inc c                                            ; $7dbc: $0c
	cp $b5                                           ; $7dbd: $fe $b5
	ld hl, $0423                                     ; $7dbf: $21 $23 $04
	ld bc, $2bfd                                     ; $7dc2: $01 $fd $2b
	ld a, [hl]                                       ; $7dc5: $7e
	db $fd                                           ; $7dc6: $fd
	dec hl                                           ; $7dc7: $2b
	ld a, [hl]                                       ; $7dc8: $7e
	or l                                             ; $7dc9: $b5
	ld hl, $0423                                     ; $7dca: $21 $23 $04
	ld bc, $0cbe                                     ; $7dcd: $01 $be $0c
	ld de, $0011                                     ; $7dd0: $11 $11 $00
	dec e                                            ; $7dd3: $1d
	ld de, $1d11                                     ; $7dd4: $11 $11 $1d
	cp [hl]                                          ; $7dd7: $be
	ld de, $1218                                     ; $7dd8: $11 $18 $12
	ld b, $12                                        ; $7ddb: $06 $12
	ld b, $be                                        ; $7ddd: $06 $be
	inc c                                            ; $7ddf: $0c
	ld e, $12                                        ; $7de0: $1e $12
	ld [de], a                                       ; $7de2: $12
	add hl, de                                       ; $7de3: $19
	ld e, $19                                        ; $7de4: $1e $19
	cp [hl]                                          ; $7de6: $be
	db $fd                                           ; $7de7: $fd
	inc e                                            ; $7de8: $1c
	ld a, [hl]                                       ; $7de9: $7e
	cp [hl]                                          ; $7dea: $be
	inc c                                            ; $7deb: $0c
	nop                                              ; $7dec: $00
	ld de, $111d                                     ; $7ded: $11 $1d $11
	dec e                                            ; $7df0: $1d
	inc e                                            ; $7df1: $1c
	dec de                                           ; $7df2: $1b
	inc e                                            ; $7df3: $1c
	cp [hl]                                          ; $7df4: $be
	db $fd                                           ; $7df5: $fd
	add l                                            ; $7df6: $85
	ld a, [hl]                                       ; $7df7: $7e
	ld de, $fd06                                     ; $7df8: $11 $06 $fd
	add l                                            ; $7dfb: $85
	ld a, [hl]                                       ; $7dfc: $7e
	ld [de], a                                       ; $7dfd: $12
	ld b, $61                                        ; $7dfe: $06 $61
	db $fd                                           ; $7e00: $fd
	add l                                            ; $7e01: $85
	ld a, [hl]                                       ; $7e02: $7e
	ld de, $fd06                                     ; $7e03: $11 $06 $fd
	add l                                            ; $7e06: $85
	ld a, [hl]                                       ; $7e07: $7e
	ld de, $7006                                     ; $7e08: $11 $06 $70
	or l                                             ; $7e0b: $b5
	ld hl, $0423                                     ; $7e0c: $21 $23 $04
	ld bc, $befb                                     ; $7e0f: $01 $fb $be
	inc c                                            ; $7e12: $0c
	ld de, $1d11                                     ; $7e13: $11 $11 $1d
	ld de, $fbbe                                     ; $7e16: $11 $be $fb
	ld [$fffe], sp                                   ; $7e19: $08 $fe $ff
	sub [hl]                                         ; $7e1c: $96
	inc b                                            ; $7e1d: $04
	ld bc, $0cbe                                     ; $7e1e: $01 $be $0c
	dec e                                            ; $7e21: $1d
	ld de, $1d11                                     ; $7e22: $11 $11 $1d
	ld de, $1d11                                     ; $7e25: $11 $11 $1d
	ld de, $fdbe                                     ; $7e28: $11 $be $fd
	cp [hl]                                          ; $7e2b: $be
	inc c                                            ; $7e2c: $0c
	ld d, $16                                        ; $7e2d: $16 $16
	ld [hl+], a                                      ; $7e2f: $22
	ld d, $16                                        ; $7e30: $16 $16
	ld [hl+], a                                      ; $7e32: $22
	ld d, $16                                        ; $7e33: $16 $16
	cp [hl]                                          ; $7e35: $be
	ld [de], a                                       ; $7e36: $12
	inc c                                            ; $7e37: $0c
	ld [de], a                                       ; $7e38: $12
	inc c                                            ; $7e39: $0c
	inc d                                            ; $7e3a: $14
	inc c                                            ; $7e3b: $0c
	add hl, de                                       ; $7e3c: $19
	jr @+$1a                                         ; $7e3d: $18 $18

	inc c                                            ; $7e3f: $0c
	ld d, $0c                                        ; $7e40: $16 $0c
	inc d                                            ; $7e42: $14
	inc c                                            ; $7e43: $0c
	cp [hl]                                          ; $7e44: $be
	inc c                                            ; $7e45: $0c
	inc d                                            ; $7e46: $14
	inc d                                            ; $7e47: $14
	ld e, $14                                        ; $7e48: $1e $14
	inc d                                            ; $7e4a: $14
	jr nz, @+$1b                                     ; $7e4b: $20 $19

	jr @-$40                                         ; $7e4d: $18 $be

	ld de, $110c                                     ; $7e4f: $11 $0c $11
	inc c                                            ; $7e52: $0c
	dec d                                            ; $7e53: $15
	inc c                                            ; $7e54: $0c
	ld de, $1118                                     ; $7e55: $11 $18 $11
	inc c                                            ; $7e58: $0c
	jr jr_034_7e67                                   ; $7e59: $18 $0c

	ld de, $be0c                                     ; $7e5b: $11 $0c $be
	inc c                                            ; $7e5e: $0c
	ld d, $16                                        ; $7e5f: $16 $16
	ld [hl+], a                                      ; $7e61: $22
	ld d, $16                                        ; $7e62: $16 $16
	ld [hl+], a                                      ; $7e64: $22
	ld d, $16                                        ; $7e65: $16 $16

jr_034_7e67:
	cp [hl]                                          ; $7e67: $be
	rrca                                             ; $7e68: $0f
	inc c                                            ; $7e69: $0c
	rrca                                             ; $7e6a: $0f
	inc c                                            ; $7e6b: $0c
	ld de, $160c                                     ; $7e6c: $11 $0c $16
	jr jr_034_7e85                                   ; $7e6f: $18 $14

	inc c                                            ; $7e71: $0c
	inc de                                           ; $7e72: $13
	inc c                                            ; $7e73: $0c
	rrca                                             ; $7e74: $0f
	inc c                                            ; $7e75: $0c
	ei                                               ; $7e76: $fb
	cp [hl]                                          ; $7e77: $be
	inc c                                            ; $7e78: $0c
	ld [de], a                                       ; $7e79: $12
	ld e, $12                                        ; $7e7a: $1e $12
	ld e, $11                                        ; $7e7c: $1e $11
	dec e                                            ; $7e7e: $1d
	ld de, $be1d                                     ; $7e7f: $11 $1d $be
	ei                                               ; $7e82: $fb
	ld [bc], a                                       ; $7e83: $02
	db $fd                                           ; $7e84: $fd

jr_034_7e85:
	ld de, $110c                                     ; $7e85: $11 $0c $11
	ld b, $11                                        ; $7e88: $06 $11
	ld b, $1d                                        ; $7e8a: $06 $1d
	inc c                                            ; $7e8c: $0c
	ld de, $fd06                                     ; $7e8d: $11 $06 $fd

Jump_034_7e90:
	ret nc                                           ; $7e90: $d0

Call_034_7e91:
	sub c                                            ; $7e91: $91
	cp [hl]                                          ; $7e92: $be

Call_034_7e93:
	ld b, $31                                        ; $7e93: $06 $31
	ld b, h                                          ; $7e95: $44
	ld b, e                                          ; $7e96: $43
	ld b, d                                          ; $7e97: $42
	cp [hl]                                          ; $7e98: $be
	db $fd                                           ; $7e99: $fd
	add hl, bc                                       ; $7e9a: $09
	ld a, a                                          ; $7e9b: $7f
	db $fd                                           ; $7e9c: $fd
	jr @+$81                                         ; $7e9d: $18 $7f

	cp $fc                                           ; $7e9f: $fe $fc
	ei                                               ; $7ea1: $fb
	cp [hl]                                          ; $7ea2: $be
	inc c                                            ; $7ea3: $0c
	ld [hl], $31                                     ; $7ea4: $36 $31
	ld a, $32                                        ; $7ea6: $3e $32
	cp [hl]                                          ; $7ea8: $be
	ei                                               ; $7ea9: $fb
	inc bc                                           ; $7eaa: $03
	cp [hl]                                          ; $7eab: $be
	inc c                                            ; $7eac: $0c
	ld [hl], $3b                                     ; $7ead: $36 $3b
	ld b, b                                          ; $7eaf: $40
	inc [hl]                                         ; $7eb0: $34
	cp [hl]                                          ; $7eb1: $be
	db $fc                                           ; $7eb2: $fc
	rlca                                             ; $7eb3: $07
	ei                                               ; $7eb4: $fb
	cp [hl]                                          ; $7eb5: $be
	inc c                                            ; $7eb6: $0c
	ld [hl], $31                                     ; $7eb7: $36 $31
	ld a, $32                                        ; $7eb9: $3e $32
	cp [hl]                                          ; $7ebb: $be
	ei                                               ; $7ebc: $fb
	inc bc                                           ; $7ebd: $03
	cp [hl]                                          ; $7ebe: $be
	inc c                                            ; $7ebf: $0c
	ld a, $43                                        ; $7ec0: $3e $43
	ld b, d                                          ; $7ec2: $42
	ld a, $be                                        ; $7ec3: $3e $be
	db $fd                                           ; $7ec5: $fd
	add hl, bc                                       ; $7ec6: $09
	ld a, a                                          ; $7ec7: $7f

Jump_034_7ec8:
	ei                                               ; $7ec8: $fb
	ld sp, $320c                                     ; $7ec9: $31 $0c $32
	ld b, $32                                        ; $7ecc: $06 $32
	ld b, $fb                                        ; $7ece: $06 $fb
	inc bc                                           ; $7ed0: $03
	cp [hl]                                          ; $7ed1: $be
	ld b, $32                                        ; $7ed2: $06 $32
	ld [hl-], a                                      ; $7ed4: $32
	ld sp, $be31                                     ; $7ed5: $31 $31 $be
	db $fd                                           ; $7ed8: $fd
	add hl, bc                                       ; $7ed9: $09
	ld a, a                                          ; $7eda: $7f
	ei                                               ; $7edb: $fb
	ld sp, $320c                                     ; $7edc: $31 $0c $32
	ld b, $32                                        ; $7edf: $06 $32
	ld b, $fb                                        ; $7ee1: $06 $fb
	ld [bc], a                                       ; $7ee3: $02
	ld a, $08                                        ; $7ee4: $3e $08
	scf                                              ; $7ee6: $37
	ld [$0840], sp                                   ; $7ee7: $08 $40 $08
	ld sp, $3206                                     ; $7eea: $31 $06 $32
	ld b, $35                                        ; $7eed: $06 $35
	inc c                                            ; $7eef: $0c
	ei                                               ; $7ef0: $fb
	db $fd                                           ; $7ef1: $fd
	dec hl                                           ; $7ef2: $2b
	ld a, a                                          ; $7ef3: $7f
	ei                                               ; $7ef4: $fb
	inc b                                            ; $7ef5: $04
	ei                                               ; $7ef6: $fb
	db $fd                                           ; $7ef7: $fd
	dec hl                                           ; $7ef8: $2b
	ld a, a                                          ; $7ef9: $7f
	ei                                               ; $7efa: $fb
	rlca                                             ; $7efb: $07
	ld [hl], $0c                                     ; $7efc: $36 $0c
	cp [hl]                                          ; $7efe: $be
	ld b, $31                                        ; $7eff: $06 $31
	ld [hl-], a                                      ; $7f01: $32
	ld a, [de]                                       ; $7f02: $1a
	dec de                                           ; $7f03: $1b
	inc e                                            ; $7f04: $1c
	dec [hl]                                         ; $7f05: $35
	cp [hl]                                          ; $7f06: $be
	cp $ff                                           ; $7f07: $fe $ff
	cp [hl]                                          ; $7f09: $be
	inc c                                            ; $7f0a: $0c
	dec [hl]                                         ; $7f0b: $35
	ld sp, $3532                                     ; $7f0c: $31 $32 $35
	ld sp, $3532                                     ; $7f0f: $31 $32 $35
	cp [hl]                                          ; $7f12: $be
	ld sp, $3206                                     ; $7f13: $31 $06 $32
	ld b, $fd                                        ; $7f16: $06 $fd
	ld [hl], $0c                                     ; $7f18: $36 $0c
	dec de                                           ; $7f1a: $1b
	ld b, $1c                                        ; $7f1b: $06 $1c
	ld b, $be                                        ; $7f1d: $06 $be
	inc c                                            ; $7f1f: $0c
	ld a, $31                                        ; $7f20: $3e $31
	ld [hl-], a                                      ; $7f22: $32
	ld sp, $be3e                                     ; $7f23: $31 $3e $be
	ld sp, $3406                                     ; $7f26: $31 $06 $34
	ld b, $fd                                        ; $7f29: $06 $fd
	ld [hl], $0c                                     ; $7f2b: $36 $0c
	ld sp, $3206                                     ; $7f2d: $31 $06 $32
	ld b, $3f                                        ; $7f30: $06 $3f
	inc c                                            ; $7f32: $0c
	ld [hl-], a                                      ; $7f33: $32
	ld b, $31                                        ; $7f34: $06 $31
	ld b, $fd                                        ; $7f36: $06 $fd
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

Jump_034_7fd1:
	rst $38                                          ; $7fd1: $ff

Jump_034_7fd2:
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
