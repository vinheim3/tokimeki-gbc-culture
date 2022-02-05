; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

	ld a, [$c189]                                    ; $4000: $fa $89 $c1
	ld [$d043], a                                    ; $4003: $ea $43 $d0
	ld a, [$c180]                                    ; $4006: $fa $80 $c1
	rst JumpTable                                          ; $4009: $c7
	ld h, $40                                        ; $400a: $26 $40
	ld d, [hl]                                       ; $400c: $56
	ld b, b                                          ; $400d: $40
	ld e, e                                          ; $400e: $5b
	ld b, b                                          ; $400f: $40
	ld d, c                                          ; $4010: $51
	ld b, b                                          ; $4011: $40
	ld c, h                                          ; $4012: $4c
	ld b, b                                          ; $4013: $40
	ld h, b                                          ; $4014: $60
	ld b, b                                          ; $4015: $40
	ld [hl], e                                       ; $4016: $73
	ld b, b                                          ; $4017: $40
	adc [hl]                                         ; $4018: $8e
	ld b, b                                          ; $4019: $40
	ld [hl], e                                       ; $401a: $73
	ld b, b                                          ; $401b: $40
	sub l                                            ; $401c: $95
	ld b, b                                          ; $401d: $40
	sbc d                                            ; $401e: $9a
	ld b, b                                          ; $401f: $40
	add [hl]                                         ; $4020: $86
	ld b, b                                          ; $4021: $40
	sub l                                            ; $4022: $95
	ld b, b                                          ; $4023: $40
	add hl, hl                                       ; $4024: $29
	ld b, b                                          ; $4025: $40
	call $2b26                                       ; $4026: $cd $26 $2b

jr_005_4029:
	ld a, [$c180]                                    ; $4029: $fa $80 $c1
	cp $06                                           ; $402c: $fe $06
	jr c, jr_005_4035                                ; $402e: $38 $05

	ld a, $05                                        ; $4030: $3e $05
	ld [$c180], a                                    ; $4032: $ea $80 $c1

jr_005_4035:
	ld a, $00                                        ; $4035: $3e $00
	call $1e2e                                       ; $4037: $cd $2e $1e
	call $0911                                       ; $403a: $cd $11 $09
	call $0963                                       ; $403d: $cd $63 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4040: $cd $ef $2d
	xor a                                            ; $4043: $af
	call $068e                                       ; $4044: $cd $8e $06
	ld a, $05                                        ; $4047: $3e $05
	jp $291f                                         ; $4049: $c3 $1f $29


	call $2cbb                                       ; $404c: $cd $bb $2c
	jr jr_005_4029                                   ; $404f: $18 $d8

	call $2c61                                       ; $4051: $cd $61 $2c
	jr jr_005_4029                                   ; $4054: $18 $d3

	call $2c81                                       ; $4056: $cd $81 $2c
	jr jr_005_4029                                   ; $4059: $18 $ce

	call $2ca1                                       ; $405b: $cd $a1 $2c
	jr jr_005_4029                                   ; $405e: $18 $c9

	call $2b46                                       ; $4060: $cd $46 $2b
	ld b, $f0                                        ; $4063: $06 $f0
	call $2bb6                                       ; $4065: $cd $b6 $2b
	call Func_2b96                                       ; $4068: $cd $96 $2b

jr_005_406b:
	ld a, [$c180]                                    ; $406b: $fa $80 $c1
	inc a                                            ; $406e: $3c
	ld [$c180], a                                    ; $406f: $ea $80 $c1
	ret                                              ; $4072: $c9


	call $2b66                                       ; $4073: $cd $66 $2b
	ld a, [wButtonsPressed]                                    ; $4076: $fa $25 $c1
	bit 1, a                                         ; $4079: $cb $4f
	call nz, Func_2b96                                   ; $407b: $c4 $96 $2b
	ld a, [wButtonsPressed]                                    ; $407e: $fa $25 $c1
	bit 0, a                                         ; $4081: $cb $47
	call nz, Func_2ba6                                   ; $4083: $c4 $a6 $2b
	ld a, [wButtonsPressed]                                    ; $4086: $fa $25 $c1
	and $10                                          ; $4089: $e6 $10
	ret z                                            ; $408b: $c8

	jr jr_005_406b                                   ; $408c: $18 $dd

	ld b, $01                                        ; $408e: $06 $01
	call $2bf6                                       ; $4090: $cd $f6 $2b
	jr jr_005_406b                                   ; $4093: $18 $d6

	call $2c20                                       ; $4095: $cd $20 $2c
	jr jr_005_406b                                   ; $4098: $18 $d1

	call $2c47                                       ; $409a: $cd $47 $2c
	jr jr_005_406b                                   ; $409d: $18 $cc

	nop                                              ; $409f: $00
	add b                                            ; $40a0: $80
	rlca                                             ; $40a1: $07
	add b                                            ; $40a2: $80
	inc c                                            ; $40a3: $0c
	ld hl, $110d                                     ; $40a4: $21 $0d $11
	dec c                                            ; $40a7: $0d
	ld sp, $3200                                     ; $40a8: $31 $00 $32
	ld bc, $0c12                                     ; $40ab: $01 $12 $0c
	ld [hl+], a                                      ; $40ae: $22
	dec c                                            ; $40af: $0d
	ld [de], a                                       ; $40b0: $12
	ld c, $22                                        ; $40b1: $0e $22
	rla                                              ; $40b3: $17
	add d                                            ; $40b4: $82
	inc bc                                           ; $40b5: $03
	inc bc                                           ; $40b6: $03
	inc bc                                           ; $40b7: $03
	inc de                                           ; $40b8: $13
	inc b                                            ; $40b9: $04
	inc hl                                           ; $40ba: $23
	inc b                                            ; $40bb: $04
	dec h                                            ; $40bc: $25
	dec b                                            ; $40bd: $05
	dec d                                            ; $40be: $15
	ld b, $05                                        ; $40bf: $06 $05
	dec bc                                           ; $40c1: $0b
	ld h, $0c                                        ; $40c2: $26 $0c
	ld d, $0d                                        ; $40c4: $16 $0d
	ld b, $17                                        ; $40c6: $06 $17
	add [hl]                                         ; $40c8: $86
	ld [$0927], sp                                   ; $40c9: $08 $27 $09
	rla                                              ; $40cc: $17
	ld a, [bc]                                       ; $40cd: $0a
	rlca                                             ; $40ce: $07
	nop                                              ; $40cf: $00
	adc b                                            ; $40d0: $88
	ld b, $18                                        ; $40d1: $06 $18
	ld a, [de]                                       ; $40d3: $1a
	jr z, jr_005_40f1                                ; $40d4: $28 $1b

	jr jr_005_40f4                                   ; $40d6: $18 $1c

	ld [$2901], sp                                   ; $40d8: $08 $01 $29
	ld [bc], a                                       ; $40db: $02
	add hl, de                                       ; $40dc: $19
	inc bc                                           ; $40dd: $03
	add hl, bc                                       ; $40de: $09
	inc c                                            ; $40df: $0c
	dec hl                                           ; $40e0: $2b
	dec c                                            ; $40e1: $0d
	dec de                                           ; $40e2: $1b
	ld c, $0b                                        ; $40e3: $0e $0b
	rla                                              ; $40e5: $17
	adc e                                            ; $40e6: $8b
	jr @-$73                                         ; $40e7: $18 $8b

	rst $38                                          ; $40e9: $ff
	rst $38                                          ; $40ea: $ff
	ld c, $80                                        ; $40eb: $0e $80
	ld a, [bc]                                       ; $40ed: $0a
	add c                                            ; $40ee: $81
	inc d                                            ; $40ef: $14
	add d                                            ; $40f0: $82

jr_005_40f1:
	dec d                                            ; $40f1: $15
	ld [hl+], a                                      ; $40f2: $22
	inc e                                            ; $40f3: $1c

jr_005_40f4:
	add e                                            ; $40f4: $83
	ld [bc], a                                       ; $40f5: $02
	add h                                            ; $40f6: $84
	inc bc                                           ; $40f7: $03
	add h                                            ; $40f8: $84
	inc b                                            ; $40f9: $04
	add h                                            ; $40fa: $84
	inc de                                           ; $40fb: $13
	add [hl]                                         ; $40fc: $86
	inc d                                            ; $40fd: $14
	ld b, $0e                                        ; $40fe: $06 $0e
	adc b                                            ; $4100: $88
	ld d, $88                                        ; $4101: $16 $88
	add hl, bc                                       ; $4103: $09
	adc c                                            ; $4104: $89
	ld a, [bc]                                       ; $4105: $0a
	add hl, hl                                       ; $4106: $29
	ld [bc], a                                       ; $4107: $02
	adc d                                            ; $4108: $8a
	ld d, $8a                                        ; $4109: $16 $8a
	rla                                              ; $410b: $17
	ld a, [bc]                                       ; $410c: $0a
	ld d, $8b                                        ; $410d: $16 $8b
	rst $38                                          ; $410f: $ff
	rst $38                                          ; $4110: $ff
	inc bc                                           ; $4111: $03
	ld b, $06                                        ; $4112: $06 $06
	ld [bc], a                                       ; $4114: $02
	inc b                                            ; $4115: $04
	nop                                              ; $4116: $00
	ld [bc], a                                       ; $4117: $02
	dec b                                            ; $4118: $05
	ld bc, $0603                                     ; $4119: $01 $03 $06
	ld bc, $0004                                     ; $411c: $01 $04 $00
	nop                                              ; $411f: $00
	inc bc                                           ; $4120: $03
	dec b                                            ; $4121: $05
	ld bc, $0603                                     ; $4122: $01 $03 $06
	ld [bc], a                                       ; $4125: $02
	inc b                                            ; $4126: $04
	nop                                              ; $4127: $00
	ld [bc], a                                       ; $4128: $02
	dec b                                            ; $4129: $05
	ld bc, $0401                                     ; $412a: $01 $01 $04
	ld b, $02                                        ; $412d: $06 $02
	inc b                                            ; $412f: $04
	nop                                              ; $4130: $00
	inc bc                                           ; $4131: $03
	dec b                                            ; $4132: $05
	ld bc, $0603                                     ; $4133: $01 $03 $06
	ld [bc], a                                       ; $4136: $02
	inc bc                                           ; $4137: $03
	rra                                              ; $4138: $1f
	inc e                                            ; $4139: $1c
	rra                                              ; $413a: $1f
	ld e, $1f                                        ; $413b: $1e $1f
	ld e, $1f                                        ; $413d: $1e $1f
	rra                                              ; $413f: $1f
	ld e, $1f                                        ; $4140: $1e $1f
	ld e, $1f                                        ; $4142: $1e $1f
	rra                                              ; $4144: $1f
	inc e                                            ; $4145: $1c
	rra                                              ; $4146: $1f
	ld e, $1f                                        ; $4147: $1e $1f
	ld e, $1f                                        ; $4149: $1e $1f
	rra                                              ; $414b: $1f
	ld e, $1f                                        ; $414c: $1e $1f
	ld e, $1f                                        ; $414e: $1e $1f
	rra                                              ; $4150: $1f
	inc e                                            ; $4151: $1c
	rra                                              ; $4152: $1f
	ld e, $1f                                        ; $4153: $1e $1f
	ld e, $1f                                        ; $4155: $1e $1f
	rra                                              ; $4157: $1f
	ld e, $1f                                        ; $4158: $1e $1f
	ld e, $1f                                        ; $415a: $1e $1f
	rra                                              ; $415c: $1f
	dec e                                            ; $415d: $1d
	rra                                              ; $415e: $1f
	db $d3                                           ; $415f: $d3
	call nc, $d4eb                                   ; $4160: $d4 $eb $d4
	inc de                                           ; $4163: $13
	push de                                          ; $4164: $d5
	dec sp                                           ; $4165: $3b
	push de                                          ; $4166: $d5
	ld e, e                                          ; $4167: $5b
	push de                                          ; $4168: $d5
	add e                                            ; $4169: $83
	push de                                          ; $416a: $d5
	xor e                                            ; $416b: $ab
	push de                                          ; $416c: $d5
	set 2, l                                         ; $416d: $cb $d5
	di                                               ; $416f: $f3
	push de                                          ; $4170: $d5
	dec de                                           ; $4171: $1b
	sub $43                                          ; $4172: $d6 $43
	sub $6b                                          ; $4174: $d6 $6b
	sub $01                                          ; $4176: $d6 $01
	ld [bc], a                                       ; $4178: $02
	ld b, $06                                        ; $4179: $06 $06
	ld [$001d], sp                                   ; $417b: $08 $1d $00
	inc c                                            ; $417e: $0c
	dec b                                            ; $417f: $05
	inc c                                            ; $4180: $0c
	dec bc                                           ; $4181: $0b
	ld [bc], a                                       ; $4182: $02
	ld a, [bc]                                       ; $4183: $0a
	ld c, $09                                        ; $4184: $0e $09
	db $10                                           ; $4186: $10
	ld [$0404], sp                                   ; $4187: $08 $04 $04
	rrca                                             ; $418a: $0f
	inc bc                                           ; $418b: $03
	rla                                              ; $418c: $17
	inc b                                            ; $418d: $04
	inc d                                            ; $418e: $14
	nop                                              ; $418f: $00
	dec d                                            ; $4190: $15
	ld sp, hl                                        ; $4191: $f9
	ld de, $404d                                     ; $4192: $11 $4d $40
	nop                                              ; $4195: $00
	sub b                                            ; $4196: $90
	ld de, $4070                                     ; $4197: $11 $70 $40
	nop                                              ; $419a: $00
	sub c                                            ; $419b: $91
	ld de, $41ee                                     ; $419c: $11 $ee $41
	nop                                              ; $419f: $00
	sub l                                            ; $41a0: $95
	ld de, $430c                                     ; $41a1: $11 $0c $43
	ld h, b                                          ; $41a4: $60
	add c                                            ; $41a5: $81
	ld de, $4000                                     ; $41a6: $11 $00 $40
	nop                                              ; $41a9: $00
	sbc b                                            ; $41aa: $98
	rst $38                                          ; $41ab: $ff
	ld sp, hl                                        ; $41ac: $f9
	ld de, $402a                                     ; $41ad: $11 $2a $40
	nop                                              ; $41b0: $00
	jr @-$02                                         ; $41b1: $18 $fc

	ld de, $4421                                     ; $41b3: $11 $21 $44
	db $d3                                           ; $41b6: $d3
	call nc, $3dff                                   ; $41b7: $d4 $ff $3d
	ld a, $3f                                        ; $41ba: $3e $3f
	dec a                                            ; $41bc: $3d
	ld a, $40                                        ; $41bd: $3e $40
	dec a                                            ; $41bf: $3d
	ld a, $41                                        ; $41c0: $3e $41
	ld b, d                                          ; $41c2: $42
	ld b, e                                          ; $41c3: $43
	ld b, h                                          ; $41c4: $44
	rla                                              ; $41c5: $17
	db $10                                           ; $41c6: $10
	ld a, [de]                                       ; $41c7: $1a
	dec d                                            ; $41c8: $15
	inc d                                            ; $41c9: $14
	ld de, $1019                                     ; $41ca: $11 $19 $10
	dec e                                            ; $41cd: $1d
	db $10                                           ; $41ce: $10
	inc e                                            ; $41cf: $1c
	dec e                                            ; $41d0: $1d
	add hl, de                                       ; $41d1: $19
	db $10                                           ; $41d2: $10
	ld [hl+], a                                      ; $41d3: $22
	rla                                              ; $41d4: $17
	jr nz, jr_005_41f1                               ; $41d5: $20 $1a

	rla                                              ; $41d7: $17
	jr nz, jr_005_41f2                               ; $41d8: $20 $18

	db $10                                           ; $41da: $10
	jr nz, jr_005_41f3                               ; $41db: $20 $16

	ld e, $14                                        ; $41dd: $1e $14
	inc e                                            ; $41df: $1c
	dec de                                           ; $41e0: $1b
	ld [de], a                                       ; $41e1: $12
	rra                                              ; $41e2: $1f
	ld a, [de]                                       ; $41e3: $1a
	dec de                                           ; $41e4: $1b
	ld hl, $1413                                     ; $41e5: $21 $13 $14
	ld [de], a                                       ; $41e8: $12
	ld [$3d00], sp                                   ; $41e9: $08 $00 $3d
	ld [$0010], sp                                   ; $41ec: $08 $10 $00
	ld a, $09                                        ; $41ef: $3e $09

jr_005_41f1:
	nop                                              ; $41f1: $00

jr_005_41f2:
	nop                                              ; $41f2: $00

jr_005_41f3:
	dec b                                            ; $41f3: $05
	dec b                                            ; $41f4: $05
	dec b                                            ; $41f5: $05
	nop                                              ; $41f6: $00
	add hl, bc                                       ; $41f7: $09
	inc c                                            ; $41f8: $0c
	inc c                                            ; $41f9: $0c
	add hl, bc                                       ; $41fa: $09
	nop                                              ; $41fb: $00
	nop                                              ; $41fc: $00
	nop                                              ; $41fd: $00
	nop                                              ; $41fe: $00
	ld bc, $0101                                     ; $41ff: $01 $01 $01
	add hl, bc                                       ; $4202: $09
	add hl, bc                                       ; $4203: $09
	add hl, bc                                       ; $4204: $09
	nop                                              ; $4205: $00
	dec bc                                           ; $4206: $0b
	dec bc                                           ; $4207: $0b
	dec bc                                           ; $4208: $0b
	nop                                              ; $4209: $00
	ld a, [bc]                                       ; $420a: $0a
	nop                                              ; $420b: $00
	nop                                              ; $420c: $00
	nop                                              ; $420d: $00
	ld b, $06                                        ; $420e: $06 $06
	ld b, $09                                        ; $4210: $06 $09
	add hl, bc                                       ; $4212: $09
	add hl, bc                                       ; $4213: $09
	nop                                              ; $4214: $00
	nop                                              ; $4215: $00
	dec c                                            ; $4216: $0d
	ld [$0350], sp                                   ; $4217: $08 $50 $03
	ld bc, $0452                                     ; $421a: $01 $52 $04
	ld bc, $0454                                     ; $421d: $01 $54 $04
	ld bc, $0556                                     ; $4220: $01 $56 $05
	ld bc, $0558                                     ; $4223: $01 $58 $05
	ld bc, $055a                                     ; $4226: $01 $5a $05
	ld bc, $055c                                     ; $4229: $01 $5c $05
	ld bc, $055e                                     ; $422c: $01 $5e $05
	rlca                                             ; $422f: $07
	ld h, b                                          ; $4230: $60
	ld b, $06                                        ; $4231: $06 $06
	ld h, d                                          ; $4233: $62
	ld b, $06                                        ; $4234: $06 $06
	ld h, h                                          ; $4236: $64
	rlca                                             ; $4237: $07
	ld b, $58                                        ; $4238: $06 $58
	ld b, $01                                        ; $423a: $06 $01
	ld h, h                                          ; $423c: $64
	rlca                                             ; $423d: $07
	ld bc, $eaaf                                     ; $423e: $01 $af $ea
	inc h                                            ; $4241: $24
	and d                                            ; $4242: $a2
	ld [$d081], a                                    ; $4243: $ea $81 $d0
	ld a, $03                                        ; $4246: $3e $03
	ld [$a226], a                                    ; $4248: $ea $26 $a2
	ld [$d082], a                                    ; $424b: $ea $82 $d0
	call Call_005_4263                               ; $424e: $cd $63 $42
	ld a, $03                                        ; $4251: $3e $03
	ld [$a228], a                                    ; $4253: $ea $28 $a2
	ld [$d083], a                                    ; $4256: $ea $83 $d0
	call Call_005_427d                               ; $4259: $cd $7d $42
	ld a, [$d084]                                    ; $425c: $fa $84 $d0
	ld [$d080], a                                    ; $425f: $ea $80 $d0
	ret                                              ; $4262: $c9


Call_005_4263:
	ld a, [$d081]                                    ; $4263: $fa $81 $d0
	ld b, a                                          ; $4266: $47
	ld c, $0c                                        ; $4267: $0e $0c
	call BCequBtimesC                                       ; $4269: $cd $5f $12
	ld a, [$d082]                                    ; $426c: $fa $82 $d0
	add c                                            ; $426f: $81
	ld e, a                                          ; $4270: $5f
	ld d, $00                                        ; $4271: $16 $00
	ret                                              ; $4273: $c9


Call_005_4274:
	call Call_005_4263                               ; $4274: $cd $63 $42
	ld hl, $4138                                     ; $4277: $21 $38 $41
	add hl, de                                       ; $427a: $19
	ld a, [hl]                                       ; $427b: $7e
	ret                                              ; $427c: $c9


Call_005_427d:
	ld a, [$d083]                                    ; $427d: $fa $83 $d0
	ld b, $07                                        ; $4280: $06 $07
	call $12b5                                       ; $4282: $cd $b5 $12
	ld hl, $4111                                     ; $4285: $21 $11 $41
	add hl, de                                       ; $4288: $19
	ld a, [hl]                                       ; $4289: $7e
	add b                                            ; $428a: $80
	ld b, $07                                        ; $428b: $06 $07
	call $12b5                                       ; $428d: $cd $b5 $12
	ld a, b                                          ; $4290: $78
	ld [$d084], a                                    ; $4291: $ea $84 $d0
	ret                                              ; $4294: $c9


	ld a, [$a224]                                    ; $4295: $fa $24 $a2
	ld [$d081], a                                    ; $4298: $ea $81 $d0
	ld a, [$a226]                                    ; $429b: $fa $26 $a2
	ld [$d082], a                                    ; $429e: $ea $82 $d0
	call Call_005_4274                               ; $42a1: $cd $74 $42
	ld b, a                                          ; $42a4: $47
	ld a, [$a228]                                    ; $42a5: $fa $28 $a2
	inc a                                            ; $42a8: $3c
	ld [$a228], a                                    ; $42a9: $ea $28 $a2
	cp b                                             ; $42ac: $b8
	jr c, jr_005_42c9                                ; $42ad: $38 $1a

	xor a                                            ; $42af: $af
	ld [$a228], a                                    ; $42b0: $ea $28 $a2
	ld a, [$a226]                                    ; $42b3: $fa $26 $a2
	inc a                                            ; $42b6: $3c
	ld [$a226], a                                    ; $42b7: $ea $26 $a2
	cp $0c                                           ; $42ba: $fe $0c
	jr c, jr_005_42c9                                ; $42bc: $38 $0b

	xor a                                            ; $42be: $af
	ld [$a226], a                                    ; $42bf: $ea $26 $a2
	ld a, [$a224]                                    ; $42c2: $fa $24 $a2
	inc a                                            ; $42c5: $3c
	ld [$a224], a                                    ; $42c6: $ea $24 $a2

jr_005_42c9:
	ld a, [$a228]                                    ; $42c9: $fa $28 $a2
	ld [$d083], a                                    ; $42cc: $ea $83 $d0
	call Call_005_427d                               ; $42cf: $cd $7d $42
	ld a, [$d084]                                    ; $42d2: $fa $84 $d0
	ld [$d080], a                                    ; $42d5: $ea $80 $d0
	ret                                              ; $42d8: $c9


Call_005_42d9:
	ld a, [$d010]                                    ; $42d9: $fa $10 $d0
	or a                                             ; $42dc: $b7
	jp nz, Jump_005_4340                             ; $42dd: $c2 $40 $43

	ld a, $01                                        ; $42e0: $3e $01
	ld [$d010], a                                    ; $42e2: $ea $10 $d0
	ld hl, $da80                                     ; $42e5: $21 $80 $da
	ld b, $4d                                        ; $42e8: $06 $4d

jr_005_42ea:
	ld a, [hl+]                                      ; $42ea: $2a
	ld c, [hl]                                       ; $42eb: $4e
	or c                                             ; $42ec: $b1
	jr nz, jr_005_42f3                               ; $42ed: $20 $04

	inc hl                                           ; $42ef: $23
	dec b                                            ; $42f0: $05
	jr jr_005_42ea                                   ; $42f1: $18 $f7

jr_005_42f3:
	dec hl                                           ; $42f3: $2b
	ld a, l                                          ; $42f4: $7d
	ld [$d011], a                                    ; $42f5: $ea $11 $d0
	ld a, h                                          ; $42f8: $7c
	ld [$d012], a                                    ; $42f9: $ea $12 $d0
	ld a, $4d                                        ; $42fc: $3e $4d
	sub b                                            ; $42fe: $90
	ld b, $07                                        ; $42ff: $06 $07
	call $12b5                                       ; $4301: $cd $b5 $12
	ld c, a                                          ; $4304: $4f
	push bc                                          ; $4305: $c5
	call Call_005_43ea                               ; $4306: $cd $ea $43
	pop bc                                           ; $4309: $c1
	ld hl, $c200                                     ; $430a: $21 $00 $c2
	ld a, [$d01c]                                    ; $430d: $fa $1c $d0
	add h                                            ; $4310: $84
	ld h, a                                          ; $4311: $67
	ld a, [$d01c]                                    ; $4312: $fa $1c $d0
	inc a                                            ; $4315: $3c
	ld [hl], a                                       ; $4316: $77
	ld [$d01c], a                                    ; $4317: $ea $1c $d0
	ld l, $01                                        ; $431a: $2e $01
	ld [hl], $00                                     ; $431c: $36 $00
	ld l, $05                                        ; $431e: $2e $05
	ld a, c                                          ; $4320: $79
	sla a                                            ; $4321: $cb $27
	sla a                                            ; $4323: $cb $27
	sla a                                            ; $4325: $cb $27
	add $10                                          ; $4327: $c6 $10
	ld [hl], a                                       ; $4329: $77
	ld l, $07                                        ; $432a: $2e $07
	ld a, b                                          ; $432c: $78
	sla a                                            ; $432d: $cb $27
	sla a                                            ; $432f: $cb $27
	sla a                                            ; $4331: $cb $27
	sla a                                            ; $4333: $cb $27
	add $28                                          ; $4335: $c6 $28
	ld [hl], a                                       ; $4337: $77
	ld l, $08                                        ; $4338: $2e $08
	ld a, $13                                        ; $433a: $3e $13
	ld [hl+], a                                      ; $433c: $22
	ld a, $d0                                        ; $433d: $3e $d0
	ld [hl], a                                       ; $433f: $77

Jump_005_4340:
	ld hl, wButtonsPressed                                     ; $4340: $21 $25 $c1
	bit 2, [hl]                                      ; $4343: $cb $56
	jr nz, jr_005_436b                               ; $4345: $20 $24

	bit 3, [hl]                                      ; $4347: $cb $5e
	jr nz, jr_005_43bb                               ; $4349: $20 $70

	bit 1, [hl]                                      ; $434b: $cb $4e
	jr nz, jr_005_436b                               ; $434d: $20 $1c

	bit 0, [hl]                                      ; $434f: $cb $46
	jr nz, jr_005_43bb                               ; $4351: $20 $68

	bit 4, [hl]                                      ; $4353: $cb $66
	jp nz, Jump_005_43d9                             ; $4355: $c2 $d9 $43

	xor a                                            ; $4358: $af
	ret                                              ; $4359: $c9


	ld a, [$d01b]                                    ; $435a: $fa $1b $d0
	inc a                                            ; $435d: $3c
	cp $03                                           ; $435e: $fe $03
	jr c, jr_005_4363                                ; $4360: $38 $01

	xor a                                            ; $4362: $af

jr_005_4363:
	ld [$d01b], a                                    ; $4363: $ea $1b $d0
	call Call_005_43ea                               ; $4366: $cd $ea $43
	xor a                                            ; $4369: $af
	ret                                              ; $436a: $c9


jr_005_436b:
	ld a, [$d011]                                    ; $436b: $fa $11 $d0
	ld l, a                                          ; $436e: $6f
	ld a, [$d012]                                    ; $436f: $fa $12 $d0
	ld h, a                                          ; $4372: $67

jr_005_4373:
	dec hl                                           ; $4373: $2b
	ld b, [hl]                                       ; $4374: $46
	dec hl                                           ; $4375: $2b
	ld de, $da80                                     ; $4376: $11 $80 $da
	call wCpHLtoDE                                       ; $4379: $cd $80 $ce
	jr c, jr_005_43e8                                ; $437c: $38 $6a

	ld a, [hl]                                       ; $437e: $7e
	or b                                             ; $437f: $b0
	jr z, jr_005_4373                                ; $4380: $28 $f1

jr_005_4382:
	ld a, l                                          ; $4382: $7d
	ld [$d011], a                                    ; $4383: $ea $11 $d0
	ld a, h                                          ; $4386: $7c
	ld [$d012], a                                    ; $4387: $ea $12 $d0
	call wHLminusEquDE                                       ; $438a: $cd $9e $ce
	ld a, l                                          ; $438d: $7d
	ld b, $0e                                        ; $438e: $06 $0e
	call $12b5                                       ; $4390: $cd $b5 $12
	srl b                                            ; $4393: $cb $38
	push af                                          ; $4395: $f5
	ld hl, $c200                                     ; $4396: $21 $00 $c2
	ld a, [$d01c]                                    ; $4399: $fa $1c $d0
	dec a                                            ; $439c: $3d
	add h                                            ; $439d: $84
	ld h, a                                          ; $439e: $67
	pop af                                           ; $439f: $f1
	ld l, $05                                        ; $43a0: $2e $05
	sla a                                            ; $43a2: $cb $27
	sla a                                            ; $43a4: $cb $27
	sla a                                            ; $43a6: $cb $27
	add $10                                          ; $43a8: $c6 $10
	ld [hl], a                                       ; $43aa: $77
	ld l, $07                                        ; $43ab: $2e $07
	ld a, b                                          ; $43ad: $78
	sla a                                            ; $43ae: $cb $27
	sla a                                            ; $43b0: $cb $27
	sla a                                            ; $43b2: $cb $27
	sla a                                            ; $43b4: $cb $27
	add $28                                          ; $43b6: $c6 $28
	ld [hl], a                                       ; $43b8: $77
	xor a                                            ; $43b9: $af
	ret                                              ; $43ba: $c9


jr_005_43bb:
	ld a, [$d011]                                    ; $43bb: $fa $11 $d0
	ld l, a                                          ; $43be: $6f
	ld a, [$d012]                                    ; $43bf: $fa $12 $d0
	ld h, a                                          ; $43c2: $67
	inc hl                                           ; $43c3: $23

jr_005_43c4:
	inc hl                                           ; $43c4: $23
	ld de, $db1a                                     ; $43c5: $11 $1a $db
	call wCpHLtoDE                                       ; $43c8: $cd $80 $ce
	jr nc, jr_005_43e8                               ; $43cb: $30 $1b

	ld b, [hl]                                       ; $43cd: $46
	inc hl                                           ; $43ce: $23
	ld a, [hl]                                       ; $43cf: $7e
	or b                                             ; $43d0: $b0
	jr z, jr_005_43c4                                ; $43d1: $28 $f1

	dec hl                                           ; $43d3: $2b
	ld de, $da80                                     ; $43d4: $11 $80 $da
	jr jr_005_4382                                   ; $43d7: $18 $a9

Jump_005_43d9:
	ld a, [$d011]                                    ; $43d9: $fa $11 $d0
	ld l, a                                          ; $43dc: $6f
	ld a, [$d012]                                    ; $43dd: $fa $12 $d0
	ld h, a                                          ; $43e0: $67
	ld a, [hl+]                                      ; $43e1: $2a
	ld b, a                                          ; $43e2: $47
	ld a, [hl]                                       ; $43e3: $7e
	ld c, a                                          ; $43e4: $4f
	ld a, $01                                        ; $43e5: $3e $01
	ret                                              ; $43e7: $c9


jr_005_43e8:
	xor a                                            ; $43e8: $af
	ret                                              ; $43e9: $c9


Call_005_43ea:
	ld bc, $6689                                     ; $43ea: $01 $89 $66
	ld de, $41e9                                     ; $43ed: $11 $e9 $41
	push de                                          ; $43f0: $d5
	call $18b3                                       ; $43f1: $cd $b3 $18
	pop de                                           ; $43f4: $d1
	ld hl, $d013                                     ; $43f5: $21 $13 $d0
	ld b, $08                                        ; $43f8: $06 $08

jr_005_43fa:
	ld a, [de]                                       ; $43fa: $1a
	ld [hl+], a                                      ; $43fb: $22
	inc de                                           ; $43fc: $13
	dec b                                            ; $43fd: $05
	jr nz, jr_005_43fa                               ; $43fe: $20 $fa

	ret                                              ; $4400: $c9


Call_005_4401:
	push hl                                          ; $4401: $e5
	pop de                                           ; $4402: $d1
	ld hl, $9800                                     ; $4403: $21 $00 $98
	xor a                                            ; $4406: $af
	ldh [rVBK], a                                    ; $4407: $e0 $4f
	push bc                                          ; $4409: $c5
	ld b, e                                          ; $440a: $43
	ld c, $20                                        ; $440b: $0e $20
	call BCequBtimesC                                       ; $440d: $cd $5f $12
	add hl, bc                                       ; $4410: $09
	ld b, $00                                        ; $4411: $06 $00
	ld c, d                                          ; $4413: $4a
	add hl, bc                                       ; $4414: $09
	pop bc                                           ; $4415: $c1
	di                                               ; $4416: $f3

jr_005_4417:
	ldh a, [rSTAT]                                   ; $4417: $f0 $41
	bit 1, a                                         ; $4419: $cb $4f
	jr nz, jr_005_4417                               ; $441b: $20 $fa

	ld [hl], b                                       ; $441d: $70
	ei                                               ; $441e: $fb
	ld a, [wInitialA]                                    ; $441f: $fa $00 $c1
	cp $11                                           ; $4422: $fe $11
	ret nz                                           ; $4424: $c0

	ld a, $01                                        ; $4425: $3e $01
	ldh [rVBK], a                                    ; $4427: $e0 $4f
	di                                               ; $4429: $f3

jr_005_442a:
	ldh a, [rSTAT]                                   ; $442a: $f0 $41
	bit 1, a                                         ; $442c: $cb $4f
	jr nz, jr_005_442a                               ; $442e: $20 $fa

	ld [hl], c                                       ; $4430: $71
	ei                                               ; $4431: $fb
	ret                                              ; $4432: $c9


Call_005_4433:
Jump_005_4433:
	ld a, b                                          ; $4433: $78
	ld [$c0e8], a                                    ; $4434: $ea $e8 $c0

jr_005_4437:
	ld a, [de]                                       ; $4437: $1a
	ld b, a                                          ; $4438: $47
	push hl                                          ; $4439: $e5
	push de                                          ; $443a: $d5
	call Call_005_4401                               ; $443b: $cd $01 $44
	pop de                                           ; $443e: $d1
	pop hl                                           ; $443f: $e1
	inc h                                            ; $4440: $24
	inc de                                           ; $4441: $13
	ld a, [$c0e8]                                    ; $4442: $fa $e8 $c0
	dec a                                            ; $4445: $3d
	ld [$c0e8], a                                    ; $4446: $ea $e8 $c0
	jr nz, jr_005_4437                               ; $4449: $20 $ec

	ret                                              ; $444b: $c9


Call_005_444c:
	push af                                          ; $444c: $f5
	ld de, $41b9                                     ; $444d: $11 $b9 $41
	ld a, [$d081]                                    ; $4450: $fa $81 $d0
	ld b, a                                          ; $4453: $47
	ld c, $03                                        ; $4454: $0e $03
	call BCequBtimesC                                       ; $4456: $cd $5f $12
	call wAddBContoDE                                       ; $4459: $cd $92 $ce
	ld h, $01                                        ; $445c: $26 $01
	pop af                                           ; $445e: $f1
	cp $01                                           ; $445f: $fe $01
	jr nc, jr_005_4467                               ; $4461: $30 $04

	ld l, $00                                        ; $4463: $2e $00
	jr jr_005_4469                                   ; $4465: $18 $02

jr_005_4467:
	ld l, $06                                        ; $4467: $2e $06

jr_005_4469:
	ld b, $03                                        ; $4469: $06 $03
	ld c, $05                                        ; $446b: $0e $05
	jp Jump_005_4433                                 ; $446d: $c3 $33 $44


Call_005_4470:
	push af                                          ; $4470: $f5
	ld b, $01                                        ; $4471: $06 $01
	ld c, $20                                        ; $4473: $0e $20
	ld hl, $c200                                     ; $4475: $21 $00 $c2
	or a                                             ; $4478: $b7
	jr z, jr_005_4480                                ; $4479: $28 $05

	inc h                                            ; $447b: $24
	ld b, $02                                        ; $447c: $06 $02
	ld c, $50                                        ; $447e: $0e $50

jr_005_4480:
	ld l, $00                                        ; $4480: $2e $00
	ld [hl], b                                       ; $4482: $70
	ld l, $01                                        ; $4483: $2e $01
	ld [hl], $00                                     ; $4485: $36 $00
	ld l, $05                                        ; $4487: $2e $05
	ld [hl], c                                       ; $4489: $71
	ld l, $07                                        ; $448a: $2e $07
	ld [hl], $08                                     ; $448c: $36 $08
	push hl                                          ; $448e: $e5
	ld a, [$d082]                                    ; $448f: $fa $82 $d0
	sla a                                            ; $4492: $cb $27
	ld hl, $415f                                     ; $4494: $21 $5f $41
	call $ce99                                       ; $4497: $cd $99 $ce
	ld d, h                                          ; $449a: $54
	ld e, l                                          ; $449b: $5d
	pop hl                                           ; $449c: $e1
	ld l, $08                                        ; $449d: $2e $08
	ld a, [de]                                       ; $449f: $1a
	ld [hl], a                                       ; $44a0: $77
	inc de                                           ; $44a1: $13
	inc hl                                           ; $44a2: $23
	ld a, [de]                                       ; $44a3: $1a
	ld [hl], a                                       ; $44a4: $77
	ld de, $41c5                                     ; $44a5: $11 $c5 $41
	ld a, [$d082]                                    ; $44a8: $fa $82 $d0
	ld b, a                                          ; $44ab: $47
	ld c, $03                                        ; $44ac: $0e $03
	call BCequBtimesC                                       ; $44ae: $cd $5f $12
	call wAddBContoDE                                       ; $44b1: $cd $92 $ce
	ld h, $01                                        ; $44b4: $26 $01
	pop af                                           ; $44b6: $f1
	or a                                             ; $44b7: $b7
	jr nz, jr_005_44be                               ; $44b8: $20 $04

	ld l, $04                                        ; $44ba: $2e $04
	jr jr_005_44c0                                   ; $44bc: $18 $02

jr_005_44be:
	ld l, $0a                                        ; $44be: $2e $0a

jr_005_44c0:
	ld b, $03                                        ; $44c0: $06 $03
	ld c, $02                                        ; $44c2: $0e $02
	jp Jump_005_4433                                 ; $44c4: $c3 $33 $44


Jump_005_44c7:
	push hl                                          ; $44c7: $e5
	ld hl, $d025                                     ; $44c8: $21 $25 $d0
	xor a                                            ; $44cb: $af
	ld [hl+], a                                      ; $44cc: $22
	ld [hl+], a                                      ; $44cd: $22
	ld a, $16                                        ; $44ce: $3e $16
	ld [hl+], a                                      ; $44d0: $22
	ld a, $00                                        ; $44d1: $3e $00
	sla a                                            ; $44d3: $cb $27
	ld [hl+], a                                      ; $44d5: $22
	ld a, $08                                        ; $44d6: $3e $08
	ld [hl+], a                                      ; $44d8: $22
	xor a                                            ; $44d9: $af
	ld [hl+], a                                      ; $44da: $22
	ld a, $17                                        ; $44db: $3e $17
	ld [hl+], a                                      ; $44dd: $22
	ld a, $00                                        ; $44de: $3e $00
	ld de, $d025                                     ; $44e0: $11 $25 $d0
	jr jr_005_451f                                   ; $44e3: $18 $3a

Jump_005_44e5:
	push hl                                          ; $44e5: $e5
	ld hl, $d02d                                     ; $44e6: $21 $2d $d0
	xor a                                            ; $44e9: $af
	ld [hl+], a                                      ; $44ea: $22
	ld [hl+], a                                      ; $44eb: $22
	ld a, $18                                        ; $44ec: $3e $18
	ld [hl+], a                                      ; $44ee: $22
	ld a, $01                                        ; $44ef: $3e $01
	sla a                                            ; $44f1: $cb $27
	ld [hl+], a                                      ; $44f3: $22
	ld a, $08                                        ; $44f4: $3e $08
	ld [hl+], a                                      ; $44f6: $22
	xor a                                            ; $44f7: $af
	ld [hl+], a                                      ; $44f8: $22
	ld a, $19                                        ; $44f9: $3e $19
	ld [hl+], a                                      ; $44fb: $22
	ld a, $01                                        ; $44fc: $3e $01
	ld de, $d02d                                     ; $44fe: $11 $2d $d0
	jr jr_005_451f                                   ; $4501: $18 $1c

Jump_005_4503:
	push hl                                          ; $4503: $e5
	ld hl, $d01d                                     ; $4504: $21 $1d $d0
	xor a                                            ; $4507: $af
	ld [hl+], a                                      ; $4508: $22
	ld [hl+], a                                      ; $4509: $22
	ld a, $1a                                        ; $450a: $3e $1a
	ld [hl+], a                                      ; $450c: $22
	ld a, $02                                        ; $450d: $3e $02
	sla a                                            ; $450f: $cb $27
	ld [hl+], a                                      ; $4511: $22
	ld a, $08                                        ; $4512: $3e $08
	ld [hl+], a                                      ; $4514: $22
	xor a                                            ; $4515: $af
	ld [hl+], a                                      ; $4516: $22
	ld a, $1b                                        ; $4517: $3e $1b
	ld [hl+], a                                      ; $4519: $22
	ld a, $02                                        ; $451a: $3e $02
	ld de, $d01d                                     ; $451c: $11 $1d $d0

jr_005_451f:
	scf                                              ; $451f: $37
	rla                                              ; $4520: $17
	ld [hl+], a                                      ; $4521: $22
	ld hl, $c200                                     ; $4522: $21 $00 $c2
	ld a, [$d01c]                                    ; $4525: $fa $1c $d0
	add h                                            ; $4528: $84
	ld h, a                                          ; $4529: $67
	ld a, [$d01c]                                    ; $452a: $fa $1c $d0
	inc a                                            ; $452d: $3c
	ld [hl], a                                       ; $452e: $77
	ld [$d01c], a                                    ; $452f: $ea $1c $d0
	ld l, $01                                        ; $4532: $2e $01
	ld [hl], $00                                     ; $4534: $36 $00
	pop bc                                           ; $4536: $c1
	ld l, $05                                        ; $4537: $2e $05
	ld a, c                                          ; $4539: $79
	sla a                                            ; $453a: $cb $27
	sla a                                            ; $453c: $cb $27
	sla a                                            ; $453e: $cb $27
	add $10                                          ; $4540: $c6 $10
	ld [hl], a                                       ; $4542: $77
	ld l, $07                                        ; $4543: $2e $07
	ld a, b                                          ; $4545: $78
	sla a                                            ; $4546: $cb $27
	sla a                                            ; $4548: $cb $27
	sla a                                            ; $454a: $cb $27
	ld [hl], a                                       ; $454c: $77
	ld l, $08                                        ; $454d: $2e $08
	ld [hl], e                                       ; $454f: $73
	inc hl                                           ; $4550: $23
	ld [hl], d                                       ; $4551: $72
	ld a, $01                                        ; $4552: $3e $01
	scf                                              ; $4554: $37
	ret                                              ; $4555: $c9


Call_005_4556:
	ld a, [$d089]                                    ; $4556: $fa $89 $d0
	cp $27                                           ; $4559: $fe $27
	jr z, jr_005_459a                                ; $455b: $28 $3d

	ld a, [$d08a]                                    ; $455d: $fa $8a $d0
	or a                                             ; $4560: $b7
	jr z, jr_005_4577                                ; $4561: $28 $14

	ld a, $56                                        ; $4563: $3e $56
	push hl                                          ; $4565: $e5
	ld hl, $d002                                     ; $4566: $21 $02 $d0
	ld [hl+], a                                      ; $4569: $22
	inc a                                            ; $456a: $3c
	ld [hl], a                                       ; $456b: $77
	pop hl                                           ; $456c: $e1
	ld de, $d002                                     ; $456d: $11 $02 $d0
	ld b, $02                                        ; $4570: $06 $02
	ld c, $05                                        ; $4572: $0e $05
	jp Jump_005_4601                                 ; $4574: $c3 $01 $46


jr_005_4577:
	ld a, [$d08e]                                    ; $4577: $fa $8e $d0
	cp $ff                                           ; $457a: $fe $ff
	jr z, jr_005_459a                                ; $457c: $28 $1c

	cp $0e                                           ; $457e: $fe $0e
	jr nz, jr_005_4586                               ; $4580: $20 $04

	ld a, $52                                        ; $4582: $3e $52
	jr jr_005_4588                                   ; $4584: $18 $02

jr_005_4586:
	ld a, $54                                        ; $4586: $3e $54

jr_005_4588:
	push hl                                          ; $4588: $e5
	ld hl, $d002                                     ; $4589: $21 $02 $d0
	ld [hl+], a                                      ; $458c: $22
	inc a                                            ; $458d: $3c
	ld [hl], a                                       ; $458e: $77
	pop hl                                           ; $458f: $e1
	ld de, $d002                                     ; $4590: $11 $02 $d0
	ld b, $02                                        ; $4593: $06 $02
	ld c, $04                                        ; $4595: $0e $04
	jp Jump_005_4601                                 ; $4597: $c3 $01 $46


jr_005_459a:
	ld a, [$d089]                                    ; $459a: $fa $89 $d0
	or a                                             ; $459d: $b7
	jr z, jr_005_460c                                ; $459e: $28 $6c

	cp $01                                           ; $45a0: $fe $01
	jp z, Jump_005_44c7                              ; $45a2: $ca $c7 $44

	cp $02                                           ; $45a5: $fe $02
	jp z, Jump_005_44e5                              ; $45a7: $ca $e5 $44

	cp $0c                                           ; $45aa: $fe $0c
	jp z, Jump_005_44e5                              ; $45ac: $ca $e5 $44

	cp $0d                                           ; $45af: $fe $0d
	jp z, Jump_005_44e5                              ; $45b1: $ca $e5 $44

	cp $0e                                           ; $45b4: $fe $0e
	jp z, Jump_005_44e5                              ; $45b6: $ca $e5 $44

	cp $19                                           ; $45b9: $fe $19
	jp z, Jump_005_44e5                              ; $45bb: $ca $e5 $44

	cp $24                                           ; $45be: $fe $24
	jp z, Jump_005_4503                              ; $45c0: $ca $03 $45

	dec a                                            ; $45c3: $3d
	push hl                                          ; $45c4: $e5
	ld hl, $41f1                                     ; $45c5: $21 $f1 $41
	call $ce99                                       ; $45c8: $cd $99 $ce
	ld a, [hl]                                       ; $45cb: $7e
	or a                                             ; $45cc: $b7
	jp z, Jump_005_460b                              ; $45cd: $ca $0b $46

	dec a                                            ; $45d0: $3d
	ld b, a                                          ; $45d1: $47
	ld c, $03                                        ; $45d2: $0e $03
	call BCequBtimesC                                       ; $45d4: $cd $5f $12
	ld a, c                                          ; $45d7: $79
	ld hl, $4218                                     ; $45d8: $21 $18 $42
	call $ce99                                       ; $45db: $cd $99 $ce
	ld a, [hl+]                                      ; $45de: $2a
	ld [$c0f0], a                                    ; $45df: $ea $f0 $c0
	ld a, [hl+]                                      ; $45e2: $2a
	ld c, a                                          ; $45e3: $4f
	ld a, [hl]                                       ; $45e4: $7e
	ld [$c0f1], a                                    ; $45e5: $ea $f1 $c0
	ld b, a                                          ; $45e8: $47
	sla b                                            ; $45e9: $cb $20
	ld hl, $d002                                     ; $45eb: $21 $02 $d0

jr_005_45ee:
	ld a, [$c0f0]                                    ; $45ee: $fa $f0 $c0
	ld [hl+], a                                      ; $45f1: $22
	inc a                                            ; $45f2: $3c
	ld [hl+], a                                      ; $45f3: $22
	ld a, [$c0f1]                                    ; $45f4: $fa $f1 $c0
	dec a                                            ; $45f7: $3d
	ld [$c0f1], a                                    ; $45f8: $ea $f1 $c0
	jr nz, jr_005_45ee                               ; $45fb: $20 $f1

	ld de, $d002                                     ; $45fd: $11 $02 $d0
	pop hl                                           ; $4600: $e1

Jump_005_4601:
	ld a, b                                          ; $4601: $78
	srl a                                            ; $4602: $cb $3f
	push af                                          ; $4604: $f5
	call Call_005_4433                               ; $4605: $cd $33 $44
	pop af                                           ; $4608: $f1
	scf                                              ; $4609: $37
	ret                                              ; $460a: $c9


Jump_005_460b:
	pop hl                                           ; $460b: $e1

jr_005_460c:
	xor a                                            ; $460c: $af
	ret                                              ; $460d: $c9


Call_005_460e:
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $460e: $cd $ef $2d
	ldh a, [hDisp0_LCDC]                                     ; $4611: $f0 $82
	and $e3                                          ; $4613: $e6 $e3
	or $83                                           ; $4615: $f6 $83
	ldh [hDisp0_LCDC], a                                     ; $4617: $e0 $82
	ld hl, $4191                                     ; $4619: $21 $91 $41
	call $0aab                                       ; $461c: $cd $ab $0a
	ld a, [wInitialA]                                    ; $461f: $fa $00 $c1
	cp $11                                           ; $4622: $fe $11
	jr nz, jr_005_463a                               ; $4624: $20 $14

	ld bc, $625c                                     ; $4626: $01 $5c $62
	call $18c0                                       ; $4629: $cd $c0 $18
	ld bc, $6812                                     ; $462c: $01 $12 $68
	call $188c                                       ; $462f: $cd $8c $18
	ld hl, $41ac                                     ; $4632: $21 $ac $41
	call $0aab                                       ; $4635: $cd $ab $0a
	jr jr_005_4646                                   ; $4638: $18 $0c

jr_005_463a:
	ld a, $e4                                        ; $463a: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $463c: $e0 $85
	ld a, $e4                                        ; $463e: $3e $e4
	ldh [hDisp0_OBP0], a                                     ; $4640: $e0 $86
	ld a, $e4                                        ; $4642: $3e $e4
	ldh [hDisp0_OBP1], a                                     ; $4644: $e0 $87

jr_005_4646:
	ld hl, $41b2                                     ; $4646: $21 $b2 $41
	call $0aab                                       ; $4649: $cd $ab $0a
	ld hl, $da80                                     ; $464c: $21 $80 $da
	ld c, $9a                                        ; $464f: $0e $9a
	xor a                                            ; $4651: $af

jr_005_4652:
	ld [hl+], a                                      ; $4652: $22
	dec c                                            ; $4653: $0d
	jr nz, jr_005_4652                               ; $4654: $20 $fc

	ld [$d010], a                                    ; $4656: $ea $10 $d0
	ld a, [$a224]                                    ; $4659: $fa $24 $a2
	ld [$d081], a                                    ; $465c: $ea $81 $d0
	ld a, [$a226]                                    ; $465f: $fa $26 $a2
	ld [$d082], a                                    ; $4662: $ea $82 $d0
	xor a                                            ; $4665: $af
	call Call_005_444c                               ; $4666: $cd $4c $44
	ld a, [$d082]                                    ; $4669: $fa $82 $d0
	cp $0b                                           ; $466c: $fe $0b
	jr nz, jr_005_467c                               ; $466e: $20 $0c

	ld a, [$d081]                                    ; $4670: $fa $81 $d0
	inc a                                            ; $4673: $3c
	ld [$d081], a                                    ; $4674: $ea $81 $d0
	ld a, $01                                        ; $4677: $3e $01
	call Call_005_444c                               ; $4679: $cd $4c $44

jr_005_467c:
	xor a                                            ; $467c: $af
	call Call_005_4470                               ; $467d: $cd $70 $44
	ld a, [$d082]                                    ; $4680: $fa $82 $d0
	inc a                                            ; $4683: $3c
	cp $0c                                           ; $4684: $fe $0c
	jr c, jr_005_4689                                ; $4686: $38 $01

	xor a                                            ; $4688: $af

jr_005_4689:
	ld [$d082], a                                    ; $4689: $ea $82 $d0
	ld a, $01                                        ; $468c: $3e $01
	call Call_005_4470                               ; $468e: $cd $70 $44
	ld a, $02                                        ; $4691: $3e $02
	ld [$d01c], a                                    ; $4693: $ea $1c $d0
	ld a, [$a224]                                    ; $4696: $fa $24 $a2
	ld [$d081], a                                    ; $4699: $ea $81 $d0
	ld a, [$a226]                                    ; $469c: $fa $26 $a2
	ld [$d082], a                                    ; $469f: $ea $82 $d0
	xor a                                            ; $46a2: $af
	ld [$d083], a                                    ; $46a3: $ea $83 $d0
	ld [$c0d2], a                                    ; $46a6: $ea $d2 $c0

Jump_005_46a9:
	call Call_005_4263                               ; $46a9: $cd $63 $42
	ld a, e                                          ; $46ac: $7b
	ld hl, $4111                                     ; $46ad: $21 $11 $41
	add hl, de                                       ; $46b0: $19
	ld a, [hl]                                       ; $46b1: $7e
	ld [$c0d3], a                                    ; $46b2: $ea $d3 $c0
	inc hl                                           ; $46b5: $23
	ld a, [hl]                                       ; $46b6: $7e
	ld [$c0ee], a                                    ; $46b7: $ea $ee $c0
	ld hl, $4138                                     ; $46ba: $21 $38 $41
	add hl, de                                       ; $46bd: $19
	ld a, [hl]                                       ; $46be: $7e
	ld [$c0d4], a                                    ; $46bf: $ea $d4 $c0
	inc hl                                           ; $46c2: $23
	ld a, [hl]                                       ; $46c3: $7e
	ld [$c0ed], a                                    ; $46c4: $ea $ed $c0

Jump_005_46c7:
	ld a, [$c0d3]                                    ; $46c7: $fa $d3 $c0
	sla a                                            ; $46ca: $cb $27
	add $05                                          ; $46cc: $c6 $05
	ld h, a                                          ; $46ce: $67
	ld a, [$c0d2]                                    ; $46cf: $fa $d2 $c0
	ld l, a                                          ; $46d2: $6f
	ld a, [$d083]                                    ; $46d3: $fa $83 $d0
	cp $09                                           ; $46d6: $fe $09
	jr c, jr_005_46f3                                ; $46d8: $38 $19

	inc a                                            ; $46da: $3c
	ld b, $0a                                        ; $46db: $06 $0a
	call $12b5                                       ; $46dd: $cd $b5 $12
	dec a                                            ; $46e0: $3d
	add $23                                          ; $46e1: $c6 $23
	ld [$c0e9], a                                    ; $46e3: $ea $e9 $c0
	ld a, b                                          ; $46e6: $78
	add $26                                          ; $46e7: $c6 $26
	ld [$c0ea], a                                    ; $46e9: $ea $ea $c0
	ld a, $02                                        ; $46ec: $3e $02
	ld [$c0eb], a                                    ; $46ee: $ea $eb $c0
	jr jr_005_46fd                                   ; $46f1: $18 $0a

jr_005_46f3:
	add $27                                          ; $46f3: $c6 $27
	ld [$c0e9], a                                    ; $46f5: $ea $e9 $c0
	ld a, $01                                        ; $46f8: $3e $01
	ld [$c0eb], a                                    ; $46fa: $ea $eb $c0

jr_005_46fd:
	push hl                                          ; $46fd: $e5
	call Call_005_4acd                               ; $46fe: $cd $cd $4a
	jr c, jr_005_471f                                ; $4701: $38 $1c

	pop hl                                           ; $4703: $e1
	push hl                                          ; $4704: $e5
	ld a, h                                          ; $4705: $7c
	sub $05                                          ; $4706: $d6 $05
	ld b, l                                          ; $4708: $45
	ld c, $0e                                        ; $4709: $0e $0e
	push af                                          ; $470b: $f5
	call BCequBtimesC                                       ; $470c: $cd $5f $12
	pop af                                           ; $470f: $f1
	add c                                            ; $4710: $81
	ld hl, $da80                                     ; $4711: $21 $80 $da
	call $ce99                                       ; $4714: $cd $99 $ce
	ld a, [$d082]                                    ; $4717: $fa $82 $d0
	ld [hl+], a                                      ; $471a: $22
	ld a, [$d083]                                    ; $471b: $fa $83 $d0
	ld [hl], a                                       ; $471e: $77

jr_005_471f:
	call Call_005_47d7                               ; $471f: $cd $d7 $47
	call Call_005_491e                               ; $4722: $cd $1e $49
	pop hl                                           ; $4725: $e1
	call Call_005_4556                               ; $4726: $cd $56 $45
	jr nc, jr_005_472e                               ; $4729: $30 $03

	ld c, a                                          ; $472b: $4f
	jr jr_005_4776                                   ; $472c: $18 $48

jr_005_472e:
	ld de, $c0e9                                     ; $472e: $11 $e9 $c0
	ld a, [$c0eb]                                    ; $4731: $fa $eb $c0
	ld b, a                                          ; $4734: $47
	cp $02                                           ; $4735: $fe $02
	jr nc, jr_005_473a                               ; $4737: $30 $01

	inc h                                            ; $4739: $24

jr_005_473a:
	ld a, [$d087]                                    ; $473a: $fa $87 $d0
	or a                                             ; $473d: $b7
	jr z, jr_005_4764                                ; $473e: $28 $24

	ld a, [wInitialA]                                    ; $4740: $fa $00 $c1
	cp $11                                           ; $4743: $fe $11
	jr nz, jr_005_474b                               ; $4745: $20 $04

	ld c, $05                                        ; $4747: $0e $05
	jr jr_005_4771                                   ; $4749: $18 $26

jr_005_474b:
	ld a, [$c0e9]                                    ; $474b: $fa $e9 $c0
	add $0d                                          ; $474e: $c6 $0d
	ld [$c0e9], a                                    ; $4750: $ea $e9 $c0
	ld a, [$c0eb]                                    ; $4753: $fa $eb $c0
	cp $01                                           ; $4756: $fe $01
	jr z, jr_005_4771                                ; $4758: $28 $17

	ld a, [$c0ea]                                    ; $475a: $fa $ea $c0
	add $0d                                          ; $475d: $c6 $0d
	ld [$c0ea], a                                    ; $475f: $ea $ea $c0
	jr jr_005_4771                                   ; $4762: $18 $0d

jr_005_4764:
	ld a, [$c0d3]                                    ; $4764: $fa $d3 $c0
	cp $06                                           ; $4767: $fe $06
	jr nz, jr_005_476f                               ; $4769: $20 $04

	ld c, $04                                        ; $476b: $0e $04
	jr jr_005_4771                                   ; $476d: $18 $02

jr_005_476f:
	ld c, $03                                        ; $476f: $0e $03

jr_005_4771:
	call Call_005_4433                               ; $4771: $cd $33 $44
	ld c, $01                                        ; $4774: $0e $01

jr_005_4776:
	ld a, [$c0d4]                                    ; $4776: $fa $d4 $c0
	ld b, a                                          ; $4779: $47
	ld a, [$d083]                                    ; $477a: $fa $83 $d0
	inc a                                            ; $477d: $3c
	cp b                                             ; $477e: $b8
	jr nc, jr_005_479d                               ; $477f: $30 $1c

	ld [$d083], a                                    ; $4781: $ea $83 $d0
	ld a, [$c0d3]                                    ; $4784: $fa $d3 $c0
	inc a                                            ; $4787: $3c
	cp $07                                           ; $4788: $fe $07
	jr c, jr_005_4794                                ; $478a: $38 $08

	ld a, [$c0d2]                                    ; $478c: $fa $d2 $c0
	inc a                                            ; $478f: $3c
	ld [$c0d2], a                                    ; $4790: $ea $d2 $c0
	xor a                                            ; $4793: $af

jr_005_4794:
	ld [$c0d3], a                                    ; $4794: $ea $d3 $c0
	dec c                                            ; $4797: $0d
	jr nz, jr_005_4776                               ; $4798: $20 $dc

	jp Jump_005_46c7                                 ; $479a: $c3 $c7 $46


jr_005_479d:
	ld a, [$c0d2]                                    ; $479d: $fa $d2 $c0
	cp $06                                           ; $47a0: $fe $06
	jr nc, jr_005_47d7                               ; $47a2: $30 $33

	ld a, [$c0ed]                                    ; $47a4: $fa $ed $c0
	ld c, a                                          ; $47a7: $4f
	ld a, [$c0ee]                                    ; $47a8: $fa $ee $c0
	add c                                            ; $47ab: $81
	ld b, $07                                        ; $47ac: $06 $07
	call $12b5                                       ; $47ae: $cd $b5 $12
	ld c, a                                          ; $47b1: $4f
	ld a, b                                          ; $47b2: $78
	or a                                             ; $47b3: $b7
	jr z, jr_005_47b7                                ; $47b4: $28 $01

	inc c                                            ; $47b6: $0c

jr_005_47b7:
	ld a, $0b                                        ; $47b7: $3e $0b
	sub c                                            ; $47b9: $91
	ld [$c0d2], a                                    ; $47ba: $ea $d2 $c0
	xor a                                            ; $47bd: $af
	ld [$d083], a                                    ; $47be: $ea $83 $d0
	ld a, [$d082]                                    ; $47c1: $fa $82 $d0
	inc a                                            ; $47c4: $3c
	cp $0c                                           ; $47c5: $fe $0c
	jr c, jr_005_47d1                                ; $47c7: $38 $08

	ld a, [$d081]                                    ; $47c9: $fa $81 $d0
	inc a                                            ; $47cc: $3c
	ld [$d081], a                                    ; $47cd: $ea $81 $d0
	xor a                                            ; $47d0: $af

jr_005_47d1:
	ld [$d082], a                                    ; $47d1: $ea $82 $d0
	jp Jump_005_46a9                                 ; $47d4: $c3 $a9 $46


Call_005_47d7:
jr_005_47d7:
	push hl                                          ; $47d7: $e5
	push bc                                          ; $47d8: $c5
	push de                                          ; $47d9: $d5
	ld a, $ff                                        ; $47da: $3e $ff
	ld [$d08e], a                                    ; $47dc: $ea $8e $d0
	ld hl, $4177                                     ; $47df: $21 $77 $41
	ld c, $01                                        ; $47e2: $0e $01

jr_005_47e4:
	ld b, [hl]                                       ; $47e4: $46
	inc hl                                           ; $47e5: $23
	ld a, [$d082]                                    ; $47e6: $fa $82 $d0
	cp b                                             ; $47e9: $b8
	jr nz, jr_005_4805                               ; $47ea: $20 $19

	ld b, [hl]                                       ; $47ec: $46
	ld a, [$d083]                                    ; $47ed: $fa $83 $d0
	cp b                                             ; $47f0: $b8
	jr nz, jr_005_4805                               ; $47f1: $20 $12

	ld a, c                                          ; $47f3: $79
	ld hl, $a365                                     ; $47f4: $21 $65 $a3
	call $ce99                                       ; $47f7: $cd $99 $ce
	ld a, [hl]                                       ; $47fa: $7e
	and $04                                          ; $47fb: $e6 $04
	jr z, jr_005_4805                                ; $47fd: $28 $06

	ld a, c                                          ; $47ff: $79
	ld [$d08e], a                                    ; $4800: $ea $8e $d0
	jr jr_005_480c                                   ; $4803: $18 $07

jr_005_4805:
	inc hl                                           ; $4805: $23
	inc c                                            ; $4806: $0c
	ld a, c                                          ; $4807: $79
	cp $0e                                           ; $4808: $fe $0e
	jr c, jr_005_47e4                                ; $480a: $38 $d8

jr_005_480c:
	ld a, [$a21a]                                    ; $480c: $fa $1a $a2
	ld b, a                                          ; $480f: $47
	ld a, [$d082]                                    ; $4810: $fa $82 $d0
	cp b                                             ; $4813: $b8
	jr nz, jr_005_4825                               ; $4814: $20 $0f

	ld a, [$a21c]                                    ; $4816: $fa $1c $a2
	ld b, a                                          ; $4819: $47
	ld a, [$d083]                                    ; $481a: $fa $83 $d0
	cp b                                             ; $481d: $b8
	jr nz, jr_005_4825                               ; $481e: $20 $05

	ld a, $0e                                        ; $4820: $3e $0e
	ld [$d08e], a                                    ; $4822: $ea $8e $d0

jr_005_4825:
	ld a, [$a21f]                                    ; $4825: $fa $1f $a2
	ld b, a                                          ; $4828: $47
	ld a, [$d082]                                    ; $4829: $fa $82 $d0
	cp b                                             ; $482c: $b8
	jr nz, jr_005_483d                               ; $482d: $20 $0e

	ld a, [$a221]                                    ; $482f: $fa $21 $a2
	ld b, a                                          ; $4832: $47
	ld a, [$d083]                                    ; $4833: $fa $83 $d0
	cp b                                             ; $4836: $b8
	jr nz, jr_005_483d                               ; $4837: $20 $04

	xor a                                            ; $4839: $af
	ld [$d08e], a                                    ; $483a: $ea $8e $d0

jr_005_483d:
	call Call_005_4263                               ; $483d: $cd $63 $42
	call Call_005_427d                               ; $4840: $cd $7d $42
	call Call_005_499a                               ; $4843: $cd $9a $49
	ld hl, $d086                                     ; $4846: $21 $86 $d0
	ld a, [$d082]                                    ; $4849: $fa $82 $d0
	cp $02                                           ; $484c: $fe $02
	jr nc, jr_005_4854                               ; $484e: $30 $04

	ld [hl], $03                                     ; $4850: $36 $03
	jr jr_005_486e                                   ; $4852: $18 $1a

jr_005_4854:
	cp $05                                           ; $4854: $fe $05
	jr nc, jr_005_485c                               ; $4856: $30 $04

	ld [hl], $00                                     ; $4858: $36 $00
	jr jr_005_486e                                   ; $485a: $18 $12

jr_005_485c:
	cp $08                                           ; $485c: $fe $08
	jr nc, jr_005_4864                               ; $485e: $30 $04

	ld [hl], $01                                     ; $4860: $36 $01
	jr jr_005_486e                                   ; $4862: $18 $0a

jr_005_4864:
	cp $0b                                           ; $4864: $fe $0b
	jr nc, jr_005_486c                               ; $4866: $30 $04

	ld [hl], $02                                     ; $4868: $36 $02
	jr jr_005_486e                                   ; $486a: $18 $02

jr_005_486c:
	ld [hl], $03                                     ; $486c: $36 $03

jr_005_486e:
	xor a                                            ; $486e: $af
	ld [$d087], a                                    ; $486f: $ea $87 $d0
	ld a, [$d084]                                    ; $4872: $fa $84 $d0
	cp $00                                           ; $4875: $fe $00
	jr nz, jr_005_487e                               ; $4877: $20 $05

	or $01                                           ; $4879: $f6 $01
	ld [$d087], a                                    ; $487b: $ea $87 $d0

jr_005_487e:
	ld hl, $40eb                                     ; $487e: $21 $eb $40
	call Call_005_4943                               ; $4881: $cd $43 $49
	ld hl, $d088                                     ; $4884: $21 $88 $d0
	ld [hl], a                                       ; $4887: $77
	jr c, jr_005_4892                                ; $4888: $38 $08

	ld a, [$d087]                                    ; $488a: $fa $87 $d0
	or $02                                           ; $488d: $f6 $02
	ld [$d087], a                                    ; $488f: $ea $87 $d0

jr_005_4892:
	ld hl, $409f                                     ; $4892: $21 $9f $40
	call Call_005_4943                               ; $4895: $cd $43 $49
	ld [$d089], a                                    ; $4898: $ea $89 $d0
	ld a, [$a30c]                                    ; $489b: $fa $0c $a3
	xor $ff                                          ; $489e: $ee $ff
	jr nz, jr_005_48bd                               ; $48a0: $20 $1b

	ld a, [$d089]                                    ; $48a2: $fa $89 $d0
	cp $16                                           ; $48a5: $fe $16
	jr z, jr_005_48b9                                ; $48a7: $28 $10

	ld a, [$d089]                                    ; $48a9: $fa $89 $d0
	cp $17                                           ; $48ac: $fe $17
	jr z, jr_005_48b9                                ; $48ae: $28 $09

	ld a, [$d089]                                    ; $48b0: $fa $89 $d0
	cp $18                                           ; $48b3: $fe $18
	jr z, jr_005_48b9                                ; $48b5: $28 $02

	jr jr_005_48bd                                   ; $48b7: $18 $04

jr_005_48b9:
	xor a                                            ; $48b9: $af
	ld [$d089], a                                    ; $48ba: $ea $89 $d0

jr_005_48bd:
	ld a, [$a30c]                                    ; $48bd: $fa $0c $a3
	cp $ff                                           ; $48c0: $fe $ff
	jr z, jr_005_48db                                ; $48c2: $28 $17

	cp $04                                           ; $48c4: $fe $04
	jr c, jr_005_48db                                ; $48c6: $38 $13

	ld a, [$d084]                                    ; $48c8: $fa $84 $d0
	cp $00                                           ; $48cb: $fe $00
	jr nz, jr_005_48db                               ; $48cd: $20 $0c

	ld a, [$d085]                                    ; $48cf: $fa $85 $d0
	cp $03                                           ; $48d2: $fe $03
	jr nz, jr_005_48db                               ; $48d4: $20 $05

	ld a, $26                                        ; $48d6: $3e $26
	ld [$d089], a                                    ; $48d8: $ea $89 $d0

jr_005_48db:
	ld hl, $d08a                                     ; $48db: $21 $8a $d0
	xor a                                            ; $48de: $af
	ld [hl+], a                                      ; $48df: $22
	ld [hl+], a                                      ; $48e0: $22
	ld [hl+], a                                      ; $48e1: $22
	ld [hl+], a                                      ; $48e2: $22
	ld a, [$a22e]                                    ; $48e3: $fa $2e $a2
	or a                                             ; $48e6: $b7
	jr z, jr_005_493f                                ; $48e7: $28 $56

	ld d, a                                          ; $48e9: $57
	ld b, $00                                        ; $48ea: $06 $00
	ld hl, $a22f                                     ; $48ec: $21 $2f $a2

jr_005_48ef:
	ld a, $ff                                        ; $48ef: $3e $ff
	call Call_005_4968                               ; $48f1: $cd $68 $49
	inc hl                                           ; $48f4: $23
	inc hl                                           ; $48f5: $23
	jr c, jr_005_493f                                ; $48f6: $38 $47

	jr z, jr_005_4917                                ; $48f8: $28 $1d

	ld [$d08a], a                                    ; $48fa: $ea $8a $d0
	ld a, [hl+]                                      ; $48fd: $2a
	ld [$d08b], a                                    ; $48fe: $ea $8b $d0
	ld a, [hl]                                       ; $4901: $7e
	bit 7, a                                         ; $4902: $cb $7f
	jr z, jr_005_4912                                ; $4904: $28 $0c

	and $7f                                          ; $4906: $e6 $7f
	ld [$d08c], a                                    ; $4908: $ea $8c $d0
	ld a, $01                                        ; $490b: $3e $01
	ld [$d08d], a                                    ; $490d: $ea $8d $d0
	jr jr_005_493f                                   ; $4910: $18 $2d

jr_005_4912:
	ld [$d08c], a                                    ; $4912: $ea $8c $d0
	jr jr_005_493f                                   ; $4915: $18 $28

jr_005_4917:
	dec d                                            ; $4917: $15
	jr z, jr_005_493f                                ; $4918: $28 $25

	inc hl                                           ; $491a: $23
	inc hl                                           ; $491b: $23
	jr jr_005_48ef                                   ; $491c: $18 $d1

Call_005_491e:
	push hl                                          ; $491e: $e5
	push bc                                          ; $491f: $c5
	push de                                          ; $4920: $d5
	ld a, [$a3a2]                                    ; $4921: $fa $a2 $a3
	cp $ff                                           ; $4924: $fe $ff
	jr z, jr_005_493f                                ; $4926: $28 $17

	ld b, a                                          ; $4928: $47
	ld a, [$d082]                                    ; $4929: $fa $82 $d0
	cp b                                             ; $492c: $b8
	jr nz, jr_005_493f                               ; $492d: $20 $10

	ld a, [$a3a3]                                    ; $492f: $fa $a3 $a3
	ld b, a                                          ; $4932: $47
	ld a, [$d083]                                    ; $4933: $fa $83 $d0
	cp b                                             ; $4936: $b8
	jr nz, jr_005_493f                               ; $4937: $20 $06

	ld a, $27                                        ; $4939: $3e $27
	ld [$d089], a                                    ; $493b: $ea $89 $d0
	xor a                                            ; $493e: $af

jr_005_493f:
	pop de                                           ; $493f: $d1
	pop bc                                           ; $4940: $c1
	pop hl                                           ; $4941: $e1
	ret                                              ; $4942: $c9


Call_005_4943:
	ld b, $00                                        ; $4943: $06 $00

jr_005_4945:
	inc b                                            ; $4945: $04
	inc hl                                           ; $4946: $23
	ld a, [hl-]                                      ; $4947: $3a
	cp $ff                                           ; $4948: $fe $ff
	jr z, jr_005_4965                                ; $494a: $28 $19

	and $80                                          ; $494c: $e6 $80
	cp $80                                           ; $494e: $fe $80
	jr z, jr_005_4955                                ; $4950: $28 $03

	xor a                                            ; $4952: $af
	jr jr_005_4957                                   ; $4953: $18 $02

jr_005_4955:
	ld a, $01                                        ; $4955: $3e $01

jr_005_4957:
	push bc                                          ; $4957: $c5
	call Call_005_4968                               ; $4958: $cd $68 $49
	pop bc                                           ; $495b: $c1
	ret c                                            ; $495c: $d8

	jr z, jr_005_4961                                ; $495d: $28 $02

	ld a, b                                          ; $495f: $78
	ret                                              ; $4960: $c9


jr_005_4961:
	inc hl                                           ; $4961: $23
	inc hl                                           ; $4962: $23
	jr jr_005_4945                                   ; $4963: $18 $e0

jr_005_4965:
	xor a                                            ; $4965: $af
	scf                                              ; $4966: $37
	ret                                              ; $4967: $c9


Call_005_4968:
	ld b, a                                          ; $4968: $47
	inc hl                                           ; $4969: $23
	ld a, [hl-]                                      ; $496a: $3a
	and $0f                                          ; $496b: $e6 $0f
	ld c, a                                          ; $496d: $4f
	ld a, [$d082]                                    ; $496e: $fa $82 $d0
	cp c                                             ; $4971: $b9
	jr nz, jr_005_4998                               ; $4972: $20 $24

	ld a, [hl]                                       ; $4974: $7e
	and $1f                                          ; $4975: $e6 $1f
	ld c, a                                          ; $4977: $4f
	ld a, [$d083]                                    ; $4978: $fa $83 $d0
	cp c                                             ; $497b: $b9
	jr z, jr_005_4983                                ; $497c: $28 $05

	jr nc, jr_005_4998                               ; $497e: $30 $18

	xor a                                            ; $4980: $af
	scf                                              ; $4981: $37
	ret                                              ; $4982: $c9


jr_005_4983:
	ld a, b                                          ; $4983: $78
	or a                                             ; $4984: $b7
	jr nz, jr_005_4994                               ; $4985: $20 $0d

	inc hl                                           ; $4987: $23
	ld a, [hl-]                                      ; $4988: $3a
	and $30                                          ; $4989: $e6 $30
	swap a                                           ; $498b: $cb $37
	ld c, a                                          ; $498d: $4f
	ld a, [$d081]                                    ; $498e: $fa $81 $d0
	cp c                                             ; $4991: $b9
	jr nz, jr_005_4998                               ; $4992: $20 $04

jr_005_4994:
	ld a, $01                                        ; $4994: $3e $01
	or a                                             ; $4996: $b7
	ret                                              ; $4997: $c9


jr_005_4998:
	xor a                                            ; $4998: $af
	ret                                              ; $4999: $c9


Call_005_499a:
	ld a, [$d083]                                    ; $499a: $fa $83 $d0
	ld b, $07                                        ; $499d: $06 $07
	call $12b5                                       ; $499f: $cd $b5 $12
	inc a                                            ; $49a2: $3c
	ld [$d085], a                                    ; $49a3: $ea $85 $d0
	ret                                              ; $49a6: $c9


	ld a, [$a22e]                                    ; $49a7: $fa $2e $a2
	cp $0d                                           ; $49aa: $fe $0d
	ret nc                                           ; $49ac: $d0

	ld b, a                                          ; $49ad: $47
	ld c, $04                                        ; $49ae: $0e $04
	call BCequBtimesC                                       ; $49b0: $cd $5f $12
	ld hl, $a22f                                     ; $49b3: $21 $2f $a2
	add hl, bc                                       ; $49b6: $09
	ld a, [$d083]                                    ; $49b7: $fa $83 $d0
	ld [hl+], a                                      ; $49ba: $22
	ld a, [$d081]                                    ; $49bb: $fa $81 $d0
	swap a                                           ; $49be: $cb $37
	ld b, a                                          ; $49c0: $47
	ld a, [$d082]                                    ; $49c1: $fa $82 $d0
	or b                                             ; $49c4: $b0
	ld [hl+], a                                      ; $49c5: $22
	ld a, [$d08b]                                    ; $49c6: $fa $8b $d0
	ld [hl+], a                                      ; $49c9: $22
	ld b, $00                                        ; $49ca: $06 $00
	ld a, [$d08d]                                    ; $49cc: $fa $8d $d0
	or a                                             ; $49cf: $b7
	jr z, jr_005_49d4                                ; $49d0: $28 $02

	ld b, $80                                        ; $49d2: $06 $80

jr_005_49d4:
	ld a, [$d08c]                                    ; $49d4: $fa $8c $d0
	or b                                             ; $49d7: $b0
	ld [hl+], a                                      ; $49d8: $22
	ld a, [$a22e]                                    ; $49d9: $fa $2e $a2
	inc a                                            ; $49dc: $3c
	ld [$a22e], a                                    ; $49dd: $ea $2e $a2
	call Call_005_49e4                               ; $49e0: $cd $e4 $49
	ret                                              ; $49e3: $c9


Call_005_49e4:
	ld a, [$a22e]                                    ; $49e4: $fa $2e $a2
	cp $02                                           ; $49e7: $fe $02
	ret c                                            ; $49e9: $d8

	xor a                                            ; $49ea: $af
	ld [$c0d1], a                                    ; $49eb: $ea $d1 $c0
	ld a, $01                                        ; $49ee: $3e $01
	ld [$c0d0], a                                    ; $49f0: $ea $d0 $c0
	ld bc, $a22f                                     ; $49f3: $01 $2f $a2
	ld hl, $a233                                     ; $49f6: $21 $33 $a2

jr_005_49f9:
	inc bc                                           ; $49f9: $03
	inc hl                                           ; $49fa: $23
	ld a, [bc]                                       ; $49fb: $0a
	dec bc                                           ; $49fc: $0b
	ld d, [hl]                                       ; $49fd: $56
	dec hl                                           ; $49fe: $2b
	cp d                                             ; $49ff: $ba
	jr z, jr_005_4a06                                ; $4a00: $28 $04

	jr c, jr_005_4a1c                                ; $4a02: $38 $18

	jr jr_005_4a0d                                   ; $4a04: $18 $07

jr_005_4a06:
	ld a, [bc]                                       ; $4a06: $0a
	ld d, [hl]                                       ; $4a07: $56
	cp d                                             ; $4a08: $ba
	jr z, jr_005_4a1c                                ; $4a09: $28 $11

	jr c, jr_005_4a1c                                ; $4a0b: $38 $0f

jr_005_4a0d:
	ld e, $04                                        ; $4a0d: $1e $04
	push bc                                          ; $4a0f: $c5
	push hl                                          ; $4a10: $e5

jr_005_4a11:
	ld a, [bc]                                       ; $4a11: $0a
	ld d, [hl]                                       ; $4a12: $56
	ld [hl+], a                                      ; $4a13: $22
	ld a, d                                          ; $4a14: $7a
	ld [bc], a                                       ; $4a15: $02
	inc bc                                           ; $4a16: $03
	dec e                                            ; $4a17: $1d
	jr nz, jr_005_4a11                               ; $4a18: $20 $f7

	pop hl                                           ; $4a1a: $e1
	pop bc                                           ; $4a1b: $c1

jr_005_4a1c:
	ld a, $04                                        ; $4a1c: $3e $04
	rst AddAOntoHL                                          ; $4a1e: $ef
	ld a, [$a22e]                                    ; $4a1f: $fa $2e $a2
	ld d, a                                          ; $4a22: $57
	ld a, [$c0d0]                                    ; $4a23: $fa $d0 $c0
	inc a                                            ; $4a26: $3c
	ld [$c0d0], a                                    ; $4a27: $ea $d0 $c0
	cp d                                             ; $4a2a: $ba
	jr c, jr_005_49f9                                ; $4a2b: $38 $cc

	ld a, c                                          ; $4a2d: $79
	add $04                                          ; $4a2e: $c6 $04
	ld c, a                                          ; $4a30: $4f
	jr nc, jr_005_4a34                               ; $4a31: $30 $01

	inc b                                            ; $4a33: $04

jr_005_4a34:
	ld a, [$c0d1]                                    ; $4a34: $fa $d1 $c0
	inc a                                            ; $4a37: $3c
	ld [$c0d1], a                                    ; $4a38: $ea $d1 $c0
	ld d, a                                          ; $4a3b: $57
	ld a, [$a22e]                                    ; $4a3c: $fa $2e $a2
	dec a                                            ; $4a3f: $3d
	cp d                                             ; $4a40: $ba
	ret z                                            ; $4a41: $c8

	ld a, d                                          ; $4a42: $7a
	inc a                                            ; $4a43: $3c
	ld [$c0d0], a                                    ; $4a44: $ea $d0 $c0
	ld h, b                                          ; $4a47: $60
	ld l, c                                          ; $4a48: $69
	ld a, l                                          ; $4a49: $7d
	add $04                                          ; $4a4a: $c6 $04
	ld l, a                                          ; $4a4c: $6f
	jr nc, jr_005_49f9                               ; $4a4d: $30 $aa

	inc h                                            ; $4a4f: $24
	jr jr_005_49f9                                   ; $4a50: $18 $a7

	xor a                                            ; $4a52: $af
	ld [$c0d0], a                                    ; $4a53: $ea $d0 $c0
	ld a, [$a22e]                                    ; $4a56: $fa $2e $a2
	ld [$c0d1], a                                    ; $4a59: $ea $d1 $c0
	dec a                                            ; $4a5c: $3d
	ld b, a                                          ; $4a5d: $47
	ld c, $04                                        ; $4a5e: $0e $04
	call BCequBtimesC                                       ; $4a60: $cd $5f $12
	ld hl, $a22f                                     ; $4a63: $21 $2f $a2
	add hl, bc                                       ; $4a66: $09

jr_005_4a67:
	inc hl                                           ; $4a67: $23
	ld a, [hl-]                                      ; $4a68: $3a
	ld b, a                                          ; $4a69: $47
	ld a, [$d081]                                    ; $4a6a: $fa $81 $d0
	swap a                                           ; $4a6d: $cb $37
	ld c, a                                          ; $4a6f: $4f
	ld a, [$d082]                                    ; $4a70: $fa $82 $d0
	or c                                             ; $4a73: $b1
	cp b                                             ; $4a74: $b8
	jr z, jr_005_4a7b                                ; $4a75: $28 $04

	jr nc, jr_005_4a97                               ; $4a77: $30 $1e

	jr jr_005_4a82                                   ; $4a79: $18 $07

jr_005_4a7b:
	ld b, [hl]                                       ; $4a7b: $46
	ld a, [$d083]                                    ; $4a7c: $fa $83 $d0
	cp b                                             ; $4a7f: $b8
	jr nc, jr_005_4a97                               ; $4a80: $30 $15

jr_005_4a82:
	ld a, [$c0d1]                                    ; $4a82: $fa $d1 $c0
	dec a                                            ; $4a85: $3d
	ld [$c0d1], a                                    ; $4a86: $ea $d1 $c0
	ret z                                            ; $4a89: $c8

	dec hl                                           ; $4a8a: $2b
	dec hl                                           ; $4a8b: $2b
	dec hl                                           ; $4a8c: $2b
	dec hl                                           ; $4a8d: $2b
	ld a, [$c0d0]                                    ; $4a8e: $fa $d0 $c0
	inc a                                            ; $4a91: $3c
	ld [$c0d0], a                                    ; $4a92: $ea $d0 $c0
	jr jr_005_4a67                                   ; $4a95: $18 $d0

jr_005_4a97:
	inc hl                                           ; $4a97: $23
	inc hl                                           ; $4a98: $23
	inc hl                                           ; $4a99: $23
	inc hl                                           ; $4a9a: $23
	ld a, [$c0d0]                                    ; $4a9b: $fa $d0 $c0
	ld [$a22e], a                                    ; $4a9e: $ea $2e $a2
	ld de, $a22f                                     ; $4aa1: $11 $2f $a2

jr_005_4aa4:
	or a                                             ; $4aa4: $b7
	jr z, jr_005_4ab8                                ; $4aa5: $28 $11

	ld b, $04                                        ; $4aa7: $06 $04

jr_005_4aa9:
	ld a, [hl+]                                      ; $4aa9: $2a
	ld [de], a                                       ; $4aaa: $12
	inc de                                           ; $4aab: $13
	dec b                                            ; $4aac: $05
	jr nz, jr_005_4aa9                               ; $4aad: $20 $fa

	ld a, [$c0d0]                                    ; $4aaf: $fa $d0 $c0
	dec a                                            ; $4ab2: $3d
	ld [$c0d0], a                                    ; $4ab3: $ea $d0 $c0
	jr jr_005_4aa4                                   ; $4ab6: $18 $ec

jr_005_4ab8:
	ld h, d                                          ; $4ab8: $62
	ld l, e                                          ; $4ab9: $6b
	ld a, [$a22e]                                    ; $4aba: $fa $2e $a2
	ld b, a                                          ; $4abd: $47
	ld a, $0d                                        ; $4abe: $3e $0d
	sub b                                            ; $4ac0: $90
	ld b, a                                          ; $4ac1: $47
	ld c, $04                                        ; $4ac2: $0e $04
	call BCequBtimesC                                       ; $4ac4: $cd $5f $12
	xor a                                            ; $4ac7: $af

jr_005_4ac8:
	ld [hl+], a                                      ; $4ac8: $22
	dec c                                            ; $4ac9: $0d
	ret z                                            ; $4aca: $c8

	jr jr_005_4ac8                                   ; $4acb: $18 $fb

Call_005_4acd:
	ld a, [$d081]                                    ; $4acd: $fa $81 $d0
	cp $03                                           ; $4ad0: $fe $03
	jr nz, jr_005_4adb                               ; $4ad2: $20 $07

	ld a, [$d082]                                    ; $4ad4: $fa $82 $d0
	cp $02                                           ; $4ad7: $fe $02
	scf                                              ; $4ad9: $37
	ret z                                            ; $4ada: $c8

jr_005_4adb:
	ld a, [$d081]                                    ; $4adb: $fa $81 $d0
	ld [$c0f0], a                                    ; $4ade: $ea $f0 $c0
	ld a, [$d082]                                    ; $4ae1: $fa $82 $d0
	ld [$c0f1], a                                    ; $4ae4: $ea $f1 $c0
	ld a, [$d083]                                    ; $4ae7: $fa $83 $d0
	ld [$c0f2], a                                    ; $4aea: $ea $f2 $c0
	ld a, [$a224]                                    ; $4aed: $fa $24 $a2
	ld [$d081], a                                    ; $4af0: $ea $81 $d0
	ld a, [$a226]                                    ; $4af3: $fa $26 $a2
	ld [$d082], a                                    ; $4af6: $ea $82 $d0
	ld a, [$a228]                                    ; $4af9: $fa $28 $a2
	ld [$d083], a                                    ; $4afc: $ea $83 $d0
	ld a, $1d                                        ; $4aff: $3e $1d
	ld [$c0f3], a                                    ; $4b01: $ea $f3 $c0

jr_005_4b04:
	ld a, [$d081]                                    ; $4b04: $fa $81 $d0
	ld b, a                                          ; $4b07: $47
	ld a, [$c0f0]                                    ; $4b08: $fa $f0 $c0
	cp b                                             ; $4b0b: $b8
	jr nz, jr_005_4b3b                               ; $4b0c: $20 $2d

	ld a, [$d082]                                    ; $4b0e: $fa $82 $d0
	ld b, a                                          ; $4b11: $47
	ld a, [$c0f1]                                    ; $4b12: $fa $f1 $c0
	cp b                                             ; $4b15: $b8
	jr nz, jr_005_4b3b                               ; $4b16: $20 $23

	ld a, [$d083]                                    ; $4b18: $fa $83 $d0
	ld b, a                                          ; $4b1b: $47
	ld a, [$c0f2]                                    ; $4b1c: $fa $f2 $c0
	cp b                                             ; $4b1f: $b8
	jr nz, jr_005_4b3b                               ; $4b20: $20 $19

	call Call_005_47d7                               ; $4b22: $cd $d7 $47
	ld a, [$d087]                                    ; $4b25: $fa $87 $d0
	or a                                             ; $4b28: $b7
	jr z, jr_005_4b49                                ; $4b29: $28 $1e

	ld a, [$d08a]                                    ; $4b2b: $fa $8a $d0
	or a                                             ; $4b2e: $b7
	jr nz, jr_005_4b49                               ; $4b2f: $20 $18

	ld a, [$c0f3]                                    ; $4b31: $fa $f3 $c0
	cp $1d                                           ; $4b34: $fe $1d
	jr z, jr_005_4b49                                ; $4b36: $28 $11

	or a                                             ; $4b38: $b7
	jr jr_005_4b4a                                   ; $4b39: $18 $0f

jr_005_4b3b:
	ld a, [$c0f3]                                    ; $4b3b: $fa $f3 $c0
	dec a                                            ; $4b3e: $3d
	ld [$c0f3], a                                    ; $4b3f: $ea $f3 $c0
	jr z, jr_005_4b49                                ; $4b42: $28 $05

	call Call_005_4ba3                               ; $4b44: $cd $a3 $4b
	jr jr_005_4b04                                   ; $4b47: $18 $bb

jr_005_4b49:
	scf                                              ; $4b49: $37

jr_005_4b4a:
	ld a, [$c0f0]                                    ; $4b4a: $fa $f0 $c0
	ld [$d081], a                                    ; $4b4d: $ea $81 $d0
	ld a, [$c0f1]                                    ; $4b50: $fa $f1 $c0
	ld [$d082], a                                    ; $4b53: $ea $82 $d0
	ld a, [$c0f2]                                    ; $4b56: $fa $f2 $c0
	ld [$d083], a                                    ; $4b59: $ea $83 $d0
	ret                                              ; $4b5c: $c9


	ld a, [$a224]                                    ; $4b5d: $fa $24 $a2
	ld [$d081], a                                    ; $4b60: $ea $81 $d0
	ld a, [$a226]                                    ; $4b63: $fa $26 $a2
	ld [$d082], a                                    ; $4b66: $ea $82 $d0
	ld a, [$a228]                                    ; $4b69: $fa $28 $a2
	ld [$d083], a                                    ; $4b6c: $ea $83 $d0
	call Call_005_4ba3                               ; $4b6f: $cd $a3 $4b
	ld b, $1d                                        ; $4b72: $06 $1d

jr_005_4b74:
	ld a, [$d081]                                    ; $4b74: $fa $81 $d0
	cp $03                                           ; $4b77: $fe $03
	jr nz, jr_005_4b82                               ; $4b79: $20 $07

	ld a, [$d082]                                    ; $4b7b: $fa $82 $d0
	cp $02                                           ; $4b7e: $fe $02
	jr z, jr_005_4b9e                                ; $4b80: $28 $1c

jr_005_4b82:
	call Call_005_47d7                               ; $4b82: $cd $d7 $47
	ld a, [$d087]                                    ; $4b85: $fa $87 $d0
	or a                                             ; $4b88: $b7
	jr z, jr_005_4b94                                ; $4b89: $28 $09

	ld a, [$d08a]                                    ; $4b8b: $fa $8a $d0
	cp $01                                           ; $4b8e: $fe $01
	jr z, jr_005_4b94                                ; $4b90: $28 $02

	jr jr_005_4ba0                                   ; $4b92: $18 $0c

jr_005_4b94:
	dec b                                            ; $4b94: $05
	jr z, jr_005_4b9e                                ; $4b95: $28 $07

	push bc                                          ; $4b97: $c5
	call Call_005_4ba3                               ; $4b98: $cd $a3 $4b
	pop bc                                           ; $4b9b: $c1
	jr jr_005_4b74                                   ; $4b9c: $18 $d6

jr_005_4b9e:
	xor a                                            ; $4b9e: $af
	ret                                              ; $4b9f: $c9


jr_005_4ba0:
	ld a, $01                                        ; $4ba0: $3e $01
	ret                                              ; $4ba2: $c9


Call_005_4ba3:
	call Call_005_4274                               ; $4ba3: $cd $74 $42
	ld b, a                                          ; $4ba6: $47
	ld a, [$d083]                                    ; $4ba7: $fa $83 $d0
	inc a                                            ; $4baa: $3c
	ld [$d083], a                                    ; $4bab: $ea $83 $d0
	cp b                                             ; $4bae: $b8
	ret c                                            ; $4baf: $d8

	xor a                                            ; $4bb0: $af
	ld [$d083], a                                    ; $4bb1: $ea $83 $d0
	ld a, [$d082]                                    ; $4bb4: $fa $82 $d0
	inc a                                            ; $4bb7: $3c
	ld [$d082], a                                    ; $4bb8: $ea $82 $d0
	cp $0c                                           ; $4bbb: $fe $0c
	ret c                                            ; $4bbd: $d8

	xor a                                            ; $4bbe: $af
	ld [$d082], a                                    ; $4bbf: $ea $82 $d0
	ld a, [$d081]                                    ; $4bc2: $fa $81 $d0
	inc a                                            ; $4bc5: $3c
	ld [$d081], a                                    ; $4bc6: $ea $81 $d0
	ret                                              ; $4bc9: $c9


Call_005_4bca:
Jump_005_4bca:
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4bca: $cd $ef $2d
	call Call_005_4c5c                               ; $4bcd: $cd $5c $4c
	xor a                                            ; $4bd0: $af
	ld [$c15c], a                                    ; $4bd1: $ea $5c $c1
	ld [$c15d], a                                    ; $4bd4: $ea $5d $c1
	ld hl, $c152                                     ; $4bd7: $21 $52 $c1
	ld a, [$c165]                                    ; $4bda: $fa $65 $c1
	ld c, a                                          ; $4bdd: $4f
	ld b, $ff                                        ; $4bde: $06 $ff
	ld a, [$c151]                                    ; $4be0: $fa $51 $c1
	and a                                            ; $4be3: $a7
	jr nz, jr_005_4be9                               ; $4be4: $20 $03

	ld a, $10                                        ; $4be6: $3e $10
	ld [hl+], a                                      ; $4be8: $22

jr_005_4be9:
	inc b                                            ; $4be9: $04
	ld a, [$c166]                                    ; $4bea: $fa $66 $c1
	cp b                                             ; $4bed: $b8
	jr z, jr_005_4bf9                                ; $4bee: $28 $09

	ld a, [de]                                       ; $4bf0: $1a
	inc de                                           ; $4bf1: $13
	and c                                            ; $4bf2: $a1
	jr z, jr_005_4be9                                ; $4bf3: $28 $f4

	ld a, b                                          ; $4bf5: $78
	ld [hl+], a                                      ; $4bf6: $22
	jr jr_005_4be9                                   ; $4bf7: $18 $f0

jr_005_4bf9:
	ld a, [$c151]                                    ; $4bf9: $fa $51 $c1
	cp $02                                           ; $4bfc: $fe $02
	ret z                                            ; $4bfe: $c8

	cp $04                                           ; $4bff: $fe $04
	ret nc                                           ; $4c01: $d0

	ld a, $0f                                        ; $4c02: $3e $0f
	ld [hl], a                                       ; $4c04: $77
	ret                                              ; $4c05: $c9


Call_005_4c06:
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4c06: $cd $ef $2d
	call Call_005_4c5c                               ; $4c09: $cd $5c $4c
	xor a                                            ; $4c0c: $af
	ld [$c15c], a                                    ; $4c0d: $ea $5c $c1
	ld [$c15d], a                                    ; $4c10: $ea $5d $c1
	call Call_005_4c66                               ; $4c13: $cd $66 $4c
	ld hl, $da80                                     ; $4c16: $21 $80 $da
	ld c, $00                                        ; $4c19: $0e $00
	ld b, $ff                                        ; $4c1b: $06 $ff

jr_005_4c1d:
	inc b                                            ; $4c1d: $04
	ld a, [$c166]                                    ; $4c1e: $fa $66 $c1
	cp b                                             ; $4c21: $b8
	jr z, jr_005_4c34                                ; $4c22: $28 $10

	ld a, [de]                                       ; $4c24: $1a
	inc de                                           ; $4c25: $13
	push bc                                          ; $4c26: $c5
	ld b, a                                          ; $4c27: $47
	ld a, [$c165]                                    ; $4c28: $fa $65 $c1
	and b                                            ; $4c2b: $a0
	pop bc                                           ; $4c2c: $c1
	jr z, jr_005_4c1d                                ; $4c2d: $28 $ee

	ld a, b                                          ; $4c2f: $78
	ld [hl+], a                                      ; $4c30: $22
	inc c                                            ; $4c31: $0c
	jr jr_005_4c1d                                   ; $4c32: $18 $e9

jr_005_4c34:
	ld a, c                                          ; $4c34: $79
	ld c, $00                                        ; $4c35: $0e $00

jr_005_4c37:
	inc c                                            ; $4c37: $0c
	sub $05                                          ; $4c38: $d6 $05
	jr z, jr_005_4c3e                                ; $4c3a: $28 $02

	jr nc, jr_005_4c37                               ; $4c3c: $30 $f9

jr_005_4c3e:
	ld a, c                                          ; $4c3e: $79
	ld [$c160], a                                    ; $4c3f: $ea $60 $c1
	ld a, $01                                        ; $4c42: $3e $01
	ld [$c161], a                                    ; $4c44: $ea $61 $c1
	xor a                                            ; $4c47: $af
	call Call_005_4c70                               ; $4c48: $cd $70 $4c
	ld a, [$c160]                                    ; $4c4b: $fa $60 $c1
	dec a                                            ; $4c4e: $3d
	jr z, jr_005_4c56                                ; $4c4f: $28 $05

	ld a, $fd                                        ; $4c51: $3e $fd
	ld [$c15a], a                                    ; $4c53: $ea $5a $c1

jr_005_4c56:
	ld a, $fe                                        ; $4c56: $3e $fe
	ld [$c15b], a                                    ; $4c58: $ea $5b $c1
	ret                                              ; $4c5b: $c9


Call_005_4c5c:
	ld hl, $cbe7                                     ; $4c5c: $21 $e7 $cb
	push hl                                          ; $4c5f: $e5
	ld hl, $c152                                     ; $4c60: $21 $52 $c1
	or $ff                                           ; $4c63: $f6 $ff
	ret                                              ; $4c65: $c9


Call_005_4c66:
	ld hl, wMemSets+1*($20-$20)                                     ; $4c66: $21 $d1 $cb
	push hl                                          ; $4c69: $e5
	ld hl, $da80                                     ; $4c6a: $21 $80 $da
	or $ff                                           ; $4c6d: $f6 $ff
	ret                                              ; $4c6f: $c9


Call_005_4c70:
	ld hl, $ccd1                                     ; $4c70: $21 $d1 $cc
	push hl                                          ; $4c73: $e5
	ld hl, $da80                                     ; $4c74: $21 $80 $da
	rst AddAOntoHL                                          ; $4c77: $ef
	ld de, $c152                                     ; $4c78: $11 $52 $c1
	ret                                              ; $4c7b: $c9


Call_005_4c7c:
	ld a, [$c15c]                                    ; $4c7c: $fa $5c $c1
	cp $05                                           ; $4c7f: $fe $05
	jr c, jr_005_4c8e                                ; $4c81: $38 $0b

	jr jr_005_4cd3                                   ; $4c83: $18 $4e

Call_005_4c85:
	ld a, [$c15c]                                    ; $4c85: $fa $5c $c1
	cp $05                                           ; $4c88: $fe $05
	jr c, jr_005_4c8e                                ; $4c8a: $38 $02

	jr jr_005_4cf2                                   ; $4c8c: $18 $64

jr_005_4c8e:
	call Call_005_4d1e                               ; $4c8e: $cd $1e $4d
	jr nz, jr_005_4c9a                               ; $4c91: $20 $07

	ld a, b                                          ; $4c93: $78
	cp $00                                           ; $4c94: $fe $00
	ret z                                            ; $4c96: $c8

	dec a                                            ; $4c97: $3d
	jr jr_005_4ccf                                   ; $4c98: $18 $35

jr_005_4c9a:
	cp $08                                           ; $4c9a: $fe $08
	jr nz, jr_005_4ca5                               ; $4c9c: $20 $07

	ld a, b                                          ; $4c9e: $78
	cp $04                                           ; $4c9f: $fe $04
	ret z                                            ; $4ca1: $c8

	jp Jump_005_4d35                                 ; $4ca2: $c3 $35 $4d


jr_005_4ca5:
	cp $01                                           ; $4ca5: $fe $01
	ret nz                                           ; $4ca7: $c0

	ld a, [$c15e]                                    ; $4ca8: $fa $5e $c1
	cp $00                                           ; $4cab: $fe $00
	jr nz, jr_005_4cc0                               ; $4cad: $20 $11

	call Call_005_4d28                               ; $4caf: $cd $28 $4d
	inc b                                            ; $4cb2: $04

jr_005_4cb3:
	dec b                                            ; $4cb3: $05
	ld a, b                                          ; $4cb4: $78
	cp $04                                           ; $4cb5: $fe $04
	ret z                                            ; $4cb7: $c8

	call Call_005_4d2d                               ; $4cb8: $cd $2d $4d
	jr z, jr_005_4cb3                                ; $4cbb: $28 $f6

	ld a, b                                          ; $4cbd: $78
	jr jr_005_4ccf                                   ; $4cbe: $18 $0f

jr_005_4cc0:
	call Call_005_4d28                               ; $4cc0: $cd $28 $4d
	dec b                                            ; $4cc3: $05

jr_005_4cc4:
	inc b                                            ; $4cc4: $04
	ld a, b                                          ; $4cc5: $78
	cp $0a                                           ; $4cc6: $fe $0a
	ret z                                            ; $4cc8: $c8

	call Call_005_4d2d                               ; $4cc9: $cd $2d $4d
	jr z, jr_005_4cc4                                ; $4ccc: $28 $f6

	ld a, b                                          ; $4cce: $78

jr_005_4ccf:
	ld [$c15c], a                                    ; $4ccf: $ea $5c $c1
	ret                                              ; $4cd2: $c9


jr_005_4cd3:
	call Call_005_4d1e                               ; $4cd3: $cd $1e $4d
	jr nz, jr_005_4cdf                               ; $4cd6: $20 $07

	ld a, b                                          ; $4cd8: $78
	cp $05                                           ; $4cd9: $fe $05
	ret z                                            ; $4cdb: $c8

	dec a                                            ; $4cdc: $3d
	jr jr_005_4ccf                                   ; $4cdd: $18 $f0

jr_005_4cdf:
	cp $08                                           ; $4cdf: $fe $08
	jr nz, jr_005_4cea                               ; $4ce1: $20 $07

	ld a, b                                          ; $4ce3: $78
	cp $09                                           ; $4ce4: $fe $09
	ret z                                            ; $4ce6: $c8

	call Call_005_4d35                               ; $4ce7: $cd $35 $4d

jr_005_4cea:
	cp $02                                           ; $4cea: $fe $02
	ret nz                                           ; $4cec: $c0

	ld a, b                                          ; $4ced: $78
	sub $05                                          ; $4cee: $d6 $05
	jr jr_005_4ccf                                   ; $4cf0: $18 $dd

jr_005_4cf2:
	call Call_005_4d1e                               ; $4cf2: $cd $1e $4d
	jr nz, jr_005_4d01                               ; $4cf5: $20 $0a

	ld a, b                                          ; $4cf7: $78
	dec a                                            ; $4cf8: $3d
	call Call_005_4d2d                               ; $4cf9: $cd $2d $4d
	ret z                                            ; $4cfc: $c8

	ld a, b                                          ; $4cfd: $78
	dec a                                            ; $4cfe: $3d
	jr jr_005_4ccf                                   ; $4cff: $18 $ce

jr_005_4d01:
	cp $08                                           ; $4d01: $fe $08
	jr nz, jr_005_4d0c                               ; $4d03: $20 $07

	ld a, b                                          ; $4d05: $78
	cp $09                                           ; $4d06: $fe $09
	ret z                                            ; $4d08: $c8

	inc a                                            ; $4d09: $3c
	jr jr_005_4ccf                                   ; $4d0a: $18 $c3

jr_005_4d0c:
	cp $02                                           ; $4d0c: $fe $02
	ret nz                                           ; $4d0e: $c0

	ld a, b                                          ; $4d0f: $78
	sub $05                                          ; $4d10: $d6 $05
	ld b, a                                          ; $4d12: $47
	inc b                                            ; $4d13: $04

jr_005_4d14:
	dec b                                            ; $4d14: $05
	ld a, b                                          ; $4d15: $78
	call Call_005_4d2d                               ; $4d16: $cd $2d $4d
	jr z, jr_005_4d14                                ; $4d19: $28 $f9

	ld a, b                                          ; $4d1b: $78
	jr jr_005_4ccf                                   ; $4d1c: $18 $b1

Call_005_4d1e:
	ld a, [$c15c]                                    ; $4d1e: $fa $5c $c1
	ld b, a                                          ; $4d21: $47
	ld a, [wButtonsPressed]                                    ; $4d22: $fa $25 $c1
	cp $04                                           ; $4d25: $fe $04
	ret                                              ; $4d27: $c9


Call_005_4d28:
	ld a, $05                                        ; $4d28: $3e $05
	add b                                            ; $4d2a: $80
	ld b, a                                          ; $4d2b: $47
	ret                                              ; $4d2c: $c9


Call_005_4d2d:
	ld hl, $c152                                     ; $4d2d: $21 $52 $c1
	rst AddAOntoHL                                          ; $4d30: $ef
	ld a, [hl]                                       ; $4d31: $7e
	cp $ff                                           ; $4d32: $fe $ff
	ret                                              ; $4d34: $c9


Call_005_4d35:
Jump_005_4d35:
	inc a                                            ; $4d35: $3c
	call Call_005_4d2d                               ; $4d36: $cd $2d $4d
	ret z                                            ; $4d39: $c8

	ld a, b                                          ; $4d3a: $78
	inc a                                            ; $4d3b: $3c
	jr jr_005_4ccf                                   ; $4d3c: $18 $91

Call_005_4d3e:
Jump_005_4d3e:
	and $10                                          ; $4d3e: $e6 $10
	jr z, jr_005_4d79                                ; $4d40: $28 $37

	ld a, [$c15c]                                    ; $4d42: $fa $5c $c1
	cp $05                                           ; $4d45: $fe $05
	jp c, Jump_005_4f58                              ; $4d47: $da $58 $4f

	cp $08                                           ; $4d4a: $fe $08
	jr nz, jr_005_4d79                               ; $4d4c: $20 $2b

	ld a, [$c161]                                    ; $4d4e: $fa $61 $c1
	ld b, a                                          ; $4d51: $47
	ld a, [$c160]                                    ; $4d52: $fa $60 $c1
	cp $01                                           ; $4d55: $fe $01
	jr z, jr_005_4d79                                ; $4d57: $28 $20

	inc b                                            ; $4d59: $04
	cp b                                             ; $4d5a: $b8
	jr nc, jr_005_4d5f                               ; $4d5b: $30 $02

	ld b, $01                                        ; $4d5d: $06 $01

jr_005_4d5f:
	ld a, b                                          ; $4d5f: $78
	ld [$c161], a                                    ; $4d60: $ea $61 $c1
	dec b                                            ; $4d63: $05
	ld c, $05                                        ; $4d64: $0e $05
	call BCequBtimesC                                       ; $4d66: $cd $5f $12
	ld a, c                                          ; $4d69: $79
	call Call_005_4c70                               ; $4d6a: $cd $70 $4c
	call Call_005_4d7f                               ; $4d6d: $cd $7f $4d
	call Call_005_4e14                               ; $4d70: $cd $14 $4e
	call Call_005_4ed1                               ; $4d73: $cd $d1 $4e
	call Call_005_4f00                               ; $4d76: $cd $00 $4f

jr_005_4d79:
	call Call_005_4c85                               ; $4d79: $cd $85 $4c
	jp Jump_005_4f26                                 ; $4d7c: $c3 $26 $4f


Call_005_4d7f:
Jump_005_4d7f:
	ld a, $03                                        ; $4d7f: $3e $03
	ld [$c186], a                                    ; $4d81: $ea $86 $c1
	ldh a, [hDisp0_LCDC]                                     ; $4d84: $f0 $82
	and $c3                                          ; $4d86: $e6 $c3
	or $83                                           ; $4d88: $f6 $83
	ldh [hDisp0_LCDC], a                                     ; $4d8a: $e0 $82
	ld d, $ff                                        ; $4d8c: $16 $ff
	call $1a69                                       ; $4d8e: $cd $69 $1a
	ld bc, $0dc0                                     ; $4d91: $01 $c0 $0d
	ld hl, $8a40                                     ; $4d94: $21 $40 $8a

jr_005_4d97:
	di                                               ; $4d97: $f3

jr_005_4d98:
	ldh a, [rSTAT]                                   ; $4d98: $f0 $41
	bit 1, a                                         ; $4d9a: $cb $4f
	jr nz, jr_005_4d98                               ; $4d9c: $20 $fa

	xor a                                            ; $4d9e: $af
	ld [hl+], a                                      ; $4d9f: $22
	ei                                               ; $4da0: $fb
	dec bc                                           ; $4da1: $0b
	ld a, b                                          ; $4da2: $78
	or c                                             ; $4da3: $b1
	jr nz, jr_005_4d97                               ; $4da4: $20 $f1

	ld b, $0b                                        ; $4da6: $06 $0b
	ld hl, wDataCopyStruct                                     ; $4da8: $21 $d0 $d3
	ld de, $9800                                     ; $4dab: $11 $00 $98

jr_005_4dae:
	ld a, $01                                        ; $4dae: $3e $01
	ld [hl+], a                                      ; $4db0: $22
	ld a, $ec                                        ; $4db1: $3e $ec
	ld [hl+], a                                      ; $4db3: $22
	ld a, e                                          ; $4db4: $7b
	ld [hl+], a                                      ; $4db5: $22
	ld a, d                                          ; $4db6: $7a
	sla a                                            ; $4db7: $cb $27
	inc a                                            ; $4db9: $3c
	ld [hl+], a                                      ; $4dba: $22
	ld a, $07                                        ; $4dbb: $3e $07
	ld [hl+], a                                      ; $4dbd: $22
	ld a, $20                                        ; $4dbe: $3e $20
	call $1327                                       ; $4dc0: $cd $27 $13
	dec b                                            ; $4dc3: $05
	jr nz, jr_005_4dae                               ; $4dc4: $20 $e8

	ld a, $00                                        ; $4dc6: $3e $00
	ld [hl], a                                       ; $4dc8: $77
	call SafelyExecuteDataCopies                                       ; $4dc9: $cd $8b $14
	ld hl, $9800                                     ; $4dcc: $21 $00 $98
	ld b, $0b                                        ; $4dcf: $06 $0b
	ld c, $a4                                        ; $4dd1: $0e $a4
	call $390d                                       ; $4dd3: $cd $0d $39
	ret                                              ; $4dd6: $c9


Call_005_4dd7:
	ld a, [wInitialA]                                    ; $4dd7: $fa $00 $c1
	cp $11                                           ; $4dda: $fe $11
	jr z, jr_005_4deb                                ; $4ddc: $28 $0d

	ld a, $e4                                        ; $4dde: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $4de0: $e0 $85
	ld a, $e0                                        ; $4de2: $3e $e0
	ldh [hDisp0_OBP0], a                                     ; $4de4: $e0 $86
	ld a, $e0                                        ; $4de6: $3e $e0
	ldh [hDisp0_OBP1], a                                     ; $4de8: $e0 $87
	ret                                              ; $4dea: $c9


jr_005_4deb:
	ld bc, $6268                                     ; $4deb: $01 $68 $62
	call $18c0                                       ; $4dee: $cd $c0 $18
	ret                                              ; $4df1: $c9


Call_005_4df2:
Jump_005_4df2:
	ld b, $0b                                        ; $4df2: $06 $0b
	ld c, $10                                        ; $4df4: $0e $10
	ld de, $0140                                     ; $4df6: $11 $40 $01
	ld hl, $8ad0                                     ; $4df9: $21 $d0 $8a

jr_005_4dfc:
	push hl                                          ; $4dfc: $e5

jr_005_4dfd:
	di                                               ; $4dfd: $f3

jr_005_4dfe:
	ldh a, [rSTAT]                                   ; $4dfe: $f0 $41
	bit 1, a                                         ; $4e00: $cb $4f
	jr nz, jr_005_4dfe                               ; $4e02: $20 $fa

	ld a, [hl]                                       ; $4e04: $7e
	or $01                                           ; $4e05: $f6 $01
	ld [hl+], a                                      ; $4e07: $22
	ei                                               ; $4e08: $fb
	dec c                                            ; $4e09: $0d
	jr nz, jr_005_4dfd                               ; $4e0a: $20 $f1

	pop hl                                           ; $4e0c: $e1
	add hl, de                                       ; $4e0d: $19
	ld c, $10                                        ; $4e0e: $0e $10
	dec b                                            ; $4e10: $05
	jr nz, jr_005_4dfc                               ; $4e11: $20 $e9

	ret                                              ; $4e13: $c9


Call_005_4e14:
	call Call_005_4ebb                               ; $4e14: $cd $bb $4e
	ld d, $10                                        ; $4e17: $16 $10
	ld a, [$c151]                                    ; $4e19: $fa $51 $c1
	cp $02                                           ; $4e1c: $fe $02
	jr nz, jr_005_4e22                               ; $4e1e: $20 $02

	ld d, $04                                        ; $4e20: $16 $04

jr_005_4e22:
	ld e, $ff                                        ; $4e22: $1e $ff
	ld c, $ff                                        ; $4e24: $0e $ff

jr_005_4e26:
	inc c                                            ; $4e26: $0c
	inc e                                            ; $4e27: $1c
	inc e                                            ; $4e28: $1c
	ld a, c                                          ; $4e29: $79
	cp $05                                           ; $4e2a: $fe $05
	jr nz, jr_005_4e3b                               ; $4e2c: $20 $0d

	ld d, $60                                        ; $4e2e: $16 $60
	ld a, [$c151]                                    ; $4e30: $fa $51 $c1
	cp $02                                           ; $4e33: $fe $02
	jr nz, jr_005_4e39                               ; $4e35: $20 $02

	ld d, $54                                        ; $4e37: $16 $54

jr_005_4e39:
	ld e, $01                                        ; $4e39: $1e $01

jr_005_4e3b:
	ld a, $0a                                        ; $4e3b: $3e $0a
	cp c                                             ; $4e3d: $b9
	jr z, jr_005_4e65                                ; $4e3e: $28 $25

	ld hl, $c152                                     ; $4e40: $21 $52 $c1
	ld a, c                                          ; $4e43: $79
	rst AddAOntoHL                                          ; $4e44: $ef
	ld a, [hl]                                       ; $4e45: $7e
	cp $ff                                           ; $4e46: $fe $ff
	jr z, jr_005_4e26                                ; $4e48: $28 $dc

	ld b, a                                          ; $4e4a: $47
	ld h, d                                          ; $4e4b: $62
	ld l, e                                          ; $4e4c: $6b
	push bc                                          ; $4e4d: $c5
	push de                                          ; $4e4e: $d5
	call Func_1ceb                                       ; $4e4f: $cd $eb $1c
	call $1c0b                                       ; $4e52: $cd $0b $1c
	pop de                                           ; $4e55: $d1
	pop bc                                           ; $4e56: $c1
	ld hl, $4e63                                     ; $4e57: $21 $63 $4e
	push hl                                          ; $4e5a: $e5
	ld a, [$c15e]                                    ; $4e5b: $fa $5e $c1
	and a                                            ; $4e5e: $a7
	jr z, jr_005_4e69                                ; $4e5f: $28 $08

	jr jr_005_4e76                                   ; $4e61: $18 $13

	jr jr_005_4e26                                   ; $4e63: $18 $c1

jr_005_4e65:
	call Call_005_4dd7                               ; $4e65: $cd $d7 $4d
	ret                                              ; $4e68: $c9


jr_005_4e69:
	ld a, [$c167]                                    ; $4e69: $fa $67 $c1
	ld l, a                                          ; $4e6c: $6f
	ld a, [$c168]                                    ; $4e6d: $fa $68 $c1
	ld h, a                                          ; $4e70: $67
	ld a, b                                          ; $4e71: $78
	call Call_005_4e9c                               ; $4e72: $cd $9c $4e
	ret                                              ; $4e75: $c9


jr_005_4e76:
	ld a, b                                          ; $4e76: $78
	cp $fd                                           ; $4e77: $fe $fd
	jr nz, jr_005_4e7f                               ; $4e79: $20 $04

	ld a, $00                                        ; $4e7b: $3e $00
	jr jr_005_4e95                                   ; $4e7d: $18 $16

jr_005_4e7f:
	cp $fe                                           ; $4e7f: $fe $fe
	jr nz, jr_005_4e87                               ; $4e81: $20 $04

	ld a, $01                                        ; $4e83: $3e $01
	jr jr_005_4e95                                   ; $4e85: $18 $0e

jr_005_4e87:
	push af                                          ; $4e87: $f5
	ld a, [$c167]                                    ; $4e88: $fa $67 $c1
	ld l, a                                          ; $4e8b: $6f
	ld a, [$c168]                                    ; $4e8c: $fa $68 $c1
	ld h, a                                          ; $4e8f: $67
	pop af                                           ; $4e90: $f1
	call Call_005_4e9c                               ; $4e91: $cd $9c $4e
	ret                                              ; $4e94: $c9


jr_005_4e95:
	ld hl, $5901                                     ; $4e95: $21 $01 $59
	call Call_005_4e9c                               ; $4e98: $cd $9c $4e
	ret                                              ; $4e9b: $c9


Call_005_4e9c:
	call Call_005_4ead                               ; $4e9c: $cd $ad $4e
	rst AddAOntoHL                                          ; $4e9f: $ef
	ld a, [hl+]                                      ; $4ea0: $2a
	ld b, a                                          ; $4ea1: $47
	ld a, [hl+]                                      ; $4ea2: $2a
	ld h, [hl]                                       ; $4ea3: $66
	ld l, a                                          ; $4ea4: $6f
	push bc                                          ; $4ea5: $c5
	push de                                          ; $4ea6: $d5
	call Func_1c32                                       ; $4ea7: $cd $32 $1c
	pop de                                           ; $4eaa: $d1
	pop bc                                           ; $4eab: $c1
	ret                                              ; $4eac: $c9


Call_005_4ead:
	ld b, a                                          ; $4ead: $47
	sla a                                            ; $4eae: $cb $27
	add b                                            ; $4eb0: $80
	ret                                              ; $4eb1: $c9


Call_005_4eb2:
	ld a, l                                          ; $4eb2: $7d
	ld [$c167], a                                    ; $4eb3: $ea $67 $c1
	ld a, h                                          ; $4eb6: $7c
	ld [$c168], a                                    ; $4eb7: $ea $68 $c1
	ret                                              ; $4eba: $c9


Call_005_4ebb:
	ld a, $00                                        ; $4ebb: $3e $00
	ld [$d7f9], a                                    ; $4ebd: $ea $f9 $d7
	ld a, $03                                        ; $4ec0: $3e $03
	ld [$d7fa], a                                    ; $4ec2: $ea $fa $d7
	ret                                              ; $4ec5: $c9


Call_005_4ec6:
	ld a, $03                                        ; $4ec6: $3e $03
	ld [$d7f9], a                                    ; $4ec8: $ea $f9 $d7
	ld a, $00                                        ; $4ecb: $3e $00
	ld [$d7fa], a                                    ; $4ecd: $ea $fa $d7
	ret                                              ; $4ed0: $c9


Call_005_4ed1:
	ld hl, $8001                                     ; $4ed1: $21 $01 $80
	call Func_1ceb                                       ; $4ed4: $cd $eb $1c
	ld b, $1e                                        ; $4ed7: $06 $1e
	ld hl, $70d4                                     ; $4ed9: $21 $d4 $70
	call Func_1c32                                       ; $4edc: $cd $32 $1c
	ld h, $90                                        ; $4edf: $26 $90
	ld l, $01                                        ; $4ee1: $2e $01
	call Func_1ceb                                       ; $4ee3: $cd $eb $1c
	ld a, [$c160]                                    ; $4ee6: $fa $60 $c1
	ld e, a                                          ; $4ee9: $5f
	ld d, $00                                        ; $4eea: $16 $00
	call Call_005_5573                               ; $4eec: $cd $73 $55
	ld h, $80                                        ; $4eef: $26 $80
	ld l, $01                                        ; $4ef1: $2e $01
	call Func_1ceb                                       ; $4ef3: $cd $eb $1c
	ld a, [$c161]                                    ; $4ef6: $fa $61 $c1
	ld e, a                                          ; $4ef9: $5f
	ld d, $00                                        ; $4efa: $16 $00
	call Call_005_5573                               ; $4efc: $cd $73 $55
	ret                                              ; $4eff: $c9


Call_005_4f00:
	ld hl, $4fc3                                     ; $4f00: $21 $c3 $4f
	call $0aab                                       ; $4f03: $cd $ab $0a
	ld h, $c2                                        ; $4f06: $26 $c2
	ld l, $00                                        ; $4f08: $2e $00
	ld [hl], $01                                     ; $4f0a: $36 $01
	ld l, $01                                        ; $4f0c: $2e $01
	ld [hl], $00                                     ; $4f0e: $36 $00
	ld l, $05                                        ; $4f10: $2e $05
	ld [hl], $1a                                     ; $4f12: $36 $1a
	ld l, $07                                        ; $4f14: $2e $07
	ld [hl], $fa                                     ; $4f16: $36 $fa
	ld l, $08                                        ; $4f18: $2e $08
	ld [hl], $54                                     ; $4f1a: $36 $54
	inc hl                                           ; $4f1c: $23
	ld [hl], $7f                                     ; $4f1d: $36 $7f
	ld bc, $6689                                     ; $4f1f: $01 $89 $66
	call $18b3                                       ; $4f22: $cd $b3 $18
	ret                                              ; $4f25: $c9


Call_005_4f26:
Jump_005_4f26:
	ld h, $c2                                        ; $4f26: $26 $c2
	ld l, $07                                        ; $4f28: $2e $07
	ld [hl], $fa                                     ; $4f2a: $36 $fa
	push bc                                          ; $4f2c: $c5
	ld a, [$c15d]                                    ; $4f2d: $fa $5d $c1
	ld b, a                                          ; $4f30: $47
	ld a, [$c15c]                                    ; $4f31: $fa $5c $c1
	ld [$c15d], a                                    ; $4f34: $ea $5d $c1
	cp b                                             ; $4f37: $b8
	call nz, Call_005_4f4e                           ; $4f38: $c4 $4e $4f
	pop bc                                           ; $4f3b: $c1
	cp $05                                           ; $4f3c: $fe $05
	jr c, jr_005_4f44                                ; $4f3e: $38 $04

	ld [hl], $4a                                     ; $4f40: $36 $4a
	sub $05                                          ; $4f42: $d6 $05

jr_005_4f44:
	ld l, $05                                        ; $4f44: $2e $05
	swap a                                           ; $4f46: $cb $37
	and $f0                                          ; $4f48: $e6 $f0
	add $1a                                          ; $4f4a: $c6 $1a
	ld [hl], a                                       ; $4f4c: $77
	ret                                              ; $4f4d: $c9


Call_005_4f4e:
	push af                                          ; $4f4e: $f5
	ld a, [$d322]                                    ; $4f4f: $fa $22 $d3
	and a                                            ; $4f52: $a7
	call nz, $1b0f                                   ; $4f53: $c4 $0f $1b
	pop af                                           ; $4f56: $f1
	ret                                              ; $4f57: $c9


Jump_005_4f58:
	ld a, [$c15c]                                    ; $4f58: $fa $5c $c1
	call Call_005_4d2d                               ; $4f5b: $cd $2d $4d
	ld a, [hl]                                       ; $4f5e: $7e
	ld [wMenuOptionSelected], a                                    ; $4f5f: $ea $5f $c1
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4f62: $cd $ef $2d

Call_005_4f65:
Jump_005_4f65:
jr_005_4f65:
	ld a, [$d322]                                    ; $4f65: $fa $22 $d3
	and a                                            ; $4f68: $a7
	call nz, Func_1b14                                   ; $4f69: $c4 $14 $1b
	xor a                                            ; $4f6c: $af
	ld [$d7ef], a                                    ; $4f6d: $ea $ef $d7
	ld [wPastTitleScreen], a                                    ; $4f70: $ea $41 $c1
	ld [wGameState], a                                    ; $4f73: $ea $42 $c1
	ld [$d322], a                                    ; $4f76: $ea $22 $d3
	ld [$c1f0], a                                    ; $4f79: $ea $f0 $c1
	ld a, [wInitialA]                                    ; $4f7c: $fa $00 $c1
	cp $11                                           ; $4f7f: $fe $11
	ret nz                                           ; $4f81: $c0

	ret                                              ; $4f82: $c9


Jump_005_4f83:
	ld a, $ff                                        ; $4f83: $3e $ff
	ld [wMenuOptionSelected], a                                    ; $4f85: $ea $5f $c1
	xor a                                            ; $4f88: $af
	ld [$d322], a                                    ; $4f89: $ea $22 $d3
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4f8c: $cd $ef $2d
	jr jr_005_4f65                                   ; $4f8f: $18 $d4

Call_005_4f91:
	ld [$c166], a                                    ; $4f91: $ea $66 $c1
	push bc                                          ; $4f94: $c5
	ld b, a                                          ; $4f95: $47
	ld c, $08                                        ; $4f96: $0e $08
	ld e, $00                                        ; $4f98: $1e $00

jr_005_4f9a:
	ld d, [hl]                                       ; $4f9a: $56
	inc hl                                           ; $4f9b: $23

jr_005_4f9c:
	xor a                                            ; $4f9c: $af
	srl d                                            ; $4f9d: $cb $3a
	rla                                              ; $4f9f: $17
	call Call_005_4fb7                               ; $4fa0: $cd $b7 $4f
	dec b                                            ; $4fa3: $05
	jr z, jr_005_4fad                                ; $4fa4: $28 $07

	dec c                                            ; $4fa6: $0d
	jr nz, jr_005_4f9c                               ; $4fa7: $20 $f3

	ld c, $08                                        ; $4fa9: $0e $08
	jr jr_005_4f9a                                   ; $4fab: $18 $ed

jr_005_4fad:
	pop bc                                           ; $4fad: $c1
	ld de, $daa0                                     ; $4fae: $11 $a0 $da
	ld a, $01                                        ; $4fb1: $3e $01
	ld [$c165], a                                    ; $4fb3: $ea $65 $c1
	ret                                              ; $4fb6: $c9


Call_005_4fb7:
	push hl                                          ; $4fb7: $e5
	push af                                          ; $4fb8: $f5
	ld hl, $daa0                                     ; $4fb9: $21 $a0 $da
	ld a, e                                          ; $4fbc: $7b
	rst AddAOntoHL                                          ; $4fbd: $ef
	pop af                                           ; $4fbe: $f1
	ld [hl], a                                       ; $4fbf: $77
	inc e                                            ; $4fc0: $1c
	pop hl                                           ; $4fc1: $e1
	ret                                              ; $4fc2: $c9


	ld sp, hl                                        ; $4fc3: $f9
	ld de, $45a5                                     ; $4fc4: $11 $a5 $45
	nop                                              ; $4fc7: $00
	add b                                            ; $4fc8: $80
	rst $38                                          ; $4fc9: $ff
	ld sp, hl                                        ; $4fca: $f9
	ld de, $45c8                                     ; $4fcb: $11 $c8 $45
	nop                                              ; $4fce: $00
	add b                                            ; $4fcf: $80
	rst $38                                          ; $4fd0: $ff
	ld sp, hl                                        ; $4fd1: $f9
	ld de, $46b6                                     ; $4fd2: $11 $b6 $46
	ld b, b                                          ; $4fd5: $40
	add l                                            ; $4fd6: $85
	rst $38                                          ; $4fd7: $ff
	ld sp, hl                                        ; $4fd8: $f9
	ld de, $479d                                     ; $4fd9: $11 $9d $47
	ret nz                                           ; $4fdc: $c0

	add c                                            ; $4fdd: $81
	rst $38                                          ; $4fde: $ff
	ld sp, hl                                        ; $4fdf: $f9
	ld de, $4821                                     ; $4fe0: $11 $21 $48
	ret nz                                           ; $4fe3: $c0

	db $db                                           ; $4fe4: $db
	ld de, $48c8                                     ; $4fe5: $11 $c8 $48
	ret nz                                           ; $4fe8: $c0

	call c, $fb11                                    ; $4fe9: $dc $11 $fb
	ld c, b                                          ; $4fec: $48
	ld b, b                                          ; $4fed: $40
	db $dd                                           ; $4fee: $dd
	rst $38                                          ; $4fef: $ff
	ld sp, hl                                        ; $4ff0: $f9
	ld de, $47eb                                     ; $4ff1: $11 $eb $47
	ld b, b                                          ; $4ff4: $40
	adc d                                            ; $4ff5: $8a
	ld de, $47f9                                     ; $4ff6: $11 $f9 $47
	add b                                            ; $4ff9: $80
	adc e                                            ; $4ffa: $8b
	ld de, $47fd                                     ; $4ffb: $11 $fd $47
	ld [hl], b                                       ; $4ffe: $70
	adc e                                            ; $4fff: $8b
	rst $38                                          ; $5000: $ff
	ld sp, hl                                        ; $5001: $f9
	ld de, $4801                                     ; $5002: $11 $01 $48
	ret nz                                           ; $5005: $c0

	db $db                                           ; $5006: $db
	rst $38                                          ; $5007: $ff
	ld sp, hl                                        ; $5008: $f9
	ld de, $4811                                     ; $5009: $11 $11 $48
	ret nz                                           ; $500c: $c0

	db $db                                           ; $500d: $db
	rst $38                                          ; $500e: $ff
	ld a, [$d7ef]                                    ; $500f: $fa $ef $d7
	call wJumpTable                                       ; $5012: $cd $80 $cf
	jr nz, jr_005_5069                               ; $5015: $20 $52

	dec e                                            ; $5017: $1d
	ld d, b                                          ; $5018: $50
	jr nc, @+$52                                     ; $5019: $30 $50

	dec sp                                           ; $501b: $3b
	ld d, b                                          ; $501c: $50
	call Call_005_52d4                               ; $501d: $cd $d4 $52
	ld a, $02                                        ; $5020: $3e $02
	ld [$c165], a                                    ; $5022: $ea $65 $c1
	ld a, $00                                        ; $5025: $3e $00
	call Call_005_52da                               ; $5027: $cd $da $52
	call Call_005_52f2                               ; $502a: $cd $f2 $52
	jp Jump_005_4df2                                 ; $502d: $c3 $f2 $4d


	ld b, $1e                                        ; $5030: $06 $1e
	ld hl, $7842                                     ; $5032: $21 $42 $78
	call Func_1c32                                       ; $5035: $cd $32 $1c
	jp $1b19                                         ; $5038: $c3 $19 $1b


	ld a, [wButtonsPressed]                                    ; $503b: $fa $25 $c1
	cp $20                                           ; $503e: $fe $20
	jp z, Jump_005_4f83                              ; $5040: $ca $83 $4f

	and $10                                          ; $5043: $e6 $10
	jp nz, Jump_005_4f58                             ; $5045: $c2 $58 $4f

	call Call_005_4c7c                               ; $5048: $cd $7c $4c
	jp Jump_005_4f26                                 ; $504b: $c3 $26 $4f


	ld a, [$d7ef]                                    ; $504e: $fa $ef $d7
	call wJumpTable                                       ; $5051: $cd $80 $cf
	jr nz, jr_005_50a8                               ; $5054: $20 $52

	ld h, b                                          ; $5056: $60
	ld d, b                                          ; $5057: $50
	halt                                             ; $5058: $76
	ld d, b                                          ; $5059: $50
	sub l                                            ; $505a: $95
	ld d, b                                          ; $505b: $50
	and [hl]                                         ; $505c: $a6
	ld d, b                                          ; $505d: $50
	ldh [c], a                                       ; $505e: $e2
	ld d, b                                          ; $505f: $50
	ld a, $0f                                        ; $5060: $3e $0f
	rst FarCall                                          ; $5062: $f7
	sbc b                                            ; $5063: $98
	ld b, [hl]                                       ; $5064: $46
	inc bc                                           ; $5065: $03
	rst FarCall                                          ; $5066: $f7
	jr nz, @+$54                                     ; $5067: $20 $52

jr_005_5069:
	ld bc, $39f7                                     ; $5069: $01 $f7 $39
	ld d, d                                          ; $506c: $52
	ld bc, $cdf7                                     ; $506d: $01 $f7 $cd
	ld e, c                                          ; $5070: $59
	ld bc, $19cd                                     ; $5071: $01 $cd $19
	dec de                                           ; $5074: $1b
	ret                                              ; $5075: $c9


	call Call_005_460e                               ; $5076: $cd $0e $46
	call Func_1aa6                                       ; $5079: $cd $a6 $1a
	ld a, $16                                        ; $507c: $3e $16
	ld [wMenuOptionSelected], a                                    ; $507e: $ea $5f $c1
	rst FarCall                                          ; $5081: $f7
	ld e, l                                          ; $5082: $5d
	ld c, e                                          ; $5083: $4b
	dec b                                            ; $5084: $05
	and a                                            ; $5085: $a7
	jp z, Jump_005_4f65                              ; $5086: $ca $65 $4f

	ld b, $1e                                        ; $5089: $06 $1e
	ld hl, $786d                                     ; $508b: $21 $6d $78
	call Func_1c32                                       ; $508e: $cd $32 $1c
	call $1b19                                       ; $5091: $cd $19 $1b
	ret                                              ; $5094: $c9


	call Call_005_42d9                               ; $5095: $cd $d9 $42
	and a                                            ; $5098: $a7
	ret z                                            ; $5099: $c8

	ld a, b                                          ; $509a: $78
	ld [$d22c], a                                    ; $509b: $ea $2c $d2
	ld a, c                                          ; $509e: $79
	ld [$d22e], a                                    ; $509f: $ea $2e $d2
	call $1b19                                       ; $50a2: $cd $19 $1b
	ret                                              ; $50a5: $c9


	ld a, $03                                        ; $50a6: $3e $03

jr_005_50a8:
	rst FarCall                                          ; $50a8: $f7
	sbc b                                            ; $50a9: $98
	ld b, [hl]                                       ; $50aa: $46
	inc bc                                           ; $50ab: $03
	call Call_005_57f0                               ; $50ac: $cd $f0 $57
	call Call_005_4d7f                               ; $50af: $cd $7f $4d
	ld a, $01                                        ; $50b2: $3e $01
	ld [$c151], a                                    ; $50b4: $ea $51 $c1
	ld a, $03                                        ; $50b7: $3e $03
	ld [$c15e], a                                    ; $50b9: $ea $5e $c1
	call $55f2                                       ; $50bc: $cd $f2 $55
	ld hl, $c170                                     ; $50bf: $21 $70 $c1
	ld a, $15                                        ; $50c2: $3e $15
	call Call_005_4f91                               ; $50c4: $cd $91 $4f
	ld hl, $58c2                                     ; $50c7: $21 $c2 $58
	call Call_005_4eb2                               ; $50ca: $cd $b2 $4e
	call Call_005_4c06                               ; $50cd: $cd $06 $4c
	call Call_005_52f9                               ; $50d0: $cd $f9 $52
	call Call_005_4ec6                               ; $50d3: $cd $c6 $4e
	ld b, $1e                                        ; $50d6: $06 $1e
	ld hl, $785c                                     ; $50d8: $21 $5c $78
	call Func_1c32                                       ; $50db: $cd $32 $1c
	call $1b19                                       ; $50de: $cd $19 $1b
	ret                                              ; $50e1: $c9


	ld a, [wButtonsPressed]                                    ; $50e2: $fa $25 $c1
	and $10                                          ; $50e5: $e6 $10
	jr z, jr_005_50f0                                ; $50e7: $28 $07

	ld a, [$c15c]                                    ; $50e9: $fa $5c $c1
	cp $09                                           ; $50ec: $fe $09
	jr z, jr_005_5101                                ; $50ee: $28 $11

jr_005_50f0:
	ld a, [wButtonsPressed]                                    ; $50f0: $fa $25 $c1
	cp $20                                           ; $50f3: $fe $20
	jr z, jr_005_5101                                ; $50f5: $28 $0a

	call Call_005_4d3e                               ; $50f7: $cd $3e $4d
	ld a, [wMenuOptionSelected]                                    ; $50fa: $fa $5f $c1
	ld [$d035], a                                    ; $50fd: $ea $35 $d0
	ret                                              ; $5100: $c9


jr_005_5101:
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $5101: $cd $ef $2d
	ld d, $ff                                        ; $5104: $16 $ff
	call $1a7d                                       ; $5106: $cd $7d $1a
	ld a, $01                                        ; $5109: $3e $01
	ld [$d7ef], a                                    ; $510b: $ea $ef $d7
	ret                                              ; $510e: $c9


	nop                                              ; $510f: $00
	db $10                                           ; $5110: $10
	jr nz, @+$12                                     ; $5111: $20 $10

	ld a, [$d7ef]                                    ; $5113: $fa $ef $d7
	call wJumpTable                                       ; $5116: $cd $80 $cf
	jr nz, @+$54                                     ; $5119: $20 $52

	ld hl, $2a51                                     ; $511b: $21 $51 $2a
	ld d, c                                          ; $511e: $51
	ld b, c                                          ; $511f: $41
	ld d, c                                          ; $5120: $51
	call Call_005_52d4                               ; $5121: $cd $d4 $52
	ld bc, $6274                                     ; $5124: $01 $74 $62
	jp $18b3                                         ; $5127: $c3 $b3 $18


	ld a, $01                                        ; $512a: $3e $01
	ld [$c165], a                                    ; $512c: $ea $65 $c1
	ld a, $02                                        ; $512f: $3e $02
	call Call_005_52da                               ; $5131: $cd $da $52
	call Call_005_5303                               ; $5134: $cd $03 $53
	call Call_005_4df2                               ; $5137: $cd $f2 $4d
	xor a                                            ; $513a: $af
	ld [$c162], a                                    ; $513b: $ea $62 $c1
	jp $1b19                                         ; $513e: $c3 $19 $1b


	ld a, [wButtonsPressed]                                    ; $5141: $fa $25 $c1
	and $30                                          ; $5144: $e6 $30
	jr z, jr_005_5162                                ; $5146: $28 $1a

	ld a, [wInitialA]                                    ; $5148: $fa $00 $c1
	cp $11                                           ; $514b: $fe $11
	jr nz, jr_005_515f                               ; $514d: $20 $10

	ld hl, $9f01                                     ; $514f: $21 $01 $9f
	ld b, $12                                        ; $5152: $06 $12
	call Call_005_51a3                               ; $5154: $cd $a3 $51
	ld hl, $9f21                                     ; $5157: $21 $21 $9f
	ld b, $12                                        ; $515a: $06 $12
	call Call_005_51a3                               ; $515c: $cd $a3 $51

jr_005_515f:
	jp Jump_005_4f65                                 ; $515f: $c3 $65 $4f


jr_005_5162:
	ld a, [wFrameCounter]                                    ; $5162: $fa $1f $c1
	and $03                                          ; $5165: $e6 $03
	ret nz                                           ; $5167: $c0

	ld h, $c2                                        ; $5168: $26 $c2
	ld l, $08                                        ; $516a: $2e $08
	ld c, $00                                        ; $516c: $0e $00
	ld a, [$c162]                                    ; $516e: $fa $62 $c1
	inc a                                            ; $5171: $3c
	cp $04                                           ; $5172: $fe $04
	jr nz, jr_005_5177                               ; $5174: $20 $01

	xor a                                            ; $5176: $af

jr_005_5177:
	ld [$c162], a                                    ; $5177: $ea $62 $c1
	call Call_005_5397                               ; $517a: $cd $97 $53

jr_005_517d:
	rst FarCall                                          ; $517d: $f7
	cp e                                             ; $517e: $bb
	ld b, d                                          ; $517f: $42
	inc b                                            ; $5180: $04
	cp $3c                                           ; $5181: $fe $3c
	jr c, jr_005_5199                                ; $5183: $38 $14

	ld de, $510f                                     ; $5185: $11 $0f $51
	ld a, [$c162]                                    ; $5188: $fa $62 $c1
	call $1327                                       ; $518b: $cd $27 $13
	ld a, [de]                                       ; $518e: $1a
	ld de, $40d0                                     ; $518f: $11 $d0 $40
	call $1327                                       ; $5192: $cd $27 $13
	ld [hl], e                                       ; $5195: $73
	inc l                                            ; $5196: $2c
	ld [hl], d                                       ; $5197: $72
	dec l                                            ; $5198: $2d

jr_005_5199:
	inc h                                            ; $5199: $24
	inc c                                            ; $519a: $0c
	call Call_005_5397                               ; $519b: $cd $97 $53
	cp $ff                                           ; $519e: $fe $ff
	jr nz, jr_005_517d                               ; $51a0: $20 $db

	ret                                              ; $51a2: $c9


Call_005_51a3:
	ld a, $01                                        ; $51a3: $3e $01
	ldh [rVBK], a                                    ; $51a5: $e0 $4f

jr_005_51a7:
	di                                               ; $51a7: $f3

jr_005_51a8:
	ldh a, [rSTAT]                                   ; $51a8: $f0 $41
	bit 1, a                                         ; $51aa: $cb $4f
	jr nz, jr_005_51a8                               ; $51ac: $20 $fa

	xor a                                            ; $51ae: $af
	ld [hl+], a                                      ; $51af: $22
	ei                                               ; $51b0: $fb
	dec b                                            ; $51b1: $05
	jr nz, jr_005_51a7                               ; $51b2: $20 $f3

	xor a                                            ; $51b4: $af
	ldh [rVBK], a                                    ; $51b5: $e0 $4f
	ret                                              ; $51b7: $c9


	ld a, [$d7ef]                                    ; $51b8: $fa $ef $d7
	call wJumpTable                                       ; $51bb: $cd $80 $cf
	jr nz, @+$54                                     ; $51be: $20 $52

	call nz, $d751                                   ; $51c0: $c4 $51 $d7
	ld d, c                                          ; $51c3: $51
	call Call_005_52d4                               ; $51c4: $cd $d4 $52
	ld a, $01                                        ; $51c7: $3e $01
	ld [$c165], a                                    ; $51c9: $ea $65 $c1
	ld a, $03                                        ; $51cc: $3e $03
	call Call_005_52da                               ; $51ce: $cd $da $52
	call Call_005_53a0                               ; $51d1: $cd $a0 $53
	call Call_005_4df2                               ; $51d4: $cd $f2 $4d
	cp $20                                           ; $51d7: $fe $20
	jp z, Jump_005_4f83                              ; $51d9: $ca $83 $4f

	ld a, [wButtonsPressed]                                    ; $51dc: $fa $25 $c1
	and $10                                          ; $51df: $e6 $10
	jp nz, Jump_005_4f58                             ; $51e1: $c2 $58 $4f

	call Call_005_4c7c                               ; $51e4: $cd $7c $4c
	jp Jump_005_4f26                                 ; $51e7: $c3 $26 $4f


	ld a, [$d7ef]                                    ; $51ea: $fa $ef $d7
	call wJumpTable                                       ; $51ed: $cd $80 $cf
	jr nz, @+$54                                     ; $51f0: $20 $52

	ld hl, sp+$51                                    ; $51f2: $f8 $51
	ld bc, $1752                                     ; $51f4: $01 $52 $17
	ld d, d                                          ; $51f7: $52
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $51f8: $cd $ef $2d
	call Call_005_52d4                               ; $51fb: $cd $d4 $52
	jp Jump_005_53a7                                 ; $51fe: $c3 $a7 $53


	ld a, [wMenuOptionSelected]                                    ; $5201: $fa $5f $c1
	call Call_005_4ead                               ; $5204: $cd $ad $4e
	call Call_005_4ead                               ; $5207: $cd $ad $4e
	ld hl, $59b2                                     ; $520a: $21 $b2 $59
	rst AddAOntoHL                                          ; $520d: $ef
	ld a, [$a22a]                                    ; $520e: $fa $2a $a2
	call Call_005_4e9c                               ; $5211: $cd $9c $4e
	call $1b19                                       ; $5214: $cd $19 $1b
	ld a, [wButtonsPressed]                                    ; $5217: $fa $25 $c1
	and $30                                          ; $521a: $e6 $30
	jp nz, Jump_005_4f65                             ; $521c: $c2 $65 $4f

	ret                                              ; $521f: $c9


	ld bc, $622c                                     ; $5220: $01 $2c $62
	call $18c0                                       ; $5223: $cd $c0 $18
	jp $1b19                                         ; $5226: $c3 $19 $1b


	ld a, [$d7ef]                                    ; $5229: $fa $ef $d7
	call wJumpTable                                       ; $522c: $cd $80 $cf
	inc sp                                           ; $522f: $33
	ld d, d                                          ; $5230: $52
	ld c, c                                          ; $5231: $49
	ld d, d                                          ; $5232: $52
	ld d, $ff                                        ; $5233: $16 $ff
	call $1a69                                       ; $5235: $cd $69 $1a
	call Call_005_460e                               ; $5238: $cd $0e $46
	call Func_1aa6                                       ; $523b: $cd $a6 $1a
	ld b, $1e                                        ; $523e: $06 $1e
	ld hl, $787d                                     ; $5240: $21 $7d $78
	call Func_1c32                                       ; $5243: $cd $32 $1c
	jp $1b19                                         ; $5246: $c3 $19 $1b


	ld a, [wButtonsPressed]                                    ; $5249: $fa $25 $c1
	and $30                                          ; $524c: $e6 $30
	ret z                                            ; $524e: $c8

	jp Jump_005_4f65                                 ; $524f: $c3 $65 $4f


	ld a, [$d7ef]                                    ; $5252: $fa $ef $d7
	call wJumpTable                                       ; $5255: $cd $80 $cf
	jr nz, jr_005_52ac                               ; $5258: $20 $52

	ld e, [hl]                                       ; $525a: $5e
	ld d, d                                          ; $525b: $52
	ld l, h                                          ; $525c: $6c
	ld d, d                                          ; $525d: $52
	call Call_005_52d4                               ; $525e: $cd $d4 $52
	ld a, $05                                        ; $5261: $3e $05
	call Call_005_52da                               ; $5263: $cd $da $52
	call Call_005_52f2                               ; $5266: $cd $f2 $52
	jp Jump_005_4df2                                 ; $5269: $c3 $f2 $4d


	ld a, [wButtonsPressed]                                    ; $526c: $fa $25 $c1
	and $10                                          ; $526f: $e6 $10
	jp nz, Jump_005_4f58                             ; $5271: $c2 $58 $4f

	call Call_005_4c7c                               ; $5274: $cd $7c $4c
	jp Jump_005_4f26                                 ; $5277: $c3 $26 $4f


	ld a, [$d7ef]                                    ; $527a: $fa $ef $d7
	call wJumpTable                                       ; $527d: $cd $80 $cf
	jr nz, jr_005_52d4                               ; $5280: $20 $52

	add [hl]                                         ; $5282: $86
	ld d, d                                          ; $5283: $52
	cp b                                             ; $5284: $b8
	ld d, d                                          ; $5285: $52
	call Call_005_4d7f                               ; $5286: $cd $7f $4d
	ld a, $07                                        ; $5289: $3e $07
	ld [$c151], a                                    ; $528b: $ea $51 $c1
	ld a, $03                                        ; $528e: $3e $03
	ld [$c15e], a                                    ; $5290: $ea $5e $c1
	ld hl, $a146                                     ; $5293: $21 $46 $a1
	ld [hl], $ff                                     ; $5296: $36 $ff
	ld a, $10                                        ; $5298: $3e $10
	call Call_005_4f91                               ; $529a: $cd $91 $4f
	ld hl, $5856                                     ; $529d: $21 $56 $58
	call Call_005_4eb2                               ; $52a0: $cd $b2 $4e
	call Call_005_4c06                               ; $52a3: $cd $06 $4c
	call Call_005_52f9                               ; $52a6: $cd $f9 $52
	call Call_005_4ec6                               ; $52a9: $cd $c6 $4e

jr_005_52ac:
	ld b, $1e                                        ; $52ac: $06 $1e
	ld hl, $785c                                     ; $52ae: $21 $5c $78
	call Func_1c32                                       ; $52b1: $cd $32 $1c
	call $1b19                                       ; $52b4: $cd $19 $1b
	ret                                              ; $52b7: $c9


	ld a, [wButtonsPressed]                                    ; $52b8: $fa $25 $c1
	and $10                                          ; $52bb: $e6 $10
	jr z, jr_005_52c6                                ; $52bd: $28 $07

	ld a, [$c15c]                                    ; $52bf: $fa $5c $c1
	cp $09                                           ; $52c2: $fe $09
	jr z, jr_005_52ce                                ; $52c4: $28 $08

jr_005_52c6:
	ld a, [wButtonsPressed]                                    ; $52c6: $fa $25 $c1
	cp $20                                           ; $52c9: $fe $20
	jp nz, Jump_005_4d3e                             ; $52cb: $c2 $3e $4d

jr_005_52ce:
	ld a, $00                                        ; $52ce: $3e $00
	ld [$d7ef], a                                    ; $52d0: $ea $ef $d7
	ret                                              ; $52d3: $c9


Call_005_52d4:
jr_005_52d4:
	call $1b19                                       ; $52d4: $cd $19 $1b
	jp Jump_005_4d7f                                 ; $52d7: $c3 $7f $4d


Call_005_52da:
	ld [$c151], a                                    ; $52da: $ea $51 $c1
	ld de, $a365                                     ; $52dd: $11 $65 $a3
	ld a, $0e                                        ; $52e0: $3e $0e
	ld [$c166], a                                    ; $52e2: $ea $66 $c1
	xor a                                            ; $52e5: $af
	ld [$c15e], a                                    ; $52e6: $ea $5e $c1
	ld hl, $5856                                     ; $52e9: $21 $56 $58
	call Call_005_4eb2                               ; $52ec: $cd $b2 $4e
	jp Jump_005_4bca                                 ; $52ef: $c3 $ca $4b


Call_005_52f2:
	call Call_005_4e14                               ; $52f2: $cd $14 $4e
	call Call_005_4f00                               ; $52f5: $cd $00 $4f
	ret                                              ; $52f8: $c9


Call_005_52f9:
	call Call_005_4e14                               ; $52f9: $cd $14 $4e
	call Call_005_4ed1                               ; $52fc: $cd $d1 $4e
	call Call_005_4f00                               ; $52ff: $cd $00 $4f
	ret                                              ; $5302: $c9


Call_005_5303:
	call Call_005_4e14                               ; $5303: $cd $14 $4e
	ld hl, $4fca                                     ; $5306: $21 $ca $4f
	call $0aab                                       ; $5309: $cd $ab $0a
	ld hl, $4fd8                                     ; $530c: $21 $d8 $4f
	call $0aab                                       ; $530f: $cd $ab $0a
	ld hl, $4fd1                                     ; $5312: $21 $d1 $4f
	call $0aab                                       ; $5315: $cd $ab $0a
	ld a, [wInitialA]                                    ; $5318: $fa $00 $c1
	cp $11                                           ; $531b: $fe $11
	jr nz, jr_005_532c                               ; $531d: $20 $0d

	ld b, $0e                                        ; $531f: $06 $0e
	ld c, $02                                        ; $5321: $0e $02
	ld hl, $5ab6                                     ; $5323: $21 $b6 $5a
	ld de, $9f03                                     ; $5326: $11 $03 $9f
	call $393e                                       ; $5329: $cd $3e $39

jr_005_532c:
	ld h, $c2                                        ; $532c: $26 $c2
	ld c, $00                                        ; $532e: $0e $00
	ld d, $37                                        ; $5330: $16 $37
	ld e, $18                                        ; $5332: $1e $18

jr_005_5334:
	ld l, $00                                        ; $5334: $2e $00
	ld a, c                                          ; $5336: $79
	inc a                                            ; $5337: $3c
	ld [hl], a                                       ; $5338: $77
	ld l, $01                                        ; $5339: $2e $01
	ld [hl], $00                                     ; $533b: $36 $00
	ld l, $05                                        ; $533d: $2e $05
	ld [hl], e                                       ; $533f: $73
	ld l, $07                                        ; $5340: $2e $07
	ld [hl], d                                       ; $5342: $72
	ld l, $08                                        ; $5343: $2e $08
	call Call_005_5397                               ; $5345: $cd $97 $53
	push de                                          ; $5348: $d5
	push hl                                          ; $5349: $e5
	push bc                                          ; $534a: $c5
	rst FarCall                                          ; $534b: $f7
	adc [hl]                                         ; $534c: $8e
	ld b, h                                          ; $534d: $44
	inc b                                            ; $534e: $04
	pop bc                                           ; $534f: $c1
	pop hl                                           ; $5350: $e1
	swap a                                           ; $5351: $cb $37
	and $f0                                          ; $5353: $e6 $f0
	ld de, $4060                                     ; $5355: $11 $60 $40
	add e                                            ; $5358: $83
	ld [hl+], a                                      ; $5359: $22
	ld a, $00                                        ; $535a: $3e $00
	adc d                                            ; $535c: $8a
	ld [hl-], a                                      ; $535d: $32
	pop de                                           ; $535e: $d1
	ld a, $10                                        ; $535f: $3e $10
	add e                                            ; $5361: $83
	ld e, a                                          ; $5362: $5f
	ld a, $04                                        ; $5363: $3e $04
	cp c                                             ; $5365: $b9
	jr nz, jr_005_536c                               ; $5366: $20 $04

	ld d, $87                                        ; $5368: $16 $87
	ld e, $18                                        ; $536a: $1e $18

jr_005_536c:
	inc h                                            ; $536c: $24
	inc c                                            ; $536d: $0c
	call Call_005_5397                               ; $536e: $cd $97 $53
	cp $ff                                           ; $5371: $fe $ff
	jr nz, jr_005_5334                               ; $5373: $20 $bf

	ld h, $c2                                        ; $5375: $26 $c2
	ld l, $08                                        ; $5377: $2e $08
	ld c, $00                                        ; $5379: $0e $00

jr_005_537b:
	call Call_005_5397                               ; $537b: $cd $97 $53
	rst FarCall                                          ; $537e: $f7
	cp e                                             ; $537f: $bb
	ld b, d                                          ; $5380: $42
	inc b                                            ; $5381: $04
	cp $3c                                           ; $5382: $fe $3c
	jr c, jr_005_538d                                ; $5384: $38 $07

	ld de, $40d0                                     ; $5386: $11 $d0 $40
	ld [hl], e                                       ; $5389: $73
	inc hl                                           ; $538a: $23
	ld [hl], d                                       ; $538b: $72
	dec hl                                           ; $538c: $2b

jr_005_538d:
	inc h                                            ; $538d: $24
	inc c                                            ; $538e: $0c
	call Call_005_5397                               ; $538f: $cd $97 $53
	cp $ff                                           ; $5392: $fe $ff
	jr nz, jr_005_537b                               ; $5394: $20 $e5

	ret                                              ; $5396: $c9


Call_005_5397:
	push hl                                          ; $5397: $e5
	ld hl, $c152                                     ; $5398: $21 $52 $c1
	ld a, c                                          ; $539b: $79
	rst AddAOntoHL                                          ; $539c: $ef
	ld a, [hl]                                       ; $539d: $7e
	pop hl                                           ; $539e: $e1
	ret                                              ; $539f: $c9


Call_005_53a0:
	call Call_005_4e14                               ; $53a0: $cd $14 $4e
	call Call_005_4f00                               ; $53a3: $cd $00 $4f
	ret                                              ; $53a6: $c9


Jump_005_53a7:
	call Call_005_4ebb                               ; $53a7: $cd $bb $4e
	ld h, $08                                        ; $53aa: $26 $08
	ld l, $00                                        ; $53ac: $2e $00
	call Func_1ceb                                       ; $53ae: $cd $eb $1c
	ld a, [wMenuOptionSelected]                                    ; $53b1: $fa $5f $c1
	ld hl, $5856                                     ; $53b4: $21 $56 $58
	call Call_005_4e9c                               ; $53b7: $cd $9c $4e
	ld hl, $4fdf                                     ; $53ba: $21 $df $4f
	call $0ab5                                       ; $53bd: $cd $b5 $0a
	ld b, $04                                        ; $53c0: $06 $04
	ld c, $08                                        ; $53c2: $0e $08
	ld de, $8d30                                     ; $53c4: $11 $30 $8d
	call $3933                                       ; $53c7: $cd $33 $39
	ld h, $58                                        ; $53ca: $26 $58
	ld l, $02                                        ; $53cc: $2e $02
	call Func_1ceb                                       ; $53ce: $cd $eb $1c
	ld a, [wMenuOptionSelected]                                    ; $53d1: $fa $5f $c1
	and a                                            ; $53d4: $a7
	jp z, Jump_005_5553                              ; $53d5: $ca $53 $55

	sla a                                            ; $53d8: $cb $27
	sla a                                            ; $53da: $cb $27
	ld hl, $5816                                     ; $53dc: $21 $16 $58
	rst AddAOntoHL                                          ; $53df: $ef
	ld a, [hl+]                                      ; $53e0: $2a
	inc a                                            ; $53e1: $3c

Jump_005_53e2:
	push hl                                          ; $53e2: $e5
	ld b, a                                          ; $53e3: $47
	ld d, $00                                        ; $53e4: $16 $00
	cp $0a                                           ; $53e6: $fe $0a
	jr c, jr_005_53f6                                ; $53e8: $38 $0c

	ld e, $01                                        ; $53ea: $1e $01
	push bc                                          ; $53ec: $c5
	call Call_005_5573                               ; $53ed: $cd $73 $55
	pop bc                                           ; $53f0: $c1
	ld a, b                                          ; $53f1: $78
	sub $0a                                          ; $53f2: $d6 $0a
	ld d, $00                                        ; $53f4: $16 $00

jr_005_53f6:
	ld e, a                                          ; $53f6: $5f
	call Call_005_5573                               ; $53f7: $cd $73 $55
	ld b, $1e                                        ; $53fa: $06 $1e
	ld hl, $70f8                                     ; $53fc: $21 $f8 $70
	call Func_1c32                                       ; $53ff: $cd $32 $1c
	pop hl                                           ; $5402: $e1
	ld a, [wMenuOptionSelected]                                    ; $5403: $fa $5f $c1
	and a                                            ; $5406: $a7
	jp z, Jump_005_555a                              ; $5407: $ca $5a $55

	ld a, [hl]                                       ; $540a: $7e
	inc a                                            ; $540b: $3c

Jump_005_540c:
	ld d, $00                                        ; $540c: $16 $00
	cp $0a                                           ; $540e: $fe $0a
	jr c, jr_005_5420                                ; $5410: $38 $0e

	ld b, $0a                                        ; $5412: $06 $0a
	call $12b5                                       ; $5414: $cd $b5 $12
	ld e, a                                          ; $5417: $5f
	push bc                                          ; $5418: $c5
	call Call_005_5573                               ; $5419: $cd $73 $55
	pop bc                                           ; $541c: $c1
	ld a, b                                          ; $541d: $78
	ld d, $00                                        ; $541e: $16 $00

jr_005_5420:
	ld e, a                                          ; $5420: $5f
	call Call_005_5573                               ; $5421: $cd $73 $55
	ld b, $1e                                        ; $5424: $06 $1e
	ld hl, $70fc                                     ; $5426: $21 $fc $70
	call Func_1c32                                       ; $5429: $cd $32 $1c
	ld a, [wMenuOptionSelected]                                    ; $542c: $fa $5f $c1
	and a                                            ; $542f: $a7
	jp z, Jump_005_5561                              ; $5430: $ca $61 $55

	sla a                                            ; $5433: $cb $27
	sla a                                            ; $5435: $cb $27
	ld hl, $5818                                     ; $5437: $21 $18 $58
	rst AddAOntoHL                                          ; $543a: $ef
	ld a, [hl]                                       ; $543b: $7e

Jump_005_543c:
	ld hl, $5907                                     ; $543c: $21 $07 $59
	call Call_005_4e9c                               ; $543f: $cd $9c $4e
	ld a, [wMenuOptionSelected]                                    ; $5442: $fa $5f $c1
	cp $0f                                           ; $5445: $fe $0f
	jp z, Jump_005_5548                              ; $5447: $ca $48 $55

	call Call_005_4ead                               ; $544a: $cd $ad $4e
	call Call_005_4ead                               ; $544d: $cd $ad $4e
	ld hl, $5934                                     ; $5450: $21 $34 $59
	rst AddAOntoHL                                          ; $5453: $ef
	ld a, [$a22a]                                    ; $5454: $fa $2a $a2
	call Call_005_4ead                               ; $5457: $cd $ad $4e
	rst AddAOntoHL                                          ; $545a: $ef
	ld c, $03                                        ; $545b: $0e $03
	ld b, $58                                        ; $545d: $06 $58

jr_005_545f:
	push bc                                          ; $545f: $c5
	push hl                                          ; $5460: $e5
	ld h, b                                          ; $5461: $60
	ld l, $06                                        ; $5462: $2e $06
	call Func_1ceb                                       ; $5464: $cd $eb $1c
	pop hl                                           ; $5467: $e1
	ld a, [hl+]                                      ; $5468: $2a
	push hl                                          ; $5469: $e5
	ld d, $00                                        ; $546a: $16 $00
	ld e, a                                          ; $546c: $5f
	call Call_005_5578                               ; $546d: $cd $78 $55
	pop hl                                           ; $5470: $e1
	pop bc                                           ; $5471: $c1
	push bc                                          ; $5472: $c5
	push hl                                          ; $5473: $e5
	ld a, $01                                        ; $5474: $3e $01
	cp c                                             ; $5476: $b9
	jr z, jr_005_5481                                ; $5477: $28 $08

	ld b, $1e                                        ; $5479: $06 $1e
	ld hl, $70ff                                     ; $547b: $21 $ff $70
	call Func_1c32                                       ; $547e: $cd $32 $1c

jr_005_5481:
	pop hl                                           ; $5481: $e1
	pop bc                                           ; $5482: $c1
	ld a, b                                          ; $5483: $78
	add $18                                          ; $5484: $c6 $18
	ld b, a                                          ; $5486: $47
	dec c                                            ; $5487: $0d
	jr nz, jr_005_545f                               ; $5488: $20 $d5

Jump_005_548a:
	ld a, [wMenuOptionSelected]                                    ; $548a: $fa $5f $c1
	and a                                            ; $548d: $a7
	jp z, Jump_005_5567                              ; $548e: $ca $67 $55

	cp $04                                           ; $5491: $fe $04
	jp z, Jump_005_556d                              ; $5493: $ca $6d $55

	sla a                                            ; $5496: $cb $27
	sla a                                            ; $5498: $cb $27
	ld hl, $5819                                     ; $549a: $21 $19 $58
	rst AddAOntoHL                                          ; $549d: $ef
	ld a, [hl]                                       ; $549e: $7e

Jump_005_549f:
	push af                                          ; $549f: $f5
	ld h, $58                                        ; $54a0: $26 $58
	ld l, $08                                        ; $54a2: $2e $08
	call Func_1ceb                                       ; $54a4: $cd $eb $1c
	pop af                                           ; $54a7: $f1
	ld hl, $5913                                     ; $54a8: $21 $13 $59
	call Call_005_4e9c                               ; $54ab: $cd $9c $4e
	call Call_005_55b4                               ; $54ae: $cd $b4 $55
	call Call_005_4ead                               ; $54b1: $cd $ad $4e
	ld de, $5a92                                     ; $54b4: $11 $92 $5a
	call $1327                                       ; $54b7: $cd $27 $13
	xor a                                            ; $54ba: $af
	ld bc, $dbc0                                     ; $54bb: $01 $c0 $db
	call $35cd                                       ; $54be: $cd $cd $35
	ld b, $02                                        ; $54c1: $06 $02
	ld c, $02                                        ; $54c3: $0e $02
	ld de, $8b40                                     ; $54c5: $11 $40 $8b
	call $3933                                       ; $54c8: $cd $33 $39
	ld hl, $5001                                     ; $54cb: $21 $01 $50
	call $0ab5                                       ; $54ce: $cd $b5 $0a
	ld b, $01                                        ; $54d1: $06 $01
	ld c, $02                                        ; $54d3: $0e $02
	ld de, $8b30                                     ; $54d5: $11 $30 $8b
	call $3933                                       ; $54d8: $cd $33 $39
	ld hl, $5008                                     ; $54db: $21 $08 $50
	call $0ab5                                       ; $54de: $cd $b5 $0a
	ld b, $01                                        ; $54e1: $06 $01
	ld c, $02                                        ; $54e3: $0e $02
	ld de, $8b60                                     ; $54e5: $11 $60 $8b
	call $3933                                       ; $54e8: $cd $33 $39
	ld a, [wMenuOptionSelected]                                    ; $54eb: $fa $5f $c1
	call Call_005_4ead                               ; $54ee: $cd $ad $4e
	ld de, $5a42                                     ; $54f1: $11 $42 $5a
	call $1327                                       ; $54f4: $cd $27 $13
	xor a                                            ; $54f7: $af
	ld bc, $dbc0                                     ; $54f8: $01 $c0 $db
	call $35cd                                       ; $54fb: $cd $cd $35
	ld b, $06                                        ; $54fe: $06 $06
	ld c, $06                                        ; $5500: $0e $06
	ld de, $8cd0                                     ; $5502: $11 $d0 $8c
	call $3933                                       ; $5505: $cd $33 $39
	ld a, [wInitialA]                                    ; $5508: $fa $00 $c1
	cp $11                                           ; $550b: $fe $11
	jr nz, jr_005_5535                               ; $550d: $20 $26

	ld a, [wMenuOptionSelected]                                    ; $550f: $fa $5f $c1
	sla a                                            ; $5512: $cb $27
	ld hl, $5a72                                     ; $5514: $21 $72 $5a
	rst AddAOntoHL                                          ; $5517: $ef
	call $366b                                       ; $5518: $cd $6b $36
	ld b, $06                                        ; $551b: $06 $06
	ld c, $06                                        ; $551d: $0e $06
	ld de, $9841                                     ; $551f: $11 $41 $98
	call $393e                                       ; $5522: $cd $3e $39
	ld a, [wMenuOptionSelected]                                    ; $5525: $fa $5f $c1
	sla a                                            ; $5528: $cb $27
	sla a                                            ; $552a: $cb $27
	ld bc, $627a                                     ; $552c: $01 $7a $62
	call $132c                                       ; $552f: $cd $2c $13
	call $18b3                                       ; $5532: $cd $b3 $18

jr_005_5535:
	ld d, $a4                                        ; $5535: $16 $a4
	ld e, $b7                                        ; $5537: $1e $b7
	ld b, $b8                                        ; $5539: $06 $b8
	call Call_005_557d                               ; $553b: $cd $7d $55
	ld hl, $4ff0                                     ; $553e: $21 $f0 $4f
	call $0aab                                       ; $5541: $cd $ab $0a
	call Call_005_4dd7                               ; $5544: $cd $d7 $4d
	ret                                              ; $5547: $c9


Jump_005_5548:
	ld b, $1e                                        ; $5548: $06 $1e
	ld hl, $7103                                     ; $554a: $21 $03 $71
	call Func_1c32                                       ; $554d: $cd $32 $1c
	jp Jump_005_548a                                 ; $5550: $c3 $8a $54


Jump_005_5553:
	ld a, [$a21f]                                    ; $5553: $fa $1f $a2
	inc a                                            ; $5556: $3c
	jp Jump_005_53e2                                 ; $5557: $c3 $e2 $53


Jump_005_555a:
	ld a, [$a221]                                    ; $555a: $fa $21 $a2
	inc a                                            ; $555d: $3c
	jp Jump_005_540c                                 ; $555e: $c3 $0c $54


Jump_005_5561:
	ld a, [$a223]                                    ; $5561: $fa $23 $a2
	jp Jump_005_543c                                 ; $5564: $c3 $3c $54


Jump_005_5567:
	ld a, [$a37c]                                    ; $5567: $fa $7c $a3
	jp Jump_005_549f                                 ; $556a: $c3 $9f $54


Jump_005_556d:
	ld a, [$a380]                                    ; $556d: $fa $80 $a3
	jp Jump_005_549f                                 ; $5570: $c3 $9f $54


Call_005_5573:
	ld a, $01                                        ; $5573: $3e $01
	jp $1c16                                         ; $5575: $c3 $16 $1c


Call_005_5578:
	ld a, $82                                        ; $5578: $3e $82
	jp $1c16                                         ; $557a: $c3 $16 $1c


Call_005_557d:
	ld hl, $9800                                     ; $557d: $21 $00 $98
	ld c, $0b                                        ; $5580: $0e $0b

jr_005_5582:
	di                                               ; $5582: $f3

jr_005_5583:
	ldh a, [rSTAT]                                   ; $5583: $f0 $41
	bit 1, a                                         ; $5585: $cb $4f
	jr nz, jr_005_5583                               ; $5587: $20 $fa

	ld [hl], d                                       ; $5589: $72
	ld a, $13                                        ; $558a: $3e $13
	rst AddAOntoHL                                          ; $558c: $ef
	di                                               ; $558d: $f3

jr_005_558e:
	ldh a, [rSTAT]                                   ; $558e: $f0 $41
	bit 1, a                                         ; $5590: $cb $4f
	jr nz, jr_005_558e                               ; $5592: $20 $fa

	ld [hl], e                                       ; $5594: $73
	ld a, $0d                                        ; $5595: $3e $0d
	rst AddAOntoHL                                          ; $5597: $ef
	dec c                                            ; $5598: $0d
	ret z                                            ; $5599: $c8

	di                                               ; $559a: $f3

jr_005_559b:
	ldh a, [rSTAT]                                   ; $559b: $f0 $41
	bit 1, a                                         ; $559d: $cb $4f
	jr nz, jr_005_559b                               ; $559f: $20 $fa

	ld [hl], b                                       ; $55a1: $70
	ld a, $13                                        ; $55a2: $3e $13
	rst AddAOntoHL                                          ; $55a4: $ef
	di                                               ; $55a5: $f3

jr_005_55a6:
	ldh a, [rSTAT]                                   ; $55a6: $f0 $41
	bit 1, a                                         ; $55a8: $cb $4f
	jr nz, jr_005_55a6                               ; $55aa: $20 $fa

	ld [hl], e                                       ; $55ac: $73
	ld a, $0d                                        ; $55ad: $3e $0d
	rst AddAOntoHL                                          ; $55af: $ef
	dec c                                            ; $55b0: $0d
	jr nz, jr_005_5582                               ; $55b1: $20 $cf

	ret                                              ; $55b3: $c9


Call_005_55b4:
	ld a, [wMenuOptionSelected]                                    ; $55b4: $fa $5f $c1
	and a                                            ; $55b7: $a7
	jr nz, jr_005_55c4                               ; $55b8: $20 $0a

	ld a, [$a221]                                    ; $55ba: $fa $21 $a2
	ld c, a                                          ; $55bd: $4f
	ld a, [$a21f]                                    ; $55be: $fa $1f $a2
	ld b, a                                          ; $55c1: $47
	jr jr_005_55cf                                   ; $55c2: $18 $0b

jr_005_55c4:
	sla a                                            ; $55c4: $cb $27
	sla a                                            ; $55c6: $cb $27
	ld hl, $5816                                     ; $55c8: $21 $16 $58
	rst AddAOntoHL                                          ; $55cb: $ef
	ld a, [hl+]                                      ; $55cc: $2a
	ld b, a                                          ; $55cd: $47
	ld c, [hl]                                       ; $55ce: $4e

jr_005_55cf:
	sub $03                                          ; $55cf: $d6 $03
	call c, Call_005_55e3                            ; $55d1: $dc $e3 $55
	ld d, a                                          ; $55d4: $57
	ld hl, $55e6                                     ; $55d5: $21 $e6 $55
	rst AddAOntoHL                                          ; $55d8: $ef
	ld a, [hl]                                       ; $55d9: $7e
	cp c                                             ; $55da: $b9
	ld a, d                                          ; $55db: $7a
	ret nc                                           ; $55dc: $d0

	inc a                                            ; $55dd: $3c
	cp $0c                                           ; $55de: $fe $0c
	ret nz                                           ; $55e0: $c0

	xor a                                            ; $55e1: $af
	ret                                              ; $55e2: $c9


Call_005_55e3:
	add $0c                                          ; $55e3: $c6 $0c
	ret                                              ; $55e5: $c9


	inc de                                           ; $55e6: $13
	inc d                                            ; $55e7: $14
	inc d                                            ; $55e8: $14
	dec d                                            ; $55e9: $15
	dec d                                            ; $55ea: $15
	ld d, $16                                        ; $55eb: $16 $16
	dec d                                            ; $55ed: $15
	inc d                                            ; $55ee: $14
	inc de                                           ; $55ef: $13
	ld de, $2113                                     ; $55f0: $11 $13 $21
	sbc l                                            ; $55f3: $9d
	and e                                            ; $55f4: $a3
	ld de, $c170                                     ; $55f5: $11 $70 $c1
	call $ccd7                                       ; $55f8: $cd $d7 $cc
	ld hl, $c170                                     ; $55fb: $21 $70 $c1
	ld de, $57b7                                     ; $55fe: $11 $b7 $57
	ld c, $00                                        ; $5601: $0e $00

jr_005_5603:
	ld b, $00                                        ; $5603: $06 $00

jr_005_5605:
	ld a, [de]                                       ; $5605: $1a
	inc de                                           ; $5606: $13
	and a                                            ; $5607: $a7
	jr z, jr_005_563e                                ; $5608: $28 $34

	cp $01                                           ; $560a: $fe $01
	jr nz, jr_005_5611                               ; $560c: $20 $03

	scf                                              ; $560e: $37
	jr jr_005_563f                                   ; $560f: $18 $2e

jr_005_5611:
	cp $02                                           ; $5611: $fe $02
	jr nz, jr_005_561f                               ; $5613: $20 $0a

	call Call_005_56e1                               ; $5615: $cd $e1 $56
	cp $01                                           ; $5618: $fe $01
	jr nz, jr_005_563e                               ; $561a: $20 $22

	scf                                              ; $561c: $37
	jr jr_005_563f                                   ; $561d: $18 $20

jr_005_561f:
	cp $03                                           ; $561f: $fe $03
	jr nz, jr_005_562d                               ; $5621: $20 $0a

	call Call_005_56e1                               ; $5623: $cd $e1 $56
	cp $02                                           ; $5626: $fe $02
	jr nz, jr_005_563e                               ; $5628: $20 $14

	scf                                              ; $562a: $37
	jr jr_005_563f                                   ; $562b: $18 $12

jr_005_562d:
	ld a, [$d22c]                                    ; $562d: $fa $2c $d2
	cp $07                                           ; $5630: $fe $07
	jr nz, jr_005_563e                               ; $5632: $20 $0a

	ld a, [$d22e]                                    ; $5634: $fa $2e $d2
	cp $07                                           ; $5637: $fe $07
	jr nc, jr_005_563e                               ; $5639: $30 $03

	scf                                              ; $563b: $37
	jr jr_005_563f                                   ; $563c: $18 $01

jr_005_563e:
	and a                                            ; $563e: $a7

jr_005_563f:
	rr b                                             ; $563f: $cb $18
	inc c                                            ; $5641: $0c
	ld a, $15                                        ; $5642: $3e $15
	cp c                                             ; $5644: $b9
	jr z, jr_005_5651                                ; $5645: $28 $0a

	ld a, c                                          ; $5647: $79
	and $07                                          ; $5648: $e6 $07
	jr nz, jr_005_5605                               ; $564a: $20 $b9

	call Call_005_56cf                               ; $564c: $cd $cf $56
	jr jr_005_5603                                   ; $564f: $18 $b2

jr_005_5651:
	srl b                                            ; $5651: $cb $38
	srl b                                            ; $5653: $cb $38
	srl b                                            ; $5655: $cb $38
	ld c, $18                                        ; $5657: $0e $18
	push bc                                          ; $5659: $c5
	call Call_005_56cf                               ; $565a: $cd $cf $56
	ld b, a                                          ; $565d: $47
	pop af                                           ; $565e: $f1
	or $fb                                           ; $565f: $f6 $fb
	and b                                            ; $5661: $a0
	dec hl                                           ; $5662: $2b
	ld [hl], a                                       ; $5663: $77
	ld a, [$d22c]                                    ; $5664: $fa $2c $d2
	sub $02                                          ; $5667: $d6 $02
	jr nc, jr_005_566d                               ; $5669: $30 $02

	add $0c                                          ; $566b: $c6 $0c

jr_005_566d:
	ld b, $03                                        ; $566d: $06 $03
	call $12b5                                       ; $566f: $cd $b5 $12
	ld b, a                                          ; $5672: $47
	ld hl, $a22a                                     ; $5673: $21 $2a $a2
	ld a, [$a224]                                    ; $5676: $fa $24 $a2
	cp [hl]                                          ; $5679: $be
	jr z, jr_005_5683                                ; $567a: $28 $07

	ld a, [$a226]                                    ; $567c: $fa $26 $a2
	cp $03                                           ; $567f: $fe $03
	jr z, jr_005_5697                                ; $5681: $28 $14

jr_005_5683:
	ld a, [$d22c]                                    ; $5683: $fa $2c $d2
	cp $02                                           ; $5686: $fe $02
	jr z, jr_005_5697                                ; $5688: $28 $0d

	cp $03                                           ; $568a: $fe $03
	jr nz, jr_005_569f                               ; $568c: $20 $11

	ld a, [$a226]                                    ; $568e: $fa $26 $a2
	cp $02                                           ; $5691: $fe $02
	jr z, jr_005_5697                                ; $5693: $28 $02

	jr jr_005_569f                                   ; $5695: $18 $08

jr_005_5697:
	ld a, [hl]                                       ; $5697: $7e
	inc a                                            ; $5698: $3c
	sla a                                            ; $5699: $cb $27
	sla a                                            ; $569b: $cb $27
	jr jr_005_56a4                                   ; $569d: $18 $05

jr_005_569f:
	ld a, [hl]                                       ; $569f: $7e
	sla a                                            ; $56a0: $cb $27
	sla a                                            ; $56a2: $cb $27

jr_005_56a4:
	add b                                            ; $56a4: $80
	ld b, a                                          ; $56a5: $47
	sla a                                            ; $56a6: $cb $27
	add b                                            ; $56a8: $80
	ld hl, $57cc                                     ; $56a9: $21 $cc $57
	rst AddAOntoHL                                          ; $56ac: $ef
	ld de, $c170                                     ; $56ad: $11 $70 $c1
	ld c, $03                                        ; $56b0: $0e $03

jr_005_56b2:
	ld a, [de]                                       ; $56b2: $1a
	and [hl]                                         ; $56b3: $a6
	ld [de], a                                       ; $56b4: $12
	inc de                                           ; $56b5: $13
	inc hl                                           ; $56b6: $23
	dec c                                            ; $56b7: $0d
	jr nz, jr_005_56b2                               ; $56b8: $20 $f8

	ld a, [$d22c]                                    ; $56ba: $fa $2c $d2
	cp $0b                                           ; $56bd: $fe $0b
	jr z, jr_005_56c6                                ; $56bf: $28 $05

	cp $01                                           ; $56c1: $fe $01
	jr z, jr_005_56c6                                ; $56c3: $28 $01

	ret                                              ; $56c5: $c9


jr_005_56c6:
	ld a, [$c171]                                    ; $56c6: $fa $71 $c1
	and $df                                          ; $56c9: $e6 $df
	ld [$c171], a                                    ; $56cb: $ea $71 $c1
	ret                                              ; $56ce: $c9


Call_005_56cf:
	push hl                                          ; $56cf: $e5
	ld a, c                                          ; $56d0: $79
	srl a                                            ; $56d1: $cb $3f
	srl a                                            ; $56d3: $cb $3f
	srl a                                            ; $56d5: $cb $3f
	ld hl, $57b3                                     ; $56d7: $21 $b3 $57
	rst AddAOntoHL                                          ; $56da: $ef
	ld a, [hl]                                       ; $56db: $7e
	pop hl                                           ; $56dc: $e1
	and [hl]                                         ; $56dd: $a6
	or b                                             ; $56de: $b0
	ld [hl+], a                                      ; $56df: $22
	ret                                              ; $56e0: $c9


Call_005_56e1:
	ld a, [$d22c]                                    ; $56e1: $fa $2c $d2
	cp $07                                           ; $56e4: $fe $07
	jr z, jr_005_5711                                ; $56e6: $28 $29

	cp $06                                           ; $56e8: $fe $06
	jr nz, jr_005_56f5                               ; $56ea: $20 $09

	ld a, [$d22e]                                    ; $56ec: $fa $2e $d2
	cp $18                                           ; $56ef: $fe $18
	jr nc, jr_005_5711                               ; $56f1: $30 $1e

	jr jr_005_570f                                   ; $56f3: $18 $1a

jr_005_56f5:
	cp $0b                                           ; $56f5: $fe $0b
	jr z, jr_005_56ff                                ; $56f7: $28 $06

	cp $00                                           ; $56f9: $fe $00
	jr z, jr_005_5708                                ; $56fb: $28 $0b

	jr jr_005_570f                                   ; $56fd: $18 $10

jr_005_56ff:
	ld a, [$d22e]                                    ; $56ff: $fa $2e $d2
	cp $19                                           ; $5702: $fe $19
	jr nc, jr_005_5714                               ; $5704: $30 $0e

	jr jr_005_570f                                   ; $5706: $18 $07

jr_005_5708:
	ld a, [$d22e]                                    ; $5708: $fa $2e $d2
	cp $08                                           ; $570b: $fe $08
	jr c, jr_005_5714                                ; $570d: $38 $05

jr_005_570f:
	xor a                                            ; $570f: $af
	ret                                              ; $5710: $c9


jr_005_5711:
	ld a, $01                                        ; $5711: $3e $01
	ret                                              ; $5713: $c9


jr_005_5714:
	ld a, $02                                        ; $5714: $3e $02
	ret                                              ; $5716: $c9


	push af                                          ; $5717: $f5
	rst FarCall                                          ; $5718: $f7
	db $db                                           ; $5719: $db
	ld d, b                                          ; $571a: $50
	inc b                                            ; $571b: $04
	pop af                                           ; $571c: $f1
	ld b, a                                          ; $571d: $47
	push bc                                          ; $571e: $c5
	ld hl, $57cc                                     ; $571f: $21 $cc $57
	ld a, [$a22a]                                    ; $5722: $fa $2a $a2
	ld b, a                                          ; $5725: $47
	ld c, $0c                                        ; $5726: $0e $0c
	call BCequBtimesC                                       ; $5728: $cd $5f $12
	ld a, c                                          ; $572b: $79
	rst AddAOntoHL                                          ; $572c: $ef
	ld a, [$d082]                                    ; $572d: $fa $82 $d0
	sub $02                                          ; $5730: $d6 $02
	jr nc, jr_005_5736                               ; $5732: $30 $02

	add $0c                                          ; $5734: $c6 $0c

jr_005_5736:
	ld b, $03                                        ; $5736: $06 $03
	call $12b5                                       ; $5738: $cd $b5 $12
	ld b, a                                          ; $573b: $47
	sla a                                            ; $573c: $cb $27
	add b                                            ; $573e: $80
	rst AddAOntoHL                                          ; $573f: $ef
	ld a, [$a226]                                    ; $5740: $fa $26 $a2
	cp $02                                           ; $5743: $fe $02
	jr nz, jr_005_5751                               ; $5745: $20 $0a

	ld a, [$d082]                                    ; $5747: $fa $82 $d0
	cp $03                                           ; $574a: $fe $03
	jr nz, jr_005_5751                               ; $574c: $20 $03

	ld a, $0c                                        ; $574e: $3e $0c
	rst AddAOntoHL                                          ; $5750: $ef

jr_005_5751:
	pop bc                                           ; $5751: $c1
	ld a, b                                          ; $5752: $78
	srl a                                            ; $5753: $cb $3f
	srl a                                            ; $5755: $cb $3f
	srl a                                            ; $5757: $cb $3f
	rst AddAOntoHL                                          ; $5759: $ef
	ld a, [$a226]                                    ; $575a: $fa $26 $a2
	ld [$d22c], a                                    ; $575d: $ea $2c $d2
	ld a, [$a228]                                    ; $5760: $fa $28 $a2
	ld [$d22e], a                                    ; $5763: $ea $2e $d2
	ld a, b                                          ; $5766: $78
	cp $10                                           ; $5767: $fe $10
	jr z, jr_005_5779                                ; $5769: $28 $0e

	cp $11                                           ; $576b: $fe $11
	jr z, jr_005_5779                                ; $576d: $28 $0a

	cp $13                                           ; $576f: $fe $13
	jr z, jr_005_5782                                ; $5771: $28 $0f

	cp $14                                           ; $5773: $fe $14
	jr z, jr_005_5782                                ; $5775: $28 $0b

	jr jr_005_578b                                   ; $5777: $18 $12

jr_005_5779:
	call Call_005_56e1                               ; $5779: $cd $e1 $56
	cp $01                                           ; $577c: $fe $01
	jr z, jr_005_579c                                ; $577e: $28 $1c

	jr jr_005_57b2                                   ; $5780: $18 $30

jr_005_5782:
	call Call_005_56e1                               ; $5782: $cd $e1 $56
	cp $02                                           ; $5785: $fe $02
	jr z, jr_005_579c                                ; $5787: $28 $13

	jr jr_005_57b2                                   ; $5789: $18 $27

jr_005_578b:
	ld a, b                                          ; $578b: $78
	and $07                                          ; $578c: $e6 $07
	ld c, $01                                        ; $578e: $0e $01

jr_005_5790:
	and a                                            ; $5790: $a7
	jr z, jr_005_5798                                ; $5791: $28 $05

	sla c                                            ; $5793: $cb $21
	dec a                                            ; $5795: $3d
	jr jr_005_5790                                   ; $5796: $18 $f8

jr_005_5798:
	ld a, [hl]                                       ; $5798: $7e
	and c                                            ; $5799: $a1
	jr z, jr_005_57b2                                ; $579a: $28 $16

jr_005_579c:
	ld a, [$a22e]                                    ; $579c: $fa $2e $a2
	ld c, a                                          ; $579f: $4f
	ld hl, $a232                                     ; $57a0: $21 $32 $a2

jr_005_57a3:
	ld a, [hl]                                       ; $57a3: $7e
	and $7f                                          ; $57a4: $e6 $7f
	cp b                                             ; $57a6: $b8
	jr z, jr_005_57b2                                ; $57a7: $28 $09

	ld a, $04                                        ; $57a9: $3e $04
	rst AddAOntoHL                                          ; $57ab: $ef
	dec c                                            ; $57ac: $0d
	jr nz, jr_005_57a3                               ; $57ad: $20 $f4

	ld a, $01                                        ; $57af: $3e $01
	ret                                              ; $57b1: $c9


jr_005_57b2:
	xor a                                            ; $57b2: $af
	ret                                              ; $57b3: $c9


	ld [$042c], a                                    ; $57b4: $ea $2c $04
	ld bc, $0100                                     ; $57b7: $01 $00 $01
	nop                                              ; $57ba: $00
	ld bc, $0000                                     ; $57bb: $01 $00 $00
	nop                                              ; $57be: $00
	ld bc, $0001                                     ; $57bf: $01 $01 $00
	nop                                              ; $57c2: $00
	ld bc, $0100                                     ; $57c3: $01 $00 $01
	ld bc, $0202                                     ; $57c6: $01 $02 $02
	inc b                                            ; $57c9: $04
	inc bc                                           ; $57ca: $03
	inc bc                                           ; $57cb: $03
	dec d                                            ; $57cc: $15
	sub e                                            ; $57cd: $93
	rra                                              ; $57ce: $1f
	rla                                              ; $57cf: $17
	db $d3                                           ; $57d0: $d3
	rra                                              ; $57d1: $1f
	sub a                                            ; $57d2: $97
	db $d3                                           ; $57d3: $d3
	rra                                              ; $57d4: $1f
	sbc a                                            ; $57d5: $9f
	db $d3                                           ; $57d6: $d3
	rra                                              ; $57d7: $1f
	sbc a                                            ; $57d8: $9f
	di                                               ; $57d9: $f3
	rra                                              ; $57da: $1f
	cp a                                             ; $57db: $bf
	di                                               ; $57dc: $f3
	rra                                              ; $57dd: $1f
	cp a                                             ; $57de: $bf
	rst FarCall                                          ; $57df: $f7
	rra                                              ; $57e0: $1f
	rst $38                                          ; $57e1: $ff
	rst FarCall                                          ; $57e2: $f7
	rra                                              ; $57e3: $1f
	rst $38                                          ; $57e4: $ff
	rst $38                                          ; $57e5: $ff
	rra                                              ; $57e6: $1f
	rst $38                                          ; $57e7: $ff
	rst $38                                          ; $57e8: $ff
	rra                                              ; $57e9: $1f
	rst $38                                          ; $57ea: $ff
	rst $38                                          ; $57eb: $ff
	rra                                              ; $57ec: $1f
	rst $38                                          ; $57ed: $ff
	rst $38                                          ; $57ee: $ff
	rra                                              ; $57ef: $1f

Call_005_57f0:
	ld hl, $9c00                                     ; $57f0: $21 $00 $9c
	ld c, $14                                        ; $57f3: $0e $14

jr_005_57f5:
	di                                               ; $57f5: $f3

jr_005_57f6:
	ldh a, [rSTAT]                                   ; $57f6: $f0 $41
	bit 1, a                                         ; $57f8: $cb $4f
	jr nz, jr_005_57f6                               ; $57fa: $20 $fa

	ld a, $a3                                        ; $57fc: $3e $a3
	ld [hl], a                                       ; $57fe: $77
	ei                                               ; $57ff: $fb
	ld a, $01                                        ; $5800: $3e $01
	ldh [rVBK], a                                    ; $5802: $e0 $4f
	di                                               ; $5804: $f3

jr_005_5805:
	ldh a, [rSTAT]                                   ; $5805: $f0 $41
	bit 1, a                                         ; $5807: $cb $4f
	jr nz, jr_005_5805                               ; $5809: $20 $fa

	ld a, $01                                        ; $580b: $3e $01
	ld [hl+], a                                      ; $580d: $22
	ei                                               ; $580e: $fb
	xor a                                            ; $580f: $af
	ldh [rVBK], a                                    ; $5810: $e0 $4f
	dec c                                            ; $5812: $0d
	jr nz, jr_005_57f5                               ; $5813: $20 $e0

	ret                                              ; $5815: $c9


	nop                                              ; $5816: $00
	nop                                              ; $5817: $00
	nop                                              ; $5818: $00
	nop                                              ; $5819: $00
	ld bc, $0002                                     ; $581a: $01 $02 $00
	nop                                              ; $581d: $00
	ld b, $06                                        ; $581e: $06 $06
	nop                                              ; $5820: $00
	ld bc, $1d08                                     ; $5821: $01 $08 $1d
	ld bc, $0002                                     ; $5824: $01 $02 $00
	inc c                                            ; $5827: $0c
	nop                                              ; $5828: $00
	inc b                                            ; $5829: $04
	dec b                                            ; $582a: $05
	inc c                                            ; $582b: $0c
	ld bc, $0b06                                     ; $582c: $01 $06 $0b
	ld [bc], a                                       ; $582f: $02
	nop                                              ; $5830: $00
	rlca                                             ; $5831: $07
	ld a, [bc]                                       ; $5832: $0a
	ld c, $03                                        ; $5833: $0e $03
	ld a, [bc]                                       ; $5835: $0a
	add hl, bc                                       ; $5836: $09
	db $10                                           ; $5837: $10
	ld bc, $080a                                     ; $5838: $01 $0a $08
	inc b                                            ; $583b: $04
	nop                                              ; $583c: $00
	ld a, [bc]                                       ; $583d: $0a
	inc b                                            ; $583e: $04
	rrca                                             ; $583f: $0f
	inc bc                                           ; $5840: $03
	ld [$1703], sp                                   ; $5841: $08 $03 $17
	inc bc                                           ; $5844: $03
	inc bc                                           ; $5845: $03
	inc b                                            ; $5846: $04
	inc d                                            ; $5847: $14
	ld bc, $000a                                     ; $5848: $01 $0a $00
	dec d                                            ; $584b: $15
	nop                                              ; $584c: $00
	ld a, [bc]                                       ; $584d: $0a
	nop                                              ; $584e: $00
	dec d                                            ; $584f: $15
	nop                                              ; $5850: $00
	ld a, [bc]                                       ; $5851: $0a
	rlca                                             ; $5852: $07
	ld d, $02                                        ; $5853: $16 $02
	add hl, bc                                       ; $5855: $09
	ld e, $43                                        ; $5856: $1e $43
	ld l, a                                          ; $5858: $6f
	ld e, $4c                                        ; $5859: $1e $4c
	ld l, a                                          ; $585b: $6f
	ld e, $55                                        ; $585c: $1e $55
	ld l, a                                          ; $585e: $6f
	ld e, $5e                                        ; $585f: $1e $5e
	ld l, a                                          ; $5861: $6f
	ld e, $67                                        ; $5862: $1e $67
	ld l, a                                          ; $5864: $6f
	ld e, $71                                        ; $5865: $1e $71
	ld l, a                                          ; $5867: $6f
	ld e, $7b                                        ; $5868: $1e $7b
	ld l, a                                          ; $586a: $6f
	ld e, $83                                        ; $586b: $1e $83
	ld l, a                                          ; $586d: $6f
	ld e, $8b                                        ; $586e: $1e $8b
	ld l, a                                          ; $5870: $6f
	ld e, $95                                        ; $5871: $1e $95
	ld l, a                                          ; $5873: $6f
	ld e, $9e                                        ; $5874: $1e $9e
	ld l, a                                          ; $5876: $6f
	ld e, $a9                                        ; $5877: $1e $a9
	ld l, a                                          ; $5879: $6f
	ld e, $b2                                        ; $587a: $1e $b2
	ld l, a                                          ; $587c: $6f
	ld e, $c0                                        ; $587d: $1e $c0
	ld l, a                                          ; $587f: $6f
	ld e, $c9                                        ; $5880: $1e $c9
	ld l, a                                          ; $5882: $6f
	ld e, $d2                                        ; $5883: $1e $d2
	ld l, a                                          ; $5885: $6f
	ld e, $dc                                        ; $5886: $1e $dc
	ld l, a                                          ; $5888: $6f
	ld e, $f3                                        ; $5889: $1e $f3
	ld l, a                                          ; $588b: $6f
	ld e, $ff                                        ; $588c: $1e $ff
	ld l, a                                          ; $588e: $6f
	ld e, $43                                        ; $588f: $1e $43
	ld l, a                                          ; $5891: $6f
	ld e, $4c                                        ; $5892: $1e $4c
	ld l, a                                          ; $5894: $6f
	ld e, $55                                        ; $5895: $1e $55
	ld l, a                                          ; $5897: $6f
	ld e, $5e                                        ; $5898: $1e $5e
	ld l, a                                          ; $589a: $6f
	ld e, $67                                        ; $589b: $1e $67
	ld l, a                                          ; $589d: $6f
	ld e, $71                                        ; $589e: $1e $71
	ld l, a                                          ; $58a0: $6f
	ld e, $7b                                        ; $58a1: $1e $7b
	ld l, a                                          ; $58a3: $6f
	ld e, $83                                        ; $58a4: $1e $83
	ld l, a                                          ; $58a6: $6f
	ld e, $8b                                        ; $58a7: $1e $8b
	ld l, a                                          ; $58a9: $6f
	ld e, $95                                        ; $58aa: $1e $95
	ld l, a                                          ; $58ac: $6f
	ld e, $9e                                        ; $58ad: $1e $9e
	ld l, a                                          ; $58af: $6f
	ld e, $a9                                        ; $58b0: $1e $a9
	ld l, a                                          ; $58b2: $6f
	ld e, $b2                                        ; $58b3: $1e $b2
	ld l, a                                          ; $58b5: $6f
	ld e, $c0                                        ; $58b6: $1e $c0
	ld l, a                                          ; $58b8: $6f
	ld e, $c9                                        ; $58b9: $1e $c9
	ld l, a                                          ; $58bb: $6f
	ld e, $d2                                        ; $58bc: $1e $d2
	ld l, a                                          ; $58be: $6f
	ld e, $e7                                        ; $58bf: $1e $e7
	ld l, a                                          ; $58c1: $6f
	ld e, $0f                                        ; $58c2: $1e $0f
	ld [hl], b                                       ; $58c4: $70
	ld e, $1a                                        ; $58c5: $1e $1a
	ld [hl], b                                       ; $58c7: $70
	ld e, $24                                        ; $58c8: $1e $24
	ld [hl], b                                       ; $58ca: $70
	ld e, $31                                        ; $58cb: $1e $31
	ld [hl], b                                       ; $58cd: $70
	ld e, $39                                        ; $58ce: $1e $39
	ld [hl], b                                       ; $58d0: $70
	ld e, $41                                        ; $58d1: $1e $41
	ld [hl], b                                       ; $58d3: $70
	ld e, $58                                        ; $58d4: $1e $58
	ld [hl], b                                       ; $58d6: $70
	ld e, $49                                        ; $58d7: $1e $49
	ld [hl], b                                       ; $58d9: $70
	ld e, $50                                        ; $58da: $1e $50
	ld [hl], b                                       ; $58dc: $70
	ld e, $67                                        ; $58dd: $1e $67
	ld [hl], b                                       ; $58df: $70
	ld e, $74                                        ; $58e0: $1e $74
	ld [hl], b                                       ; $58e2: $70
	ld e, $7e                                        ; $58e3: $1e $7e
	ld [hl], b                                       ; $58e5: $70
	ld e, $88                                        ; $58e6: $1e $88
	ld [hl], b                                       ; $58e8: $70
	ld e, $90                                        ; $58e9: $1e $90
	ld [hl], b                                       ; $58eb: $70
	ld e, $b8                                        ; $58ec: $1e $b8
	ld [hl], b                                       ; $58ee: $70
	ld e, $c0                                        ; $58ef: $1e $c0
	ld [hl], b                                       ; $58f1: $70
	ld e, $9b                                        ; $58f2: $1e $9b
	ld [hl], b                                       ; $58f4: $70
	ld e, $a1                                        ; $58f5: $1e $a1
	ld [hl], b                                       ; $58f7: $70
	ld e, $a5                                        ; $58f8: $1e $a5
	ld [hl], b                                       ; $58fa: $70
	ld e, $ab                                        ; $58fb: $1e $ab
	ld [hl], b                                       ; $58fd: $70
	ld e, $b2                                        ; $58fe: $1e $b2
	ld [hl], b                                       ; $5900: $70
	ld e, $c9                                        ; $5901: $1e $c9
	ld [hl], b                                       ; $5903: $70
	ld e, $cf                                        ; $5904: $1e $cf
	ld [hl], b                                       ; $5906: $70
	ld e, $0b                                        ; $5907: $1e $0b
	ld [hl], c                                       ; $5909: $71
	ld e, $13                                        ; $590a: $1e $13
	ld [hl], c                                       ; $590c: $71
	ld e, $1b                                        ; $590d: $1e $1b
	ld [hl], c                                       ; $590f: $71
	ld e, $25                                        ; $5910: $1e $25
	ld [hl], c                                       ; $5912: $71
	ld e, $2d                                        ; $5913: $1e $2d
	ld [hl], c                                       ; $5915: $71
	ld e, $34                                        ; $5916: $1e $34
	ld [hl], c                                       ; $5918: $71
	ld e, $3a                                        ; $5919: $1e $3a
	ld [hl], c                                       ; $591b: $71
	ld e, $40                                        ; $591c: $1e $40
	ld [hl], c                                       ; $591e: $71
	ld e, $48                                        ; $591f: $1e $48
	ld [hl], c                                       ; $5921: $71
	ld e, $4f                                        ; $5922: $1e $4f
	ld [hl], c                                       ; $5924: $71
	ld e, $58                                        ; $5925: $1e $58
	ld [hl], c                                       ; $5927: $71
	ld e, $60                                        ; $5928: $1e $60
	ld [hl], c                                       ; $592a: $71
	ld e, $67                                        ; $592b: $1e $67
	ld [hl], c                                       ; $592d: $71
	ld e, $71                                        ; $592e: $1e $71
	ld [hl], c                                       ; $5930: $71
	ld e, $77                                        ; $5931: $1e $77
	ld [hl], c                                       ; $5933: $71
	ld d, e                                          ; $5934: $53
	jr c, jr_005_598b                                ; $5935: $38 $54

	ld d, h                                          ; $5937: $54
	jr c, jr_005_598f                                ; $5938: $38 $55

	ld d, l                                          ; $593a: $55
	add hl, sp                                       ; $593b: $39
	ld d, [hl]                                       ; $593c: $56
	ld d, b                                          ; $593d: $50
	dec sp                                           ; $593e: $3b
	ld d, d                                          ; $593f: $52
	ld d, b                                          ; $5940: $50
	dec sp                                           ; $5941: $3b
	ld d, e                                          ; $5942: $53
	ld d, c                                          ; $5943: $51
	dec sp                                           ; $5944: $3b
	ld d, e                                          ; $5945: $53
	ld d, h                                          ; $5946: $54
	ld a, [hl-]                                      ; $5947: $3a
	ld d, h                                          ; $5948: $54
	ld d, h                                          ; $5949: $54
	dec sp                                           ; $594a: $3b
	ld d, h                                          ; $594b: $54
	ld d, l                                          ; $594c: $55
	dec sp                                           ; $594d: $3b
	ld d, [hl]                                       ; $594e: $56
	ld d, [hl]                                       ; $594f: $56
	inc a                                            ; $5950: $3c
	ld d, [hl]                                       ; $5951: $56
	ld d, [hl]                                       ; $5952: $56
	dec sp                                           ; $5953: $3b
	ld d, [hl]                                       ; $5954: $56
	ld d, [hl]                                       ; $5955: $56
	inc a                                            ; $5956: $3c
	ld d, a                                          ; $5957: $57
	ld d, c                                          ; $5958: $51
	dec sp                                           ; $5959: $3b
	ld d, d                                          ; $595a: $52
	ld d, d                                          ; $595b: $52
	dec sp                                           ; $595c: $3b
	ld d, e                                          ; $595d: $53
	ld d, d                                          ; $595e: $52
	inc a                                            ; $595f: $3c
	ld d, h                                          ; $5960: $54
	ld d, b                                          ; $5961: $50
	dec sp                                           ; $5962: $3b
	ld d, h                                          ; $5963: $54
	ld d, c                                          ; $5964: $51
	inc a                                            ; $5965: $3c
	ld d, h                                          ; $5966: $54
	ld d, d                                          ; $5967: $52
	inc a                                            ; $5968: $3c
	ld d, h                                          ; $5969: $54
	ld d, d                                          ; $596a: $52
	ld a, [hl-]                                      ; $596b: $3a
	ld d, e                                          ; $596c: $53
	ld d, e                                          ; $596d: $53
	ld a, [hl-]                                      ; $596e: $3a
	ld d, e                                          ; $596f: $53
	ld d, e                                          ; $5970: $53
	dec sp                                           ; $5971: $3b
	ld d, h                                          ; $5972: $54
	ld e, d                                          ; $5973: $5a
	inc a                                            ; $5974: $3c
	ld e, b                                          ; $5975: $58
	ld e, h                                          ; $5976: $5c
	dec a                                            ; $5977: $3d
	ld e, c                                          ; $5978: $59
	ld e, l                                          ; $5979: $5d
	dec a                                            ; $597a: $3d
	ld e, c                                          ; $597b: $59
	ld d, e                                          ; $597c: $53
	dec sp                                           ; $597d: $3b
	ld d, l                                          ; $597e: $55
	ld d, e                                          ; $597f: $53
	inc a                                            ; $5980: $3c
	ld d, [hl]                                       ; $5981: $56
	ld d, l                                          ; $5982: $55
	inc a                                            ; $5983: $3c
	ld d, [hl]                                       ; $5984: $56
	ld c, [hl]                                       ; $5985: $4e
	add hl, sp                                       ; $5986: $39
	ld c, a                                          ; $5987: $4f
	ld c, [hl]                                       ; $5988: $4e
	ld a, [hl-]                                      ; $5989: $3a
	ld c, a                                          ; $598a: $4f

jr_005_598b:
	ld c, a                                          ; $598b: $4f
	ld a, [hl-]                                      ; $598c: $3a
	ld d, b                                          ; $598d: $50
	ld c, a                                          ; $598e: $4f

jr_005_598f:
	dec sp                                           ; $598f: $3b
	ld d, d                                          ; $5990: $52
	ld c, a                                          ; $5991: $4f
	dec sp                                           ; $5992: $3b
	ld d, d                                          ; $5993: $52
	ld d, c                                          ; $5994: $51
	inc a                                            ; $5995: $3c
	ld d, h                                          ; $5996: $54
	ld d, e                                          ; $5997: $53
	ld a, [hl-]                                      ; $5998: $3a
	ld d, l                                          ; $5999: $55
	ld d, e                                          ; $599a: $53
	dec sp                                           ; $599b: $3b
	ld d, [hl]                                       ; $599c: $56
	ld d, h                                          ; $599d: $54
	dec sp                                           ; $599e: $3b
	ld d, a                                          ; $599f: $57
	ld e, b                                          ; $59a0: $58
	add hl, sp                                       ; $59a1: $39
	ld e, b                                          ; $59a2: $58
	ld e, d                                          ; $59a3: $5a
	ld a, [hl-]                                      ; $59a4: $3a
	ld e, b                                          ; $59a5: $58
	ld e, e                                          ; $59a6: $5b
	dec sp                                           ; $59a7: $3b
	ld e, c                                          ; $59a8: $59
	ld d, b                                          ; $59a9: $50
	ld a, [hl-]                                      ; $59aa: $3a
	ld d, d                                          ; $59ab: $52
	ld d, c                                          ; $59ac: $51
	ld a, [hl-]                                      ; $59ad: $3a
	ld d, e                                          ; $59ae: $53
	ld d, e                                          ; $59af: $53
	dec sp                                           ; $59b0: $3b
	ld d, h                                          ; $59b1: $54
	ld e, $ce                                        ; $59b2: $1e $ce
	ld [hl], c                                       ; $59b4: $71
	ld e, $f2                                        ; $59b5: $1e $f2
	ld [hl], c                                       ; $59b7: $71
	ld e, $1f                                        ; $59b8: $1e $1f
	ld [hl], d                                       ; $59ba: $72
	ld e, $45                                        ; $59bb: $1e $45
	ld [hl], d                                       ; $59bd: $72
	ld e, $64                                        ; $59be: $1e $64
	ld [hl], d                                       ; $59c0: $72
	ld e, $84                                        ; $59c1: $1e $84
	ld [hl], d                                       ; $59c3: $72
	ld e, $a6                                        ; $59c4: $1e $a6
	ld [hl], d                                       ; $59c6: $72
	ld e, $cc                                        ; $59c7: $1e $cc
	ld [hl], d                                       ; $59c9: $72
	ld e, $f1                                        ; $59ca: $1e $f1
	ld [hl], d                                       ; $59cc: $72
	ld e, $1b                                        ; $59cd: $1e $1b
	ld [hl], e                                       ; $59cf: $73
	ld e, $44                                        ; $59d0: $1e $44
	ld [hl], e                                       ; $59d2: $73
	ld e, $69                                        ; $59d3: $1e $69
	ld [hl], e                                       ; $59d5: $73
	ld e, $93                                        ; $59d6: $1e $93
	ld [hl], e                                       ; $59d8: $73
	ld e, $bf                                        ; $59d9: $1e $bf
	ld [hl], e                                       ; $59db: $73
	ld e, $ea                                        ; $59dc: $1e $ea
	ld [hl], e                                       ; $59de: $73
	ld e, $09                                        ; $59df: $1e $09
	ld [hl], h                                       ; $59e1: $74
	ld e, $23                                        ; $59e2: $1e $23
	ld [hl], h                                       ; $59e4: $74
	ld e, $4a                                        ; $59e5: $1e $4a
	ld [hl], h                                       ; $59e7: $74
	ld e, $69                                        ; $59e8: $1e $69
	ld [hl], h                                       ; $59ea: $74
	ld e, $96                                        ; $59eb: $1e $96
	ld [hl], h                                       ; $59ed: $74
	ld e, $bd                                        ; $59ee: $1e $bd
	ld [hl], h                                       ; $59f0: $74
	ld e, $de                                        ; $59f1: $1e $de
	ld [hl], h                                       ; $59f3: $74
	ld e, $00                                        ; $59f4: $1e $00
	ld [hl], l                                       ; $59f6: $75
	ld e, $23                                        ; $59f7: $1e $23
	ld [hl], l                                       ; $59f9: $75
	ld e, $49                                        ; $59fa: $1e $49
	ld [hl], l                                       ; $59fc: $75
	ld e, $6e                                        ; $59fd: $1e $6e
	ld [hl], l                                       ; $59ff: $75
	ld e, $8f                                        ; $5a00: $1e $8f
	ld [hl], l                                       ; $5a02: $75
	ld e, $af                                        ; $5a03: $1e $af
	ld [hl], l                                       ; $5a05: $75
	ld e, $d6                                        ; $5a06: $1e $d6
	ld [hl], l                                       ; $5a08: $75
	ld e, $f9                                        ; $5a09: $1e $f9
	ld [hl], l                                       ; $5a0b: $75
	ld e, $1e                                        ; $5a0c: $1e $1e
	halt                                             ; $5a0e: $76
	ld e, $1e                                        ; $5a0f: $1e $1e
	halt                                             ; $5a11: $76
	ld e, $43                                        ; $5a12: $1e $43
	halt                                             ; $5a14: $76
	ld e, $68                                        ; $5a15: $1e $68
	halt                                             ; $5a17: $76
	ld e, $90                                        ; $5a18: $1e $90
	halt                                             ; $5a1a: $76
	ld e, $ad                                        ; $5a1b: $1e $ad
	halt                                             ; $5a1d: $76
	ld e, $ce                                        ; $5a1e: $1e $ce
	halt                                             ; $5a20: $76
	ld e, $eb                                        ; $5a21: $1e $eb
	halt                                             ; $5a23: $76
	ld e, $09                                        ; $5a24: $1e $09
	ld [hl], a                                       ; $5a26: $77
	ld e, $2c                                        ; $5a27: $1e $2c
	ld [hl], a                                       ; $5a29: $77
	ld e, $51                                        ; $5a2a: $1e $51
	ld [hl], a                                       ; $5a2c: $77
	ld e, $77                                        ; $5a2d: $1e $77
	ld [hl], a                                       ; $5a2f: $77
	ld e, $9b                                        ; $5a30: $1e $9b
	ld [hl], a                                       ; $5a32: $77
	ld e, $c4                                        ; $5a33: $1e $c4
	ld [hl], a                                       ; $5a35: $77
	ld e, $f3                                        ; $5a36: $1e $f3
	ld [hl], a                                       ; $5a38: $77
	ld e, $9b                                        ; $5a39: $1e $9b
	ld [hl], a                                       ; $5a3b: $77
	ld e, $c4                                        ; $5a3c: $1e $c4
	ld [hl], a                                       ; $5a3e: $77
	ld e, $f3                                        ; $5a3f: $1e $f3
	ld [hl], a                                       ; $5a41: $77
	ld de, $4ada                                     ; $5a42: $11 $da $4a
	ld de, $4d0c                                     ; $5a45: $11 $0c $4d
	ld de, $4f48                                     ; $5a48: $11 $48 $4f
	ld de, $517b                                     ; $5a4b: $11 $7b $51
	ld de, $53a6                                     ; $5a4e: $11 $a6 $53
	ld de, $55c9                                     ; $5a51: $11 $c9 $55
	ld de, $5805                                     ; $5a54: $11 $05 $58
	ld de, $59f4                                     ; $5a57: $11 $f4 $59
	ld de, $5c25                                     ; $5a5a: $11 $25 $5c
	ld de, $5e59                                     ; $5a5d: $11 $59 $5e
	ld de, $608c                                     ; $5a60: $11 $8c $60
	ld de, $629c                                     ; $5a63: $11 $9c $62
	ld de, $64da                                     ; $5a66: $11 $da $64
	ld de, $671a                                     ; $5a69: $11 $1a $67
	ld de, $6944                                     ; $5a6c: $11 $44 $69
	ld de, $6944                                     ; $5a6f: $11 $44 $69
	call nz, $d65a                                   ; $5a72: $c4 $5a $d6
	ld e, d                                          ; $5a75: $5a
	add sp, $5a                                      ; $5a76: $e8 $5a
	ld a, [$0c5a]                                    ; $5a78: $fa $5a $0c
	ld e, e                                          ; $5a7b: $5b
	ld e, $5b                                        ; $5a7c: $1e $5b
	jr nc, jr_005_5adb                               ; $5a7e: $30 $5b

	ld b, d                                          ; $5a80: $42
	ld e, e                                          ; $5a81: $5b
	ld d, h                                          ; $5a82: $54
	ld e, e                                          ; $5a83: $5b
	ld h, [hl]                                       ; $5a84: $66
	ld e, e                                          ; $5a85: $5b
	ld a, b                                          ; $5a86: $78
	ld e, e                                          ; $5a87: $5b
	sbc h                                            ; $5a88: $9c
	ld e, e                                          ; $5a89: $5b
	xor [hl]                                         ; $5a8a: $ae
	ld e, e                                          ; $5a8b: $5b
	ret nz                                           ; $5a8c: $c0

	ld e, e                                          ; $5a8d: $5b
	adc d                                            ; $5a8e: $8a
	ld e, e                                          ; $5a8f: $5b
	adc d                                            ; $5a90: $8a
	ld e, e                                          ; $5a91: $5b
	ld de, $4935                                     ; $5a92: $11 $35 $49
	ld de, $4957                                     ; $5a95: $11 $57 $49
	ld de, $497b                                     ; $5a98: $11 $7b $49
	ld de, $499f                                     ; $5a9b: $11 $9f $49
	ld de, $49c3                                     ; $5a9e: $11 $c3 $49
	ld de, $49e7                                     ; $5aa1: $11 $e7 $49
	ld de, $4a0b                                     ; $5aa4: $11 $0b $4a
	ld de, $4a2f                                     ; $5aa7: $11 $2f $4a
	ld de, $4a53                                     ; $5aaa: $11 $53 $4a
	ld de, $4a77                                     ; $5aad: $11 $77 $4a
	ld de, $4a9b                                     ; $5ab0: $11 $9b $4a
	ld de, $4ab6                                     ; $5ab3: $11 $b6 $4a
	inc sp                                           ; $5ab6: $33
	ld b, h                                          ; $5ab7: $44
	ld b, h                                          ; $5ab8: $44
	ld d, l                                          ; $5ab9: $55
	ld h, [hl]                                       ; $5aba: $66
	ld h, [hl]                                       ; $5abb: $66
	ld h, [hl]                                       ; $5abc: $66
	inc sp                                           ; $5abd: $33
	ld b, h                                          ; $5abe: $44
	ld b, h                                          ; $5abf: $44
	ld d, l                                          ; $5ac0: $55
	ld h, [hl]                                       ; $5ac1: $66
	ld h, [hl]                                       ; $5ac2: $66
	ld h, [hl]                                       ; $5ac3: $66
	inc sp                                           ; $5ac4: $33
	inc sp                                           ; $5ac5: $33
	inc sp                                           ; $5ac6: $33
	inc sp                                           ; $5ac7: $33
	inc sp                                           ; $5ac8: $33
	inc hl                                           ; $5ac9: $23
	inc sp                                           ; $5aca: $33
	ld [hl+], a                                      ; $5acb: $22
	ld [hl+], a                                      ; $5acc: $22
	ld [hl+], a                                      ; $5acd: $22
	ld [hl+], a                                      ; $5ace: $22
	ld [hl+], a                                      ; $5acf: $22
	inc sp                                           ; $5ad0: $33
	ld [hl+], a                                      ; $5ad1: $22
	inc hl                                           ; $5ad2: $23
	inc sp                                           ; $5ad3: $33
	ld b, h                                          ; $5ad4: $44
	inc sp                                           ; $5ad5: $33
	inc sp                                           ; $5ad6: $33
	inc sp                                           ; $5ad7: $33
	inc sp                                           ; $5ad8: $33
	ld [hl+], a                                      ; $5ad9: $22
	ld [hl+], a                                      ; $5ada: $22

jr_005_5adb:
	inc sp                                           ; $5adb: $33
	ld [hl+], a                                      ; $5adc: $22
	ld [hl+], a                                      ; $5add: $22
	inc h                                            ; $5ade: $24
	ld [hl+], a                                      ; $5adf: $22
	ld [hl+], a                                      ; $5ae0: $22
	dec h                                            ; $5ae1: $25
	inc h                                            ; $5ae2: $24
	ld d, l                                          ; $5ae3: $55
	ld d, d                                          ; $5ae4: $52
	inc [hl]                                         ; $5ae5: $34
	ld d, l                                          ; $5ae6: $55
	ld b, e                                          ; $5ae7: $43
	inc sp                                           ; $5ae8: $33
	dec [hl]                                         ; $5ae9: $35
	inc sp                                           ; $5aea: $33
	inc sp                                           ; $5aeb: $33
	ld d, d                                          ; $5aec: $52
	inc sp                                           ; $5aed: $33
	ld [hl+], a                                      ; $5aee: $22
	ld [hl+], a                                      ; $5aef: $22
	inc hl                                           ; $5af0: $23
	ld [hl-], a                                      ; $5af1: $32
	ld [hl+], a                                      ; $5af2: $22
	ld [hl+], a                                      ; $5af3: $22
	ld [hl+], a                                      ; $5af4: $22
	inc h                                            ; $5af5: $24
	inc hl                                           ; $5af6: $23
	ld [hl+], a                                      ; $5af7: $22
	ld b, h                                          ; $5af8: $44
	inc hl                                           ; $5af9: $23
	inc sp                                           ; $5afa: $33
	ld [hl-], a                                      ; $5afb: $32
	inc sp                                           ; $5afc: $33
	ld [hl-], a                                      ; $5afd: $32
	ld [hl+], a                                      ; $5afe: $22
	inc hl                                           ; $5aff: $23
	ld [hl-], a                                      ; $5b00: $32
	ld [hl+], a                                      ; $5b01: $22
	inc hl                                           ; $5b02: $23
	ld [hl-], a                                      ; $5b03: $32
	inc h                                            ; $5b04: $24
	ld [hl+], a                                      ; $5b05: $22
	ld [hl-], a                                      ; $5b06: $32
	inc h                                            ; $5b07: $24
	ld b, d                                          ; $5b08: $42
	inc sp                                           ; $5b09: $33
	inc h                                            ; $5b0a: $24
	ld b, d                                          ; $5b0b: $42
	inc sp                                           ; $5b0c: $33
	inc sp                                           ; $5b0d: $33
	inc sp                                           ; $5b0e: $33
	inc sp                                           ; $5b0f: $33
	inc sp                                           ; $5b10: $33
	inc sp                                           ; $5b11: $33
	ld [hl+], a                                      ; $5b12: $22
	ld [hl+], a                                      ; $5b13: $22
	inc hl                                           ; $5b14: $23
	ld [hl+], a                                      ; $5b15: $22
	ld [hl+], a                                      ; $5b16: $22
	ld [hl+], a                                      ; $5b17: $22
	ld [hl-], a                                      ; $5b18: $32
	ld b, d                                          ; $5b19: $42
	ld [hl+], a                                      ; $5b1a: $22
	ld [hl-], a                                      ; $5b1b: $32
	ld b, [hl]                                       ; $5b1c: $46
	ld d, l                                          ; $5b1d: $55
	inc sp                                           ; $5b1e: $33
	inc sp                                           ; $5b1f: $33
	inc sp                                           ; $5b20: $33
	inc sp                                           ; $5b21: $33
	inc sp                                           ; $5b22: $33
	inc sp                                           ; $5b23: $33
	ld [hl+], a                                      ; $5b24: $22
	ld [hl+], a                                      ; $5b25: $22
	inc hl                                           ; $5b26: $23
	ld [hl+], a                                      ; $5b27: $22
	ld [hl+], a                                      ; $5b28: $22
	ld [hl+], a                                      ; $5b29: $22
	ld [hl-], a                                      ; $5b2a: $32
	ld [hl+], a                                      ; $5b2b: $22
	ld [hl+], a                                      ; $5b2c: $22
	dec [hl]                                         ; $5b2d: $35
	ld b, h                                          ; $5b2e: $44
	ld d, e                                          ; $5b2f: $53
	inc sp                                           ; $5b30: $33
	inc sp                                           ; $5b31: $33
	inc sp                                           ; $5b32: $33
	ld [hl-], a                                      ; $5b33: $32
	ld [hl+], a                                      ; $5b34: $22
	inc hl                                           ; $5b35: $23
	ld [hl+], a                                      ; $5b36: $22
	ld [hl+], a                                      ; $5b37: $22
	ld [hl+], a                                      ; $5b38: $22
	ld b, d                                          ; $5b39: $42
	inc h                                            ; $5b3a: $24
	ld [hl+], a                                      ; $5b3b: $22
	inc h                                            ; $5b3c: $24
	ld b, h                                          ; $5b3d: $44
	ld b, e                                          ; $5b3e: $43
	dec h                                            ; $5b3f: $25
	ld d, h                                          ; $5b40: $54
	ld d, l                                          ; $5b41: $55
	inc sp                                           ; $5b42: $33
	ld [hl+], a                                      ; $5b43: $22
	inc sp                                           ; $5b44: $33
	ld [hl-], a                                      ; $5b45: $32
	ld [hl+], a                                      ; $5b46: $22
	ld [hl+], a                                      ; $5b47: $22
	ld [hl-], a                                      ; $5b48: $32
	ld [hl+], a                                      ; $5b49: $22
	ld [hl+], a                                      ; $5b4a: $22
	ld [hl-], a                                      ; $5b4b: $32
	ld d, l                                          ; $5b4c: $55
	ld d, d                                          ; $5b4d: $52
	ld [hl-], a                                      ; $5b4e: $32
	dec h                                            ; $5b4f: $25
	ld d, d                                          ; $5b50: $52
	inc sp                                           ; $5b51: $33
	ld [hl-], a                                      ; $5b52: $32
	ld b, d                                          ; $5b53: $42
	inc sp                                           ; $5b54: $33
	inc sp                                           ; $5b55: $33
	inc sp                                           ; $5b56: $33
	ld [hl-], a                                      ; $5b57: $32
	ld [hl+], a                                      ; $5b58: $22
	inc hl                                           ; $5b59: $23
	ld [hl-], a                                      ; $5b5a: $32
	ld [hl+], a                                      ; $5b5b: $22
	inc hl                                           ; $5b5c: $23
	ld [hl-], a                                      ; $5b5d: $32
	ld [hl+], a                                      ; $5b5e: $22
	ld [hl+], a                                      ; $5b5f: $22
	ld [hl-], a                                      ; $5b60: $32
	ld [hl+], a                                      ; $5b61: $22
	inc hl                                           ; $5b62: $23
	ld d, [hl]                                       ; $5b63: $56
	ld b, d                                          ; $5b64: $42
	inc hl                                           ; $5b65: $23
	inc sp                                           ; $5b66: $33
	inc sp                                           ; $5b67: $33
	inc sp                                           ; $5b68: $33
	inc sp                                           ; $5b69: $33
	inc sp                                           ; $5b6a: $33
	inc sp                                           ; $5b6b: $33
	inc sp                                           ; $5b6c: $33
	inc hl                                           ; $5b6d: $23
	inc sp                                           ; $5b6e: $33
	inc sp                                           ; $5b6f: $33
	ld [hl+], a                                      ; $5b70: $22
	ld [hl+], a                                      ; $5b71: $22
	inc sp                                           ; $5b72: $33
	ld [hl+], a                                      ; $5b73: $22
	ld [hl+], a                                      ; $5b74: $22
	ld b, d                                          ; $5b75: $42
	ld [hl+], a                                      ; $5b76: $22
	inc hl                                           ; $5b77: $23
	inc sp                                           ; $5b78: $33
	inc sp                                           ; $5b79: $33
	inc sp                                           ; $5b7a: $33
	inc sp                                           ; $5b7b: $33
	ld [hl+], a                                      ; $5b7c: $22
	inc hl                                           ; $5b7d: $23
	ld [hl-], a                                      ; $5b7e: $32
	ld [hl+], a                                      ; $5b7f: $22
	ld [hl+], a                                      ; $5b80: $22
	ld [hl+], a                                      ; $5b81: $22
	ld [hl+], a                                      ; $5b82: $22
	dec h                                            ; $5b83: $25
	ld b, d                                          ; $5b84: $42
	ld [hl+], a                                      ; $5b85: $22
	ld d, d                                          ; $5b86: $52
	ld b, d                                          ; $5b87: $42
	ld d, l                                          ; $5b88: $55
	ld d, d                                          ; $5b89: $52
	inc sp                                           ; $5b8a: $33
	inc sp                                           ; $5b8b: $33
	inc sp                                           ; $5b8c: $33
	inc hl                                           ; $5b8d: $23
	inc sp                                           ; $5b8e: $33
	inc sp                                           ; $5b8f: $33
	ld [hl+], a                                      ; $5b90: $22
	ld [hl+], a                                      ; $5b91: $22
	ld [hl+], a                                      ; $5b92: $22
	ld [hl+], a                                      ; $5b93: $22
	ld [hl+], a                                      ; $5b94: $22
	ld [hl+], a                                      ; $5b95: $22
	ld [hl+], a                                      ; $5b96: $22
	ld [hl+], a                                      ; $5b97: $22
	ld b, l                                          ; $5b98: $45
	ld h, [hl]                                       ; $5b99: $66
	ld h, h                                          ; $5b9a: $64
	ld b, [hl]                                       ; $5b9b: $46
	ld [hl+], a                                      ; $5b9c: $22
	ld [hl+], a                                      ; $5b9d: $22
	ld [hl+], a                                      ; $5b9e: $22
	inc hl                                           ; $5b9f: $23
	inc sp                                           ; $5ba0: $33
	inc sp                                           ; $5ba1: $33
	inc hl                                           ; $5ba2: $23
	inc sp                                           ; $5ba3: $33
	inc sp                                           ; $5ba4: $33
	inc hl                                           ; $5ba5: $23
	inc sp                                           ; $5ba6: $33
	ld [hl-], a                                      ; $5ba7: $32
	inc hl                                           ; $5ba8: $23
	inc [hl]                                         ; $5ba9: $34
	ld [hl-], a                                      ; $5baa: $32
	ld [hl+], a                                      ; $5bab: $22
	inc [hl]                                         ; $5bac: $34
	ld [hl-], a                                      ; $5bad: $32
	ld [hl-], a                                      ; $5bae: $32
	ld [hl+], a                                      ; $5baf: $22
	ld [hl+], a                                      ; $5bb0: $22
	ld [hl+], a                                      ; $5bb1: $22
	inc sp                                           ; $5bb2: $33
	ld [hl-], a                                      ; $5bb3: $32
	inc hl                                           ; $5bb4: $23
	inc sp                                           ; $5bb5: $33
	inc sp                                           ; $5bb6: $33
	inc h                                            ; $5bb7: $24
	ld b, h                                          ; $5bb8: $44
	ld b, e                                          ; $5bb9: $43
	inc hl                                           ; $5bba: $23
	inc sp                                           ; $5bbb: $33
	ld [hl-], a                                      ; $5bbc: $32
	ld [hl+], a                                      ; $5bbd: $22
	inc sp                                           ; $5bbe: $33
	inc hl                                           ; $5bbf: $23
	ld [hl+], a                                      ; $5bc0: $22
	ld [hl+], a                                      ; $5bc1: $22
	ld [hl+], a                                      ; $5bc2: $22
	ld h, $66                                        ; $5bc3: $26 $66
	ld [hl+], a                                      ; $5bc5: $22
	inc hl                                           ; $5bc6: $23
	inc sp                                           ; $5bc7: $33
	ld h, d                                          ; $5bc8: $62
	inc hl                                           ; $5bc9: $23
	inc sp                                           ; $5bca: $33
	ld [hl-], a                                      ; $5bcb: $32
	inc hl                                           ; $5bcc: $23
	inc sp                                           ; $5bcd: $33
	ld [hl-], a                                      ; $5bce: $32
	ld b, l                                          ; $5bcf: $45
	ld d, e                                          ; $5bd0: $53
	ld d, h                                          ; $5bd1: $54


;
	ld a, [$d7ef]                                    ; $5bd2: $fa $ef $d7
	call wJumpTable                                       ; $5bd5: $cd $80 $cf
	dw $5bf4
	dw $5c21
	dw $5c4f


Func_05_5bde::
	ld a, [$d7ef]                                    ; $5bde: $fa $ef $d7
	call wJumpTable                                       ; $5be1: $cd $80 $cf
	dw $5ffa
	dw Func_05_60cb
	

;
	ld a, [$d7ef]                                    ; $5be8: $fa $ef $d7
	call wJumpTable                                       ; $5beb: $cd $80 $cf
	db $f4                                           ; $5bee: $f4
	ld e, e                                          ; $5bef: $5b
	or l                                             ; $5bf0: $b5
	ld e, h                                          ; $5bf1: $5c
	db $e3                                           ; $5bf2: $e3
	ld e, [hl]                                       ; $5bf3: $5e
	ld a, [$d203]                                    ; $5bf4: $fa $03 $d2
	cp $04                                           ; $5bf7: $fe $04
	jr nz, jr_005_5c10                               ; $5bf9: $20 $15

	ld a, $02                                        ; $5bfb: $3e $02
	ld [$d7ef], a                                    ; $5bfd: $ea $ef $d7
	xor a                                            ; $5c00: $af
	ld [$d202], a                                    ; $5c01: $ea $02 $d2
	ld b, $1e                                        ; $5c04: $06 $1e
	ld hl, $7a42                                     ; $5c06: $21 $42 $7a
	call Func_1c32                                       ; $5c09: $cd $32 $1c
	call Call_005_6245                               ; $5c0c: $cd $45 $62
	ret                                              ; $5c0f: $c9


jr_005_5c10:
	call Call_005_4d7f                               ; $5c10: $cd $7f $4d
	xor a                                            ; $5c13: $af
	ld bc, $4217                                     ; $5c14: $01 $17 $42
	call $1926                                       ; $5c17: $cd $26 $19
	xor a                                            ; $5c1a: $af
	ld [$d200], a                                    ; $5c1b: $ea $00 $d2
	jp $1b19                                         ; $5c1e: $c3 $19 $1b


	call Call_005_4ebb                               ; $5c21: $cd $bb $4e
	ld b, $1e                                        ; $5c24: $06 $1e
	ld hl, $799f                                     ; $5c26: $21 $9f $79
	call Func_1c32                                       ; $5c29: $cd $32 $1c
	ld b, $1e                                        ; $5c2c: $06 $1e
	ld hl, $79a8                                     ; $5c2e: $21 $a8 $79
	call Func_1c32                                       ; $5c31: $cd $32 $1c
	call Call_005_4f00                               ; $5c34: $cd $00 $4f
	ld b, $14                                        ; $5c37: $06 $14
	ld c, $20                                        ; $5c39: $0e $20
	call Call_005_6232                               ; $5c3b: $cd $32 $62
	ld hl, $638c                                     ; $5c3e: $21 $8c $63
	call Call_005_61fe                               ; $5c41: $cd $fe $61
	ld d, $00                                        ; $5c44: $16 $00
	call Call_005_618a                               ; $5c46: $cd $8a $61
	call Call_005_4dd7                               ; $5c49: $cd $d7 $4d
	jp $1b19                                         ; $5c4c: $c3 $19 $1b


	ld a, [wButtonsPressed]                                    ; $5c4f: $fa $25 $c1
	cp $02                                           ; $5c52: $fe $02
	jr nz, jr_005_5c77                               ; $5c54: $20 $21

	xor a                                            ; $5c56: $af
	ld [$d200], a                                    ; $5c57: $ea $00 $d2
	ld hl, $638c                                     ; $5c5a: $21 $8c $63
	call Call_005_61fe                               ; $5c5d: $cd $fe $61
	ld d, $00                                        ; $5c60: $16 $00
	call Call_005_618a                               ; $5c62: $cd $8a $61
	ld hl, $638f                                     ; $5c65: $21 $8f $63
	call Call_005_61fe                               ; $5c68: $cd $fe $61
	ld d, $00                                        ; $5c6b: $16 $00
	call Call_005_61c4                               ; $5c6d: $cd $c4 $61
	ld b, $14                                        ; $5c70: $06 $14
	ld c, $20                                        ; $5c72: $0e $20
	jp Jump_005_622f                                 ; $5c74: $c3 $2f $62


jr_005_5c77:
	cp $01                                           ; $5c77: $fe $01
	jr nz, jr_005_5c9d                               ; $5c79: $20 $22

	ld a, $01                                        ; $5c7b: $3e $01
	ld [$d200], a                                    ; $5c7d: $ea $00 $d2
	ld hl, $638c                                     ; $5c80: $21 $8c $63
	call Call_005_61fe                               ; $5c83: $cd $fe $61
	ld d, $00                                        ; $5c86: $16 $00
	call Call_005_61c4                               ; $5c88: $cd $c4 $61
	ld hl, $638f                                     ; $5c8b: $21 $8f $63
	call Call_005_61fe                               ; $5c8e: $cd $fe $61
	ld d, $00                                        ; $5c91: $16 $00
	call Call_005_618a                               ; $5c93: $cd $8a $61
	ld b, $4c                                        ; $5c96: $06 $4c
	ld c, $20                                        ; $5c98: $0e $20
	jp Jump_005_622f                                 ; $5c9a: $c3 $2f $62


jr_005_5c9d:
	cp $20                                           ; $5c9d: $fe $20
	jp z, todo_ToTitleScreen                              ; $5c9f: $ca $7f $62

	cp $10                                           ; $5ca2: $fe $10
	ret nz                                           ; $5ca4: $c0

	call Func_1b14                                       ; $5ca5: $cd $14 $1b
	call todo_Set_c201_to80h                               ; $5ca8: $cd $3e $62
	call Call_005_628b                               ; $5cab: $cd $8b $62
	ld a, [$d200]                                    ; $5cae: $fa $00 $d2
	ld [wMenuOptionSelected], a                                    ; $5cb1: $ea $5f $c1
	ret                                              ; $5cb4: $c9


	xor a                                            ; $5cb5: $af
	ld [wCurrMenuOption], a                                    ; $5cb6: $ea $01 $d2
	ld hl, $d204                                     ; $5cb9: $21 $04 $d2
	ld d, $06                                        ; $5cbc: $16 $06

jr_005_5cbe:
	ld [hl], $00                                     ; $5cbe: $36 $00
	push hl                                          ; $5cc0: $e5
	push de                                          ; $5cc1: $d5
	call Call_005_5e9e                               ; $5cc2: $cd $9e $5e
	pop de                                           ; $5cc5: $d1
	pop hl                                           ; $5cc6: $e1
	and a                                            ; $5cc7: $a7
	jr z, jr_005_5ccb                                ; $5cc8: $28 $01

	ld [hl], a                                       ; $5cca: $77

jr_005_5ccb:
	inc hl                                           ; $5ccb: $23
	ld a, [wCurrMenuOption]                                    ; $5ccc: $fa $01 $d2
	inc a                                            ; $5ccf: $3c
	ld [wCurrMenuOption], a                                    ; $5cd0: $ea $01 $d2
	dec d                                            ; $5cd3: $15
	jr nz, jr_005_5cbe                               ; $5cd4: $20 $e8

	xor a                                            ; $5cd6: $af
	ld [wCurrMenuOption], a                                    ; $5cd7: $ea $01 $d2
	call Call_005_5d65                               ; $5cda: $cd $65 $5d
	ld h, $5c                                        ; $5cdd: $26 $5c
	ld l, $00                                        ; $5cdf: $2e $00
	ld e, $01                                        ; $5ce1: $1e $01
	ld d, $00                                        ; $5ce3: $16 $00

jr_005_5ce5:
	ld a, e                                          ; $5ce5: $7b
	dec a                                            ; $5ce6: $3d
	ld [wCurrMenuOption], a                                    ; $5ce7: $ea $01 $d2
	push hl                                          ; $5cea: $e5
	push de                                          ; $5ceb: $d5
	call Func_1ceb                                       ; $5cec: $cd $eb $1c
	pop de                                           ; $5cef: $d1
	pop hl                                           ; $5cf0: $e1
	push hl                                          ; $5cf1: $e5
	ld a, $03                                        ; $5cf2: $3e $03
	ld [$d7fa], a                                    ; $5cf4: $ea $fa $d7
	ld hl, $d204                                     ; $5cf7: $21 $04 $d2
	ld a, e                                          ; $5cfa: $7b
	dec a                                            ; $5cfb: $3d
	rst AddAOntoHL                                          ; $5cfc: $ef
	ld a, [hl]                                       ; $5cfd: $7e
	and a                                            ; $5cfe: $a7
	jr z, jr_005_5d0a                                ; $5cff: $28 $09

	cp $02                                           ; $5d01: $fe $02
	jr z, jr_005_5d0a                                ; $5d03: $28 $05

	ld a, $02                                        ; $5d05: $3e $02
	ld [$d7fa], a                                    ; $5d07: $ea $fa $d7

jr_005_5d0a:
	pop hl                                           ; $5d0a: $e1
	ld a, $82                                        ; $5d0b: $3e $82
	push hl                                          ; $5d0d: $e5
	push de                                          ; $5d0e: $d5
	call $1c16                                       ; $5d0f: $cd $16 $1c
	pop de                                           ; $5d12: $d1
	pop hl                                           ; $5d13: $e1
	ld a, $18                                        ; $5d14: $3e $18
	add h                                            ; $5d16: $84
	ld h, a                                          ; $5d17: $67
	cp $a4                                           ; $5d18: $fe $a4
	jr nz, jr_005_5d20                               ; $5d1a: $20 $04

	ld h, $5c                                        ; $5d1c: $26 $5c
	inc l                                            ; $5d1e: $2c
	inc l                                            ; $5d1f: $2c

jr_005_5d20:
	inc e                                            ; $5d20: $1c
	ld a, $07                                        ; $5d21: $3e $07
	cp e                                             ; $5d23: $bb
	jr nz, jr_005_5ce5                               ; $5d24: $20 $bf

	xor a                                            ; $5d26: $af
	ld [wCurrMenuOption], a                                    ; $5d27: $ea $01 $d2
	call Call_005_4f00                               ; $5d2a: $cd $00 $4f
	ld b, $4c                                        ; $5d2d: $06 $4c
	ld c, $00                                        ; $5d2f: $0e $00
	call Call_005_6232                               ; $5d31: $cd $32 $62
	ld a, [$d204]                                    ; $5d34: $fa $04 $d2
	and $01                                          ; $5d37: $e6 $01
	ld d, a                                          ; $5d39: $57
	ld hl, $6392                                     ; $5d3a: $21 $92 $63
	call Call_005_61fe                               ; $5d3d: $cd $fe $61
	call Call_005_618a                               ; $5d40: $cd $8a $61
	call Call_005_620d                               ; $5d43: $cd $0d $62
	call Call_005_4ec6                               ; $5d46: $cd $c6 $4e
	ld hl, $d203                                     ; $5d49: $21 $03 $d2
	ld a, [hl]                                       ; $5d4c: $7e
	sla a                                            ; $5d4d: $cb $27
	add [hl]                                         ; $5d4f: $86
	ld hl, $63f1                                     ; $5d50: $21 $f1 $63
	rst AddAOntoHL                                          ; $5d53: $ef
	ld b, [hl]                                       ; $5d54: $46
	inc hl                                           ; $5d55: $23
	ld a, [hl+]                                      ; $5d56: $2a
	ld h, [hl]                                       ; $5d57: $66
	ld l, a                                          ; $5d58: $6f
	call Func_1c32                                       ; $5d59: $cd $32 $1c
	call Call_005_4dd7                               ; $5d5c: $cd $d7 $4d
	call Call_005_6245                               ; $5d5f: $cd $45 $62
	jp $1b19                                         ; $5d62: $c3 $19 $1b


Call_005_5d65:
Jump_005_5d65:
	call Call_005_4ebb                               ; $5d65: $cd $bb $4e
	ld a, [wCurrMenuOption]                                    ; $5d68: $fa $01 $d2
	call Call_005_6279                               ; $5d6b: $cd $79 $62
	and a                                            ; $5d6e: $a7
	jr nz, jr_005_5d7a                               ; $5d6f: $20 $09

	ld b, $1e                                        ; $5d71: $06 $1e
	ld hl, $79b1                                     ; $5d73: $21 $b1 $79
	call Func_1c32                                       ; $5d76: $cd $32 $1c
	ret                                              ; $5d79: $c9


jr_005_5d7a:
	cp $02                                           ; $5d7a: $fe $02
	jr nz, jr_005_5d87                               ; $5d7c: $20 $09

	ld b, $1e                                        ; $5d7e: $06 $1e
	ld hl, $79c2                                     ; $5d80: $21 $c2 $79
	call Func_1c32                                       ; $5d83: $cd $32 $1c
	ret                                              ; $5d86: $c9


jr_005_5d87:
	ld h, $04                                        ; $5d87: $26 $04
	ld l, $00                                        ; $5d89: $2e $00
	call Func_1ceb                                       ; $5d8b: $cd $eb $1c
	call Call_005_5e31                               ; $5d8e: $cd $31 $5e
	ld e, a                                          ; $5d91: $5f
	ld d, $00                                        ; $5d92: $16 $00
	ld a, $02                                        ; $5d94: $3e $02
	call $1c16                                       ; $5d96: $cd $16 $1c
	ld b, $1e                                        ; $5d99: $06 $1e
	ld hl, $70f4                                     ; $5d9b: $21 $f4 $70
	call Func_1c32                                       ; $5d9e: $cd $32 $1c
	call Call_005_5e3c                               ; $5da1: $cd $3c $5e
	ld e, a                                          ; $5da4: $5f
	ld d, $00                                        ; $5da5: $16 $00
	ld a, $82                                        ; $5da7: $3e $82
	call $1c16                                       ; $5da9: $cd $16 $1c
	ld b, $1e                                        ; $5dac: $06 $1e
	ld hl, $70f8                                     ; $5dae: $21 $f8 $70
	call Func_1c32                                       ; $5db1: $cd $32 $1c
	call Call_005_5e46                               ; $5db4: $cd $46 $5e
	ld e, a                                          ; $5db7: $5f
	ld d, $00                                        ; $5db8: $16 $00
	ld a, $82                                        ; $5dba: $3e $82
	call $1c16                                       ; $5dbc: $cd $16 $1c
	ld b, $1e                                        ; $5dbf: $06 $1e
	ld hl, $70fc                                     ; $5dc1: $21 $fc $70
	call Func_1c32                                       ; $5dc4: $cd $32 $1c
	call Call_005_5ed1                               ; $5dc7: $cd $d1 $5e
	call Call_005_5e50                               ; $5dca: $cd $50 $5e
	ld b, $1e                                        ; $5dcd: $06 $1e
	ld hl, $7a5f                                     ; $5dcf: $21 $5f $7a
	call Func_1c32                                       ; $5dd2: $cd $32 $1c
	call Call_005_5e5e                               ; $5dd5: $cd $5e $5e
	ld b, $1e                                        ; $5dd8: $06 $1e
	ld hl, $7a64                                     ; $5dda: $21 $64 $7a
	call Func_1c32                                       ; $5ddd: $cd $32 $1c
	call Call_005_5e6c                               ; $5de0: $cd $6c $5e
	ld b, $1e                                        ; $5de3: $06 $1e
	ld hl, $7a67                                     ; $5de5: $21 $67 $7a
	call Func_1c32                                       ; $5de8: $cd $32 $1c
	call Call_005_5eda                               ; $5deb: $cd $da $5e
	ld h, $04                                        ; $5dee: $26 $04
	ld l, $06                                        ; $5df0: $2e $06
	call Func_1ceb                                       ; $5df2: $cd $eb $1c
	call Call_005_5e7f                               ; $5df5: $cd $7f $5e
	cp $ff                                           ; $5df8: $fe $ff
	jr nz, jr_005_5dfe                               ; $5dfa: $20 $02

	ld a, $0a                                        ; $5dfc: $3e $0a

jr_005_5dfe:
	ld b, a                                          ; $5dfe: $47
	sla a                                            ; $5dff: $cb $27
	add b                                            ; $5e01: $80
	ld hl, $5913                                     ; $5e02: $21 $13 $59
	rst AddAOntoHL                                          ; $5e05: $ef
	ld b, [hl]                                       ; $5e06: $46
	inc hl                                           ; $5e07: $23
	ld a, [hl+]                                      ; $5e08: $2a
	ld h, [hl]                                       ; $5e09: $66
	ld l, a                                          ; $5e0a: $6f
	call Func_1c32                                       ; $5e0b: $cd $32 $1c
	ld b, $1e                                        ; $5e0e: $06 $1e
	ld hl, $7991                                     ; $5e10: $21 $91 $79
	call Func_1c32                                       ; $5e13: $cd $32 $1c
	ld h, $38                                        ; $5e16: $26 $38
	ld l, $08                                        ; $5e18: $2e $08
	call Func_1ceb                                       ; $5e1a: $cd $eb $1c
	ld a, [$a110]                                    ; $5e1d: $fa $10 $a1
	ld e, a                                          ; $5e20: $5f
	ld d, $00                                        ; $5e21: $16 $00
	ld a, $82                                        ; $5e23: $3e $82
	call $1c16                                       ; $5e25: $cd $16 $1c
	ld b, $1e                                        ; $5e28: $06 $1e
	ld hl, $799a                                     ; $5e2a: $21 $9a $79
	call Func_1c32                                       ; $5e2d: $cd $32 $1c
	ret                                              ; $5e30: $c9


Call_005_5e31:
	call Call_005_5e88                               ; $5e31: $cd $88 $5e
	ld bc, $0024                                     ; $5e34: $01 $24 $00
	add hl, bc                                       ; $5e37: $09
	ld a, [hl]                                       ; $5e38: $7e
	add $61                                          ; $5e39: $c6 $61
	ret                                              ; $5e3b: $c9


Call_005_5e3c:
	call Call_005_5e88                               ; $5e3c: $cd $88 $5e
	ld bc, $0026                                     ; $5e3f: $01 $26 $00
	add hl, bc                                       ; $5e42: $09
	ld a, [hl]                                       ; $5e43: $7e
	inc a                                            ; $5e44: $3c
	ret                                              ; $5e45: $c9


Call_005_5e46:
	call Call_005_5e88                               ; $5e46: $cd $88 $5e
	ld bc, $0028                                     ; $5e49: $01 $28 $00
	add hl, bc                                       ; $5e4c: $09
	ld a, [hl]                                       ; $5e4d: $7e
	inc a                                            ; $5e4e: $3c
	ret                                              ; $5e4f: $c9


Call_005_5e50:
	call Call_005_5e88                               ; $5e50: $cd $88 $5e
	ld bc, $0000                                     ; $5e53: $01 $00 $00
	add hl, bc                                       ; $5e56: $09
	ld de, sUnmappedPlayer1stName                                     ; $5e57: $11 $00 $a2
	ld c, $07                                        ; $5e5a: $0e $07
	jr jr_005_5e78                                   ; $5e5c: $18 $1a

Call_005_5e5e:
	call Call_005_5e88                               ; $5e5e: $cd $88 $5e
	ld bc, $0007                                     ; $5e61: $01 $07 $00
	add hl, bc                                       ; $5e64: $09
	ld de, sUnmappedPlayer2ndName                                     ; $5e65: $11 $07 $a2
	ld c, $07                                        ; $5e68: $0e $07
	jr jr_005_5e78                                   ; $5e6a: $18 $0c

Call_005_5e6c:
	call Call_005_5e88                               ; $5e6c: $cd $88 $5e
	ld bc, $000e                                     ; $5e6f: $01 $0e $00
	add hl, bc                                       ; $5e72: $09
	ld de, $a20e                                     ; $5e73: $11 $0e $a2
	ld c, $0b                                        ; $5e76: $0e $0b

jr_005_5e78:
	ld a, [hl+]                                      ; $5e78: $2a
	ld [de], a                                       ; $5e79: $12
	inc de                                           ; $5e7a: $13
	dec c                                            ; $5e7b: $0d
	jr nz, jr_005_5e78                               ; $5e7c: $20 $fa

	ret                                              ; $5e7e: $c9


Call_005_5e7f:
	call Call_005_5e88                               ; $5e7f: $cd $88 $5e
	ld bc, $010c                                     ; $5e82: $01 $0c $01
	add hl, bc                                       ; $5e85: $09
	ld a, [hl]                                       ; $5e86: $7e
	ret                                              ; $5e87: $c9


Call_005_5e88:
	push bc                                          ; $5e88: $c5
	push de                                          ; $5e89: $d5
	ld bc, $0380                                     ; $5e8a: $01 $80 $03
	ld d, $00                                        ; $5e8d: $16 $00
	ld a, [wCurrMenuOption]                                    ; $5e8f: $fa $01 $d2
	ld e, a                                          ; $5e92: $5f
	inc e                                            ; $5e93: $1c
	call DEBCequBCtimesDE                                       ; $5e94: $cd $95 $12
	ld hl, sUnmappedPlayer1stName                                     ; $5e97: $21 $00 $a2
	add hl, bc                                       ; $5e9a: $09
	pop de                                           ; $5e9b: $d1
	pop bc                                           ; $5e9c: $c1
	ret                                              ; $5e9d: $c9


Call_005_5e9e:
	call Call_005_5e88                               ; $5e9e: $cd $88 $5e
	ld bc, $0370                                     ; $5ea1: $01 $70 $03
	add hl, bc                                       ; $5ea4: $09
	ld de, $637d                                     ; $5ea5: $11 $7d $63
	ld c, $0f                                        ; $5ea8: $0e $0f
	push hl                                          ; $5eaa: $e5
	xor a                                            ; $5eab: $af

jr_005_5eac:
	ld b, [hl]                                       ; $5eac: $46
	inc hl                                           ; $5ead: $23
	or b                                             ; $5eae: $b0
	dec c                                            ; $5eaf: $0d
	jr nz, jr_005_5eac                               ; $5eb0: $20 $fa

	pop hl                                           ; $5eb2: $e1
	and a                                            ; $5eb3: $a7
	ret z                                            ; $5eb4: $c8

	ld c, $0f                                        ; $5eb5: $0e $0f

jr_005_5eb7:
	ld b, [hl]                                       ; $5eb7: $46
	ld a, [de]                                       ; $5eb8: $1a
	inc hl                                           ; $5eb9: $23
	inc de                                           ; $5eba: $13
	cp b                                             ; $5ebb: $b8
	jr nz, jr_005_5ece                               ; $5ebc: $20 $10

	dec c                                            ; $5ebe: $0d
	jr nz, jr_005_5eb7                               ; $5ebf: $20 $f6

	ld a, [wCurrMenuOption]                                    ; $5ec1: $fa $01 $d2
	inc a                                            ; $5ec4: $3c
	call Call_005_631f                               ; $5ec5: $cd $1f $63
	cp [hl]                                          ; $5ec8: $be
	jr nz, jr_005_5ece                               ; $5ec9: $20 $03

	ld a, $01                                        ; $5ecb: $3e $01
	ret                                              ; $5ecd: $c9


jr_005_5ece:
	ld a, $02                                        ; $5ece: $3e $02
	ret                                              ; $5ed0: $c9


Call_005_5ed1:
	ld de, $d213                                     ; $5ed1: $11 $13 $d2
	ld hl, sUnmappedPlayer1stName                                     ; $5ed4: $21 $00 $a2
	jp $cc95                                         ; $5ed7: $c3 $95 $cc


Call_005_5eda:
	ld de, sUnmappedPlayer1stName                                     ; $5eda: $11 $00 $a2
	ld hl, $d213                                     ; $5edd: $21 $13 $d2
	jp $cc95                                         ; $5ee0: $c3 $95 $cc


	ld a, [wButtonsPressed]                                    ; $5ee3: $fa $25 $c1
	cp $04                                           ; $5ee6: $fe $04
	jr nz, jr_005_5ef6                               ; $5ee8: $20 $0c

	ld a, [wCurrMenuOption]                                    ; $5eea: $fa $01 $d2
	sub $03                                          ; $5eed: $d6 $03
	jr nc, jr_005_5ef3                               ; $5eef: $30 $02

	add $06                                          ; $5ef1: $c6 $06

jr_005_5ef3:
	jp Jump_005_5fb6                                 ; $5ef3: $c3 $b6 $5f


jr_005_5ef6:
	cp $08                                           ; $5ef6: $fe $08
	jr nz, jr_005_5f08                               ; $5ef8: $20 $0e

	ld a, [wCurrMenuOption]                                    ; $5efa: $fa $01 $d2
	add $03                                          ; $5efd: $c6 $03
	cp $06                                           ; $5eff: $fe $06
	jr c, jr_005_5f05                                ; $5f01: $38 $02

	sub $06                                          ; $5f03: $d6 $06

jr_005_5f05:
	jp Jump_005_5fb6                                 ; $5f05: $c3 $b6 $5f


jr_005_5f08:
	cp $02                                           ; $5f08: $fe $02
	jr nz, jr_005_5f21                               ; $5f0a: $20 $15

	ld a, [wCurrMenuOption]                                    ; $5f0c: $fa $01 $d2
	ld b, $03                                        ; $5f0f: $06 $03
	call $12b5                                       ; $5f11: $cd $b5 $12
	ld a, b                                          ; $5f14: $78
	and a                                            ; $5f15: $a7
	ld a, [wCurrMenuOption]                                    ; $5f16: $fa $01 $d2
	jr nz, jr_005_5f1d                               ; $5f19: $20 $02

	add $03                                          ; $5f1b: $c6 $03

jr_005_5f1d:
	dec a                                            ; $5f1d: $3d
	jp Jump_005_5fb6                                 ; $5f1e: $c3 $b6 $5f


jr_005_5f21:
	cp $01                                           ; $5f21: $fe $01
	jr nz, jr_005_5f3a                               ; $5f23: $20 $15

	ld a, [wCurrMenuOption]                                    ; $5f25: $fa $01 $d2
	ld b, $03                                        ; $5f28: $06 $03
	call $12b5                                       ; $5f2a: $cd $b5 $12
	ld a, b                                          ; $5f2d: $78
	cp $02                                           ; $5f2e: $fe $02
	ld a, [wCurrMenuOption]                                    ; $5f30: $fa $01 $d2
	jr nz, jr_005_5f37                               ; $5f33: $20 $02

	sub $03                                          ; $5f35: $d6 $03

jr_005_5f37:
	inc a                                            ; $5f37: $3c
	jr jr_005_5fb6                                   ; $5f38: $18 $7c

jr_005_5f3a:
	cp $20                                           ; $5f3a: $fe $20
	jp z, todo_ToTitleScreen                              ; $5f3c: $ca $7f $62

	cp $10                                           ; $5f3f: $fe $10
	jr nz, jr_005_5fa6                               ; $5f41: $20 $63

	call Func_1b14                                       ; $5f43: $cd $14 $1b
	ld a, [$d202]                                    ; $5f46: $fa $02 $d2
	and a                                            ; $5f49: $a7
	jr z, jr_005_5f55                                ; $5f4a: $28 $09

	call Call_005_6252                               ; $5f4c: $cd $52 $62
	call Call_005_5d65                               ; $5f4f: $cd $65 $5d
	call Call_005_4ec6                               ; $5f52: $cd $c6 $4e

jr_005_5f55:
	ld a, [$d203]                                    ; $5f55: $fa $03 $d2
	cp $04                                           ; $5f58: $fe $04
	jr z, jr_005_5f98                                ; $5f5a: $28 $3c

	ld a, [$d203]                                    ; $5f5c: $fa $03 $d2
	cp $01                                           ; $5f5f: $fe $01
	jr z, jr_005_5f98                                ; $5f61: $28 $35

	cp $00                                           ; $5f63: $fe $00
	jr nz, jr_005_5f77                               ; $5f65: $20 $10

	ld a, [wCurrMenuOption]                                    ; $5f67: $fa $01 $d2
	call Call_005_6279                               ; $5f6a: $cd $79 $62
	cp $01                                           ; $5f6d: $fe $01
	jr z, jr_005_5f98                                ; $5f6f: $28 $27

	cp $00                                           ; $5f71: $fe $00
	jr z, jr_005_5f82                                ; $5f73: $28 $0d

	jr jr_005_5f89                                   ; $5f75: $18 $12

jr_005_5f77:
	ld a, [wCurrMenuOption]                                    ; $5f77: $fa $01 $d2
	call Call_005_6279                               ; $5f7a: $cd $79 $62
	and a                                            ; $5f7d: $a7
	jr z, jr_005_5fa6                                ; $5f7e: $28 $26

	jr jr_005_5f98                                   ; $5f80: $18 $16

jr_005_5f82:
	ld a, $fe                                        ; $5f82: $3e $fe
	ld [wMenuOptionSelected], a                                    ; $5f84: $ea $5f $c1
	jr jr_005_5f8e                                   ; $5f87: $18 $05

jr_005_5f89:
	ld a, $fd                                        ; $5f89: $3e $fd
	ld [wMenuOptionSelected], a                                    ; $5f8b: $ea $5f $c1

jr_005_5f8e:
	call todo_Set_c201_to80h                               ; $5f8e: $cd $3e $62
	call Call_005_628b                               ; $5f91: $cd $8b $62
	call Call_005_6129                               ; $5f94: $cd $29 $61
	ret                                              ; $5f97: $c9


jr_005_5f98:
	call todo_Set_c201_to80h                               ; $5f98: $cd $3e $62
	call Call_005_628b                               ; $5f9b: $cd $8b $62
	ld a, [wCurrMenuOption]                                    ; $5f9e: $fa $01 $d2
	inc a                                            ; $5fa1: $3c
	ld [wMenuOptionSelected], a                                    ; $5fa2: $ea $5f $c1
	ret                                              ; $5fa5: $c9


jr_005_5fa6:
	ld a, [$d202]                                    ; $5fa6: $fa $02 $d2
	and a                                            ; $5fa9: $a7
	ret z                                            ; $5faa: $c8

	dec a                                            ; $5fab: $3d
	ld [$d202], a                                    ; $5fac: $ea $02 $d2
	ret nz                                           ; $5faf: $c0

	call Call_005_6252                               ; $5fb0: $cd $52 $62
	jp Jump_005_5d65                                 ; $5fb3: $c3 $65 $5d


Jump_005_5fb6:
jr_005_5fb6:
	push af                                          ; $5fb6: $f5
	ld a, [wCurrMenuOption]                                    ; $5fb7: $fa $01 $d2
	call Call_005_6279                               ; $5fba: $cd $79 $62
	and $01                                          ; $5fbd: $e6 $01
	ld d, a                                          ; $5fbf: $57
	ld a, [wCurrMenuOption]                                    ; $5fc0: $fa $01 $d2
	ld hl, $6392                                     ; $5fc3: $21 $92 $63
	call Call_005_6204                               ; $5fc6: $cd $04 $62
	call Call_005_61c4                               ; $5fc9: $cd $c4 $61
	pop af                                           ; $5fcc: $f1
	ld [wCurrMenuOption], a                                    ; $5fcd: $ea $01 $d2
	call Call_005_6279                               ; $5fd0: $cd $79 $62
	and $01                                          ; $5fd3: $e6 $01
	ld d, a                                          ; $5fd5: $57
	ld a, [wCurrMenuOption]                                    ; $5fd6: $fa $01 $d2
	ld hl, $6392                                     ; $5fd9: $21 $92 $63
	call Call_005_6204                               ; $5fdc: $cd $04 $62
	call Call_005_618a                               ; $5fdf: $cd $8a $61
	call Call_005_620d                               ; $5fe2: $cd $0d $62
	ld a, [wCurrMenuOption]                                    ; $5fe5: $fa $01 $d2
	sla a                                            ; $5fe8: $cb $27
	ld hl, $63bf                                     ; $5fea: $21 $bf $63
	rst AddAOntoHL                                          ; $5fed: $ef
	ld b, [hl]                                       ; $5fee: $46
	inc hl                                           ; $5fef: $23
	ld c, [hl]                                       ; $5ff0: $4e
	call Call_005_622f                               ; $5ff1: $cd $2f $62
	ld a, $1e                                        ; $5ff4: $3e $1e
	ld [$d202], a                                    ; $5ff6: $ea $02 $d2
	ret                                              ; $5ff9: $c9


	ld a, $5d                                        ; $5ffa: $3e $5d
	call Jump_000_1af7                                       ; $5ffc: $cd $f7 $1a
	call Call_005_4d7f                               ; $5fff: $cd $7f $4d
	ld bc, $00d4                                     ; $6002: $01 $d4 $00
	call $3a12                                       ; $6005: $cd $12 $3a
	call $397f                                       ; $6008: $cd $7f $39
	call $388c                                       ; $600b: $cd $8c $38
	ld hl, $9865                                     ; $600e: $21 $65 $98
	ld de, $6093                                     ; $6011: $11 $93 $60
	ld c, $0a                                        ; $6014: $0e $0a
	call Call_005_60a7                               ; $6016: $cd $a7 $60
	ld hl, $9905                                     ; $6019: $21 $05 $99
	ld de, $609d                                     ; $601c: $11 $9d $60
	ld c, $0a                                        ; $601f: $0e $0a
	call Call_005_60a7                               ; $6021: $cd $a7 $60
	ld hl, $9885                                     ; $6024: $21 $85 $98
	ld c, $04                                        ; $6027: $0e $04

jr_005_6029:
	call Call_005_60b9                               ; $6029: $cd $b9 $60
	di                                               ; $602c: $f3

jr_005_602d:
	ldh a, [rSTAT]                                   ; $602d: $f0 $41
	bit 1, a                                         ; $602f: $cb $4f
	jr nz, jr_005_602d                               ; $6031: $20 $fa

	ld [hl], $9d                                     ; $6033: $36 $9d
	ei                                               ; $6035: $fb
	ld a, $09                                        ; $6036: $3e $09
	rst AddAOntoHL                                          ; $6038: $ef
	call Call_005_60b9                               ; $6039: $cd $b9 $60
	di                                               ; $603c: $f3

jr_005_603d:
	ldh a, [rSTAT]                                   ; $603d: $f0 $41
	bit 1, a                                         ; $603f: $cb $4f
	jr nz, jr_005_603d                               ; $6041: $20 $fa

	ld [hl], $9d                                     ; $6043: $36 $9d
	ei                                               ; $6045: $fb
	ld a, $17                                        ; $6046: $3e $17
	rst AddAOntoHL                                          ; $6048: $ef
	dec c                                            ; $6049: $0d
	jr nz, jr_005_6029                               ; $604a: $20 $dd

	call Call_005_4ebb                               ; $604c: $cd $bb $4e

;
	ld b, BANK(Data_79_797c)/4                                        ; $604f: $06 $1e
	ld hl, Data_79_797c                                     ; $6051: $21 $7c $79
	call Func_1c32                                       ; $6054: $cd $32 $1c

;
	ld b, BANK(Data_79_7975)/4                                        ; $6057: $06 $1e
	ld hl, Data_79_7975                                     ; $6059: $21 $75 $79
	call Func_1c32                                       ; $605c: $cd $32 $1c

;
	ld b, BANK(Data_79_7983)/4                                        ; $605f: $06 $1e
	ld hl, Data_79_7983                                     ; $6061: $21 $83 $79
	call Func_1c32                                       ; $6064: $cd $32 $1c

;
	ld b, BANK(Data_79_798a)/4                                        ; $6067: $06 $1e
	ld hl, Data_79_798a                                     ; $6069: $21 $8a $79
	call Func_1c32                                       ; $606c: $cd $32 $1c

;
	call Call_005_4f00                               ; $606f: $cd $00 $4f
	ld b, $20                                        ; $6072: $06 $20
	ld c, $20                                        ; $6074: $0e $20
	call Call_005_6232                               ; $6076: $cd $32 $62
	xor a                                            ; $6079: $af
	ld [wCurrMenuOption], a                                    ; $607a: $ea $01 $d2
	ld d, $00                                        ; $607d: $16 $00
	ld hl, $63dd                                     ; $607f: $21 $dd $63
	call Call_005_61fe                               ; $6082: $cd $fe $61
	call Call_005_618a                               ; $6085: $cd $8a $61
	ld a, $01                                        ; $6088: $3e $01
	ld [$d200], a                                    ; $608a: $ea $00 $d2
	call Call_005_4dd7                               ; $608d: $cd $d7 $4d
	jp $1b19                                         ; $6090: $c3 $19 $1b


	sbc b                                            ; $6093: $98
	sbc c                                            ; $6094: $99
	sbc d                                            ; $6095: $9a
	sbc d                                            ; $6096: $9a
	sbc d                                            ; $6097: $9a
	sbc d                                            ; $6098: $9a
	sbc d                                            ; $6099: $9a
	sbc d                                            ; $609a: $9a
	sbc e                                            ; $609b: $9b
	sbc h                                            ; $609c: $9c
	sbc [hl]                                         ; $609d: $9e
	sbc c                                            ; $609e: $99
	sbc d                                            ; $609f: $9a
	sbc d                                            ; $60a0: $9a
	sbc d                                            ; $60a1: $9a
	sbc d                                            ; $60a2: $9a
	sbc d                                            ; $60a3: $9a
	sbc d                                            ; $60a4: $9a
	sbc e                                            ; $60a5: $9b
	sbc a                                            ; $60a6: $9f

Call_005_60a7:
jr_005_60a7:
	call Call_005_60b9                               ; $60a7: $cd $b9 $60
	di                                               ; $60aa: $f3

jr_005_60ab:
	ldh a, [rSTAT]                                   ; $60ab: $f0 $41
	bit 1, a                                         ; $60ad: $cb $4f
	jr nz, jr_005_60ab                               ; $60af: $20 $fa

	ld a, [de]                                       ; $60b1: $1a
	ld [hl+], a                                      ; $60b2: $22
	ei                                               ; $60b3: $fb
	inc de                                           ; $60b4: $13
	dec c                                            ; $60b5: $0d
	jr nz, jr_005_60a7                               ; $60b6: $20 $ef

	ret                                              ; $60b8: $c9


Call_005_60b9:
	di                                               ; $60b9: $f3

jr_005_60ba:
	ldh a, [rSTAT]                                   ; $60ba: $f0 $41
	bit 1, a                                         ; $60bc: $cb $4f
	jr nz, jr_005_60ba                               ; $60be: $20 $fa

	ld a, $01                                        ; $60c0: $3e $01
	ldh [rVBK], a                                    ; $60c2: $e0 $4f
	ld [hl], $01                                     ; $60c4: $36 $01
	ei                                               ; $60c6: $fb
	xor a                                            ; $60c7: $af
	ldh [rVBK], a                                    ; $60c8: $e0 $4f
	ret                                              ; $60ca: $c9


Func_05_60cb:
; Execute code based on button pressed priority
	ld a, [wButtonsPressed]                                    ; $60cb: $fa $25 $c1
	cp PADF_UP                                           ; $60ce: $fe $04
	jr nz, .afterUp                               ; $60d0: $20 $0b

; If on top options, return,...
	ld a, [wCurrMenuOption]                                    ; $60d2: $fa $01 $d2
	cp $02                                           ; $60d5: $fe $02
	ret c                                            ; $60d7: $d8

	sub $02                                          ; $60d8: $d6 $02
	jp todo_AfterSuccessfulMenuOptionMove                                 ; $60da: $c3 $4c $61

.afterUp:
	cp PADF_DOWN                                           ; $60dd: $fe $08
	jr nz, .afterDown                               ; $60df: $20 $0b

	ld a, [wCurrMenuOption]                                    ; $60e1: $fa $01 $d2
	cp $02                                           ; $60e4: $fe $02
	ret nc                                           ; $60e6: $d0

	add $02                                          ; $60e7: $c6 $02
	jp todo_AfterSuccessfulMenuOptionMove                                 ; $60e9: $c3 $4c $61

.afterDown:
	cp PADF_LEFT                                           ; $60ec: $fe $02
	jr nz, .afterLeft                               ; $60ee: $20 $0c

	ld a, [wCurrMenuOption]                                    ; $60f0: $fa $01 $d2
	and $01                                          ; $60f3: $e6 $01
	ret z                                            ; $60f5: $c8

	ld a, [wCurrMenuOption]                                    ; $60f6: $fa $01 $d2
	dec a                                            ; $60f9: $3d
	jr todo_AfterSuccessfulMenuOptionMove                                   ; $60fa: $18 $50

.afterLeft:
	cp PADF_RIGHT                                          ; $60fc: $fe $01
	jr nz, .afterRight                               ; $60fe: $20 $0c

	ld a, [wCurrMenuOption]                                    ; $6100: $fa $01 $d2
	and $01                                          ; $6103: $e6 $01
	ret nz                                           ; $6105: $c0

	ld a, [wCurrMenuOption]                                    ; $6106: $fa $01 $d2
	inc a                                            ; $6109: $3c
	jr todo_AfterSuccessfulMenuOptionMove                                   ; $610a: $18 $40

.afterRight:
; if B pressed, go back to title screen
	cp PADF_B                                           ; $610c: $fe $20
	jp z, todo_ToTitleScreen                              ; $610e: $ca $7f $62

	and PADF_START|PADF_A                                          ; $6111: $e6 $90
	ret z                                            ; $6113: $c8

	call Func_1b14                                       ; $6114: $cd $14 $1b
	ld a, [wCurrMenuOption]                                    ; $6117: $fa $01 $d2
	cp $01                                           ; $611a: $fe $01
	call z, Call_005_6129                            ; $611c: $cc $29 $61
	call Call_005_628b                               ; $611f: $cd $8b $62
	ld a, [wCurrMenuOption]                                    ; $6122: $fa $01 $d2
	ld [wMenuOptionSelected], a                                    ; $6125: $ea $5f $c1
	ret                                              ; $6128: $c9


Call_005_6129:
	call Call_005_6271                               ; $6129: $cd $71 $62
	rst FarCall                                          ; $612c: $f7
	dec h                                            ; $612d: $25
	ld h, h                                          ; $612e: $64
	inc b                                            ; $612f: $04
	rst FarCall                                          ; $6130: $f7
	ccf                                              ; $6131: $3f
	ld b, d                                          ; $6132: $42
	dec b                                            ; $6133: $05
	call Call_005_635b                               ; $6134: $cd $5b $63
	ld a, $ff                                        ; $6137: $3e $ff
	ld [$a30c], a                                    ; $6139: $ea $0c $a3
	ld hl, $a39d                                     ; $613c: $21 $9d $a3
	ld a, $15                                        ; $613f: $3e $15
	ld [hl+], a                                      ; $6141: $22
	ld a, $13                                        ; $6142: $3e $13
	ld [hl+], a                                      ; $6144: $22
	ld a, $00                                        ; $6145: $3e $00
	ld [hl], a                                       ; $6147: $77
	call Call_005_6352                               ; $6148: $cd $52 $63
	ret                                              ; $614b: $c9


todo_AfterSuccessfulMenuOptionMove:
	push af                                          ; $614c: $f5
	ld d, $00                                        ; $614d: $16 $00
	ld a, [wCurrMenuOption]                                    ; $614f: $fa $01 $d2
	ld hl, $63dd                                     ; $6152: $21 $dd $63
	call Call_005_6204                               ; $6155: $cd $04 $62
	call Call_005_61c4                               ; $6158: $cd $c4 $61
	pop af                                           ; $615b: $f1
	ld [wCurrMenuOption], a                                    ; $615c: $ea $01 $d2
	ld hl, $63dd                                     ; $615f: $21 $dd $63
	call Call_005_6204                               ; $6162: $cd $04 $62
	call Call_005_618a                               ; $6165: $cd $8a $61
	ld a, [wCurrMenuOption]                                    ; $6168: $fa $01 $d2
	sla a                                            ; $616b: $cb $27
	ld hl, $63e9                                     ; $616d: $21 $e9 $63
	rst AddAOntoHL                                          ; $6170: $ef
	ld b, [hl]                                       ; $6171: $46
	inc hl                                           ; $6172: $23
	ld c, [hl]                                       ; $6173: $4e
	call Call_005_622f                               ; $6174: $cd $2f $62
	ret                                              ; $6177: $c9


	ld h, h                                          ; $6178: $64
	nop                                              ; $6179: $00
	jr z, jr_005_617c                                ; $617a: $28 $00

jr_005_617c:
	jr z, jr_005_617e                                ; $617c: $28 $00

jr_005_617e:
	jr z, jr_005_6180                                ; $617e: $28 $00

jr_005_6180:
	jr z, jr_005_6182                                ; $6180: $28 $00

jr_005_6182:
	jr nz, jr_005_6184                               ; $6182: $20 $00

jr_005_6184:
	inc a                                            ; $6184: $3c
	nop                                              ; $6185: $00
	dec b                                            ; $6186: $05
	nop                                              ; $6187: $00
	nop                                              ; $6188: $00
	nop                                              ; $6189: $00

Call_005_618a:
	ld e, $ff                                        ; $618a: $1e $ff

jr_005_618c:
	call Call_005_619f                               ; $618c: $cd $9f $61
	push hl                                          ; $618f: $e5
	ld a, $40                                        ; $6190: $3e $40
	rst AddAOntoHL                                          ; $6192: $ef
	inc h                                            ; $6193: $24
	call Call_005_619f                               ; $6194: $cd $9f $61
	pop hl                                           ; $6197: $e1
	ld a, $10                                        ; $6198: $3e $10
	rst AddAOntoHL                                          ; $619a: $ef
	dec b                                            ; $619b: $05
	jr nz, jr_005_618c                               ; $619c: $20 $ee

	ret                                              ; $619e: $c9


Call_005_619f:
	push hl                                          ; $619f: $e5
	ld c, $08                                        ; $61a0: $0e $08

jr_005_61a2:
	ld a, d                                          ; $61a2: $7a
	and a                                            ; $61a3: $a7
	jr nz, jr_005_61b1                               ; $61a4: $20 $0b

	di                                               ; $61a6: $f3

jr_005_61a7:
	ldh a, [rSTAT]                                   ; $61a7: $f0 $41
	bit 1, a                                         ; $61a9: $cb $4f
	jr nz, jr_005_61a7                               ; $61ab: $20 $fa

	ld [hl], e                                       ; $61ad: $73
	ei                                               ; $61ae: $fb
	jr jr_005_61bd                                   ; $61af: $18 $0c

jr_005_61b1:
	inc hl                                           ; $61b1: $23
	di                                               ; $61b2: $f3

jr_005_61b3:
	ldh a, [rSTAT]                                   ; $61b3: $f0 $41
	bit 1, a                                         ; $61b5: $cb $4f
	jr nz, jr_005_61b3                               ; $61b7: $20 $fa

	ld a, [hl-]                                      ; $61b9: $3a
	cpl                                              ; $61ba: $2f
	ld [hl], a                                       ; $61bb: $77
	ei                                               ; $61bc: $fb

jr_005_61bd:
	inc hl                                           ; $61bd: $23
	inc hl                                           ; $61be: $23
	dec c                                            ; $61bf: $0d
	jr nz, jr_005_61a2                               ; $61c0: $20 $e0

	pop hl                                           ; $61c2: $e1
	ret                                              ; $61c3: $c9


Call_005_61c4:
jr_005_61c4:
	call Call_005_61d7                               ; $61c4: $cd $d7 $61
	push hl                                          ; $61c7: $e5
	ld a, $40                                        ; $61c8: $3e $40
	rst AddAOntoHL                                          ; $61ca: $ef
	inc h                                            ; $61cb: $24
	call Call_005_61d7                               ; $61cc: $cd $d7 $61
	pop hl                                           ; $61cf: $e1
	ld a, $10                                        ; $61d0: $3e $10
	rst AddAOntoHL                                          ; $61d2: $ef
	dec b                                            ; $61d3: $05
	jr nz, jr_005_61c4                               ; $61d4: $20 $ee

	ret                                              ; $61d6: $c9


Call_005_61d7:
	push hl                                          ; $61d7: $e5
	ld c, $08                                        ; $61d8: $0e $08
	inc hl                                           ; $61da: $23

jr_005_61db:
	ld a, d                                          ; $61db: $7a
	and a                                            ; $61dc: $a7
	jr nz, jr_005_61eb                               ; $61dd: $20 $0c

	di                                               ; $61df: $f3

jr_005_61e0:
	ldh a, [rSTAT]                                   ; $61e0: $f0 $41
	bit 1, a                                         ; $61e2: $cb $4f
	jr nz, jr_005_61e0                               ; $61e4: $20 $fa

	ld a, [hl-]                                      ; $61e6: $3a
	ld [hl+], a                                      ; $61e7: $22
	ei                                               ; $61e8: $fb
	jr jr_005_61f7                                   ; $61e9: $18 $0c

jr_005_61eb:
	di                                               ; $61eb: $f3

jr_005_61ec:
	ldh a, [rSTAT]                                   ; $61ec: $f0 $41
	bit 1, a                                         ; $61ee: $cb $4f
	jr nz, jr_005_61ec                               ; $61f0: $20 $fa

	dec hl                                           ; $61f2: $2b
	ld [hl], $00                                     ; $61f3: $36 $00
	inc hl                                           ; $61f5: $23
	ei                                               ; $61f6: $fb

jr_005_61f7:
	inc hl                                           ; $61f7: $23
	inc hl                                           ; $61f8: $23
	dec c                                            ; $61f9: $0d
	jr nz, jr_005_61db                               ; $61fa: $20 $df

	pop hl                                           ; $61fc: $e1
	ret                                              ; $61fd: $c9


Call_005_61fe:
	ld a, [hl+]                                      ; $61fe: $2a
	ld b, a                                          ; $61ff: $47
	ld a, [hl+]                                      ; $6200: $2a
	ld h, [hl]                                       ; $6201: $66
	ld l, a                                          ; $6202: $6f
	ret                                              ; $6203: $c9


Call_005_6204:
	ld b, a                                          ; $6204: $47
	sla a                                            ; $6205: $cb $27
	add b                                            ; $6207: $80
	rst AddAOntoHL                                          ; $6208: $ef
	call Call_005_61fe                               ; $6209: $cd $fe $61
	ret                                              ; $620c: $c9


Call_005_620d:
	ld b, $0b                                        ; $620d: $06 $0b
	ld c, $10                                        ; $620f: $0e $10
	ld de, $0140                                     ; $6211: $11 $40 $01
	ld hl, $8af0                                     ; $6214: $21 $f0 $8a

jr_005_6217:
	push hl                                          ; $6217: $e5

jr_005_6218:
	di                                               ; $6218: $f3

jr_005_6219:
	ldh a, [rSTAT]                                   ; $6219: $f0 $41
	bit 1, a                                         ; $621b: $cb $4f
	jr nz, jr_005_6219                               ; $621d: $20 $fa

	ld a, [hl]                                       ; $621f: $7e
	or $80                                           ; $6220: $f6 $80
	ld [hl+], a                                      ; $6222: $22
	ei                                               ; $6223: $fb
	dec c                                            ; $6224: $0d
	jr nz, jr_005_6218                               ; $6225: $20 $f1

	pop hl                                           ; $6227: $e1
	add hl, de                                       ; $6228: $19
	ld c, $10                                        ; $6229: $0e $10
	dec b                                            ; $622b: $05
	jr nz, jr_005_6217                               ; $622c: $20 $e9

	ret                                              ; $622e: $c9


Call_005_622f:
Jump_005_622f:
	call $1b0f                                       ; $622f: $cd $0f $1b

Call_005_6232:
	ld h, $c2                                        ; $6232: $26 $c2
	ld l, $07                                        ; $6234: $2e $07
	ld [hl], b                                       ; $6236: $70
	ld l, $05                                        ; $6237: $2e $05
	ld a, $14                                        ; $6239: $3e $14
	add c                                            ; $623b: $81
	ld [hl], a                                       ; $623c: $77
	ret                                              ; $623d: $c9


todo_Set_c201_to80h:
	ld h, HIGH($c201)                                        ; $623e: $26 $c2
	ld l, LOW($c201)                                        ; $6240: $2e $01
	ld [hl], $80                                     ; $6242: $36 $80
	ret                                              ; $6244: $c9


Call_005_6245:
	ld bc, $6689                                     ; $6245: $01 $89 $66
	call $18b3                                       ; $6248: $cd $b3 $18
	ld h, $c2                                        ; $624b: $26 $c2
	ld l, $01                                        ; $624d: $2e $01
	ld [hl], $00                                     ; $624f: $36 $00
	ret                                              ; $6251: $c9


Call_005_6252:
	ld hl, $8a40                                     ; $6252: $21 $40 $8a
	ld b, $0b                                        ; $6255: $06 $0b

jr_005_6257:
	ld c, $b0                                        ; $6257: $0e $b0
	push hl                                          ; $6259: $e5

jr_005_625a:
	di                                               ; $625a: $f3

jr_005_625b:
	ldh a, [rSTAT]                                   ; $625b: $f0 $41
	bit 1, a                                         ; $625d: $cb $4f
	jr nz, jr_005_625b                               ; $625f: $20 $fa

	ld [hl], $00                                     ; $6261: $36 $00
	ei                                               ; $6263: $fb
	inc hl                                           ; $6264: $23
	dec c                                            ; $6265: $0d
	jr nz, jr_005_625a                               ; $6266: $20 $f2

	pop hl                                           ; $6268: $e1
	ld a, $40                                        ; $6269: $3e $40
	rst AddAOntoHL                                          ; $626b: $ef
	inc h                                            ; $626c: $24
	dec b                                            ; $626d: $05
	jr nz, jr_005_6257                               ; $626e: $20 $e7

	ret                                              ; $6270: $c9


Call_005_6271:
	call $087a                                       ; $6271: $cd $7a $08
	xor a                                            ; $6274: $af
	call ClearSaveFileAaddr                               ; $6275: $cd $c2 $62
	ret                                              ; $6278: $c9


Call_005_6279:
	ld hl, $d204                                     ; $6279: $21 $04 $d2
	rst AddAOntoHL                                          ; $627c: $ef
	ld a, [hl]                                       ; $627d: $7e
	ret                                              ; $627e: $c9


todo_ToTitleScreen:
	call todo_Set_c201_to80h                               ; $627f: $cd $3e $62
	call Call_005_628b                               ; $6282: $cd $8b $62
	ld a, $ff                                        ; $6285: $3e $ff
	ld [wMenuOptionSelected], a                                    ; $6287: $ea $5f $c1
	ret                                              ; $628a: $c9


Call_005_628b:
	xor a                                            ; $628b: $af
	ld [$d7ef], a                                    ; $628c: $ea $ef $d7
	ld [wPastTitleScreen], a                                    ; $628f: $ea $41 $c1
	ret                                              ; $6292: $c9


Call_005_6293:
	ld hl, $a000                                     ; $6293: $21 $00 $a0
	ld bc, $2000                                     ; $6296: $01 $00 $20
	xor a                                            ; $6299: $af
	call wMemSetBC                                       ; $629a: $cd $cc $cf
	ld de, $a100                                     ; $629d: $11 $00 $a1
	ld hl, $636d                                     ; $62a0: $21 $6d $63
	jp $ccb0                                         ; $62a3: $c3 $b0 $cc


	ld a, [$a1ff]                                    ; $62a6: $fa $ff $a1
	push af                                          ; $62a9: $f5
	ld hl, $a000                                     ; $62aa: $21 $00 $a0
	ld bc, $1a80                                     ; $62ad: $01 $80 $1a
	xor a                                            ; $62b0: $af
	call wMemSetBC                                       ; $62b1: $cd $cc $cf
	ld de, $a100                                     ; $62b4: $11 $00 $a1
	ld hl, $636d                                     ; $62b7: $21 $6d $63
	call $ccb0                                       ; $62ba: $cd $b0 $cc
	pop af                                           ; $62bd: $f1
	ld [$a1ff], a                                    ; $62be: $ea $ff $a1
	ret                                              ; $62c1: $c9


ClearSaveFileAaddr::
	call HLequSaveFileAaddr                               ; $62c2: $cd $f8 $62
	ld bc, $0380                                     ; $62c5: $01 $80 $03
	xor a                                            ; $62c8: $af
	jp wMemSetBC                                         ; $62c9: $c3 $cc $cf


;
	ld c, a                                          ; $62cc: $4f
	push bc                                          ; $62cd: $c5
	call Call_005_633d                               ; $62ce: $cd $3d $63
	push bc                                          ; $62d1: $c5
	call HLequSaveFileAaddr                               ; $62d2: $cd $f8 $62
	pop bc                                           ; $62d5: $c1
	push hl                                          ; $62d6: $e5
	ld a, b                                          ; $62d7: $78
	call HLequSaveFileAaddr                               ; $62d8: $cd $f8 $62
	pop de                                           ; $62db: $d1
	ld bc, $0380                                     ; $62dc: $01 $80 $03

jr_005_62df:
	ld a, [de]                                       ; $62df: $1a
	ld [hl+], a                                      ; $62e0: $22
	inc de                                           ; $62e1: $13
	dec bc                                           ; $62e2: $0b
	ld a, b                                          ; $62e3: $78
	or c                                             ; $62e4: $b1
	jr nz, jr_005_62df                               ; $62e5: $20 $f8

	pop bc                                           ; $62e7: $c1
	ld a, b                                          ; $62e8: $78
	call Call_005_6344                               ; $62e9: $cd $44 $63
	ld b, a                                          ; $62ec: $47
	ld a, c                                          ; $62ed: $79
	call Call_005_6344                               ; $62ee: $cd $44 $63
	cp b                                             ; $62f1: $b8
	ld a, $00                                        ; $62f2: $3e $00
	ret z                                            ; $62f4: $c8

	ld a, $01                                        ; $62f5: $3e $01
	ret                                              ; $62f7: $c9


; A - save file idx
HLequSaveFileAaddr:
	ld bc, $0380                                     ; $62f8: $01 $80 $03
	ld d, $00                                        ; $62fb: $16 $00
	ld e, a                                          ; $62fd: $5f
	call DEBCequBCtimesDE                                       ; $62fe: $cd $95 $12
	ld hl, $a200                                     ; $6301: $21 $00 $a2
	add hl, bc                                       ; $6304: $09
	ret                                              ; $6305: $c9


;
	ld de, $a101                                     ; $6306: $11 $01 $a1
	ld hl, $636e                                     ; $6309: $21 $6e $63
	ld c, $0f                                        ; $630c: $0e $0f

jr_005_630e:
	ld a, [de]                                       ; $630e: $1a
	ld b, [hl]                                       ; $630f: $46
	inc de                                           ; $6310: $13
	inc hl                                           ; $6311: $23
	cp b                                             ; $6312: $b8
	jr nz, jr_005_6318                               ; $6313: $20 $03

	dec c                                            ; $6315: $0d
	jr nz, jr_005_630e                               ; $6316: $20 $f6

jr_005_6318:
	ld a, c                                          ; $6318: $79
	and a                                            ; $6319: $a7
	ret z                                            ; $631a: $c8

	call Call_005_6293                               ; $631b: $cd $93 $62
	ret                                              ; $631e: $c9


Call_005_631f:
	push de                                          ; $631f: $d5
	push bc                                          ; $6320: $c5
	ld hl, $0380                                     ; $6321: $21 $80 $03
	call AHLequAtimesHL                                       ; $6324: $cd $77 $12
	ld bc, sUnmappedPlayer1stName                                     ; $6327: $01 $00 $a2
	add hl, bc                                       ; $632a: $09
	ld bc, $037f                                     ; $632b: $01 $7f $03
	ld d, $00                                        ; $632e: $16 $00

jr_005_6330:
	ld a, d                                          ; $6330: $7a
	add [hl]                                         ; $6331: $86
	ld d, a                                          ; $6332: $57
	inc hl                                           ; $6333: $23
	dec bc                                           ; $6334: $0b
	ld a, b                                          ; $6335: $78
	or c                                             ; $6336: $b1
	jr nz, jr_005_6330                               ; $6337: $20 $f7

	ld a, d                                          ; $6339: $7a

jr_005_633a:
	pop bc                                           ; $633a: $c1
	pop de                                           ; $633b: $d1
	ret                                              ; $633c: $c9


Call_005_633d:
	push af                                          ; $633d: $f5
	call Call_005_631f                               ; $633e: $cd $1f $63
	ld [hl], a                                       ; $6341: $77
	pop af                                           ; $6342: $f1
	ret                                              ; $6343: $c9


Call_005_6344:
	push bc                                          ; $6344: $c5
	ld hl, $0380                                     ; $6345: $21 $80 $03
	call AHLequAtimesHL                                       ; $6348: $cd $77 $12
	ld bc, $a57f                                     ; $634b: $01 $7f $a5
	add hl, bc                                       ; $634e: $09
	ld a, [hl]                                       ; $634f: $7e
	pop bc                                           ; $6350: $c1

jr_005_6351:
	ret                                              ; $6351: $c9


Call_005_6352:
	ld hl, $637d                                     ; $6352: $21 $7d $63
	ld de, $a570                                     ; $6355: $11 $70 $a5
	jp $ccb3                                         ; $6358: $c3 $b3 $cc


Call_005_635b:
	ld de, $a373                                     ; $635b: $11 $73 $a3
	ld hl, $6403                                     ; $635e: $21 $03 $64
	call $ccc5                                       ; $6361: $cd $c5 $cc
	ld de, $a37c                                     ; $6364: $11 $7c $a3
	ld hl, $640c                                     ; $6367: $21 $0c $64
	jp $cccb                                         ; $636a: $c3 $cb $cc


	ld l, c                                          ; $636d: $69
	ld l, c                                          ; $636e: $69
	ccf                                              ; $636f: $3f
	jr nz, jr_005_63c6                               ; $6370: $20 $54

	ld c, a                                          ; $6372: $4f
	ld l, $4b                                        ; $6373: $2e $4b
	ld c, c                                          ; $6375: $49
	ld l, $4d                                        ; $6376: $2e $4d

jr_005_6378:
	ld b, l                                          ; $6378: $45
	ld l, $4b                                        ; $6379: $2e $4b
	ld c, c                                          ; $637b: $49
	ld hl, $4946                                     ; $637c: $21 $46 $49
	ld c, h                                          ; $637f: $4c
	ld b, l                                          ; $6380: $45
	jr nz, jr_005_63c6                               ; $6381: $20 $43

	ld c, b                                          ; $6383: $48
	ld c, e                                          ; $6384: $4b
	jr nz, jr_005_63d6                               ; $6385: $20 $4f

	ld c, e                                          ; $6387: $4b
	ccf                                              ; $6388: $3f
	ld c, a                                          ; $6389: $4f
	ld c, e                                          ; $638a: $4b
	ccf                                              ; $638b: $3f
	inc b                                            ; $638c: $04
	sub b                                            ; $638d: $90
	adc a                                            ; $638e: $8f
	inc b                                            ; $638f: $04
	nop                                              ; $6390: $00
	sub b                                            ; $6391: $90
	inc bc                                           ; $6392: $03
	ldh a, [$8a]                                     ; $6393: $f0 $8a
	inc bc                                           ; $6395: $03
	jr nz, @-$73                                     ; $6396: $20 $8b

	inc bc                                           ; $6398: $03
	ld d, b                                          ; $6399: $50
	adc e                                            ; $639a: $8b
	inc bc                                           ; $639b: $03
	ld [hl], b                                       ; $639c: $70
	adc l                                            ; $639d: $8d
	inc bc                                           ; $639e: $03
	and b                                            ; $639f: $a0
	adc l                                            ; $63a0: $8d
	inc bc                                           ; $63a1: $03
	ret nc                                           ; $63a2: $d0

	adc l                                            ; $63a3: $8d
	inc bc                                           ; $63a4: $03
	ldh a, [hDisp1_LCDC]                                     ; $63a5: $f0 $8f
	inc bc                                           ; $63a7: $03
	jr nz, jr_005_633a                               ; $63a8: $20 $90

	inc bc                                           ; $63aa: $03
	ld d, b                                          ; $63ab: $50
	sub b                                            ; $63ac: $90
	inc bc                                           ; $63ad: $03
	ld [hl], b                                       ; $63ae: $70
	sub d                                            ; $63af: $92
	inc bc                                           ; $63b0: $03
	and b                                            ; $63b1: $a0
	sub d                                            ; $63b2: $92
	inc bc                                           ; $63b3: $03
	ret nc                                           ; $63b4: $d0

	sub d                                            ; $63b5: $92
	inc bc                                           ; $63b6: $03
	ldh a, [hDisp1_OBP1]                                     ; $63b7: $f0 $94
	inc bc                                           ; $63b9: $03
	jr nz, jr_005_6351                               ; $63ba: $20 $95

	inc bc                                           ; $63bc: $03
	ld d, b                                          ; $63bd: $50
	sub l                                            ; $63be: $95
	ld c, h                                          ; $63bf: $4c
	nop                                              ; $63c0: $00
	ld h, h                                          ; $63c1: $64
	nop                                              ; $63c2: $00
	ld a, h                                          ; $63c3: $7c
	nop                                              ; $63c4: $00
	ld c, h                                          ; $63c5: $4c

jr_005_63c6:
	db $10                                           ; $63c6: $10
	ld h, h                                          ; $63c7: $64
	db $10                                           ; $63c8: $10
	ld a, h                                          ; $63c9: $7c
	db $10                                           ; $63ca: $10
	ld c, h                                          ; $63cb: $4c
	jr nz, jr_005_6432                               ; $63cc: $20 $64

	jr nz, @+$7e                                     ; $63ce: $20 $7c

	jr nz, jr_005_641e                               ; $63d0: $20 $4c

	jr nc, jr_005_6438                               ; $63d2: $30 $64

	jr nc, @+$7e                                     ; $63d4: $30 $7c

jr_005_63d6:
	jr nc, @+$4e                                     ; $63d6: $30 $4c

	ld b, b                                          ; $63d8: $40
	ld h, h                                          ; $63d9: $64
	ld b, b                                          ; $63da: $40
	ld a, h                                          ; $63db: $7c
	ld b, b                                          ; $63dc: $40
	inc b                                            ; $63dd: $04
	and b                                            ; $63de: $a0
	adc a                                            ; $63df: $8f
	inc b                                            ; $63e0: $04
	ldh [hDisp1_LCDC], a                                     ; $63e1: $e0 $8f
	inc b                                            ; $63e3: $04
	jr nz, jr_005_6378                               ; $63e4: $20 $92

	inc b                                            ; $63e6: $04
	ld h, b                                          ; $63e7: $60
	sub d                                            ; $63e8: $92
	jr nz, @+$22                                     ; $63e9: $20 $20

	ld b, b                                          ; $63eb: $40
	jr nz, jr_005_640e                               ; $63ec: $20 $20

	jr nc, jr_005_6430                               ; $63ee: $30 $40

	jr nc, @+$20                                     ; $63f0: $30 $1e

	jp nc, $1e79                                     ; $63f2: $d2 $79 $1e

	xor $79                                          ; $63f5: $ee $79
	ld e, $0a                                        ; $63f7: $1e $0a
	ld a, d                                          ; $63f9: $7a
	ld e, $25                                        ; $63fa: $1e $25
	ld a, d                                          ; $63fc: $7a
	ld e, $42                                        ; $63fd: $1e $42
	ld a, d                                          ; $63ff: $7a
	ld e, $d2                                        ; $6400: $1e $d2
	ld a, c                                          ; $6402: $79
	ld bc, $0302                                     ; $6403: $01 $02 $03
	rst $38                                          ; $6406: $ff
	rst $38                                          ; $6407: $ff
	rst $38                                          ; $6408: $ff
	dec b                                            ; $6409: $05
	ld b, $0a                                        ; $640a: $06 $0a
	rst $38                                          ; $640c: $ff
	nop                                              ; $640d: $00

jr_005_640e:
	ld bc, $ff02                                     ; $640e: $01 $02 $ff
	ld b, $07                                        ; $6411: $06 $07
	call Call_005_6431                               ; $6413: $cd $31 $64
	push af                                          ; $6416: $f5
	rst FarCall                                          ; $6417: $f7
	pop bc                                           ; $6418: $c1
	ld a, [de]                                       ; $6419: $1a
	nop                                              ; $641a: $00
	rst FarCall                                          ; $641b: $f7
	rr d                                             ; $641c: $cb $1a

jr_005_641e:
	nop                                              ; $641e: $00
	rst FarCall                                          ; $641f: $f7
	nop                                              ; $6420: $00
	ld b, c                                          ; $6421: $41
	inc c                                            ; $6422: $0c
	ld bc, $67f0                                     ; $6423: $01 $f0 $67
	ld de, $0000                                     ; $6426: $11 $00 $00
	call $19f5                                       ; $6429: $cd $f5 $19
	call Func_1aa6                                       ; $642c: $cd $a6 $1a
	pop af                                           ; $642f: $f1

jr_005_6430:
	ret                                              ; $6430: $c9


Call_005_6431:
	dec a                                            ; $6431: $3d

jr_005_6432:
	call wJumpTable                                       ; $6432: $cd $80 $cf
	ld c, c                                          ; $6435: $49
	ld h, h                                          ; $6436: $64
	ld d, c                                          ; $6437: $51

jr_005_6438:
	ld h, h                                          ; $6438: $64
	add e                                            ; $6439: $83
	ld h, h                                          ; $643a: $64
	or d                                             ; $643b: $b2
	ld h, h                                          ; $643c: $64
	xor d                                            ; $643d: $aa
	ld h, h                                          ; $643e: $64
	sbc l                                            ; $643f: $9d
	ld h, h                                          ; $6440: $64
	ret                                              ; $6441: $c9


	ld h, h                                          ; $6442: $64
	ld l, d                                          ; $6443: $6a
	ld h, l                                          ; $6444: $65
	ld [hl], $66                                     ; $6445: $36 $66
	sub b                                            ; $6447: $90
	ld h, h                                          ; $6448: $64
	ld a, $0c                                        ; $6449: $3e $0c
	ld [wGameState], a                                    ; $644b: $ea $42 $c1
	jp Func_3a7d                                         ; $644e: $c3 $7d $3a


	ld a, [$a36f]                                    ; $6451: $fa $6f $a3
	ld [$c169], a                                    ; $6454: $ea $69 $c1
	and $fe                                          ; $6457: $e6 $fe
	ld [$a36f], a                                    ; $6459: $ea $6f $a3
	ld a, [$a370]                                    ; $645c: $fa $70 $a3
	ld [$c16b], a                                    ; $645f: $ea $6b $c1
	and $fe                                          ; $6462: $e6 $fe
	ld [$a370], a                                    ; $6464: $ea $70 $a3
	ld a, $01                                        ; $6467: $3e $01
	ld [$c165], a                                    ; $6469: $ea $65 $c1
	ld a, $09                                        ; $646c: $3e $09
	ld [wGameState], a                                    ; $646e: $ea $42 $c1
	call Func_3a7d                                       ; $6471: $cd $7d $3a
	push af                                          ; $6474: $f5
	ld a, [$c169]                                    ; $6475: $fa $69 $c1
	ld [$a36f], a                                    ; $6478: $ea $6f $a3
	ld a, [$c16b]                                    ; $647b: $fa $6b $c1
	ld [$a370], a                                    ; $647e: $ea $70 $a3
	pop af                                           ; $6481: $f1
	ret                                              ; $6482: $c9


	ld a, $01                                        ; $6483: $3e $01
	ld [$c165], a                                    ; $6485: $ea $65 $c1
	ld a, $09                                        ; $6488: $3e $09
	ld [wGameState], a                                    ; $648a: $ea $42 $c1
	jp Func_3a7d                                         ; $648d: $c3 $7d $3a


	ld a, $02                                        ; $6490: $3e $02
	ld [$c165], a                                    ; $6492: $ea $65 $c1
	ld a, $09                                        ; $6495: $3e $09
	ld [wGameState], a                                    ; $6497: $ea $42 $c1
	jp Func_3a7d                                         ; $649a: $c3 $7d $3a


	ld a, $10                                        ; $649d: $3e $10
	ld [$c165], a                                    ; $649f: $ea $65 $c1
	ld a, $09                                        ; $64a2: $3e $09
	ld [wGameState], a                                    ; $64a4: $ea $42 $c1
	jp Func_3a7d                                         ; $64a7: $c3 $7d $3a


	ld a, $03                                        ; $64aa: $3e $03
	ld [wGameState], a                                    ; $64ac: $ea $42 $c1
	jp Func_3a7d                                         ; $64af: $c3 $7d $3a


	ld a, $0f                                        ; $64b2: $3e $0f
	ld [$c169], a                                    ; $64b4: $ea $69 $c1
	ld a, $00                                        ; $64b7: $3e $00
	ld [$c16a], a                                    ; $64b9: $ea $6a $c1
	xor a                                            ; $64bc: $af
	ld [$c16b], a                                    ; $64bd: $ea $6b $c1
	ld a, $0a                                        ; $64c0: $3e $0a
	ld [wGameState], a                                    ; $64c2: $ea $42 $c1
	call Func_3a7d                                       ; $64c5: $cd $7d $3a
	ret                                              ; $64c8: $c9


	ld c, $00                                        ; $64c9: $0e $00
	ld hl, $a365                                     ; $64cb: $21 $65 $a3
	ld a, [$650e]                                    ; $64ce: $fa $0e $65
	ld d, a                                          ; $64d1: $57

jr_005_64d2:
	ld a, [hl+]                                      ; $64d2: $2a
	and $01                                          ; $64d3: $e6 $01
	ld b, a                                          ; $64d5: $47
	xor a                                            ; $64d6: $af
	srl d                                            ; $64d7: $cb $3a
	rla                                              ; $64d9: $17
	and b                                            ; $64da: $a0
	ld b, a                                          ; $64db: $47
	call Call_005_64f8                               ; $64dc: $cd $f8 $64
	inc c                                            ; $64df: $0c
	ld a, c                                          ; $64e0: $79
	and $07                                          ; $64e1: $e6 $07
	call z, Call_005_6509                            ; $64e3: $cc $09 $65
	ld a, $0e                                        ; $64e6: $3e $0e
	cp c                                             ; $64e8: $b9
	jr nz, jr_005_64d2                               ; $64e9: $20 $e7

	ld a, $20                                        ; $64eb: $3e $20
	ld [$c165], a                                    ; $64ed: $ea $65 $c1
	ld a, $09                                        ; $64f0: $3e $09
	ld [wGameState], a                                    ; $64f2: $ea $42 $c1
	jp Func_3a7d                                         ; $64f5: $c3 $7d $3a


Call_005_64f8:
	push hl                                          ; $64f8: $e5
	ld hl, $a365                                     ; $64f9: $21 $65 $a3
	ld a, c                                          ; $64fc: $79
	rst AddAOntoHL                                          ; $64fd: $ef
	ld a, [hl]                                       ; $64fe: $7e
	and $df                                          ; $64ff: $e6 $df
	swap b                                           ; $6501: $cb $30
	sla b                                            ; $6503: $cb $20
	or b                                             ; $6505: $b0
	ld [hl], a                                       ; $6506: $77
	pop hl                                           ; $6507: $e1
	ret                                              ; $6508: $c9


Call_005_6509:
	ld a, [$650f]                                    ; $6509: $fa $0f $65
	ld d, a                                          ; $650c: $57
	ret                                              ; $650d: $c9


	rst $38                                          ; $650e: $ff
	ccf                                              ; $650f: $3f
	ld a, [$d7ef]                                    ; $6510: $fa $ef $d7
	call wJumpTable                                       ; $6513: $cd $80 $cf
	jr nz, jr_005_656a                               ; $6516: $20 $52

	inc e                                            ; $6518: $1c
	ld h, l                                          ; $6519: $65
	ld e, h                                          ; $651a: $5c
	ld h, l                                          ; $651b: $65
	ld de, $daa0                                     ; $651c: $11 $a0 $da
	ld hl, $a365                                     ; $651f: $21 $65 $a3
	call $ccb6                                       ; $6522: $cd $b6 $cc
	ld a, $01                                        ; $6525: $3e $01
	ld [$daaf], a                                    ; $6527: $ea $af $da
	ld [$dab0], a                                    ; $652a: $ea $b0 $da
	xor a                                            ; $652d: $af
	ld [$daaa], a                                    ; $652e: $ea $aa $da
	ld [$daae], a                                    ; $6531: $ea $ae $da
	call Call_005_52d4                               ; $6534: $cd $d4 $52
	ld a, $01                                        ; $6537: $3e $01
	ld [$c165], a                                    ; $6539: $ea $65 $c1
	ld a, $05                                        ; $653c: $3e $05
	ld [$c151], a                                    ; $653e: $ea $51 $c1
	ld de, $daa0                                     ; $6541: $11 $a0 $da
	ld a, $11                                        ; $6544: $3e $11
	ld [$c166], a                                    ; $6546: $ea $66 $c1
	xor a                                            ; $6549: $af
	ld [$c15e], a                                    ; $654a: $ea $5e $c1
	ld hl, $5856                                     ; $654d: $21 $56 $58
	call Call_005_4eb2                               ; $6550: $cd $b2 $4e
	call Call_005_4bca                               ; $6553: $cd $ca $4b
	call Call_005_52f2                               ; $6556: $cd $f2 $52
	jp Jump_005_4df2                                 ; $6559: $c3 $f2 $4d


	ld a, [wButtonsPressed]                                    ; $655c: $fa $25 $c1
	and $10                                          ; $655f: $e6 $10
	jp nz, Jump_005_4f58                             ; $6561: $c2 $58 $4f

	call Call_005_4c7c                               ; $6564: $cd $7c $4c
	jp Jump_005_4f26                                 ; $6567: $c3 $26 $4f


jr_005_656a:
	ld a, $0f                                        ; $656a: $3e $0f
	ld [$c169], a                                    ; $656c: $ea $69 $c1
	ld a, $00                                        ; $656f: $3e $00
	ld [$c16a], a                                    ; $6571: $ea $6a $c1
	ld hl, $a333                                     ; $6574: $21 $33 $a3
	ld a, [$a22a]                                    ; $6577: $fa $2a $a2
	sla a                                            ; $657a: $cb $27
	rst AddAOntoHL                                          ; $657c: $ef
	ld a, [hl+]                                      ; $657d: $2a
	cpl                                              ; $657e: $2f
	ld b, a                                          ; $657f: $47
	ld a, [$c169]                                    ; $6580: $fa $69 $c1
	and b                                            ; $6583: $a0
	ld [$c169], a                                    ; $6584: $ea $69 $c1
	ld a, [hl]                                       ; $6587: $7e
	cpl                                              ; $6588: $2f
	ld b, a                                          ; $6589: $47
	ld a, [$c16a]                                    ; $658a: $fa $6a $c1
	and b                                            ; $658d: $a0
	ld [$c16a], a                                    ; $658e: $ea $6a $c1
	ld a, [$c169]                                    ; $6591: $fa $69 $c1
	ld b, a                                          ; $6594: $47
	ld a, [$c16a]                                    ; $6595: $fa $6a $c1
	or b                                             ; $6598: $b0
	ld a, $0a                                        ; $6599: $3e $0a
	jr nz, jr_005_659f                               ; $659b: $20 $02

	pop bc                                           ; $659d: $c1
	ret                                              ; $659e: $c9


jr_005_659f:
	ld a, $01                                        ; $659f: $3e $01
	ld [$c16b], a                                    ; $65a1: $ea $6b $c1
	ld a, $0a                                        ; $65a4: $3e $0a
	ld [wGameState], a                                    ; $65a6: $ea $42 $c1
	jp Func_3a7d                                         ; $65a9: $c3 $7d $3a


	ld a, [$d7ef]                                    ; $65ac: $fa $ef $d7
	call wJumpTable                                       ; $65af: $cd $80 $cf
	jr nz, @+$54                                     ; $65b2: $20 $52

	cp d                                             ; $65b4: $ba
	ld h, l                                          ; $65b5: $65
	db $ed                                           ; $65b6: $ed
	ld h, l                                          ; $65b7: $65
	inc de                                           ; $65b8: $13
	ld h, [hl]                                       ; $65b9: $66
	ld a, [$c16b]                                    ; $65ba: $fa $6b $c1
	and a                                            ; $65bd: $a7
	jr nz, jr_005_65cb                               ; $65be: $20 $0b

	ld b, $1e                                        ; $65c0: $06 $1e
	ld hl, $717f                                     ; $65c2: $21 $7f $71
	call Func_1c32                                       ; $65c5: $cd $32 $1c
	jp $1b19                                         ; $65c8: $c3 $19 $1b


jr_005_65cb:
	ld hl, $c169                                     ; $65cb: $21 $69 $c1
	ld a, [hl+]                                      ; $65ce: $2a
	or [hl]                                          ; $65cf: $b6
	jr z, jr_005_65dd                                ; $65d0: $28 $0b

	ld b, $1e                                        ; $65d2: $06 $1e
	ld hl, $719b                                     ; $65d4: $21 $9b $71
	call Func_1c32                                       ; $65d7: $cd $32 $1c
	jp $1b19                                         ; $65da: $c3 $19 $1b


jr_005_65dd:
	ld b, $1e                                        ; $65dd: $06 $1e
	ld hl, $71b7                                     ; $65df: $21 $b7 $71
	call Func_1c32                                       ; $65e2: $cd $32 $1c
	ld a, $ff                                        ; $65e5: $3e $ff
	ld [wMenuOptionSelected], a                                    ; $65e7: $ea $5f $c1
	jp Jump_005_4f65                                 ; $65ea: $c3 $65 $4f


	call Call_005_52d4                               ; $65ed: $cd $d4 $52
	ld a, $06                                        ; $65f0: $3e $06
	ld [$c151], a                                    ; $65f2: $ea $51 $c1
	ld hl, $c169                                     ; $65f5: $21 $69 $c1
	ld a, $09                                        ; $65f8: $3e $09
	call Call_005_4f91                               ; $65fa: $cd $91 $4f
	xor a                                            ; $65fd: $af
	ld [$c15e], a                                    ; $65fe: $ea $5e $c1
	ld hl, $5913                                     ; $6601: $21 $13 $59
	call Call_005_4eb2                               ; $6604: $cd $b2 $4e
	call Call_005_4bca                               ; $6607: $cd $ca $4b
	call Call_005_4e14                               ; $660a: $cd $14 $4e
	call Call_005_4f00                               ; $660d: $cd $00 $4f
	jp Jump_005_4df2                                 ; $6610: $c3 $f2 $4d


	ld a, [$c16b]                                    ; $6613: $fa $6b $c1
	and a                                            ; $6616: $a7
	jr z, jr_005_6620                                ; $6617: $28 $07

	ld a, [wButtonsPressed]                                    ; $6619: $fa $25 $c1
	cp $20                                           ; $661c: $fe $20
	jr z, jr_005_662e                                ; $661e: $28 $0e

jr_005_6620:
	ld a, [wButtonsPressed]                                    ; $6620: $fa $25 $c1
	and $10                                          ; $6623: $e6 $10
	jp nz, Jump_005_4f58                             ; $6625: $c2 $58 $4f

	call Call_005_4c7c                               ; $6628: $cd $7c $4c
	jp Jump_005_4f26                                 ; $662b: $c3 $26 $4f


jr_005_662e:
	ld a, $09                                        ; $662e: $3e $09
	ld [wMenuOptionSelected], a                                    ; $6630: $ea $5f $c1
	jp Jump_005_4f65                                 ; $6633: $c3 $65 $4f


	ld a, $0b                                        ; $6636: $3e $0b
	ld [wGameState], a                                    ; $6638: $ea $42 $c1
	call Func_3a7d                                       ; $663b: $cd $7d $3a
	push af                                          ; $663e: $f5
	rst FarCall                                          ; $663f: $f7
	or b                                             ; $6640: $b0
	ld c, l                                          ; $6641: $4d
	inc c                                            ; $6642: $0c
	pop af                                           ; $6643: $f1
	pop bc                                           ; $6644: $c1
	ret                                              ; $6645: $c9


	ld hl, $a365                                     ; $6646: $21 $65 $a3
	ld c, $00                                        ; $6649: $0e $00
	ld b, $00                                        ; $664b: $06 $00

jr_005_664d:
	ld a, c                                          ; $664d: $79
	cp $0b                                           ; $664e: $fe $0b
	jr z, jr_005_665c                                ; $6650: $28 $0a

	cp $0a                                           ; $6652: $fe $0a
	jr z, jr_005_665c                                ; $6654: $28 $06

	ld a, [hl]                                       ; $6656: $7e
	and $01                                          ; $6657: $e6 $01
	jr z, jr_005_665c                                ; $6659: $28 $01

	inc b                                            ; $665b: $04

jr_005_665c:
	inc hl                                           ; $665c: $23
	inc c                                            ; $665d: $0c
	ld a, c                                          ; $665e: $79
	cp $0e                                           ; $665f: $fe $0e
	jr nz, jr_005_664d                               ; $6661: $20 $ea

	ld a, b                                          ; $6663: $78
	ret                                              ; $6664: $c9


	ld a, [$d7ef]                                    ; $6665: $fa $ef $d7
	call wJumpTable                                       ; $6668: $cd $80 $cf
	jr nz, @+$54                                     ; $666b: $20 $52

	ld [hl], c                                       ; $666d: $71
	ld h, [hl]                                       ; $666e: $66
	and [hl]                                         ; $666f: $a6
	ld h, [hl]                                       ; $6670: $66
	call Call_005_4d7f                               ; $6671: $cd $7f $4d
	ld a, $07                                        ; $6674: $3e $07
	ld [$c151], a                                    ; $6676: $ea $51 $c1
	ld a, $03                                        ; $6679: $3e $03
	ld [$c15e], a                                    ; $667b: $ea $5e $c1
	ld hl, $a146                                     ; $667e: $21 $46 $a1
	ld a, $10                                        ; $6681: $3e $10
	call Call_005_4f91                               ; $6683: $cd $91 $4f
	ld hl, $5856                                     ; $6686: $21 $56 $58
	call Call_005_4eb2                               ; $6689: $cd $b2 $4e
	call Call_005_4c06                               ; $668c: $cd $06 $4c
	call Call_005_52f9                               ; $668f: $cd $f9 $52
	ld a, $01                                        ; $6692: $3e $01
	ld [$d322], a                                    ; $6694: $ea $22 $d3
	call Call_005_4ec6                               ; $6697: $cd $c6 $4e
	ld b, $1e                                        ; $669a: $06 $1e
	ld hl, $78d1                                     ; $669c: $21 $d1 $78
	call Func_1c32                                       ; $669f: $cd $32 $1c
	call $1b19                                       ; $66a2: $cd $19 $1b
	ret                                              ; $66a5: $c9


Call_005_66a6:
	ld a, [wButtonsPressed]                                    ; $66a6: $fa $25 $c1
	and $10                                          ; $66a9: $e6 $10
	jr z, jr_005_66b4                                ; $66ab: $28 $07

	ld a, [$c15c]                                    ; $66ad: $fa $5c $c1
	cp $09                                           ; $66b0: $fe $09
	jr z, jr_005_66bc                                ; $66b2: $28 $08

jr_005_66b4:
	ld a, [wButtonsPressed]                                    ; $66b4: $fa $25 $c1
	cp $20                                           ; $66b7: $fe $20
	jp nz, Jump_005_4d3e                             ; $66b9: $c2 $3e $4d

jr_005_66bc:
	ld a, $ff                                        ; $66bc: $3e $ff
	ld [wMenuOptionSelected], a                                    ; $66be: $ea $5f $c1
	xor a                                            ; $66c1: $af
	ld [$d322], a                                    ; $66c2: $ea $22 $d3
	call Call_005_4f65                               ; $66c5: $cd $65 $4f
	ret                                              ; $66c8: $c9


	ld a, [$d7ef]                                    ; $66c9: $fa $ef $d7
	call wJumpTable                                       ; $66cc: $cd $80 $cf
	jr nz, @+$54                                     ; $66cf: $20 $52

	push de                                          ; $66d1: $d5
	ld h, [hl]                                       ; $66d2: $66
	dec l                                            ; $66d3: $2d
	ld h, a                                          ; $66d4: $67
	call Call_005_4d7f                               ; $66d5: $cd $7f $4d
	ld a, $07                                        ; $66d8: $3e $07
	ld [$c151], a                                    ; $66da: $ea $51 $c1
	ld a, $03                                        ; $66dd: $3e $03
	ld [$c15e], a                                    ; $66df: $ea $5e $c1
	ld a, $12                                        ; $66e2: $3e $12
	ld [$c166], a                                    ; $66e4: $ea $66 $c1
	ld b, $10                                        ; $66e7: $06 $10
	ld hl, $a114                                     ; $66e9: $21 $14 $a1
	ld de, $daa0                                     ; $66ec: $11 $a0 $da

jr_005_66ef:
	ld a, [hl+]                                      ; $66ef: $2a
	or a                                             ; $66f0: $b7
	jr z, jr_005_66f5                                ; $66f1: $28 $02

	ld a, $01                                        ; $66f3: $3e $01

jr_005_66f5:
	ld [de], a                                       ; $66f5: $12
	inc de                                           ; $66f6: $13
	dec b                                            ; $66f7: $05
	jr nz, jr_005_66ef                               ; $66f8: $20 $f5

	xor a                                            ; $66fa: $af
	ld [de], a                                       ; $66fb: $12
	inc de                                           ; $66fc: $13
	ld a, [$a125]                                    ; $66fd: $fa $25 $a1
	or a                                             ; $6700: $b7
	jr z, jr_005_6705                                ; $6701: $28 $02

	ld a, $01                                        ; $6703: $3e $01

jr_005_6705:
	ld [de], a                                       ; $6705: $12
	ld de, $daa0                                     ; $6706: $11 $a0 $da
	ld a, $01                                        ; $6709: $3e $01
	ld [$c165], a                                    ; $670b: $ea $65 $c1
	ld hl, $5856                                     ; $670e: $21 $56 $58
	call Call_005_4eb2                               ; $6711: $cd $b2 $4e
	call Call_005_4c06                               ; $6714: $cd $06 $4c
	call Call_005_52f9                               ; $6717: $cd $f9 $52
	ld a, $01                                        ; $671a: $3e $01
	ld [$d322], a                                    ; $671c: $ea $22 $d3
	call Call_005_4ec6                               ; $671f: $cd $c6 $4e
	ld b, $1e                                        ; $6722: $06 $1e
	ld hl, $78ef                                     ; $6724: $21 $ef $78
	call Func_1c32                                       ; $6727: $cd $32 $1c
	jp $1b19                                         ; $672a: $c3 $19 $1b


	call Call_005_66a6                               ; $672d: $cd $a6 $66
	ld a, [$d7ef]                                    ; $6730: $fa $ef $d7
	or a                                             ; $6733: $b7
	ret nz                                           ; $6734: $c0

	call Call_005_6790                               ; $6735: $cd $90 $67
	ld a, [wMenuOptionSelected]                                    ; $6738: $fa $5f $c1
	cp $01                                           ; $673b: $fe $01
	jr z, jr_005_674b                                ; $673d: $28 $0c

	cp $06                                           ; $673f: $fe $06
	jr z, jr_005_6767                                ; $6741: $28 $24

	cp $12                                           ; $6743: $fe $12
	jr c, jr_005_6777                                ; $6745: $38 $30

	ld a, $ff                                        ; $6747: $3e $ff
	jr jr_005_6777                                   ; $6749: $18 $2c

jr_005_674b:
	ld a, [$a159]                                    ; $674b: $fa $59 $a1
	and $03                                          ; $674e: $e6 $03
	cp $03                                           ; $6750: $fe $03
	jr z, jr_005_675e                                ; $6752: $28 $0a

	cp $02                                           ; $6754: $fe $02
	ld a, $01                                        ; $6756: $3e $01
	jr nz, jr_005_6777                               ; $6758: $20 $1d

	ld a, $21                                        ; $675a: $3e $21
	jr jr_005_6777                                   ; $675c: $18 $19

jr_005_675e:
	ld b, $01                                        ; $675e: $06 $01
	call Call_005_6783                               ; $6760: $cd $83 $67
	add $01                                          ; $6763: $c6 $01
	jr jr_005_6777                                   ; $6765: $18 $10

jr_005_6767:
	ld a, [$a11a]                                    ; $6767: $fa $1a $a1
	cp $01                                           ; $676a: $fe $01
	ld a, $06                                        ; $676c: $3e $06
	jr z, jr_005_6777                                ; $676e: $28 $07

	ld b, $02                                        ; $6770: $06 $02
	call Call_005_6783                               ; $6772: $cd $83 $67
	add $06                                          ; $6775: $c6 $06

jr_005_6777:
	ld [wMenuOptionSelected], a                                    ; $6777: $ea $5f $c1
	ld [$d043], a                                    ; $677a: $ea $43 $d0
	ld a, $01                                        ; $677d: $3e $01
	ld [$d042], a                                    ; $677f: $ea $42 $d0
	ret                                              ; $6782: $c9


Call_005_6783:
	ld hl, $d345                                     ; $6783: $21 $45 $d3
	ld a, [hl]                                       ; $6786: $7e
	xor b                                            ; $6787: $a8
	ld [hl], a                                       ; $6788: $77
	and b                                            ; $6789: $a0
	ld a, $00                                        ; $678a: $3e $00
	ret nz                                           ; $678c: $c0

	ld a, $20                                        ; $678d: $3e $20
	ret                                              ; $678f: $c9


Call_005_6790:
	ld hl, $d345                                     ; $6790: $21 $45 $d3
	bit 7, [hl]                                      ; $6793: $cb $7e
	ret nz                                           ; $6795: $c0

	set 7, [hl]                                      ; $6796: $cb $fe
	ld a, [$a159]                                    ; $6798: $fa $59 $a1
	bit 7, a                                         ; $679b: $cb $7f
	jr z, jr_005_67a1                                ; $679d: $28 $02

	set 0, [hl]                                      ; $679f: $cb $c6

jr_005_67a1:
	ld a, [$a11a]                                    ; $67a1: $fa $1a $a1
	and $01                                          ; $67a4: $e6 $01
	ret nz                                           ; $67a6: $c0

	set 1, [hl]                                      ; $67a7: $cb $ce
	ret                                              ; $67a9: $c9


	ld a, [$d7ef]                                    ; $67aa: $fa $ef $d7
	call wJumpTable                                       ; $67ad: $cd $80 $cf
	jr nz, @+$54                                     ; $67b0: $20 $52

	or [hl]                                          ; $67b2: $b6
	ld h, a                                          ; $67b3: $67
	rst AddAOntoHL                                          ; $67b4: $ef
	ld h, a                                          ; $67b5: $67
	call Call_005_4d7f                               ; $67b6: $cd $7f $4d
	ld a, $07                                        ; $67b9: $3e $07
	ld [$c151], a                                    ; $67bb: $ea $51 $c1
	ld a, $03                                        ; $67be: $3e $03
	ld [$c15e], a                                    ; $67c0: $ea $5e $c1
	ld hl, $d32c                                     ; $67c3: $21 $2c $d3
	ld a, $11                                        ; $67c6: $3e $11
	call Call_005_4f91                               ; $67c8: $cd $91 $4f
	ld hl, $588f                                     ; $67cb: $21 $8f $58
	call Call_005_4eb2                               ; $67ce: $cd $b2 $4e
	call Call_005_4c06                               ; $67d1: $cd $06 $4c
	xor a                                            ; $67d4: $af
	ld [$c16d], a                                    ; $67d5: $ea $6d $c1
	ld a, $01                                        ; $67d8: $3e $01
	ld [$d322], a                                    ; $67da: $ea $22 $d3
	call Call_005_6814                               ; $67dd: $cd $14 $68
	call Call_005_4ec6                               ; $67e0: $cd $c6 $4e
	ld b, $1e                                        ; $67e3: $06 $1e
	ld hl, $7961                                     ; $67e5: $21 $61 $79
	call Func_1c32                                       ; $67e8: $cd $32 $1c
	call $1b19                                       ; $67eb: $cd $19 $1b
	ret                                              ; $67ee: $c9


	ld a, [wButtonsPressed]                                    ; $67ef: $fa $25 $c1
	and $10                                          ; $67f2: $e6 $10
	jr z, jr_005_67fd                                ; $67f4: $28 $07

	ld a, [$c15c]                                    ; $67f6: $fa $5c $c1
	cp $09                                           ; $67f9: $fe $09
	jr z, jr_005_6805                                ; $67fb: $28 $08

jr_005_67fd:
	ld a, [wButtonsPressed]                                    ; $67fd: $fa $25 $c1
	cp $20                                           ; $6800: $fe $20
	jp nz, Jump_005_6824                             ; $6802: $c2 $24 $68

jr_005_6805:
	ld a, $12                                        ; $6805: $3e $12
	ld [wMenuOptionSelected], a                                    ; $6807: $ea $5f $c1
	xor a                                            ; $680a: $af
	ld [$d322], a                                    ; $680b: $ea $22 $d3
	ld a, $00                                        ; $680e: $3e $00
	ld [$d7ef], a                                    ; $6810: $ea $ef $d7
	ret                                              ; $6813: $c9


Call_005_6814:
	call Call_005_4e14                               ; $6814: $cd $14 $4e
	call Call_005_691c                               ; $6817: $cd $1c $69
	call Call_005_6889                               ; $681a: $cd $89 $68
	call Call_005_4f00                               ; $681d: $cd $00 $4f
	call Call_005_4df2                               ; $6820: $cd $f2 $4d
	ret                                              ; $6823: $c9


Jump_005_6824:
	and $10                                          ; $6824: $e6 $10
	jr z, jr_005_6859                                ; $6826: $28 $31

	ld a, [$c15c]                                    ; $6828: $fa $5c $c1
	cp $05                                           ; $682b: $fe $05
	jp c, Jump_005_4f58                              ; $682d: $da $58 $4f

	cp $08                                           ; $6830: $fe $08
	jr nz, jr_005_6859                               ; $6832: $20 $25

	ld a, [$c161]                                    ; $6834: $fa $61 $c1
	ld b, a                                          ; $6837: $47
	ld a, [$c160]                                    ; $6838: $fa $60 $c1
	cp $01                                           ; $683b: $fe $01
	jr z, jr_005_6859                                ; $683d: $28 $1a

	inc b                                            ; $683f: $04
	cp b                                             ; $6840: $b8
	jr nc, jr_005_6845                               ; $6841: $30 $02

	ld b, $01                                        ; $6843: $06 $01

jr_005_6845:
	ld a, b                                          ; $6845: $78
	ld [$c161], a                                    ; $6846: $ea $61 $c1
	dec b                                            ; $6849: $05
	ld c, $05                                        ; $684a: $0e $05
	call BCequBtimesC                                       ; $684c: $cd $5f $12
	ld a, c                                          ; $684f: $79
	call Call_005_4c70                               ; $6850: $cd $70 $4c
	call Call_005_4d7f                               ; $6853: $cd $7f $4d
	call Call_005_6814                               ; $6856: $cd $14 $68

jr_005_6859:
	call Call_005_4c85                               ; $6859: $cd $85 $4c
	call Call_005_4f26                               ; $685c: $cd $26 $4f
	jp Jump_005_6862                                 ; $685f: $c3 $62 $68


Jump_005_6862:
	ld hl, $c16f                                     ; $6862: $21 $6f $c1
	ld a, [$c15c]                                    ; $6865: $fa $5c $c1
	cp [hl]                                          ; $6868: $be
	jr z, jr_005_686f                                ; $6869: $28 $04

	ld [hl], a                                       ; $686b: $77
	call Call_005_6883                               ; $686c: $cd $83 $68

jr_005_686f:
	ld hl, $c16d                                     ; $686f: $21 $6d $c1
	ld a, [$c15c]                                    ; $6872: $fa $5c $c1
	cp [hl]                                          ; $6875: $be
	jr z, jr_005_6883                                ; $6876: $28 $0b

	ld hl, $c16e                                     ; $6878: $21 $6e $c1
	dec [hl]                                         ; $687b: $35
	ret nz                                           ; $687c: $c0

	ld [$c16d], a                                    ; $687d: $ea $6d $c1
	jp Jump_005_6889                                 ; $6880: $c3 $89 $68


Call_005_6883:
jr_005_6883:
	ld a, $1e                                        ; $6883: $3e $1e
	ld [$c16e], a                                    ; $6885: $ea $6e $c1
	ret                                              ; $6888: $c9


Call_005_6889:
Jump_005_6889:
	ld hl, $a17d                                     ; $6889: $21 $7d $a1
	ld de, $d33f                                     ; $688c: $11 $3f $d3
	call Call_005_6903                               ; $688f: $cd $03 $69
	ld hl, $a18e                                     ; $6892: $21 $8e $a1
	ld de, $d341                                     ; $6895: $11 $41 $d3
	call Call_005_6903                               ; $6898: $cd $03 $69
	ld hl, $a19f                                     ; $689b: $21 $9f $a1
	ld de, $d343                                     ; $689e: $11 $43 $d3
	call Call_005_6903                               ; $68a1: $cd $03 $69
	ld a, [$c16d]                                    ; $68a4: $fa $6d $c1
	cp $05                                           ; $68a7: $fe $05
	jr c, jr_005_68b7                                ; $68a9: $38 $0c

	ld a, $00                                        ; $68ab: $3e $00
	ld [$d7f9], a                                    ; $68ad: $ea $f9 $d7
	ld a, $00                                        ; $68b0: $3e $00
	ld [$d7fa], a                                    ; $68b2: $ea $fa $d7
	jr jr_005_68ba                                   ; $68b5: $18 $03

jr_005_68b7:
	call Call_005_4ebb                               ; $68b7: $cd $bb $4e

jr_005_68ba:
	ld hl, $5c01                                     ; $68ba: $21 $01 $5c
	call Func_1ceb                                       ; $68bd: $cd $eb $1c
	ld b, $1e                                        ; $68c0: $06 $1e
	ld hl, $792d                                     ; $68c2: $21 $2d $79
	call Func_1c32                                       ; $68c5: $cd $32 $1c
	ld hl, $7c03                                     ; $68c8: $21 $03 $7c
	call Func_1ceb                                       ; $68cb: $cd $eb $1c
	ld b, $1e                                        ; $68ce: $06 $1e
	ld hl, $793b                                     ; $68d0: $21 $3b $79
	call Func_1c32                                       ; $68d3: $cd $32 $1c
	ld a, [$c16d]                                    ; $68d6: $fa $6d $c1
	cp $05                                           ; $68d9: $fe $05
	jr nc, jr_005_68f4                               ; $68db: $30 $17

	call Call_005_4d2d                               ; $68dd: $cd $2d $4d
	ld a, [hl]                                       ; $68e0: $7e
	ld hl, $a1b0                                     ; $68e1: $21 $b0 $a1
	rst AddAOntoHL                                          ; $68e4: $ef
	ld a, [hl]                                       ; $68e5: $7e
	cp $02                                           ; $68e6: $fe $02
	jr c, jr_005_68f4                                ; $68e8: $38 $0a

	ld a, $02                                        ; $68ea: $3e $02
	ld [$d7f9], a                                    ; $68ec: $ea $f9 $d7
	ld a, $03                                        ; $68ef: $3e $03
	ld [$d7fa], a                                    ; $68f1: $ea $fa $d7

jr_005_68f4:
	ld hl, $7c01                                     ; $68f4: $21 $01 $7c
	call Func_1ceb                                       ; $68f7: $cd $eb $1c
	ld b, $1e                                        ; $68fa: $06 $1e
	ld hl, $7934                                     ; $68fc: $21 $34 $79
	call Func_1c32                                       ; $68ff: $cd $32 $1c
	ret                                              ; $6902: $c9


Call_005_6903:
	ld a, [$c16d]                                    ; $6903: $fa $6d $c1
	cp $05                                           ; $6906: $fe $05
	jr c, jr_005_690d                                ; $6908: $38 $03

	xor a                                            ; $690a: $af
	jr jr_005_6917                                   ; $690b: $18 $0a

jr_005_690d:
	push de                                          ; $690d: $d5
	push hl                                          ; $690e: $e5
	call Call_005_4d2d                               ; $690f: $cd $2d $4d
	ld a, [hl]                                       ; $6912: $7e
	pop hl                                           ; $6913: $e1
	pop de                                           ; $6914: $d1
	rst AddAOntoHL                                          ; $6915: $ef
	ld a, [hl]                                       ; $6916: $7e

jr_005_6917:
	ld [de], a                                       ; $6917: $12
	inc de                                           ; $6918: $13
	xor a                                            ; $6919: $af
	ld [de], a                                       ; $691a: $12
	ret                                              ; $691b: $c9


Call_005_691c:
	ld hl, $8807                                     ; $691c: $21 $07 $88
	call Func_1ceb                                       ; $691f: $cd $eb $1c
	ld b, $1e                                        ; $6922: $06 $1e
	ld hl, $7943                                     ; $6924: $21 $43 $79
	call Func_1c32                                       ; $6927: $cd $32 $1c
	ld hl, $9007                                     ; $692a: $21 $07 $90
	call Func_1ceb                                       ; $692d: $cd $eb $1c
	ld a, [$c160]                                    ; $6930: $fa $60 $c1
	ld e, a                                          ; $6933: $5f
	ld d, $00                                        ; $6934: $16 $00
	call Call_005_5573                               ; $6936: $cd $73 $55
	ld hl, $8007                                     ; $6939: $21 $07 $80
	call Func_1ceb                                       ; $693c: $cd $eb $1c
	ld a, [$c161]                                    ; $693f: $fa $61 $c1
	ld e, a                                          ; $6942: $5f
	ld d, $00                                        ; $6943: $16 $00
	call Call_005_5573                               ; $6945: $cd $73 $55
	ret                                              ; $6948: $c9


	ld a, [$c112]                                    ; $6949: $fa $12 $c1
	ld e, a                                          ; $694c: $5f
	ld a, [$c113]                                    ; $694d: $fa $13 $c1
	ld d, a                                          ; $6950: $57
	call wCpHLtoDE                                       ; $6951: $cd $80 $ce
	ret z                                            ; $6954: $c8

	ld a, l                                          ; $6955: $7d
	ld [$c112], a                                    ; $6956: $ea $12 $c1
	ld a, h                                          ; $6959: $7c
	ld [$c113], a                                    ; $695a: $ea $13 $c1
	ld a, [$c111]                                    ; $695d: $fa $11 $c1
	and a                                            ; $6960: $a7
	ret z                                            ; $6961: $c8

	push hl                                          ; $6962: $e5
	ld hl, $6c9c                                     ; $6963: $21 $9c $6c
	call Call_005_69c9                               ; $6966: $cd $c9 $69
	pop hl                                           ; $6969: $e1
	call $0ab5                                       ; $696a: $cd $b5 $0a
	call $0911                                       ; $696d: $cd $11 $09
	ld hl, $6cac                                     ; $6970: $21 $ac $6c
	call Call_005_69c9                               ; $6973: $cd $c9 $69
	ld hl, $6c4c                                     ; $6976: $21 $4c $6c
	jp Jump_005_69c9                                 ; $6979: $c3 $c9 $69


	ld bc, $003c                                     ; $697c: $01 $3c $00
	call Call_005_6a54                               ; $697f: $cd $54 $6a
	call Call_005_6a08                               ; $6982: $cd $08 $6a
	ret nc                                           ; $6985: $d0

	ld a, $01                                        ; $6986: $3e $01
	ld [$c111], a                                    ; $6988: $ea $11 $c1
	call Call_005_6b25                               ; $698b: $cd $25 $6b
	ld hl, $6c9c                                     ; $698e: $21 $9c $6c
	call Call_005_69c9                               ; $6991: $cd $c9 $69
	ld hl, $6b8c                                     ; $6994: $21 $8c $6b
	call Call_005_69c9                               ; $6997: $cd $c9 $69
	call Call_005_69c9                               ; $699a: $cd $c9 $69
	call Call_005_69c9                               ; $699d: $cd $c9 $69
	call Call_005_69c9                               ; $69a0: $cd $c9 $69
	call Call_005_69c9                               ; $69a3: $cd $c9 $69
	call Call_005_69c9                               ; $69a6: $cd $c9 $69
	call Call_005_69c9                               ; $69a9: $cd $c9 $69
	call Call_005_69c9                               ; $69ac: $cd $c9 $69
	ld hl, $6b6a                                     ; $69af: $21 $6a $6b
	ld a, l                                          ; $69b2: $7d
	ld [$c112], a                                    ; $69b3: $ea $12 $c1
	ld a, h                                          ; $69b6: $7c
	ld [$c113], a                                    ; $69b7: $ea $13 $c1
	call $0ab5                                       ; $69ba: $cd $b5 $0a
	call $0911                                       ; $69bd: $cd $11 $09
	ld hl, $6cac                                     ; $69c0: $21 $ac $6c
	call Call_005_69c9                               ; $69c3: $cd $c9 $69
	ld hl, $6c4c                                     ; $69c6: $21 $4c $6c

Call_005_69c9:
Jump_005_69c9:
	call Call_005_69d5                               ; $69c9: $cd $d5 $69
	push hl                                          ; $69cc: $e5
	ld bc, $0008                                     ; $69cd: $01 $08 $00
	call Call_005_6a54                               ; $69d0: $cd $54 $6a
	pop hl                                           ; $69d3: $e1
	ret                                              ; $69d4: $c9


Call_005_69d5:
	ld a, [hl]                                       ; $69d5: $7e
	and $07                                          ; $69d6: $e6 $07
	ret z                                            ; $69d8: $c8

	ld b, a                                          ; $69d9: $47
	ld c, $00                                        ; $69da: $0e $00

jr_005_69dc:
	push bc                                          ; $69dc: $c5
	ld a, $00                                        ; $69dd: $3e $00
	ldh [c], a                                       ; $69df: $e2
	ld a, $30                                        ; $69e0: $3e $30
	ldh [c], a                                       ; $69e2: $e2
	ld b, $10                                        ; $69e3: $06 $10

jr_005_69e5:
	ld e, $08                                        ; $69e5: $1e $08
	ld a, [hl+]                                      ; $69e7: $2a
	ld d, a                                          ; $69e8: $57

jr_005_69e9:
	bit 0, d                                         ; $69e9: $cb $42
	ld a, $10                                        ; $69eb: $3e $10
	jr nz, jr_005_69f1                               ; $69ed: $20 $02

	ld a, $20                                        ; $69ef: $3e $20

jr_005_69f1:
	ldh [c], a                                       ; $69f1: $e2
	ld a, $30                                        ; $69f2: $3e $30
	ldh [c], a                                       ; $69f4: $e2
	rr d                                             ; $69f5: $cb $1a
	dec e                                            ; $69f7: $1d
	jr nz, jr_005_69e9                               ; $69f8: $20 $ef

	dec b                                            ; $69fa: $05
	jr nz, jr_005_69e5                               ; $69fb: $20 $e8

	ld a, $20                                        ; $69fd: $3e $20
	ldh [c], a                                       ; $69ff: $e2
	ld a, $30                                        ; $6a00: $3e $30
	ldh [c], a                                       ; $6a02: $e2
	pop bc                                           ; $6a03: $c1
	dec b                                            ; $6a04: $05
	ret z                                            ; $6a05: $c8

	jr jr_005_69dc                                   ; $6a06: $18 $d4

Call_005_6a08:
	ld hl, $6ccc                                     ; $6a08: $21 $cc $6c
	call Call_005_69c9                               ; $6a0b: $cd $c9 $69
	ldh a, [rP1]                                     ; $6a0e: $f0 $00
	and $03                                          ; $6a10: $e6 $03
	cp $03                                           ; $6a12: $fe $03
	jr nz, jr_005_6a4c                               ; $6a14: $20 $36

	ld a, $20                                        ; $6a16: $3e $20
	ldh [rP1], a                                     ; $6a18: $e0 $00
	ldh a, [rP1]                                     ; $6a1a: $f0 $00
	ldh a, [rP1]                                     ; $6a1c: $f0 $00
	ld a, $30                                        ; $6a1e: $3e $30
	ldh [rP1], a                                     ; $6a20: $e0 $00
	ld a, $10                                        ; $6a22: $3e $10
	ldh [rP1], a                                     ; $6a24: $e0 $00
	ldh a, [rP1]                                     ; $6a26: $f0 $00
	ldh a, [rP1]                                     ; $6a28: $f0 $00
	ldh a, [rP1]                                     ; $6a2a: $f0 $00
	ldh a, [rP1]                                     ; $6a2c: $f0 $00
	ldh a, [rP1]                                     ; $6a2e: $f0 $00
	ldh a, [rP1]                                     ; $6a30: $f0 $00
	ld a, $30                                        ; $6a32: $3e $30
	ldh [rP1], a                                     ; $6a34: $e0 $00
	ldh a, [rP1]                                     ; $6a36: $f0 $00
	ldh a, [rP1]                                     ; $6a38: $f0 $00
	ldh a, [rP1]                                     ; $6a3a: $f0 $00
	ldh a, [rP1]                                     ; $6a3c: $f0 $00
	and $03                                          ; $6a3e: $e6 $03
	cp $03                                           ; $6a40: $fe $03
	jr nz, jr_005_6a4c                               ; $6a42: $20 $08

	ld hl, $6cbc                                     ; $6a44: $21 $bc $6c
	call Call_005_69c9                               ; $6a47: $cd $c9 $69
	sub a                                            ; $6a4a: $97
	ret                                              ; $6a4b: $c9


jr_005_6a4c:
	ld hl, $6cbc                                     ; $6a4c: $21 $bc $6c
	call Call_005_69c9                               ; $6a4f: $cd $c9 $69
	scf                                              ; $6a52: $37
	ret                                              ; $6a53: $c9


Call_005_6a54:
jr_005_6a54:
	ld de, $06d6                                     ; $6a54: $11 $d6 $06

jr_005_6a57:
	nop                                              ; $6a57: $00
	nop                                              ; $6a58: $00
	nop                                              ; $6a59: $00
	dec de                                           ; $6a5a: $1b
	ld a, d                                          ; $6a5b: $7a
	or e                                             ; $6a5c: $b3
	jr nz, jr_005_6a57                               ; $6a5d: $20 $f8

	dec bc                                           ; $6a5f: $0b
	ld a, b                                          ; $6a60: $78
	or c                                             ; $6a61: $b1
	jr nz, jr_005_6a54                               ; $6a62: $20 $f0

	ret                                              ; $6a64: $c9


Call_005_6a65:
	push af                                          ; $6a65: $f5
	push bc                                          ; $6a66: $c5
	push de                                          ; $6a67: $d5
	push hl                                          ; $6a68: $e5
	call $0989                                       ; $6a69: $cd $89 $09
	xor a                                            ; $6a6c: $af
	ldh [rSCX], a                                    ; $6a6d: $e0 $43
	ldh [rSCY], a                                    ; $6a6f: $e0 $42
	ld hl, $9800                                     ; $6a71: $21 $00 $98
	ld de, $000c                                     ; $6a74: $11 $0c $00
	ld a, $80                                        ; $6a77: $3e $80
	ld c, $0d                                        ; $6a79: $0e $0d

jr_005_6a7b:
	ld b, $14                                        ; $6a7b: $06 $14

jr_005_6a7d:
	ld [hl+], a                                      ; $6a7d: $22
	inc a                                            ; $6a7e: $3c
	dec b                                            ; $6a7f: $05
	jr nz, jr_005_6a7d                               ; $6a80: $20 $fb

	add hl, de                                       ; $6a82: $19
	dec c                                            ; $6a83: $0d
	jr nz, jr_005_6a7b                               ; $6a84: $20 $f5

	call $0971                                       ; $6a86: $cd $71 $09
	pop hl                                           ; $6a89: $e1
	pop de                                           ; $6a8a: $d1
	pop bc                                           ; $6a8b: $c1
	pop af                                           ; $6a8c: $f1
	ret                                              ; $6a8d: $c9


	ld a, [$c111]                                    ; $6a8e: $fa $11 $c1
	or a                                             ; $6a91: $b7
	ret z                                            ; $6a92: $c8

	di                                               ; $6a93: $f3
	push hl                                          ; $6a94: $e5
	call Call_005_6b25                               ; $6a95: $cd $25 $6b
	ld hl, $6c9c                                     ; $6a98: $21 $9c $6c
	call Call_005_69c9                               ; $6a9b: $cd $c9 $69
	call Call_005_6a65                               ; $6a9e: $cd $65 $6a
	pop hl                                           ; $6aa1: $e1
	ld a, [hl+]                                      ; $6aa2: $2a
	ld c, a                                          ; $6aa3: $4f
	ld a, [hl+]                                      ; $6aa4: $2a
	push hl                                          ; $6aa5: $e5
	ld h, a                                          ; $6aa6: $67
	ld l, c                                          ; $6aa7: $69
	call $0ab5                                       ; $6aa8: $cd $b5 $0a
	pop hl                                           ; $6aab: $e1
	ld a, [hl+]                                      ; $6aac: $2a
	ld c, a                                          ; $6aad: $4f
	ld a, [hl+]                                      ; $6aae: $2a
	ld h, a                                          ; $6aaf: $67
	ld l, c                                          ; $6ab0: $69
	call Call_005_69c9                               ; $6ab1: $cd $c9 $69
	ld hl, rIE                                     ; $6ab4: $21 $ff $ff
	set 0, [hl]                                      ; $6ab7: $cb $c6
	set 1, [hl]                                      ; $6ab9: $cb $ce
	set 2, [hl]                                      ; $6abb: $cb $d6
	reti                                             ; $6abd: $d9


	ld a, [$c111]                                    ; $6abe: $fa $11 $c1
	or a                                             ; $6ac1: $b7
	ret z                                            ; $6ac2: $c8

	di                                               ; $6ac3: $f3
	push hl                                          ; $6ac4: $e5
	call Call_005_6b25                               ; $6ac5: $cd $25 $6b
	ld hl, $6c9c                                     ; $6ac8: $21 $9c $6c
	call Call_005_69c9                               ; $6acb: $cd $c9 $69
	call Call_005_6a65                               ; $6ace: $cd $65 $6a
	pop hl                                           ; $6ad1: $e1
	ld a, [hl+]                                      ; $6ad2: $2a
	ld c, a                                          ; $6ad3: $4f
	ld a, [hl+]                                      ; $6ad4: $2a
	push hl                                          ; $6ad5: $e5
	ld h, a                                          ; $6ad6: $67
	ld l, c                                          ; $6ad7: $69
	call $0ab5                                       ; $6ad8: $cd $b5 $0a

jr_005_6adb:
	call $0911                                       ; $6adb: $cd $11 $09
	pop hl                                           ; $6ade: $e1
	ld a, [hl+]                                      ; $6adf: $2a
	ld c, a                                          ; $6ae0: $4f
	ld a, [hl+]                                      ; $6ae1: $2a
	ld h, a                                          ; $6ae2: $67
	ld l, c                                          ; $6ae3: $69
	call Call_005_69c9                               ; $6ae4: $cd $c9 $69
	ld hl, rIE                                     ; $6ae7: $21 $ff $ff
	set 0, [hl]                                      ; $6aea: $cb $c6
	set 1, [hl]                                      ; $6aec: $cb $ce
	set 2, [hl]                                      ; $6aee: $cb $d6
	ei                                               ; $6af0: $fb
	ld hl, $6c2c                                     ; $6af1: $21 $2c $6c
	jp Jump_005_69c9                                 ; $6af4: $c3 $c9 $69


	ld a, [$c111]                                    ; $6af7: $fa $11 $c1
	or a                                             ; $6afa: $b7
	ret z                                            ; $6afb: $c8

	push hl                                          ; $6afc: $e5
	ld hl, $6c9c                                     ; $6afd: $21 $9c $6c
	call Call_005_69c9                               ; $6b00: $cd $c9 $69
	pop hl                                           ; $6b03: $e1
	call Call_005_69c9                               ; $6b04: $cd $c9 $69
	ld hl, $6c2c                                     ; $6b07: $21 $2c $6c
	jp Jump_005_69c9                                 ; $6b0a: $c3 $c9 $69


	ld a, [$c111]                                    ; $6b0d: $fa $11 $c1
	or a                                             ; $6b10: $b7
	ret z                                            ; $6b11: $c8

	push hl                                          ; $6b12: $e5
	ld hl, $6c9c                                     ; $6b13: $21 $9c $6c
	call Call_005_69c9                               ; $6b16: $cd $c9 $69
	pop hl                                           ; $6b19: $e1
	jp Jump_005_69c9                                 ; $6b1a: $c3 $c9 $69


	ld a, [$c111]                                    ; $6b1d: $fa $11 $c1
	or a                                             ; $6b20: $b7
	ret z                                            ; $6b21: $c8

	jp Jump_005_69c9                                 ; $6b22: $c3 $c9 $69


Call_005_6b25:
	call $09d3                                       ; $6b25: $cd $d3 $09
	ld hl, rIF                                     ; $6b28: $21 $0f $ff
	res 0, [hl]                                      ; $6b2b: $cb $86
	res 1, [hl]                                      ; $6b2d: $cb $8e

jr_005_6b2f:
	res 2, [hl]                                      ; $6b2f: $cb $96
	ld hl, rIE                                     ; $6b31: $21 $ff $ff

jr_005_6b34:
	res 0, [hl]                                      ; $6b34: $cb $86
	res 1, [hl]                                      ; $6b36: $cb $8e
	res 2, [hl]                                      ; $6b38: $cb $96
	xor a                                            ; $6b3a: $af
	call $068e                                       ; $6b3b: $cd $8e $06
	xor a                                            ; $6b3e: $af
	ldh [rSCX], a                                    ; $6b3f: $e0 $43
	ldh [rSCY], a                                    ; $6b41: $e0 $42
	ld hl, $ff4a                                     ; $6b43: $21 $4a $ff
	ld [hl], $90                                     ; $6b46: $36 $90
	inc l                                            ; $6b48: $2c
	ld [hl], $07                                     ; $6b49: $36 $07
	ret                                              ; $6b4b: $c9


	cp $00                                           ; $6b4c: $fe $00
	jr nz, jr_005_6b34                               ; $6b4e: $20 $e4

	ld e, [hl]                                       ; $6b50: $5e
	inc b                                            ; $6b51: $04
	jr nz, jr_005_6bd1                               ; $6b52: $20 $7d

	ld h, d                                          ; $6b54: $62
	jr nz, jr_005_6adb                               ; $6b55: $20 $84

	ld e, [hl]                                       ; $6b57: $5e
	rst $38                                          ; $6b58: $ff
	cp $00                                           ; $6b59: $fe $00
	jr nz, jr_005_6b84                               ; $6b5b: $20 $27

	ld h, h                                          ; $6b5d: $64
	ld bc, $0820                                     ; $6b5e: $01 $20 $08
	ld l, l                                          ; $6b61: $6d
	inc b                                            ; $6b62: $04
	jr nz, jr_005_6bc7                               ; $6b63: $20 $62

	ld [hl], e                                       ; $6b65: $73
	jr nz, jr_005_6b2f                               ; $6b66: $20 $c7

	ld h, e                                          ; $6b68: $63
	rst $38                                          ; $6b69: $ff
	cp $00                                           ; $6b6a: $fe $00
	ld a, [hl+]                                      ; $6b6c: $2a
	ld sp, hl                                        ; $6b6d: $f9
	ld [hl], d                                       ; $6b6e: $72
	ld bc, $d220                                     ; $6b6f: $01 $20 $d2
	ld a, b                                          ; $6b72: $78
	inc b                                            ; $6b73: $04
	jr nz, @-$1a                                     ; $6b74: $20 $e4

	ld [hl], l                                       ; $6b76: $75
	ld a, [hl+]                                      ; $6b77: $2a
	sbc c                                            ; $6b78: $99
	ld [hl], d                                       ; $6b79: $72
	rst $38                                          ; $6b7a: $ff
	cp $00                                           ; $6b7b: $fe $00
	dec d                                            ; $6b7d: $15
	ld a, e                                          ; $6b7e: $7b
	ld l, c                                          ; $6b7f: $69
	ld bc, $1115                                     ; $6b80: $01 $15 $11
	ld [hl], e                                       ; $6b83: $73

jr_005_6b84:
	inc b                                            ; $6b84: $04
	rra                                              ; $6b85: $1f
	ld b, l                                          ; $6b86: $45
	ld [hl], e                                       ; $6b87: $73
	rra                                              ; $6b88: $1f
	or d                                             ; $6b89: $b2
	halt                                             ; $6b8a: $76
	rst $38                                          ; $6b8b: $ff
	ld a, c                                          ; $6b8c: $79
	ld e, l                                          ; $6b8d: $5d
	ld [$0b00], sp                                   ; $6b8e: $08 $00 $0b
	adc h                                            ; $6b91: $8c
	ret nc                                           ; $6b92: $d0

	db $f4                                           ; $6b93: $f4
	ld h, b                                          ; $6b94: $60
	nop                                              ; $6b95: $00
	nop                                              ; $6b96: $00
	nop                                              ; $6b97: $00
	nop                                              ; $6b98: $00
	nop                                              ; $6b99: $00
	nop                                              ; $6b9a: $00
	nop                                              ; $6b9b: $00
	ld a, c                                          ; $6b9c: $79
	ld d, d                                          ; $6b9d: $52
	ld [$0b00], sp                                   ; $6b9e: $08 $00 $0b
	xor c                                            ; $6ba1: $a9
	rst SubAFromBC                                          ; $6ba2: $e7
	sbc a                                            ; $6ba3: $9f
	ld bc, $7ec0                                     ; $6ba4: $01 $c0 $7e
	add sp, -$18                                     ; $6ba7: $e8 $e8
	add sp, -$18                                     ; $6ba9: $e8 $e8
	ldh [$79], a                                     ; $6bab: $e0 $79
	ld b, a                                          ; $6bad: $47
	ld [$0b00], sp                                   ; $6bae: $08 $00 $0b
	call nz, $16d0                                   ; $6bb1: $c4 $d0 $16
	and l                                            ; $6bb4: $a5
	set 1, c                                         ; $6bb5: $cb $c9
	dec b                                            ; $6bb7: $05
	ret nc                                           ; $6bb8: $d0

	db $10                                           ; $6bb9: $10
	and d                                            ; $6bba: $a2
	jr z, jr_005_6c36                                ; $6bbb: $28 $79

	inc a                                            ; $6bbd: $3c
	ld [$0b00], sp                                   ; $6bbe: $08 $00 $0b
	ldh a, [rAUD1ENV]                                ; $6bc1: $f0 $12
	and l                                            ; $6bc3: $a5
	ret                                              ; $6bc4: $c9


	ret                                              ; $6bc5: $c9


	ret z                                            ; $6bc6: $c8

jr_005_6bc7:
	ret nc                                           ; $6bc7: $d0

	inc e                                            ; $6bc8: $1c
	and l                                            ; $6bc9: $a5
	jp z, Jump_005_79c9                              ; $6bca: $ca $c9 $79

	ld sp, $0008                                     ; $6bcd: $31 $08 $00
	dec bc                                           ; $6bd0: $0b

jr_005_6bd1:
	inc c                                            ; $6bd1: $0c
	and l                                            ; $6bd2: $a5
	jp z, Jump_005_7ec9                              ; $6bd3: $ca $c9 $7e

	ret nc                                           ; $6bd6: $d0

	ld b, $a5                                        ; $6bd7: $06 $a5
	set 1, c                                         ; $6bd9: $cb $c9
	ld a, [hl]                                       ; $6bdb: $7e
	ld a, c                                          ; $6bdc: $79
	ld h, $08                                        ; $6bdd: $26 $08
	nop                                              ; $6bdf: $00
	dec bc                                           ; $6be0: $0b
	add hl, sp                                       ; $6be1: $39
	call $0c48                                       ; $6be2: $cd $48 $0c
	ret nc                                           ; $6be5: $d0

	inc [hl]                                         ; $6be6: $34
	and l                                            ; $6be7: $a5
	ret                                              ; $6be8: $c9


	ret                                              ; $6be9: $c9


	add b                                            ; $6bea: $80
	ret nc                                           ; $6beb: $d0

	ld a, c                                          ; $6bec: $79
	dec de                                           ; $6bed: $1b
	ld [$0b00], sp                                   ; $6bee: $08 $00 $0b
	ld [$eaea], a                                    ; $6bf1: $ea $ea $ea
	ld [$a9ea], a                                    ; $6bf4: $ea $ea $a9
	ld bc, $4fcd                                     ; $6bf7: $01 $cd $4f
	inc c                                            ; $6bfa: $0c
	ret nc                                           ; $6bfb: $d0

	ld a, c                                          ; $6bfc: $79
	db $10                                           ; $6bfd: $10
	ld [$0b00], sp                                   ; $6bfe: $08 $00 $0b
	ld c, h                                          ; $6c01: $4c
	jr nz, @+$0a                                     ; $6c02: $20 $08

	ld [$eaea], a                                    ; $6c04: $ea $ea $ea
	ld [$60ea], a                                    ; $6c07: $ea $ea $60
	ld [$01ea], a                                    ; $6c0a: $ea $ea $01
	rst $38                                          ; $6c0d: $ff
	ld a, a                                          ; $6c0e: $7f
	rst $38                                          ; $6c0f: $ff
	ld a, a                                          ; $6c10: $7f
	rst $38                                          ; $6c11: $ff
	ld a, a                                          ; $6c12: $7f
	rst $38                                          ; $6c13: $ff
	ld a, a                                          ; $6c14: $7f
	rst $38                                          ; $6c15: $ff
	ld a, a                                          ; $6c16: $7f
	rst $38                                          ; $6c17: $ff
	ld a, a                                          ; $6c18: $7f
	rst $38                                          ; $6c19: $ff
	ld a, a                                          ; $6c1a: $7f
	nop                                              ; $6c1b: $00
	ld bc, $7fff                                     ; $6c1c: $01 $ff $7f
	jr jr_005_6c84                                   ; $6c1f: $18 $63

	adc h                                            ; $6c21: $8c
	ld sp, $0000                                     ; $6c22: $31 $00 $00
	jr jr_005_6c8a                                   ; $6c25: $18 $63

	adc h                                            ; $6c27: $8c
	ld sp, $0000                                     ; $6c28: $31 $00 $00
	nop                                              ; $6c2b: $00
	ld sp, $0040                                     ; $6c2c: $31 $40 $00
	nop                                              ; $6c2f: $00
	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	nop                                              ; $6c32: $00
	nop                                              ; $6c33: $00
	nop                                              ; $6c34: $00
	nop                                              ; $6c35: $00

jr_005_6c36:
	nop                                              ; $6c36: $00
	nop                                              ; $6c37: $00
	nop                                              ; $6c38: $00
	nop                                              ; $6c39: $00
	nop                                              ; $6c3a: $00
	nop                                              ; $6c3b: $00
	ld e, c                                          ; $6c3c: $59
	nop                                              ; $6c3d: $00
	nop                                              ; $6c3e: $00
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	nop                                              ; $6c42: $00
	nop                                              ; $6c43: $00
	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	nop                                              ; $6c46: $00
	nop                                              ; $6c47: $00
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	ld [hl], c                                       ; $6c4c: $71
	ld [bc], a                                       ; $6c4d: $02
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	nop                                              ; $6c56: $00
	nop                                              ; $6c57: $00
	nop                                              ; $6c58: $00
	nop                                              ; $6c59: $00
	nop                                              ; $6c5a: $00
	nop                                              ; $6c5b: $00
	sbc c                                            ; $6c5c: $99
	nop                                              ; $6c5d: $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	nop                                              ; $6c61: $00
	nop                                              ; $6c62: $00
	nop                                              ; $6c63: $00
	nop                                              ; $6c64: $00
	nop                                              ; $6c65: $00
	nop                                              ; $6c66: $00
	nop                                              ; $6c67: $00
	nop                                              ; $6c68: $00
	nop                                              ; $6c69: $00
	nop                                              ; $6c6a: $00
	nop                                              ; $6c6b: $00
	sbc c                                            ; $6c6c: $99
	ld bc, $0000                                     ; $6c6d: $01 $00 $00
	nop                                              ; $6c70: $00
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	nop                                              ; $6c73: $00
	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	and c                                            ; $6c7c: $a1
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00

jr_005_6c84:
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	nop                                              ; $6c86: $00
	nop                                              ; $6c87: $00
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00

jr_005_6c8a:
	nop                                              ; $6c8a: $00
	nop                                              ; $6c8b: $00
	xor c                                            ; $6c8c: $a9
	nop                                              ; $6c8d: $00
	nop                                              ; $6c8e: $00
	nop                                              ; $6c8f: $00
	nop                                              ; $6c90: $00
	nop                                              ; $6c91: $00
	nop                                              ; $6c92: $00
	nop                                              ; $6c93: $00
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	nop                                              ; $6c96: $00
	nop                                              ; $6c97: $00
	nop                                              ; $6c98: $00
	nop                                              ; $6c99: $00
	nop                                              ; $6c9a: $00
	nop                                              ; $6c9b: $00
	cp c                                             ; $6c9c: $b9
	ld bc, $0000                                     ; $6c9d: $01 $00 $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	nop                                              ; $6ca2: $00
	nop                                              ; $6ca3: $00
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	nop                                              ; $6ca6: $00
	nop                                              ; $6ca7: $00
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	nop                                              ; $6caa: $00
	nop                                              ; $6cab: $00
	cp c                                             ; $6cac: $b9
	nop                                              ; $6cad: $00
	nop                                              ; $6cae: $00
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	nop                                              ; $6cb6: $00
	nop                                              ; $6cb7: $00
	nop                                              ; $6cb8: $00
	nop                                              ; $6cb9: $00
	nop                                              ; $6cba: $00
	nop                                              ; $6cbb: $00
	adc c                                            ; $6cbc: $89
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	nop                                              ; $6cc0: $00
	nop                                              ; $6cc1: $00
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	nop                                              ; $6cc4: $00
	nop                                              ; $6cc5: $00
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	adc c                                            ; $6ccc: $89
	ld bc, $0000                                     ; $6ccd: $01 $00 $00
	nop                                              ; $6cd0: $00
	nop                                              ; $6cd1: $00
	nop                                              ; $6cd2: $00
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	nop                                              ; $6cd6: $00
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	nop                                              ; $6cd9: $00
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	rst $38                                          ; $6cdc: $ff
	rst $38                                          ; $6cdd: $ff
	rst $38                                          ; $6cde: $ff
	rst $38                                          ; $6cdf: $ff
	rst $38                                          ; $6ce0: $ff
	rst $38                                          ; $6ce1: $ff
	rst $38                                          ; $6ce2: $ff
	rst $38                                          ; $6ce3: $ff
	rst $38                                          ; $6ce4: $ff
	rst $38                                          ; $6ce5: $ff
	rst $38                                          ; $6ce6: $ff
	rst $38                                          ; $6ce7: $ff
	rst $38                                          ; $6ce8: $ff
	rst $38                                          ; $6ce9: $ff
	rst $38                                          ; $6cea: $ff
	rst $38                                          ; $6ceb: $ff
	rst $38                                          ; $6cec: $ff
	rst $38                                          ; $6ced: $ff
	rst $38                                          ; $6cee: $ff
	rst $38                                          ; $6cef: $ff
	rst $38                                          ; $6cf0: $ff
	rst $38                                          ; $6cf1: $ff
	rst $38                                          ; $6cf2: $ff
	rst $38                                          ; $6cf3: $ff
	rst $38                                          ; $6cf4: $ff
	rst $38                                          ; $6cf5: $ff
	rst $38                                          ; $6cf6: $ff
	rst $38                                          ; $6cf7: $ff
	rst $38                                          ; $6cf8: $ff
	rst $38                                          ; $6cf9: $ff
	rst $38                                          ; $6cfa: $ff
	rst $38                                          ; $6cfb: $ff
	rst $38                                          ; $6cfc: $ff
	rst $38                                          ; $6cfd: $ff
	rst $38                                          ; $6cfe: $ff
	rst $38                                          ; $6cff: $ff
	rst $38                                          ; $6d00: $ff
	rst $38                                          ; $6d01: $ff
	rst $38                                          ; $6d02: $ff
	rst $38                                          ; $6d03: $ff
	rst $38                                          ; $6d04: $ff
	rst $38                                          ; $6d05: $ff
	rst $38                                          ; $6d06: $ff
	rst $38                                          ; $6d07: $ff
	rst $38                                          ; $6d08: $ff
	rst $38                                          ; $6d09: $ff
	rst $38                                          ; $6d0a: $ff
	rst $38                                          ; $6d0b: $ff
	rst $38                                          ; $6d0c: $ff
	rst $38                                          ; $6d0d: $ff
	rst $38                                          ; $6d0e: $ff
	rst $38                                          ; $6d0f: $ff
	rst $38                                          ; $6d10: $ff
	rst $38                                          ; $6d11: $ff
	rst $38                                          ; $6d12: $ff
	rst $38                                          ; $6d13: $ff
	rst $38                                          ; $6d14: $ff
	rst $38                                          ; $6d15: $ff
	rst $38                                          ; $6d16: $ff
	rst $38                                          ; $6d17: $ff
	rst $38                                          ; $6d18: $ff
	rst $38                                          ; $6d19: $ff
	rst $38                                          ; $6d1a: $ff
	rst $38                                          ; $6d1b: $ff
	rst $38                                          ; $6d1c: $ff
	rst $38                                          ; $6d1d: $ff
	rst $38                                          ; $6d1e: $ff
	rst $38                                          ; $6d1f: $ff
	rst $38                                          ; $6d20: $ff
	rst $38                                          ; $6d21: $ff
	rst $38                                          ; $6d22: $ff
	rst $38                                          ; $6d23: $ff
	rst $38                                          ; $6d24: $ff
	rst $38                                          ; $6d25: $ff
	rst $38                                          ; $6d26: $ff
	rst $38                                          ; $6d27: $ff
	rst $38                                          ; $6d28: $ff
	rst $38                                          ; $6d29: $ff
	rst $38                                          ; $6d2a: $ff
	rst $38                                          ; $6d2b: $ff
	rst $38                                          ; $6d2c: $ff
	rst $38                                          ; $6d2d: $ff
	rst $38                                          ; $6d2e: $ff
	rst $38                                          ; $6d2f: $ff
	rst $38                                          ; $6d30: $ff
	rst $38                                          ; $6d31: $ff
	rst $38                                          ; $6d32: $ff
	rst $38                                          ; $6d33: $ff
	rst $38                                          ; $6d34: $ff
	rst $38                                          ; $6d35: $ff
	rst $38                                          ; $6d36: $ff
	rst $38                                          ; $6d37: $ff
	rst $38                                          ; $6d38: $ff
	rst $38                                          ; $6d39: $ff
	rst $38                                          ; $6d3a: $ff
	rst $38                                          ; $6d3b: $ff
	rst $38                                          ; $6d3c: $ff
	rst $38                                          ; $6d3d: $ff
	rst $38                                          ; $6d3e: $ff
	rst $38                                          ; $6d3f: $ff
	rst $38                                          ; $6d40: $ff
	rst $38                                          ; $6d41: $ff
	rst $38                                          ; $6d42: $ff
	rst $38                                          ; $6d43: $ff
	rst $38                                          ; $6d44: $ff
	rst $38                                          ; $6d45: $ff
	rst $38                                          ; $6d46: $ff
	rst $38                                          ; $6d47: $ff
	rst $38                                          ; $6d48: $ff
	rst $38                                          ; $6d49: $ff
	rst $38                                          ; $6d4a: $ff
	rst $38                                          ; $6d4b: $ff
	rst $38                                          ; $6d4c: $ff
	rst $38                                          ; $6d4d: $ff
	rst $38                                          ; $6d4e: $ff
	rst $38                                          ; $6d4f: $ff
	rst $38                                          ; $6d50: $ff
	rst $38                                          ; $6d51: $ff
	rst $38                                          ; $6d52: $ff
	rst $38                                          ; $6d53: $ff
	rst $38                                          ; $6d54: $ff
	rst $38                                          ; $6d55: $ff
	rst $38                                          ; $6d56: $ff
	rst $38                                          ; $6d57: $ff
	rst $38                                          ; $6d58: $ff
	rst $38                                          ; $6d59: $ff
	rst $38                                          ; $6d5a: $ff
	rst $38                                          ; $6d5b: $ff
	rst $38                                          ; $6d5c: $ff
	rst $38                                          ; $6d5d: $ff
	rst $38                                          ; $6d5e: $ff
	rst $38                                          ; $6d5f: $ff
	rst $38                                          ; $6d60: $ff
	rst $38                                          ; $6d61: $ff
	rst $38                                          ; $6d62: $ff
	rst $38                                          ; $6d63: $ff
	rst $38                                          ; $6d64: $ff
	rst $38                                          ; $6d65: $ff
	rst $38                                          ; $6d66: $ff
	rst $38                                          ; $6d67: $ff
	rst $38                                          ; $6d68: $ff
	rst $38                                          ; $6d69: $ff
	rst $38                                          ; $6d6a: $ff
	rst $38                                          ; $6d6b: $ff
	rst $38                                          ; $6d6c: $ff
	rst $38                                          ; $6d6d: $ff
	rst $38                                          ; $6d6e: $ff
	rst $38                                          ; $6d6f: $ff
	rst $38                                          ; $6d70: $ff
	rst $38                                          ; $6d71: $ff
	rst $38                                          ; $6d72: $ff
	rst $38                                          ; $6d73: $ff
	rst $38                                          ; $6d74: $ff
	rst $38                                          ; $6d75: $ff
	rst $38                                          ; $6d76: $ff
	rst $38                                          ; $6d77: $ff
	rst $38                                          ; $6d78: $ff
	rst $38                                          ; $6d79: $ff
	rst $38                                          ; $6d7a: $ff
	rst $38                                          ; $6d7b: $ff
	rst $38                                          ; $6d7c: $ff
	rst $38                                          ; $6d7d: $ff
	rst $38                                          ; $6d7e: $ff
	rst $38                                          ; $6d7f: $ff
	rst $38                                          ; $6d80: $ff
	rst $38                                          ; $6d81: $ff
	rst $38                                          ; $6d82: $ff
	rst $38                                          ; $6d83: $ff
	rst $38                                          ; $6d84: $ff
	rst $38                                          ; $6d85: $ff
	rst $38                                          ; $6d86: $ff
	rst $38                                          ; $6d87: $ff
	rst $38                                          ; $6d88: $ff
	rst $38                                          ; $6d89: $ff
	rst $38                                          ; $6d8a: $ff
	rst $38                                          ; $6d8b: $ff
	rst $38                                          ; $6d8c: $ff
	rst $38                                          ; $6d8d: $ff
	rst $38                                          ; $6d8e: $ff
	rst $38                                          ; $6d8f: $ff
	rst $38                                          ; $6d90: $ff
	rst $38                                          ; $6d91: $ff
	rst $38                                          ; $6d92: $ff
	rst $38                                          ; $6d93: $ff
	rst $38                                          ; $6d94: $ff
	rst $38                                          ; $6d95: $ff
	rst $38                                          ; $6d96: $ff
	rst $38                                          ; $6d97: $ff
	rst $38                                          ; $6d98: $ff
	rst $38                                          ; $6d99: $ff
	rst $38                                          ; $6d9a: $ff
	rst $38                                          ; $6d9b: $ff
	rst $38                                          ; $6d9c: $ff
	rst $38                                          ; $6d9d: $ff
	rst $38                                          ; $6d9e: $ff
	rst $38                                          ; $6d9f: $ff
	rst $38                                          ; $6da0: $ff
	rst $38                                          ; $6da1: $ff
	rst $38                                          ; $6da2: $ff
	rst $38                                          ; $6da3: $ff
	rst $38                                          ; $6da4: $ff
	rst $38                                          ; $6da5: $ff
	rst $38                                          ; $6da6: $ff
	rst $38                                          ; $6da7: $ff
	rst $38                                          ; $6da8: $ff
	rst $38                                          ; $6da9: $ff
	rst $38                                          ; $6daa: $ff
	rst $38                                          ; $6dab: $ff
	rst $38                                          ; $6dac: $ff
	rst $38                                          ; $6dad: $ff
	rst $38                                          ; $6dae: $ff
	rst $38                                          ; $6daf: $ff
	rst $38                                          ; $6db0: $ff
	rst $38                                          ; $6db1: $ff
	rst $38                                          ; $6db2: $ff
	rst $38                                          ; $6db3: $ff
	rst $38                                          ; $6db4: $ff
	rst $38                                          ; $6db5: $ff
	rst $38                                          ; $6db6: $ff
	rst $38                                          ; $6db7: $ff
	rst $38                                          ; $6db8: $ff
	rst $38                                          ; $6db9: $ff
	rst $38                                          ; $6dba: $ff
	rst $38                                          ; $6dbb: $ff
	rst $38                                          ; $6dbc: $ff
	rst $38                                          ; $6dbd: $ff
	rst $38                                          ; $6dbe: $ff
	rst $38                                          ; $6dbf: $ff
	rst $38                                          ; $6dc0: $ff
	rst $38                                          ; $6dc1: $ff
	rst $38                                          ; $6dc2: $ff
	rst $38                                          ; $6dc3: $ff
	rst $38                                          ; $6dc4: $ff
	rst $38                                          ; $6dc5: $ff
	rst $38                                          ; $6dc6: $ff
	rst $38                                          ; $6dc7: $ff
	rst $38                                          ; $6dc8: $ff
	rst $38                                          ; $6dc9: $ff
	rst $38                                          ; $6dca: $ff
	rst $38                                          ; $6dcb: $ff
	rst $38                                          ; $6dcc: $ff
	rst $38                                          ; $6dcd: $ff
	rst $38                                          ; $6dce: $ff
	rst $38                                          ; $6dcf: $ff
	rst $38                                          ; $6dd0: $ff
	rst $38                                          ; $6dd1: $ff
	rst $38                                          ; $6dd2: $ff
	rst $38                                          ; $6dd3: $ff
	rst $38                                          ; $6dd4: $ff
	rst $38                                          ; $6dd5: $ff
	rst $38                                          ; $6dd6: $ff
	rst $38                                          ; $6dd7: $ff
	rst $38                                          ; $6dd8: $ff
	rst $38                                          ; $6dd9: $ff
	rst $38                                          ; $6dda: $ff
	rst $38                                          ; $6ddb: $ff
	rst $38                                          ; $6ddc: $ff
	rst $38                                          ; $6ddd: $ff
	rst $38                                          ; $6dde: $ff
	rst $38                                          ; $6ddf: $ff
	rst $38                                          ; $6de0: $ff
	rst $38                                          ; $6de1: $ff
	rst $38                                          ; $6de2: $ff
	rst $38                                          ; $6de3: $ff
	rst $38                                          ; $6de4: $ff
	rst $38                                          ; $6de5: $ff
	rst $38                                          ; $6de6: $ff
	rst $38                                          ; $6de7: $ff
	rst $38                                          ; $6de8: $ff
	rst $38                                          ; $6de9: $ff
	rst $38                                          ; $6dea: $ff
	rst $38                                          ; $6deb: $ff
	rst $38                                          ; $6dec: $ff
	rst $38                                          ; $6ded: $ff
	rst $38                                          ; $6dee: $ff
	rst $38                                          ; $6def: $ff
	rst $38                                          ; $6df0: $ff
	rst $38                                          ; $6df1: $ff
	rst $38                                          ; $6df2: $ff
	rst $38                                          ; $6df3: $ff
	rst $38                                          ; $6df4: $ff
	rst $38                                          ; $6df5: $ff
	rst $38                                          ; $6df6: $ff
	rst $38                                          ; $6df7: $ff
	rst $38                                          ; $6df8: $ff
	rst $38                                          ; $6df9: $ff
	rst $38                                          ; $6dfa: $ff
	rst $38                                          ; $6dfb: $ff
	rst $38                                          ; $6dfc: $ff
	rst $38                                          ; $6dfd: $ff
	rst $38                                          ; $6dfe: $ff
	rst $38                                          ; $6dff: $ff
	rst $38                                          ; $6e00: $ff
	rst $38                                          ; $6e01: $ff
	rst $38                                          ; $6e02: $ff
	rst $38                                          ; $6e03: $ff
	rst $38                                          ; $6e04: $ff
	rst $38                                          ; $6e05: $ff
	rst $38                                          ; $6e06: $ff
	rst $38                                          ; $6e07: $ff
	rst $38                                          ; $6e08: $ff
	rst $38                                          ; $6e09: $ff
	rst $38                                          ; $6e0a: $ff
	rst $38                                          ; $6e0b: $ff
	rst $38                                          ; $6e0c: $ff
	rst $38                                          ; $6e0d: $ff
	rst $38                                          ; $6e0e: $ff
	rst $38                                          ; $6e0f: $ff
	rst $38                                          ; $6e10: $ff
	rst $38                                          ; $6e11: $ff
	rst $38                                          ; $6e12: $ff
	rst $38                                          ; $6e13: $ff
	rst $38                                          ; $6e14: $ff
	rst $38                                          ; $6e15: $ff
	rst $38                                          ; $6e16: $ff
	rst $38                                          ; $6e17: $ff
	rst $38                                          ; $6e18: $ff
	rst $38                                          ; $6e19: $ff
	rst $38                                          ; $6e1a: $ff
	rst $38                                          ; $6e1b: $ff
	rst $38                                          ; $6e1c: $ff
	rst $38                                          ; $6e1d: $ff
	rst $38                                          ; $6e1e: $ff
	rst $38                                          ; $6e1f: $ff
	rst $38                                          ; $6e20: $ff
	rst $38                                          ; $6e21: $ff
	rst $38                                          ; $6e22: $ff
	rst $38                                          ; $6e23: $ff
	rst $38                                          ; $6e24: $ff
	rst $38                                          ; $6e25: $ff
	rst $38                                          ; $6e26: $ff
	rst $38                                          ; $6e27: $ff
	rst $38                                          ; $6e28: $ff
	rst $38                                          ; $6e29: $ff
	rst $38                                          ; $6e2a: $ff
	rst $38                                          ; $6e2b: $ff
	rst $38                                          ; $6e2c: $ff
	rst $38                                          ; $6e2d: $ff
	rst $38                                          ; $6e2e: $ff
	rst $38                                          ; $6e2f: $ff
	rst $38                                          ; $6e30: $ff
	rst $38                                          ; $6e31: $ff
	rst $38                                          ; $6e32: $ff
	rst $38                                          ; $6e33: $ff
	rst $38                                          ; $6e34: $ff
	rst $38                                          ; $6e35: $ff
	rst $38                                          ; $6e36: $ff
	rst $38                                          ; $6e37: $ff
	rst $38                                          ; $6e38: $ff
	rst $38                                          ; $6e39: $ff
	rst $38                                          ; $6e3a: $ff
	rst $38                                          ; $6e3b: $ff
	rst $38                                          ; $6e3c: $ff
	rst $38                                          ; $6e3d: $ff
	rst $38                                          ; $6e3e: $ff
	rst $38                                          ; $6e3f: $ff
	rst $38                                          ; $6e40: $ff
	rst $38                                          ; $6e41: $ff
	rst $38                                          ; $6e42: $ff
	rst $38                                          ; $6e43: $ff
	rst $38                                          ; $6e44: $ff
	rst $38                                          ; $6e45: $ff
	rst $38                                          ; $6e46: $ff
	rst $38                                          ; $6e47: $ff
	rst $38                                          ; $6e48: $ff
	rst $38                                          ; $6e49: $ff
	rst $38                                          ; $6e4a: $ff
	rst $38                                          ; $6e4b: $ff
	rst $38                                          ; $6e4c: $ff
	rst $38                                          ; $6e4d: $ff
	rst $38                                          ; $6e4e: $ff
	rst $38                                          ; $6e4f: $ff
	rst $38                                          ; $6e50: $ff
	rst $38                                          ; $6e51: $ff
	rst $38                                          ; $6e52: $ff
	rst $38                                          ; $6e53: $ff
	rst $38                                          ; $6e54: $ff
	rst $38                                          ; $6e55: $ff
	rst $38                                          ; $6e56: $ff
	rst $38                                          ; $6e57: $ff
	rst $38                                          ; $6e58: $ff
	rst $38                                          ; $6e59: $ff
	rst $38                                          ; $6e5a: $ff
	rst $38                                          ; $6e5b: $ff
	rst $38                                          ; $6e5c: $ff
	rst $38                                          ; $6e5d: $ff
	rst $38                                          ; $6e5e: $ff
	rst $38                                          ; $6e5f: $ff
	rst $38                                          ; $6e60: $ff
	rst $38                                          ; $6e61: $ff
	rst $38                                          ; $6e62: $ff
	rst $38                                          ; $6e63: $ff
	rst $38                                          ; $6e64: $ff
	rst $38                                          ; $6e65: $ff
	rst $38                                          ; $6e66: $ff
	rst $38                                          ; $6e67: $ff
	rst $38                                          ; $6e68: $ff
	rst $38                                          ; $6e69: $ff
	rst $38                                          ; $6e6a: $ff
	rst $38                                          ; $6e6b: $ff
	rst $38                                          ; $6e6c: $ff
	rst $38                                          ; $6e6d: $ff
	rst $38                                          ; $6e6e: $ff
	rst $38                                          ; $6e6f: $ff
	rst $38                                          ; $6e70: $ff
	rst $38                                          ; $6e71: $ff
	rst $38                                          ; $6e72: $ff
	rst $38                                          ; $6e73: $ff
	rst $38                                          ; $6e74: $ff
	rst $38                                          ; $6e75: $ff
	rst $38                                          ; $6e76: $ff
	rst $38                                          ; $6e77: $ff
	rst $38                                          ; $6e78: $ff
	rst $38                                          ; $6e79: $ff
	rst $38                                          ; $6e7a: $ff
	rst $38                                          ; $6e7b: $ff
	rst $38                                          ; $6e7c: $ff
	rst $38                                          ; $6e7d: $ff
	rst $38                                          ; $6e7e: $ff
	rst $38                                          ; $6e7f: $ff
	rst $38                                          ; $6e80: $ff
	rst $38                                          ; $6e81: $ff
	rst $38                                          ; $6e82: $ff
	rst $38                                          ; $6e83: $ff
	rst $38                                          ; $6e84: $ff
	rst $38                                          ; $6e85: $ff
	rst $38                                          ; $6e86: $ff
	rst $38                                          ; $6e87: $ff
	rst $38                                          ; $6e88: $ff
	rst $38                                          ; $6e89: $ff
	rst $38                                          ; $6e8a: $ff
	rst $38                                          ; $6e8b: $ff
	rst $38                                          ; $6e8c: $ff
	rst $38                                          ; $6e8d: $ff
	rst $38                                          ; $6e8e: $ff
	rst $38                                          ; $6e8f: $ff
	rst $38                                          ; $6e90: $ff
	rst $38                                          ; $6e91: $ff
	rst $38                                          ; $6e92: $ff
	rst $38                                          ; $6e93: $ff
	rst $38                                          ; $6e94: $ff
	rst $38                                          ; $6e95: $ff
	rst $38                                          ; $6e96: $ff
	rst $38                                          ; $6e97: $ff
	rst $38                                          ; $6e98: $ff
	rst $38                                          ; $6e99: $ff
	rst $38                                          ; $6e9a: $ff
	rst $38                                          ; $6e9b: $ff
	rst $38                                          ; $6e9c: $ff
	rst $38                                          ; $6e9d: $ff
	rst $38                                          ; $6e9e: $ff
	rst $38                                          ; $6e9f: $ff
	rst $38                                          ; $6ea0: $ff
	rst $38                                          ; $6ea1: $ff
	rst $38                                          ; $6ea2: $ff
	rst $38                                          ; $6ea3: $ff
	rst $38                                          ; $6ea4: $ff
	rst $38                                          ; $6ea5: $ff
	rst $38                                          ; $6ea6: $ff
	rst $38                                          ; $6ea7: $ff
	rst $38                                          ; $6ea8: $ff
	rst $38                                          ; $6ea9: $ff
	rst $38                                          ; $6eaa: $ff
	rst $38                                          ; $6eab: $ff
	rst $38                                          ; $6eac: $ff
	rst $38                                          ; $6ead: $ff
	rst $38                                          ; $6eae: $ff
	rst $38                                          ; $6eaf: $ff
	rst $38                                          ; $6eb0: $ff
	rst $38                                          ; $6eb1: $ff
	rst $38                                          ; $6eb2: $ff
	rst $38                                          ; $6eb3: $ff
	rst $38                                          ; $6eb4: $ff
	rst $38                                          ; $6eb5: $ff
	rst $38                                          ; $6eb6: $ff
	rst $38                                          ; $6eb7: $ff
	rst $38                                          ; $6eb8: $ff
	rst $38                                          ; $6eb9: $ff
	rst $38                                          ; $6eba: $ff
	rst $38                                          ; $6ebb: $ff
	rst $38                                          ; $6ebc: $ff
	rst $38                                          ; $6ebd: $ff
	rst $38                                          ; $6ebe: $ff
	rst $38                                          ; $6ebf: $ff
	rst $38                                          ; $6ec0: $ff
	rst $38                                          ; $6ec1: $ff
	rst $38                                          ; $6ec2: $ff
	rst $38                                          ; $6ec3: $ff
	rst $38                                          ; $6ec4: $ff
	rst $38                                          ; $6ec5: $ff
	rst $38                                          ; $6ec6: $ff
	rst $38                                          ; $6ec7: $ff
	rst $38                                          ; $6ec8: $ff
	rst $38                                          ; $6ec9: $ff
	rst $38                                          ; $6eca: $ff
	rst $38                                          ; $6ecb: $ff
	rst $38                                          ; $6ecc: $ff
	rst $38                                          ; $6ecd: $ff
	rst $38                                          ; $6ece: $ff
	rst $38                                          ; $6ecf: $ff
	rst $38                                          ; $6ed0: $ff
	rst $38                                          ; $6ed1: $ff
	rst $38                                          ; $6ed2: $ff
	rst $38                                          ; $6ed3: $ff
	rst $38                                          ; $6ed4: $ff
	rst $38                                          ; $6ed5: $ff
	rst $38                                          ; $6ed6: $ff
	rst $38                                          ; $6ed7: $ff
	rst $38                                          ; $6ed8: $ff
	rst $38                                          ; $6ed9: $ff
	rst $38                                          ; $6eda: $ff
	rst $38                                          ; $6edb: $ff
	rst $38                                          ; $6edc: $ff
	rst $38                                          ; $6edd: $ff
	rst $38                                          ; $6ede: $ff
	rst $38                                          ; $6edf: $ff
	rst $38                                          ; $6ee0: $ff
	rst $38                                          ; $6ee1: $ff
	rst $38                                          ; $6ee2: $ff
	rst $38                                          ; $6ee3: $ff
	rst $38                                          ; $6ee4: $ff
	rst $38                                          ; $6ee5: $ff
	rst $38                                          ; $6ee6: $ff
	rst $38                                          ; $6ee7: $ff
	rst $38                                          ; $6ee8: $ff
	rst $38                                          ; $6ee9: $ff
	rst $38                                          ; $6eea: $ff
	rst $38                                          ; $6eeb: $ff
	rst $38                                          ; $6eec: $ff
	rst $38                                          ; $6eed: $ff
	rst $38                                          ; $6eee: $ff
	rst $38                                          ; $6eef: $ff
	rst $38                                          ; $6ef0: $ff
	rst $38                                          ; $6ef1: $ff
	rst $38                                          ; $6ef2: $ff
	rst $38                                          ; $6ef3: $ff
	rst $38                                          ; $6ef4: $ff
	rst $38                                          ; $6ef5: $ff
	rst $38                                          ; $6ef6: $ff
	rst $38                                          ; $6ef7: $ff
	rst $38                                          ; $6ef8: $ff
	rst $38                                          ; $6ef9: $ff
	rst $38                                          ; $6efa: $ff
	rst $38                                          ; $6efb: $ff
	rst $38                                          ; $6efc: $ff
	rst $38                                          ; $6efd: $ff
	rst $38                                          ; $6efe: $ff
	rst $38                                          ; $6eff: $ff
	rst $38                                          ; $6f00: $ff
	rst $38                                          ; $6f01: $ff
	rst $38                                          ; $6f02: $ff
	rst $38                                          ; $6f03: $ff
	rst $38                                          ; $6f04: $ff
	rst $38                                          ; $6f05: $ff
	rst $38                                          ; $6f06: $ff
	rst $38                                          ; $6f07: $ff
	rst $38                                          ; $6f08: $ff
	rst $38                                          ; $6f09: $ff
	rst $38                                          ; $6f0a: $ff
	rst $38                                          ; $6f0b: $ff
	rst $38                                          ; $6f0c: $ff
	rst $38                                          ; $6f0d: $ff
	rst $38                                          ; $6f0e: $ff
	rst $38                                          ; $6f0f: $ff
	rst $38                                          ; $6f10: $ff
	rst $38                                          ; $6f11: $ff
	rst $38                                          ; $6f12: $ff
	rst $38                                          ; $6f13: $ff
	rst $38                                          ; $6f14: $ff
	rst $38                                          ; $6f15: $ff
	rst $38                                          ; $6f16: $ff
	rst $38                                          ; $6f17: $ff
	rst $38                                          ; $6f18: $ff
	rst $38                                          ; $6f19: $ff
	rst $38                                          ; $6f1a: $ff
	rst $38                                          ; $6f1b: $ff
	rst $38                                          ; $6f1c: $ff
	rst $38                                          ; $6f1d: $ff
	rst $38                                          ; $6f1e: $ff
	rst $38                                          ; $6f1f: $ff
	rst $38                                          ; $6f20: $ff
	rst $38                                          ; $6f21: $ff
	rst $38                                          ; $6f22: $ff
	rst $38                                          ; $6f23: $ff
	rst $38                                          ; $6f24: $ff
	rst $38                                          ; $6f25: $ff
	rst $38                                          ; $6f26: $ff
	rst $38                                          ; $6f27: $ff
	rst $38                                          ; $6f28: $ff
	rst $38                                          ; $6f29: $ff
	rst $38                                          ; $6f2a: $ff
	rst $38                                          ; $6f2b: $ff
	rst $38                                          ; $6f2c: $ff
	rst $38                                          ; $6f2d: $ff
	rst $38                                          ; $6f2e: $ff
	rst $38                                          ; $6f2f: $ff
	rst $38                                          ; $6f30: $ff
	rst $38                                          ; $6f31: $ff
	rst $38                                          ; $6f32: $ff
	rst $38                                          ; $6f33: $ff
	rst $38                                          ; $6f34: $ff
	rst $38                                          ; $6f35: $ff
	rst $38                                          ; $6f36: $ff
	rst $38                                          ; $6f37: $ff
	rst $38                                          ; $6f38: $ff
	rst $38                                          ; $6f39: $ff
	rst $38                                          ; $6f3a: $ff
	rst $38                                          ; $6f3b: $ff
	rst $38                                          ; $6f3c: $ff
	rst $38                                          ; $6f3d: $ff
	rst $38                                          ; $6f3e: $ff
	rst $38                                          ; $6f3f: $ff
	rst $38                                          ; $6f40: $ff
	rst $38                                          ; $6f41: $ff
	rst $38                                          ; $6f42: $ff
	rst $38                                          ; $6f43: $ff
	rst $38                                          ; $6f44: $ff
	rst $38                                          ; $6f45: $ff
	rst $38                                          ; $6f46: $ff
	rst $38                                          ; $6f47: $ff
	rst $38                                          ; $6f48: $ff
	rst $38                                          ; $6f49: $ff
	rst $38                                          ; $6f4a: $ff
	rst $38                                          ; $6f4b: $ff
	rst $38                                          ; $6f4c: $ff
	rst $38                                          ; $6f4d: $ff
	rst $38                                          ; $6f4e: $ff
	rst $38                                          ; $6f4f: $ff
	rst $38                                          ; $6f50: $ff
	rst $38                                          ; $6f51: $ff
	rst $38                                          ; $6f52: $ff
	rst $38                                          ; $6f53: $ff
	rst $38                                          ; $6f54: $ff
	rst $38                                          ; $6f55: $ff
	rst $38                                          ; $6f56: $ff
	rst $38                                          ; $6f57: $ff
	rst $38                                          ; $6f58: $ff
	rst $38                                          ; $6f59: $ff
	rst $38                                          ; $6f5a: $ff
	rst $38                                          ; $6f5b: $ff
	rst $38                                          ; $6f5c: $ff
	rst $38                                          ; $6f5d: $ff
	rst $38                                          ; $6f5e: $ff
	rst $38                                          ; $6f5f: $ff
	rst $38                                          ; $6f60: $ff
	rst $38                                          ; $6f61: $ff
	rst $38                                          ; $6f62: $ff
	rst $38                                          ; $6f63: $ff
	rst $38                                          ; $6f64: $ff
	rst $38                                          ; $6f65: $ff
	rst $38                                          ; $6f66: $ff
	rst $38                                          ; $6f67: $ff
	rst $38                                          ; $6f68: $ff
	rst $38                                          ; $6f69: $ff
	rst $38                                          ; $6f6a: $ff
	rst $38                                          ; $6f6b: $ff
	rst $38                                          ; $6f6c: $ff
	rst $38                                          ; $6f6d: $ff
	rst $38                                          ; $6f6e: $ff
	rst $38                                          ; $6f6f: $ff
	rst $38                                          ; $6f70: $ff
	rst $38                                          ; $6f71: $ff
	rst $38                                          ; $6f72: $ff
	rst $38                                          ; $6f73: $ff
	rst $38                                          ; $6f74: $ff
	rst $38                                          ; $6f75: $ff
	rst $38                                          ; $6f76: $ff
	rst $38                                          ; $6f77: $ff
	rst $38                                          ; $6f78: $ff
	rst $38                                          ; $6f79: $ff
	rst $38                                          ; $6f7a: $ff
	rst $38                                          ; $6f7b: $ff
	rst $38                                          ; $6f7c: $ff
	rst $38                                          ; $6f7d: $ff
	rst $38                                          ; $6f7e: $ff
	rst $38                                          ; $6f7f: $ff
	rst $38                                          ; $6f80: $ff
	rst $38                                          ; $6f81: $ff
	rst $38                                          ; $6f82: $ff
	rst $38                                          ; $6f83: $ff
	rst $38                                          ; $6f84: $ff
	rst $38                                          ; $6f85: $ff
	rst $38                                          ; $6f86: $ff
	rst $38                                          ; $6f87: $ff
	rst $38                                          ; $6f88: $ff
	rst $38                                          ; $6f89: $ff
	rst $38                                          ; $6f8a: $ff
	rst $38                                          ; $6f8b: $ff
	rst $38                                          ; $6f8c: $ff
	rst $38                                          ; $6f8d: $ff
	rst $38                                          ; $6f8e: $ff
	rst $38                                          ; $6f8f: $ff
	rst $38                                          ; $6f90: $ff
	rst $38                                          ; $6f91: $ff
	rst $38                                          ; $6f92: $ff
	rst $38                                          ; $6f93: $ff
	rst $38                                          ; $6f94: $ff
	rst $38                                          ; $6f95: $ff
	rst $38                                          ; $6f96: $ff
	rst $38                                          ; $6f97: $ff
	rst $38                                          ; $6f98: $ff
	rst $38                                          ; $6f99: $ff
	rst $38                                          ; $6f9a: $ff
	rst $38                                          ; $6f9b: $ff
	rst $38                                          ; $6f9c: $ff
	rst $38                                          ; $6f9d: $ff
	rst $38                                          ; $6f9e: $ff
	rst $38                                          ; $6f9f: $ff
	rst $38                                          ; $6fa0: $ff
	rst $38                                          ; $6fa1: $ff
	rst $38                                          ; $6fa2: $ff
	rst $38                                          ; $6fa3: $ff
	rst $38                                          ; $6fa4: $ff
	rst $38                                          ; $6fa5: $ff
	rst $38                                          ; $6fa6: $ff
	rst $38                                          ; $6fa7: $ff
	rst $38                                          ; $6fa8: $ff
	rst $38                                          ; $6fa9: $ff
	rst $38                                          ; $6faa: $ff
	rst $38                                          ; $6fab: $ff
	rst $38                                          ; $6fac: $ff
	rst $38                                          ; $6fad: $ff
	rst $38                                          ; $6fae: $ff
	rst $38                                          ; $6faf: $ff
	rst $38                                          ; $6fb0: $ff
	rst $38                                          ; $6fb1: $ff
	rst $38                                          ; $6fb2: $ff
	rst $38                                          ; $6fb3: $ff
	rst $38                                          ; $6fb4: $ff
	rst $38                                          ; $6fb5: $ff
	rst $38                                          ; $6fb6: $ff
	rst $38                                          ; $6fb7: $ff
	rst $38                                          ; $6fb8: $ff
	rst $38                                          ; $6fb9: $ff
	rst $38                                          ; $6fba: $ff
	rst $38                                          ; $6fbb: $ff
	rst $38                                          ; $6fbc: $ff
	rst $38                                          ; $6fbd: $ff
	rst $38                                          ; $6fbe: $ff
	rst $38                                          ; $6fbf: $ff
	rst $38                                          ; $6fc0: $ff
	rst $38                                          ; $6fc1: $ff
	rst $38                                          ; $6fc2: $ff
	rst $38                                          ; $6fc3: $ff
	rst $38                                          ; $6fc4: $ff
	rst $38                                          ; $6fc5: $ff
	rst $38                                          ; $6fc6: $ff
	rst $38                                          ; $6fc7: $ff
	rst $38                                          ; $6fc8: $ff
	rst $38                                          ; $6fc9: $ff
	rst $38                                          ; $6fca: $ff
	rst $38                                          ; $6fcb: $ff
	rst $38                                          ; $6fcc: $ff
	rst $38                                          ; $6fcd: $ff
	rst $38                                          ; $6fce: $ff
	rst $38                                          ; $6fcf: $ff
	rst $38                                          ; $6fd0: $ff
	rst $38                                          ; $6fd1: $ff
	rst $38                                          ; $6fd2: $ff
	rst $38                                          ; $6fd3: $ff
	rst $38                                          ; $6fd4: $ff
	rst $38                                          ; $6fd5: $ff
	rst $38                                          ; $6fd6: $ff
	rst $38                                          ; $6fd7: $ff
	rst $38                                          ; $6fd8: $ff
	rst $38                                          ; $6fd9: $ff
	rst $38                                          ; $6fda: $ff
	rst $38                                          ; $6fdb: $ff
	rst $38                                          ; $6fdc: $ff
	rst $38                                          ; $6fdd: $ff
	rst $38                                          ; $6fde: $ff
	rst $38                                          ; $6fdf: $ff
	rst $38                                          ; $6fe0: $ff
	rst $38                                          ; $6fe1: $ff
	rst $38                                          ; $6fe2: $ff
	rst $38                                          ; $6fe3: $ff
	rst $38                                          ; $6fe4: $ff
	rst $38                                          ; $6fe5: $ff
	rst $38                                          ; $6fe6: $ff
	rst $38                                          ; $6fe7: $ff
	rst $38                                          ; $6fe8: $ff
	rst $38                                          ; $6fe9: $ff
	rst $38                                          ; $6fea: $ff
	rst $38                                          ; $6feb: $ff
	rst $38                                          ; $6fec: $ff
	rst $38                                          ; $6fed: $ff
	rst $38                                          ; $6fee: $ff
	rst $38                                          ; $6fef: $ff
	rst $38                                          ; $6ff0: $ff
	rst $38                                          ; $6ff1: $ff
	rst $38                                          ; $6ff2: $ff
	rst $38                                          ; $6ff3: $ff
	rst $38                                          ; $6ff4: $ff
	rst $38                                          ; $6ff5: $ff
	rst $38                                          ; $6ff6: $ff
	rst $38                                          ; $6ff7: $ff
	rst $38                                          ; $6ff8: $ff
	rst $38                                          ; $6ff9: $ff
	rst $38                                          ; $6ffa: $ff
	rst $38                                          ; $6ffb: $ff
	rst $38                                          ; $6ffc: $ff
	rst $38                                          ; $6ffd: $ff
	rst $38                                          ; $6ffe: $ff
	rst $38                                          ; $6fff: $ff
	rst $38                                          ; $7000: $ff
	rst $38                                          ; $7001: $ff
	rst $38                                          ; $7002: $ff
	rst $38                                          ; $7003: $ff
	rst $38                                          ; $7004: $ff
	rst $38                                          ; $7005: $ff
	rst $38                                          ; $7006: $ff
	rst $38                                          ; $7007: $ff
	rst $38                                          ; $7008: $ff
	rst $38                                          ; $7009: $ff
	rst $38                                          ; $700a: $ff
	rst $38                                          ; $700b: $ff
	rst $38                                          ; $700c: $ff
	rst $38                                          ; $700d: $ff
	rst $38                                          ; $700e: $ff
	rst $38                                          ; $700f: $ff
	rst $38                                          ; $7010: $ff
	rst $38                                          ; $7011: $ff
	rst $38                                          ; $7012: $ff
	rst $38                                          ; $7013: $ff
	rst $38                                          ; $7014: $ff
	rst $38                                          ; $7015: $ff
	rst $38                                          ; $7016: $ff
	rst $38                                          ; $7017: $ff
	rst $38                                          ; $7018: $ff
	rst $38                                          ; $7019: $ff
	rst $38                                          ; $701a: $ff
	rst $38                                          ; $701b: $ff
	rst $38                                          ; $701c: $ff
	rst $38                                          ; $701d: $ff
	rst $38                                          ; $701e: $ff
	rst $38                                          ; $701f: $ff
	rst $38                                          ; $7020: $ff
	rst $38                                          ; $7021: $ff
	rst $38                                          ; $7022: $ff
	rst $38                                          ; $7023: $ff
	rst $38                                          ; $7024: $ff
	rst $38                                          ; $7025: $ff
	rst $38                                          ; $7026: $ff
	rst $38                                          ; $7027: $ff
	rst $38                                          ; $7028: $ff
	rst $38                                          ; $7029: $ff
	rst $38                                          ; $702a: $ff
	rst $38                                          ; $702b: $ff
	rst $38                                          ; $702c: $ff
	rst $38                                          ; $702d: $ff
	rst $38                                          ; $702e: $ff
	rst $38                                          ; $702f: $ff
	rst $38                                          ; $7030: $ff
	rst $38                                          ; $7031: $ff
	rst $38                                          ; $7032: $ff
	rst $38                                          ; $7033: $ff
	rst $38                                          ; $7034: $ff
	rst $38                                          ; $7035: $ff
	rst $38                                          ; $7036: $ff
	rst $38                                          ; $7037: $ff
	rst $38                                          ; $7038: $ff
	rst $38                                          ; $7039: $ff
	rst $38                                          ; $703a: $ff
	rst $38                                          ; $703b: $ff
	rst $38                                          ; $703c: $ff
	rst $38                                          ; $703d: $ff
	rst $38                                          ; $703e: $ff
	rst $38                                          ; $703f: $ff
	rst $38                                          ; $7040: $ff
	rst $38                                          ; $7041: $ff
	rst $38                                          ; $7042: $ff
	rst $38                                          ; $7043: $ff
	rst $38                                          ; $7044: $ff
	rst $38                                          ; $7045: $ff
	rst $38                                          ; $7046: $ff
	rst $38                                          ; $7047: $ff
	rst $38                                          ; $7048: $ff
	rst $38                                          ; $7049: $ff
	rst $38                                          ; $704a: $ff
	rst $38                                          ; $704b: $ff
	rst $38                                          ; $704c: $ff
	rst $38                                          ; $704d: $ff
	rst $38                                          ; $704e: $ff
	rst $38                                          ; $704f: $ff
	rst $38                                          ; $7050: $ff
	rst $38                                          ; $7051: $ff
	rst $38                                          ; $7052: $ff
	rst $38                                          ; $7053: $ff
	rst $38                                          ; $7054: $ff
	rst $38                                          ; $7055: $ff
	rst $38                                          ; $7056: $ff
	rst $38                                          ; $7057: $ff
	rst $38                                          ; $7058: $ff
	rst $38                                          ; $7059: $ff
	rst $38                                          ; $705a: $ff
	rst $38                                          ; $705b: $ff
	rst $38                                          ; $705c: $ff
	rst $38                                          ; $705d: $ff
	rst $38                                          ; $705e: $ff
	rst $38                                          ; $705f: $ff
	rst $38                                          ; $7060: $ff
	rst $38                                          ; $7061: $ff
	rst $38                                          ; $7062: $ff
	rst $38                                          ; $7063: $ff
	rst $38                                          ; $7064: $ff
	rst $38                                          ; $7065: $ff
	rst $38                                          ; $7066: $ff
	rst $38                                          ; $7067: $ff
	rst $38                                          ; $7068: $ff
	rst $38                                          ; $7069: $ff
	rst $38                                          ; $706a: $ff
	rst $38                                          ; $706b: $ff
	rst $38                                          ; $706c: $ff
	rst $38                                          ; $706d: $ff
	rst $38                                          ; $706e: $ff
	rst $38                                          ; $706f: $ff
	rst $38                                          ; $7070: $ff
	rst $38                                          ; $7071: $ff
	rst $38                                          ; $7072: $ff
	rst $38                                          ; $7073: $ff
	rst $38                                          ; $7074: $ff
	rst $38                                          ; $7075: $ff
	rst $38                                          ; $7076: $ff
	rst $38                                          ; $7077: $ff
	rst $38                                          ; $7078: $ff
	rst $38                                          ; $7079: $ff
	rst $38                                          ; $707a: $ff
	rst $38                                          ; $707b: $ff
	rst $38                                          ; $707c: $ff
	rst $38                                          ; $707d: $ff
	rst $38                                          ; $707e: $ff
	rst $38                                          ; $707f: $ff
	rst $38                                          ; $7080: $ff
	rst $38                                          ; $7081: $ff
	rst $38                                          ; $7082: $ff
	rst $38                                          ; $7083: $ff
	rst $38                                          ; $7084: $ff
	rst $38                                          ; $7085: $ff
	rst $38                                          ; $7086: $ff
	rst $38                                          ; $7087: $ff
	rst $38                                          ; $7088: $ff
	rst $38                                          ; $7089: $ff
	rst $38                                          ; $708a: $ff
	rst $38                                          ; $708b: $ff
	rst $38                                          ; $708c: $ff
	rst $38                                          ; $708d: $ff
	rst $38                                          ; $708e: $ff
	rst $38                                          ; $708f: $ff
	rst $38                                          ; $7090: $ff
	rst $38                                          ; $7091: $ff
	rst $38                                          ; $7092: $ff
	rst $38                                          ; $7093: $ff
	rst $38                                          ; $7094: $ff
	rst $38                                          ; $7095: $ff
	rst $38                                          ; $7096: $ff
	rst $38                                          ; $7097: $ff
	rst $38                                          ; $7098: $ff
	rst $38                                          ; $7099: $ff
	rst $38                                          ; $709a: $ff
	rst $38                                          ; $709b: $ff
	rst $38                                          ; $709c: $ff
	rst $38                                          ; $709d: $ff
	rst $38                                          ; $709e: $ff
	rst $38                                          ; $709f: $ff
	rst $38                                          ; $70a0: $ff
	rst $38                                          ; $70a1: $ff
	rst $38                                          ; $70a2: $ff
	rst $38                                          ; $70a3: $ff
	rst $38                                          ; $70a4: $ff
	rst $38                                          ; $70a5: $ff
	rst $38                                          ; $70a6: $ff
	rst $38                                          ; $70a7: $ff
	rst $38                                          ; $70a8: $ff
	rst $38                                          ; $70a9: $ff
	rst $38                                          ; $70aa: $ff
	rst $38                                          ; $70ab: $ff
	rst $38                                          ; $70ac: $ff
	rst $38                                          ; $70ad: $ff
	rst $38                                          ; $70ae: $ff
	rst $38                                          ; $70af: $ff
	rst $38                                          ; $70b0: $ff
	rst $38                                          ; $70b1: $ff
	rst $38                                          ; $70b2: $ff
	rst $38                                          ; $70b3: $ff
	rst $38                                          ; $70b4: $ff
	rst $38                                          ; $70b5: $ff
	rst $38                                          ; $70b6: $ff
	rst $38                                          ; $70b7: $ff
	rst $38                                          ; $70b8: $ff
	rst $38                                          ; $70b9: $ff
	rst $38                                          ; $70ba: $ff
	rst $38                                          ; $70bb: $ff
	rst $38                                          ; $70bc: $ff
	rst $38                                          ; $70bd: $ff
	rst $38                                          ; $70be: $ff
	rst $38                                          ; $70bf: $ff
	rst $38                                          ; $70c0: $ff
	rst $38                                          ; $70c1: $ff
	rst $38                                          ; $70c2: $ff
	rst $38                                          ; $70c3: $ff
	rst $38                                          ; $70c4: $ff
	rst $38                                          ; $70c5: $ff
	rst $38                                          ; $70c6: $ff
	rst $38                                          ; $70c7: $ff
	rst $38                                          ; $70c8: $ff
	rst $38                                          ; $70c9: $ff
	rst $38                                          ; $70ca: $ff
	rst $38                                          ; $70cb: $ff
	rst $38                                          ; $70cc: $ff
	rst $38                                          ; $70cd: $ff
	rst $38                                          ; $70ce: $ff
	rst $38                                          ; $70cf: $ff
	rst $38                                          ; $70d0: $ff
	rst $38                                          ; $70d1: $ff
	rst $38                                          ; $70d2: $ff
	rst $38                                          ; $70d3: $ff
	rst $38                                          ; $70d4: $ff
	rst $38                                          ; $70d5: $ff
	rst $38                                          ; $70d6: $ff
	rst $38                                          ; $70d7: $ff
	rst $38                                          ; $70d8: $ff
	rst $38                                          ; $70d9: $ff
	rst $38                                          ; $70da: $ff
	rst $38                                          ; $70db: $ff
	rst $38                                          ; $70dc: $ff
	rst $38                                          ; $70dd: $ff
	rst $38                                          ; $70de: $ff
	rst $38                                          ; $70df: $ff
	rst $38                                          ; $70e0: $ff
	rst $38                                          ; $70e1: $ff
	rst $38                                          ; $70e2: $ff
	rst $38                                          ; $70e3: $ff
	rst $38                                          ; $70e4: $ff
	rst $38                                          ; $70e5: $ff
	rst $38                                          ; $70e6: $ff
	rst $38                                          ; $70e7: $ff
	rst $38                                          ; $70e8: $ff
	rst $38                                          ; $70e9: $ff
	rst $38                                          ; $70ea: $ff
	rst $38                                          ; $70eb: $ff
	rst $38                                          ; $70ec: $ff
	rst $38                                          ; $70ed: $ff
	rst $38                                          ; $70ee: $ff
	rst $38                                          ; $70ef: $ff
	rst $38                                          ; $70f0: $ff
	rst $38                                          ; $70f1: $ff
	rst $38                                          ; $70f2: $ff
	rst $38                                          ; $70f3: $ff
	rst $38                                          ; $70f4: $ff
	rst $38                                          ; $70f5: $ff
	rst $38                                          ; $70f6: $ff
	rst $38                                          ; $70f7: $ff
	rst $38                                          ; $70f8: $ff
	rst $38                                          ; $70f9: $ff
	rst $38                                          ; $70fa: $ff
	rst $38                                          ; $70fb: $ff
	rst $38                                          ; $70fc: $ff
	rst $38                                          ; $70fd: $ff
	rst $38                                          ; $70fe: $ff
	rst $38                                          ; $70ff: $ff
	rst $38                                          ; $7100: $ff
	rst $38                                          ; $7101: $ff
	rst $38                                          ; $7102: $ff
	rst $38                                          ; $7103: $ff
	rst $38                                          ; $7104: $ff
	rst $38                                          ; $7105: $ff
	rst $38                                          ; $7106: $ff
	rst $38                                          ; $7107: $ff
	rst $38                                          ; $7108: $ff
	rst $38                                          ; $7109: $ff
	rst $38                                          ; $710a: $ff
	rst $38                                          ; $710b: $ff
	rst $38                                          ; $710c: $ff
	rst $38                                          ; $710d: $ff
	rst $38                                          ; $710e: $ff
	rst $38                                          ; $710f: $ff
	rst $38                                          ; $7110: $ff
	rst $38                                          ; $7111: $ff
	rst $38                                          ; $7112: $ff
	rst $38                                          ; $7113: $ff
	rst $38                                          ; $7114: $ff
	rst $38                                          ; $7115: $ff
	rst $38                                          ; $7116: $ff
	rst $38                                          ; $7117: $ff
	rst $38                                          ; $7118: $ff
	rst $38                                          ; $7119: $ff
	rst $38                                          ; $711a: $ff
	rst $38                                          ; $711b: $ff
	rst $38                                          ; $711c: $ff
	rst $38                                          ; $711d: $ff
	rst $38                                          ; $711e: $ff
	rst $38                                          ; $711f: $ff
	rst $38                                          ; $7120: $ff
	rst $38                                          ; $7121: $ff
	rst $38                                          ; $7122: $ff
	rst $38                                          ; $7123: $ff
	rst $38                                          ; $7124: $ff
	rst $38                                          ; $7125: $ff
	rst $38                                          ; $7126: $ff
	rst $38                                          ; $7127: $ff
	rst $38                                          ; $7128: $ff
	rst $38                                          ; $7129: $ff
	rst $38                                          ; $712a: $ff
	rst $38                                          ; $712b: $ff
	rst $38                                          ; $712c: $ff
	rst $38                                          ; $712d: $ff
	rst $38                                          ; $712e: $ff
	rst $38                                          ; $712f: $ff
	rst $38                                          ; $7130: $ff
	rst $38                                          ; $7131: $ff
	rst $38                                          ; $7132: $ff
	rst $38                                          ; $7133: $ff
	rst $38                                          ; $7134: $ff
	rst $38                                          ; $7135: $ff
	rst $38                                          ; $7136: $ff
	rst $38                                          ; $7137: $ff
	rst $38                                          ; $7138: $ff
	rst $38                                          ; $7139: $ff
	rst $38                                          ; $713a: $ff
	rst $38                                          ; $713b: $ff
	rst $38                                          ; $713c: $ff
	rst $38                                          ; $713d: $ff
	rst $38                                          ; $713e: $ff
	rst $38                                          ; $713f: $ff
	rst $38                                          ; $7140: $ff
	rst $38                                          ; $7141: $ff
	rst $38                                          ; $7142: $ff
	rst $38                                          ; $7143: $ff
	rst $38                                          ; $7144: $ff
	rst $38                                          ; $7145: $ff
	rst $38                                          ; $7146: $ff
	rst $38                                          ; $7147: $ff
	rst $38                                          ; $7148: $ff
	rst $38                                          ; $7149: $ff
	rst $38                                          ; $714a: $ff
	rst $38                                          ; $714b: $ff
	rst $38                                          ; $714c: $ff
	rst $38                                          ; $714d: $ff
	rst $38                                          ; $714e: $ff
	rst $38                                          ; $714f: $ff
	rst $38                                          ; $7150: $ff
	rst $38                                          ; $7151: $ff
	rst $38                                          ; $7152: $ff
	rst $38                                          ; $7153: $ff
	rst $38                                          ; $7154: $ff
	rst $38                                          ; $7155: $ff
	rst $38                                          ; $7156: $ff
	rst $38                                          ; $7157: $ff
	rst $38                                          ; $7158: $ff
	rst $38                                          ; $7159: $ff
	rst $38                                          ; $715a: $ff
	rst $38                                          ; $715b: $ff
	rst $38                                          ; $715c: $ff
	rst $38                                          ; $715d: $ff
	rst $38                                          ; $715e: $ff
	rst $38                                          ; $715f: $ff
	rst $38                                          ; $7160: $ff
	rst $38                                          ; $7161: $ff
	rst $38                                          ; $7162: $ff
	rst $38                                          ; $7163: $ff
	rst $38                                          ; $7164: $ff
	rst $38                                          ; $7165: $ff
	rst $38                                          ; $7166: $ff
	rst $38                                          ; $7167: $ff
	rst $38                                          ; $7168: $ff
	rst $38                                          ; $7169: $ff
	rst $38                                          ; $716a: $ff
	rst $38                                          ; $716b: $ff
	rst $38                                          ; $716c: $ff
	rst $38                                          ; $716d: $ff
	rst $38                                          ; $716e: $ff
	rst $38                                          ; $716f: $ff
	rst $38                                          ; $7170: $ff
	rst $38                                          ; $7171: $ff
	rst $38                                          ; $7172: $ff
	rst $38                                          ; $7173: $ff
	rst $38                                          ; $7174: $ff
	rst $38                                          ; $7175: $ff
	rst $38                                          ; $7176: $ff
	rst $38                                          ; $7177: $ff
	rst $38                                          ; $7178: $ff
	rst $38                                          ; $7179: $ff
	rst $38                                          ; $717a: $ff
	rst $38                                          ; $717b: $ff
	rst $38                                          ; $717c: $ff
	rst $38                                          ; $717d: $ff
	rst $38                                          ; $717e: $ff
	rst $38                                          ; $717f: $ff
	rst $38                                          ; $7180: $ff
	rst $38                                          ; $7181: $ff
	rst $38                                          ; $7182: $ff
	rst $38                                          ; $7183: $ff
	rst $38                                          ; $7184: $ff
	rst $38                                          ; $7185: $ff
	rst $38                                          ; $7186: $ff
	rst $38                                          ; $7187: $ff
	rst $38                                          ; $7188: $ff
	rst $38                                          ; $7189: $ff
	rst $38                                          ; $718a: $ff
	rst $38                                          ; $718b: $ff
	rst $38                                          ; $718c: $ff
	rst $38                                          ; $718d: $ff
	rst $38                                          ; $718e: $ff
	rst $38                                          ; $718f: $ff
	rst $38                                          ; $7190: $ff
	rst $38                                          ; $7191: $ff
	rst $38                                          ; $7192: $ff
	rst $38                                          ; $7193: $ff
	rst $38                                          ; $7194: $ff
	rst $38                                          ; $7195: $ff
	rst $38                                          ; $7196: $ff
	rst $38                                          ; $7197: $ff
	rst $38                                          ; $7198: $ff
	rst $38                                          ; $7199: $ff
	rst $38                                          ; $719a: $ff
	rst $38                                          ; $719b: $ff
	rst $38                                          ; $719c: $ff
	rst $38                                          ; $719d: $ff
	rst $38                                          ; $719e: $ff
	rst $38                                          ; $719f: $ff
	rst $38                                          ; $71a0: $ff
	rst $38                                          ; $71a1: $ff
	rst $38                                          ; $71a2: $ff
	rst $38                                          ; $71a3: $ff
	rst $38                                          ; $71a4: $ff
	rst $38                                          ; $71a5: $ff
	rst $38                                          ; $71a6: $ff
	rst $38                                          ; $71a7: $ff
	rst $38                                          ; $71a8: $ff
	rst $38                                          ; $71a9: $ff
	rst $38                                          ; $71aa: $ff
	rst $38                                          ; $71ab: $ff
	rst $38                                          ; $71ac: $ff
	rst $38                                          ; $71ad: $ff
	rst $38                                          ; $71ae: $ff
	rst $38                                          ; $71af: $ff
	rst $38                                          ; $71b0: $ff
	rst $38                                          ; $71b1: $ff
	rst $38                                          ; $71b2: $ff
	rst $38                                          ; $71b3: $ff
	rst $38                                          ; $71b4: $ff
	rst $38                                          ; $71b5: $ff
	rst $38                                          ; $71b6: $ff
	rst $38                                          ; $71b7: $ff
	rst $38                                          ; $71b8: $ff
	rst $38                                          ; $71b9: $ff
	rst $38                                          ; $71ba: $ff
	rst $38                                          ; $71bb: $ff
	rst $38                                          ; $71bc: $ff
	rst $38                                          ; $71bd: $ff
	rst $38                                          ; $71be: $ff
	rst $38                                          ; $71bf: $ff
	rst $38                                          ; $71c0: $ff
	rst $38                                          ; $71c1: $ff
	rst $38                                          ; $71c2: $ff
	rst $38                                          ; $71c3: $ff
	rst $38                                          ; $71c4: $ff
	rst $38                                          ; $71c5: $ff
	rst $38                                          ; $71c6: $ff
	rst $38                                          ; $71c7: $ff
	rst $38                                          ; $71c8: $ff
	rst $38                                          ; $71c9: $ff
	rst $38                                          ; $71ca: $ff
	rst $38                                          ; $71cb: $ff
	rst $38                                          ; $71cc: $ff
	rst $38                                          ; $71cd: $ff
	rst $38                                          ; $71ce: $ff
	rst $38                                          ; $71cf: $ff
	rst $38                                          ; $71d0: $ff
	rst $38                                          ; $71d1: $ff
	rst $38                                          ; $71d2: $ff
	rst $38                                          ; $71d3: $ff
	rst $38                                          ; $71d4: $ff
	rst $38                                          ; $71d5: $ff
	rst $38                                          ; $71d6: $ff
	rst $38                                          ; $71d7: $ff
	rst $38                                          ; $71d8: $ff
	rst $38                                          ; $71d9: $ff
	rst $38                                          ; $71da: $ff
	rst $38                                          ; $71db: $ff
	rst $38                                          ; $71dc: $ff
	rst $38                                          ; $71dd: $ff
	rst $38                                          ; $71de: $ff
	rst $38                                          ; $71df: $ff
	rst $38                                          ; $71e0: $ff
	rst $38                                          ; $71e1: $ff
	rst $38                                          ; $71e2: $ff
	rst $38                                          ; $71e3: $ff
	rst $38                                          ; $71e4: $ff
	rst $38                                          ; $71e5: $ff
	rst $38                                          ; $71e6: $ff
	rst $38                                          ; $71e7: $ff
	rst $38                                          ; $71e8: $ff
	rst $38                                          ; $71e9: $ff
	rst $38                                          ; $71ea: $ff
	rst $38                                          ; $71eb: $ff
	rst $38                                          ; $71ec: $ff
	rst $38                                          ; $71ed: $ff
	rst $38                                          ; $71ee: $ff
	rst $38                                          ; $71ef: $ff
	rst $38                                          ; $71f0: $ff
	rst $38                                          ; $71f1: $ff
	rst $38                                          ; $71f2: $ff
	rst $38                                          ; $71f3: $ff
	rst $38                                          ; $71f4: $ff
	rst $38                                          ; $71f5: $ff
	rst $38                                          ; $71f6: $ff
	rst $38                                          ; $71f7: $ff
	rst $38                                          ; $71f8: $ff
	rst $38                                          ; $71f9: $ff
	rst $38                                          ; $71fa: $ff
	rst $38                                          ; $71fb: $ff
	rst $38                                          ; $71fc: $ff
	rst $38                                          ; $71fd: $ff
	rst $38                                          ; $71fe: $ff
	rst $38                                          ; $71ff: $ff
	rst $38                                          ; $7200: $ff
	rst $38                                          ; $7201: $ff
	rst $38                                          ; $7202: $ff
	rst $38                                          ; $7203: $ff
	rst $38                                          ; $7204: $ff
	rst $38                                          ; $7205: $ff
	rst $38                                          ; $7206: $ff
	rst $38                                          ; $7207: $ff
	rst $38                                          ; $7208: $ff
	rst $38                                          ; $7209: $ff
	rst $38                                          ; $720a: $ff
	rst $38                                          ; $720b: $ff
	rst $38                                          ; $720c: $ff
	rst $38                                          ; $720d: $ff
	rst $38                                          ; $720e: $ff
	rst $38                                          ; $720f: $ff
	rst $38                                          ; $7210: $ff
	rst $38                                          ; $7211: $ff
	rst $38                                          ; $7212: $ff
	rst $38                                          ; $7213: $ff
	rst $38                                          ; $7214: $ff
	rst $38                                          ; $7215: $ff
	rst $38                                          ; $7216: $ff
	rst $38                                          ; $7217: $ff
	rst $38                                          ; $7218: $ff
	rst $38                                          ; $7219: $ff
	rst $38                                          ; $721a: $ff
	rst $38                                          ; $721b: $ff
	rst $38                                          ; $721c: $ff
	rst $38                                          ; $721d: $ff
	rst $38                                          ; $721e: $ff
	rst $38                                          ; $721f: $ff
	rst $38                                          ; $7220: $ff
	rst $38                                          ; $7221: $ff
	rst $38                                          ; $7222: $ff
	rst $38                                          ; $7223: $ff
	rst $38                                          ; $7224: $ff
	rst $38                                          ; $7225: $ff
	rst $38                                          ; $7226: $ff
	rst $38                                          ; $7227: $ff
	rst $38                                          ; $7228: $ff
	rst $38                                          ; $7229: $ff
	rst $38                                          ; $722a: $ff
	rst $38                                          ; $722b: $ff
	rst $38                                          ; $722c: $ff
	rst $38                                          ; $722d: $ff
	rst $38                                          ; $722e: $ff
	rst $38                                          ; $722f: $ff
	rst $38                                          ; $7230: $ff
	rst $38                                          ; $7231: $ff
	rst $38                                          ; $7232: $ff
	rst $38                                          ; $7233: $ff
	rst $38                                          ; $7234: $ff
	rst $38                                          ; $7235: $ff
	rst $38                                          ; $7236: $ff
	rst $38                                          ; $7237: $ff
	rst $38                                          ; $7238: $ff
	rst $38                                          ; $7239: $ff
	rst $38                                          ; $723a: $ff
	rst $38                                          ; $723b: $ff
	rst $38                                          ; $723c: $ff
	rst $38                                          ; $723d: $ff
	rst $38                                          ; $723e: $ff
	rst $38                                          ; $723f: $ff
	rst $38                                          ; $7240: $ff
	rst $38                                          ; $7241: $ff
	rst $38                                          ; $7242: $ff
	rst $38                                          ; $7243: $ff
	rst $38                                          ; $7244: $ff
	rst $38                                          ; $7245: $ff
	rst $38                                          ; $7246: $ff
	rst $38                                          ; $7247: $ff
	rst $38                                          ; $7248: $ff
	rst $38                                          ; $7249: $ff
	rst $38                                          ; $724a: $ff
	rst $38                                          ; $724b: $ff
	rst $38                                          ; $724c: $ff
	rst $38                                          ; $724d: $ff
	rst $38                                          ; $724e: $ff
	rst $38                                          ; $724f: $ff
	rst $38                                          ; $7250: $ff
	rst $38                                          ; $7251: $ff
	rst $38                                          ; $7252: $ff
	rst $38                                          ; $7253: $ff
	rst $38                                          ; $7254: $ff
	rst $38                                          ; $7255: $ff
	rst $38                                          ; $7256: $ff
	rst $38                                          ; $7257: $ff
	rst $38                                          ; $7258: $ff
	rst $38                                          ; $7259: $ff
	rst $38                                          ; $725a: $ff
	rst $38                                          ; $725b: $ff
	rst $38                                          ; $725c: $ff
	rst $38                                          ; $725d: $ff
	rst $38                                          ; $725e: $ff
	rst $38                                          ; $725f: $ff
	rst $38                                          ; $7260: $ff
	rst $38                                          ; $7261: $ff
	rst $38                                          ; $7262: $ff
	rst $38                                          ; $7263: $ff
	rst $38                                          ; $7264: $ff
	rst $38                                          ; $7265: $ff
	rst $38                                          ; $7266: $ff
	rst $38                                          ; $7267: $ff
	rst $38                                          ; $7268: $ff
	rst $38                                          ; $7269: $ff
	rst $38                                          ; $726a: $ff
	rst $38                                          ; $726b: $ff
	rst $38                                          ; $726c: $ff
	rst $38                                          ; $726d: $ff
	rst $38                                          ; $726e: $ff
	rst $38                                          ; $726f: $ff
	rst $38                                          ; $7270: $ff
	rst $38                                          ; $7271: $ff
	rst $38                                          ; $7272: $ff
	rst $38                                          ; $7273: $ff
	rst $38                                          ; $7274: $ff
	rst $38                                          ; $7275: $ff
	rst $38                                          ; $7276: $ff
	rst $38                                          ; $7277: $ff
	rst $38                                          ; $7278: $ff
	rst $38                                          ; $7279: $ff
	rst $38                                          ; $727a: $ff
	rst $38                                          ; $727b: $ff
	rst $38                                          ; $727c: $ff
	rst $38                                          ; $727d: $ff
	rst $38                                          ; $727e: $ff
	rst $38                                          ; $727f: $ff
	rst $38                                          ; $7280: $ff
	rst $38                                          ; $7281: $ff
	rst $38                                          ; $7282: $ff
	rst $38                                          ; $7283: $ff
	rst $38                                          ; $7284: $ff
	rst $38                                          ; $7285: $ff
	rst $38                                          ; $7286: $ff
	rst $38                                          ; $7287: $ff
	rst $38                                          ; $7288: $ff
	rst $38                                          ; $7289: $ff
	rst $38                                          ; $728a: $ff
	rst $38                                          ; $728b: $ff
	rst $38                                          ; $728c: $ff
	rst $38                                          ; $728d: $ff
	rst $38                                          ; $728e: $ff
	rst $38                                          ; $728f: $ff
	rst $38                                          ; $7290: $ff
	rst $38                                          ; $7291: $ff
	rst $38                                          ; $7292: $ff
	rst $38                                          ; $7293: $ff
	rst $38                                          ; $7294: $ff
	rst $38                                          ; $7295: $ff
	rst $38                                          ; $7296: $ff
	rst $38                                          ; $7297: $ff
	rst $38                                          ; $7298: $ff
	rst $38                                          ; $7299: $ff
	rst $38                                          ; $729a: $ff
	rst $38                                          ; $729b: $ff
	rst $38                                          ; $729c: $ff
	rst $38                                          ; $729d: $ff
	rst $38                                          ; $729e: $ff
	rst $38                                          ; $729f: $ff
	rst $38                                          ; $72a0: $ff
	rst $38                                          ; $72a1: $ff
	rst $38                                          ; $72a2: $ff
	rst $38                                          ; $72a3: $ff
	rst $38                                          ; $72a4: $ff
	rst $38                                          ; $72a5: $ff
	rst $38                                          ; $72a6: $ff
	rst $38                                          ; $72a7: $ff
	rst $38                                          ; $72a8: $ff
	rst $38                                          ; $72a9: $ff
	rst $38                                          ; $72aa: $ff
	rst $38                                          ; $72ab: $ff
	rst $38                                          ; $72ac: $ff
	rst $38                                          ; $72ad: $ff
	rst $38                                          ; $72ae: $ff
	rst $38                                          ; $72af: $ff
	rst $38                                          ; $72b0: $ff
	rst $38                                          ; $72b1: $ff
	rst $38                                          ; $72b2: $ff
	rst $38                                          ; $72b3: $ff
	rst $38                                          ; $72b4: $ff
	rst $38                                          ; $72b5: $ff
	rst $38                                          ; $72b6: $ff
	rst $38                                          ; $72b7: $ff
	rst $38                                          ; $72b8: $ff
	rst $38                                          ; $72b9: $ff
	rst $38                                          ; $72ba: $ff
	rst $38                                          ; $72bb: $ff
	rst $38                                          ; $72bc: $ff
	rst $38                                          ; $72bd: $ff
	rst $38                                          ; $72be: $ff
	rst $38                                          ; $72bf: $ff
	rst $38                                          ; $72c0: $ff
	rst $38                                          ; $72c1: $ff
	rst $38                                          ; $72c2: $ff
	rst $38                                          ; $72c3: $ff
	rst $38                                          ; $72c4: $ff
	rst $38                                          ; $72c5: $ff
	rst $38                                          ; $72c6: $ff
	rst $38                                          ; $72c7: $ff
	rst $38                                          ; $72c8: $ff
	rst $38                                          ; $72c9: $ff
	rst $38                                          ; $72ca: $ff
	rst $38                                          ; $72cb: $ff
	rst $38                                          ; $72cc: $ff
	rst $38                                          ; $72cd: $ff
	rst $38                                          ; $72ce: $ff
	rst $38                                          ; $72cf: $ff
	rst $38                                          ; $72d0: $ff
	rst $38                                          ; $72d1: $ff
	rst $38                                          ; $72d2: $ff
	rst $38                                          ; $72d3: $ff
	rst $38                                          ; $72d4: $ff
	rst $38                                          ; $72d5: $ff
	rst $38                                          ; $72d6: $ff
	rst $38                                          ; $72d7: $ff
	rst $38                                          ; $72d8: $ff
	rst $38                                          ; $72d9: $ff
	rst $38                                          ; $72da: $ff
	rst $38                                          ; $72db: $ff
	rst $38                                          ; $72dc: $ff
	rst $38                                          ; $72dd: $ff
	rst $38                                          ; $72de: $ff
	rst $38                                          ; $72df: $ff
	rst $38                                          ; $72e0: $ff
	rst $38                                          ; $72e1: $ff
	rst $38                                          ; $72e2: $ff
	rst $38                                          ; $72e3: $ff
	rst $38                                          ; $72e4: $ff
	rst $38                                          ; $72e5: $ff
	rst $38                                          ; $72e6: $ff
	rst $38                                          ; $72e7: $ff
	rst $38                                          ; $72e8: $ff
	rst $38                                          ; $72e9: $ff
	rst $38                                          ; $72ea: $ff
	rst $38                                          ; $72eb: $ff
	rst $38                                          ; $72ec: $ff
	rst $38                                          ; $72ed: $ff
	rst $38                                          ; $72ee: $ff
	rst $38                                          ; $72ef: $ff
	rst $38                                          ; $72f0: $ff
	rst $38                                          ; $72f1: $ff
	rst $38                                          ; $72f2: $ff
	rst $38                                          ; $72f3: $ff
	rst $38                                          ; $72f4: $ff
	rst $38                                          ; $72f5: $ff
	rst $38                                          ; $72f6: $ff
	rst $38                                          ; $72f7: $ff
	rst $38                                          ; $72f8: $ff
	rst $38                                          ; $72f9: $ff
	rst $38                                          ; $72fa: $ff
	rst $38                                          ; $72fb: $ff
	rst $38                                          ; $72fc: $ff
	rst $38                                          ; $72fd: $ff
	rst $38                                          ; $72fe: $ff
	rst $38                                          ; $72ff: $ff
	rst $38                                          ; $7300: $ff
	rst $38                                          ; $7301: $ff
	rst $38                                          ; $7302: $ff
	rst $38                                          ; $7303: $ff
	rst $38                                          ; $7304: $ff
	rst $38                                          ; $7305: $ff
	rst $38                                          ; $7306: $ff
	rst $38                                          ; $7307: $ff
	rst $38                                          ; $7308: $ff
	rst $38                                          ; $7309: $ff
	rst $38                                          ; $730a: $ff
	rst $38                                          ; $730b: $ff
	rst $38                                          ; $730c: $ff
	rst $38                                          ; $730d: $ff
	rst $38                                          ; $730e: $ff
	rst $38                                          ; $730f: $ff
	rst $38                                          ; $7310: $ff
	rst $38                                          ; $7311: $ff
	rst $38                                          ; $7312: $ff
	rst $38                                          ; $7313: $ff
	rst $38                                          ; $7314: $ff
	rst $38                                          ; $7315: $ff
	rst $38                                          ; $7316: $ff
	rst $38                                          ; $7317: $ff
	rst $38                                          ; $7318: $ff
	rst $38                                          ; $7319: $ff
	rst $38                                          ; $731a: $ff
	rst $38                                          ; $731b: $ff
	rst $38                                          ; $731c: $ff
	rst $38                                          ; $731d: $ff
	rst $38                                          ; $731e: $ff
	rst $38                                          ; $731f: $ff
	rst $38                                          ; $7320: $ff
	rst $38                                          ; $7321: $ff
	rst $38                                          ; $7322: $ff
	rst $38                                          ; $7323: $ff
	rst $38                                          ; $7324: $ff
	rst $38                                          ; $7325: $ff
	rst $38                                          ; $7326: $ff
	rst $38                                          ; $7327: $ff
	rst $38                                          ; $7328: $ff
	rst $38                                          ; $7329: $ff
	rst $38                                          ; $732a: $ff
	rst $38                                          ; $732b: $ff
	rst $38                                          ; $732c: $ff
	rst $38                                          ; $732d: $ff
	rst $38                                          ; $732e: $ff
	rst $38                                          ; $732f: $ff
	rst $38                                          ; $7330: $ff
	rst $38                                          ; $7331: $ff
	rst $38                                          ; $7332: $ff
	rst $38                                          ; $7333: $ff
	rst $38                                          ; $7334: $ff
	rst $38                                          ; $7335: $ff
	rst $38                                          ; $7336: $ff
	rst $38                                          ; $7337: $ff
	rst $38                                          ; $7338: $ff
	rst $38                                          ; $7339: $ff
	rst $38                                          ; $733a: $ff
	rst $38                                          ; $733b: $ff
	rst $38                                          ; $733c: $ff
	rst $38                                          ; $733d: $ff
	rst $38                                          ; $733e: $ff
	rst $38                                          ; $733f: $ff
	rst $38                                          ; $7340: $ff
	rst $38                                          ; $7341: $ff
	rst $38                                          ; $7342: $ff
	rst $38                                          ; $7343: $ff
	rst $38                                          ; $7344: $ff
	rst $38                                          ; $7345: $ff
	rst $38                                          ; $7346: $ff
	rst $38                                          ; $7347: $ff
	rst $38                                          ; $7348: $ff
	rst $38                                          ; $7349: $ff
	rst $38                                          ; $734a: $ff
	rst $38                                          ; $734b: $ff
	rst $38                                          ; $734c: $ff
	rst $38                                          ; $734d: $ff
	rst $38                                          ; $734e: $ff
	rst $38                                          ; $734f: $ff
	rst $38                                          ; $7350: $ff
	rst $38                                          ; $7351: $ff
	rst $38                                          ; $7352: $ff
	rst $38                                          ; $7353: $ff
	rst $38                                          ; $7354: $ff
	rst $38                                          ; $7355: $ff
	rst $38                                          ; $7356: $ff
	rst $38                                          ; $7357: $ff
	rst $38                                          ; $7358: $ff
	rst $38                                          ; $7359: $ff
	rst $38                                          ; $735a: $ff
	rst $38                                          ; $735b: $ff
	rst $38                                          ; $735c: $ff
	rst $38                                          ; $735d: $ff
	rst $38                                          ; $735e: $ff
	rst $38                                          ; $735f: $ff
	rst $38                                          ; $7360: $ff
	rst $38                                          ; $7361: $ff
	rst $38                                          ; $7362: $ff
	rst $38                                          ; $7363: $ff
	rst $38                                          ; $7364: $ff
	rst $38                                          ; $7365: $ff
	rst $38                                          ; $7366: $ff
	rst $38                                          ; $7367: $ff
	rst $38                                          ; $7368: $ff
	rst $38                                          ; $7369: $ff
	rst $38                                          ; $736a: $ff
	rst $38                                          ; $736b: $ff
	rst $38                                          ; $736c: $ff
	rst $38                                          ; $736d: $ff
	rst $38                                          ; $736e: $ff
	rst $38                                          ; $736f: $ff
	rst $38                                          ; $7370: $ff
	rst $38                                          ; $7371: $ff
	rst $38                                          ; $7372: $ff
	rst $38                                          ; $7373: $ff
	rst $38                                          ; $7374: $ff
	rst $38                                          ; $7375: $ff
	rst $38                                          ; $7376: $ff
	rst $38                                          ; $7377: $ff
	rst $38                                          ; $7378: $ff
	rst $38                                          ; $7379: $ff
	rst $38                                          ; $737a: $ff
	rst $38                                          ; $737b: $ff
	rst $38                                          ; $737c: $ff
	rst $38                                          ; $737d: $ff
	rst $38                                          ; $737e: $ff
	rst $38                                          ; $737f: $ff
	rst $38                                          ; $7380: $ff
	rst $38                                          ; $7381: $ff
	rst $38                                          ; $7382: $ff
	rst $38                                          ; $7383: $ff
	rst $38                                          ; $7384: $ff
	rst $38                                          ; $7385: $ff
	rst $38                                          ; $7386: $ff
	rst $38                                          ; $7387: $ff
	rst $38                                          ; $7388: $ff
	rst $38                                          ; $7389: $ff
	rst $38                                          ; $738a: $ff
	rst $38                                          ; $738b: $ff
	rst $38                                          ; $738c: $ff
	rst $38                                          ; $738d: $ff
	rst $38                                          ; $738e: $ff
	rst $38                                          ; $738f: $ff
	rst $38                                          ; $7390: $ff
	rst $38                                          ; $7391: $ff
	rst $38                                          ; $7392: $ff
	rst $38                                          ; $7393: $ff
	rst $38                                          ; $7394: $ff
	rst $38                                          ; $7395: $ff
	rst $38                                          ; $7396: $ff
	rst $38                                          ; $7397: $ff
	rst $38                                          ; $7398: $ff
	rst $38                                          ; $7399: $ff
	rst $38                                          ; $739a: $ff
	rst $38                                          ; $739b: $ff
	rst $38                                          ; $739c: $ff
	rst $38                                          ; $739d: $ff
	rst $38                                          ; $739e: $ff
	rst $38                                          ; $739f: $ff
	rst $38                                          ; $73a0: $ff
	rst $38                                          ; $73a1: $ff
	rst $38                                          ; $73a2: $ff
	rst $38                                          ; $73a3: $ff
	rst $38                                          ; $73a4: $ff
	rst $38                                          ; $73a5: $ff
	rst $38                                          ; $73a6: $ff
	rst $38                                          ; $73a7: $ff
	rst $38                                          ; $73a8: $ff
	rst $38                                          ; $73a9: $ff
	rst $38                                          ; $73aa: $ff
	rst $38                                          ; $73ab: $ff
	rst $38                                          ; $73ac: $ff
	rst $38                                          ; $73ad: $ff
	rst $38                                          ; $73ae: $ff
	rst $38                                          ; $73af: $ff
	rst $38                                          ; $73b0: $ff
	rst $38                                          ; $73b1: $ff
	rst $38                                          ; $73b2: $ff
	rst $38                                          ; $73b3: $ff
	rst $38                                          ; $73b4: $ff
	rst $38                                          ; $73b5: $ff
	rst $38                                          ; $73b6: $ff
	rst $38                                          ; $73b7: $ff
	rst $38                                          ; $73b8: $ff
	rst $38                                          ; $73b9: $ff
	rst $38                                          ; $73ba: $ff
	rst $38                                          ; $73bb: $ff
	rst $38                                          ; $73bc: $ff
	rst $38                                          ; $73bd: $ff
	rst $38                                          ; $73be: $ff
	rst $38                                          ; $73bf: $ff
	rst $38                                          ; $73c0: $ff
	rst $38                                          ; $73c1: $ff
	rst $38                                          ; $73c2: $ff
	rst $38                                          ; $73c3: $ff
	rst $38                                          ; $73c4: $ff
	rst $38                                          ; $73c5: $ff
	rst $38                                          ; $73c6: $ff
	rst $38                                          ; $73c7: $ff
	rst $38                                          ; $73c8: $ff
	rst $38                                          ; $73c9: $ff
	rst $38                                          ; $73ca: $ff
	rst $38                                          ; $73cb: $ff
	rst $38                                          ; $73cc: $ff
	rst $38                                          ; $73cd: $ff
	rst $38                                          ; $73ce: $ff
	rst $38                                          ; $73cf: $ff
	rst $38                                          ; $73d0: $ff
	rst $38                                          ; $73d1: $ff
	rst $38                                          ; $73d2: $ff
	rst $38                                          ; $73d3: $ff
	rst $38                                          ; $73d4: $ff
	rst $38                                          ; $73d5: $ff
	rst $38                                          ; $73d6: $ff
	rst $38                                          ; $73d7: $ff
	rst $38                                          ; $73d8: $ff
	rst $38                                          ; $73d9: $ff
	rst $38                                          ; $73da: $ff
	rst $38                                          ; $73db: $ff
	rst $38                                          ; $73dc: $ff
	rst $38                                          ; $73dd: $ff
	rst $38                                          ; $73de: $ff
	rst $38                                          ; $73df: $ff
	rst $38                                          ; $73e0: $ff
	rst $38                                          ; $73e1: $ff
	rst $38                                          ; $73e2: $ff
	rst $38                                          ; $73e3: $ff
	rst $38                                          ; $73e4: $ff
	rst $38                                          ; $73e5: $ff
	rst $38                                          ; $73e6: $ff
	rst $38                                          ; $73e7: $ff
	rst $38                                          ; $73e8: $ff
	rst $38                                          ; $73e9: $ff
	rst $38                                          ; $73ea: $ff
	rst $38                                          ; $73eb: $ff
	rst $38                                          ; $73ec: $ff
	rst $38                                          ; $73ed: $ff
	rst $38                                          ; $73ee: $ff
	rst $38                                          ; $73ef: $ff
	rst $38                                          ; $73f0: $ff
	rst $38                                          ; $73f1: $ff
	rst $38                                          ; $73f2: $ff
	rst $38                                          ; $73f3: $ff
	rst $38                                          ; $73f4: $ff
	rst $38                                          ; $73f5: $ff
	rst $38                                          ; $73f6: $ff
	rst $38                                          ; $73f7: $ff
	rst $38                                          ; $73f8: $ff
	rst $38                                          ; $73f9: $ff
	rst $38                                          ; $73fa: $ff
	rst $38                                          ; $73fb: $ff
	rst $38                                          ; $73fc: $ff
	rst $38                                          ; $73fd: $ff
	rst $38                                          ; $73fe: $ff
	rst $38                                          ; $73ff: $ff
	rst $38                                          ; $7400: $ff
	rst $38                                          ; $7401: $ff
	rst $38                                          ; $7402: $ff
	rst $38                                          ; $7403: $ff
	rst $38                                          ; $7404: $ff
	rst $38                                          ; $7405: $ff
	rst $38                                          ; $7406: $ff
	rst $38                                          ; $7407: $ff
	rst $38                                          ; $7408: $ff
	rst $38                                          ; $7409: $ff
	rst $38                                          ; $740a: $ff
	rst $38                                          ; $740b: $ff
	rst $38                                          ; $740c: $ff
	rst $38                                          ; $740d: $ff
	rst $38                                          ; $740e: $ff
	rst $38                                          ; $740f: $ff
	rst $38                                          ; $7410: $ff
	rst $38                                          ; $7411: $ff
	rst $38                                          ; $7412: $ff
	rst $38                                          ; $7413: $ff
	rst $38                                          ; $7414: $ff
	rst $38                                          ; $7415: $ff
	rst $38                                          ; $7416: $ff
	rst $38                                          ; $7417: $ff
	rst $38                                          ; $7418: $ff
	rst $38                                          ; $7419: $ff
	rst $38                                          ; $741a: $ff
	rst $38                                          ; $741b: $ff
	rst $38                                          ; $741c: $ff
	rst $38                                          ; $741d: $ff
	rst $38                                          ; $741e: $ff
	rst $38                                          ; $741f: $ff
	rst $38                                          ; $7420: $ff
	rst $38                                          ; $7421: $ff
	rst $38                                          ; $7422: $ff
	rst $38                                          ; $7423: $ff
	rst $38                                          ; $7424: $ff
	rst $38                                          ; $7425: $ff
	rst $38                                          ; $7426: $ff
	rst $38                                          ; $7427: $ff
	rst $38                                          ; $7428: $ff
	rst $38                                          ; $7429: $ff
	rst $38                                          ; $742a: $ff
	rst $38                                          ; $742b: $ff
	rst $38                                          ; $742c: $ff
	rst $38                                          ; $742d: $ff
	rst $38                                          ; $742e: $ff
	rst $38                                          ; $742f: $ff
	rst $38                                          ; $7430: $ff
	rst $38                                          ; $7431: $ff
	rst $38                                          ; $7432: $ff
	rst $38                                          ; $7433: $ff
	rst $38                                          ; $7434: $ff
	rst $38                                          ; $7435: $ff
	rst $38                                          ; $7436: $ff
	rst $38                                          ; $7437: $ff
	rst $38                                          ; $7438: $ff
	rst $38                                          ; $7439: $ff
	rst $38                                          ; $743a: $ff
	rst $38                                          ; $743b: $ff
	rst $38                                          ; $743c: $ff
	rst $38                                          ; $743d: $ff
	rst $38                                          ; $743e: $ff
	rst $38                                          ; $743f: $ff
	rst $38                                          ; $7440: $ff
	rst $38                                          ; $7441: $ff
	rst $38                                          ; $7442: $ff
	rst $38                                          ; $7443: $ff
	rst $38                                          ; $7444: $ff
	rst $38                                          ; $7445: $ff
	rst $38                                          ; $7446: $ff
	rst $38                                          ; $7447: $ff
	rst $38                                          ; $7448: $ff
	rst $38                                          ; $7449: $ff
	rst $38                                          ; $744a: $ff
	rst $38                                          ; $744b: $ff
	rst $38                                          ; $744c: $ff
	rst $38                                          ; $744d: $ff
	rst $38                                          ; $744e: $ff
	rst $38                                          ; $744f: $ff
	rst $38                                          ; $7450: $ff
	rst $38                                          ; $7451: $ff
	rst $38                                          ; $7452: $ff
	rst $38                                          ; $7453: $ff
	rst $38                                          ; $7454: $ff
	rst $38                                          ; $7455: $ff
	rst $38                                          ; $7456: $ff
	rst $38                                          ; $7457: $ff
	rst $38                                          ; $7458: $ff
	rst $38                                          ; $7459: $ff
	rst $38                                          ; $745a: $ff
	rst $38                                          ; $745b: $ff
	rst $38                                          ; $745c: $ff
	rst $38                                          ; $745d: $ff
	rst $38                                          ; $745e: $ff
	rst $38                                          ; $745f: $ff
	rst $38                                          ; $7460: $ff
	rst $38                                          ; $7461: $ff
	rst $38                                          ; $7462: $ff
	rst $38                                          ; $7463: $ff
	rst $38                                          ; $7464: $ff
	rst $38                                          ; $7465: $ff
	rst $38                                          ; $7466: $ff
	rst $38                                          ; $7467: $ff
	rst $38                                          ; $7468: $ff
	rst $38                                          ; $7469: $ff
	rst $38                                          ; $746a: $ff
	rst $38                                          ; $746b: $ff
	rst $38                                          ; $746c: $ff
	rst $38                                          ; $746d: $ff
	rst $38                                          ; $746e: $ff
	rst $38                                          ; $746f: $ff
	rst $38                                          ; $7470: $ff
	rst $38                                          ; $7471: $ff
	rst $38                                          ; $7472: $ff
	rst $38                                          ; $7473: $ff
	rst $38                                          ; $7474: $ff
	rst $38                                          ; $7475: $ff
	rst $38                                          ; $7476: $ff
	rst $38                                          ; $7477: $ff
	rst $38                                          ; $7478: $ff
	rst $38                                          ; $7479: $ff
	rst $38                                          ; $747a: $ff
	rst $38                                          ; $747b: $ff
	rst $38                                          ; $747c: $ff
	rst $38                                          ; $747d: $ff
	rst $38                                          ; $747e: $ff
	rst $38                                          ; $747f: $ff
	rst $38                                          ; $7480: $ff
	rst $38                                          ; $7481: $ff
	rst $38                                          ; $7482: $ff
	rst $38                                          ; $7483: $ff
	rst $38                                          ; $7484: $ff
	rst $38                                          ; $7485: $ff
	rst $38                                          ; $7486: $ff
	rst $38                                          ; $7487: $ff
	rst $38                                          ; $7488: $ff
	rst $38                                          ; $7489: $ff
	rst $38                                          ; $748a: $ff
	rst $38                                          ; $748b: $ff
	rst $38                                          ; $748c: $ff
	rst $38                                          ; $748d: $ff
	rst $38                                          ; $748e: $ff
	rst $38                                          ; $748f: $ff
	rst $38                                          ; $7490: $ff
	rst $38                                          ; $7491: $ff
	rst $38                                          ; $7492: $ff
	rst $38                                          ; $7493: $ff
	rst $38                                          ; $7494: $ff
	rst $38                                          ; $7495: $ff
	rst $38                                          ; $7496: $ff
	rst $38                                          ; $7497: $ff
	rst $38                                          ; $7498: $ff
	rst $38                                          ; $7499: $ff
	rst $38                                          ; $749a: $ff
	rst $38                                          ; $749b: $ff
	rst $38                                          ; $749c: $ff
	rst $38                                          ; $749d: $ff
	rst $38                                          ; $749e: $ff
	rst $38                                          ; $749f: $ff
	rst $38                                          ; $74a0: $ff
	rst $38                                          ; $74a1: $ff
	rst $38                                          ; $74a2: $ff
	rst $38                                          ; $74a3: $ff
	rst $38                                          ; $74a4: $ff
	rst $38                                          ; $74a5: $ff
	rst $38                                          ; $74a6: $ff
	rst $38                                          ; $74a7: $ff
	rst $38                                          ; $74a8: $ff
	rst $38                                          ; $74a9: $ff
	rst $38                                          ; $74aa: $ff
	rst $38                                          ; $74ab: $ff
	rst $38                                          ; $74ac: $ff
	rst $38                                          ; $74ad: $ff
	rst $38                                          ; $74ae: $ff
	rst $38                                          ; $74af: $ff
	rst $38                                          ; $74b0: $ff
	rst $38                                          ; $74b1: $ff
	rst $38                                          ; $74b2: $ff
	rst $38                                          ; $74b3: $ff
	rst $38                                          ; $74b4: $ff
	rst $38                                          ; $74b5: $ff
	rst $38                                          ; $74b6: $ff
	rst $38                                          ; $74b7: $ff
	rst $38                                          ; $74b8: $ff
	rst $38                                          ; $74b9: $ff
	rst $38                                          ; $74ba: $ff
	rst $38                                          ; $74bb: $ff
	rst $38                                          ; $74bc: $ff
	rst $38                                          ; $74bd: $ff
	rst $38                                          ; $74be: $ff
	rst $38                                          ; $74bf: $ff
	rst $38                                          ; $74c0: $ff
	rst $38                                          ; $74c1: $ff
	rst $38                                          ; $74c2: $ff
	rst $38                                          ; $74c3: $ff
	rst $38                                          ; $74c4: $ff
	rst $38                                          ; $74c5: $ff
	rst $38                                          ; $74c6: $ff
	rst $38                                          ; $74c7: $ff
	rst $38                                          ; $74c8: $ff
	rst $38                                          ; $74c9: $ff
	rst $38                                          ; $74ca: $ff
	rst $38                                          ; $74cb: $ff
	rst $38                                          ; $74cc: $ff
	rst $38                                          ; $74cd: $ff
	rst $38                                          ; $74ce: $ff
	rst $38                                          ; $74cf: $ff
	rst $38                                          ; $74d0: $ff
	rst $38                                          ; $74d1: $ff
	rst $38                                          ; $74d2: $ff
	rst $38                                          ; $74d3: $ff
	rst $38                                          ; $74d4: $ff
	rst $38                                          ; $74d5: $ff
	rst $38                                          ; $74d6: $ff
	rst $38                                          ; $74d7: $ff
	rst $38                                          ; $74d8: $ff
	rst $38                                          ; $74d9: $ff
	rst $38                                          ; $74da: $ff
	rst $38                                          ; $74db: $ff
	rst $38                                          ; $74dc: $ff
	rst $38                                          ; $74dd: $ff
	rst $38                                          ; $74de: $ff
	rst $38                                          ; $74df: $ff
	rst $38                                          ; $74e0: $ff
	rst $38                                          ; $74e1: $ff
	rst $38                                          ; $74e2: $ff
	rst $38                                          ; $74e3: $ff
	rst $38                                          ; $74e4: $ff
	rst $38                                          ; $74e5: $ff
	rst $38                                          ; $74e6: $ff
	rst $38                                          ; $74e7: $ff
	rst $38                                          ; $74e8: $ff
	rst $38                                          ; $74e9: $ff
	rst $38                                          ; $74ea: $ff
	rst $38                                          ; $74eb: $ff
	rst $38                                          ; $74ec: $ff
	rst $38                                          ; $74ed: $ff
	rst $38                                          ; $74ee: $ff
	rst $38                                          ; $74ef: $ff
	rst $38                                          ; $74f0: $ff
	rst $38                                          ; $74f1: $ff
	rst $38                                          ; $74f2: $ff
	rst $38                                          ; $74f3: $ff
	rst $38                                          ; $74f4: $ff
	rst $38                                          ; $74f5: $ff
	rst $38                                          ; $74f6: $ff
	rst $38                                          ; $74f7: $ff
	rst $38                                          ; $74f8: $ff
	rst $38                                          ; $74f9: $ff
	rst $38                                          ; $74fa: $ff
	rst $38                                          ; $74fb: $ff
	rst $38                                          ; $74fc: $ff
	rst $38                                          ; $74fd: $ff
	rst $38                                          ; $74fe: $ff
	rst $38                                          ; $74ff: $ff
	rst $38                                          ; $7500: $ff
	rst $38                                          ; $7501: $ff
	rst $38                                          ; $7502: $ff
	rst $38                                          ; $7503: $ff
	rst $38                                          ; $7504: $ff
	rst $38                                          ; $7505: $ff
	rst $38                                          ; $7506: $ff
	rst $38                                          ; $7507: $ff
	rst $38                                          ; $7508: $ff
	rst $38                                          ; $7509: $ff
	rst $38                                          ; $750a: $ff
	rst $38                                          ; $750b: $ff
	rst $38                                          ; $750c: $ff
	rst $38                                          ; $750d: $ff
	rst $38                                          ; $750e: $ff
	rst $38                                          ; $750f: $ff
	rst $38                                          ; $7510: $ff
	rst $38                                          ; $7511: $ff
	rst $38                                          ; $7512: $ff
	rst $38                                          ; $7513: $ff
	rst $38                                          ; $7514: $ff
	rst $38                                          ; $7515: $ff
	rst $38                                          ; $7516: $ff
	rst $38                                          ; $7517: $ff
	rst $38                                          ; $7518: $ff
	rst $38                                          ; $7519: $ff
	rst $38                                          ; $751a: $ff
	rst $38                                          ; $751b: $ff
	rst $38                                          ; $751c: $ff
	rst $38                                          ; $751d: $ff
	rst $38                                          ; $751e: $ff
	rst $38                                          ; $751f: $ff
	rst $38                                          ; $7520: $ff
	rst $38                                          ; $7521: $ff
	rst $38                                          ; $7522: $ff
	rst $38                                          ; $7523: $ff
	rst $38                                          ; $7524: $ff
	rst $38                                          ; $7525: $ff
	rst $38                                          ; $7526: $ff
	rst $38                                          ; $7527: $ff
	rst $38                                          ; $7528: $ff
	rst $38                                          ; $7529: $ff
	rst $38                                          ; $752a: $ff
	rst $38                                          ; $752b: $ff
	rst $38                                          ; $752c: $ff
	rst $38                                          ; $752d: $ff
	rst $38                                          ; $752e: $ff
	rst $38                                          ; $752f: $ff
	rst $38                                          ; $7530: $ff
	rst $38                                          ; $7531: $ff
	rst $38                                          ; $7532: $ff
	rst $38                                          ; $7533: $ff
	rst $38                                          ; $7534: $ff
	rst $38                                          ; $7535: $ff
	rst $38                                          ; $7536: $ff
	rst $38                                          ; $7537: $ff
	rst $38                                          ; $7538: $ff
	rst $38                                          ; $7539: $ff
	rst $38                                          ; $753a: $ff
	rst $38                                          ; $753b: $ff
	rst $38                                          ; $753c: $ff
	rst $38                                          ; $753d: $ff
	rst $38                                          ; $753e: $ff
	rst $38                                          ; $753f: $ff
	rst $38                                          ; $7540: $ff
	rst $38                                          ; $7541: $ff
	rst $38                                          ; $7542: $ff
	rst $38                                          ; $7543: $ff
	rst $38                                          ; $7544: $ff
	rst $38                                          ; $7545: $ff
	rst $38                                          ; $7546: $ff
	rst $38                                          ; $7547: $ff
	rst $38                                          ; $7548: $ff
	rst $38                                          ; $7549: $ff
	rst $38                                          ; $754a: $ff
	rst $38                                          ; $754b: $ff
	rst $38                                          ; $754c: $ff
	rst $38                                          ; $754d: $ff
	rst $38                                          ; $754e: $ff
	rst $38                                          ; $754f: $ff
	rst $38                                          ; $7550: $ff
	rst $38                                          ; $7551: $ff
	rst $38                                          ; $7552: $ff
	rst $38                                          ; $7553: $ff
	rst $38                                          ; $7554: $ff
	rst $38                                          ; $7555: $ff
	rst $38                                          ; $7556: $ff
	rst $38                                          ; $7557: $ff
	rst $38                                          ; $7558: $ff
	rst $38                                          ; $7559: $ff
	rst $38                                          ; $755a: $ff
	rst $38                                          ; $755b: $ff
	rst $38                                          ; $755c: $ff
	rst $38                                          ; $755d: $ff
	rst $38                                          ; $755e: $ff
	rst $38                                          ; $755f: $ff
	rst $38                                          ; $7560: $ff
	rst $38                                          ; $7561: $ff
	rst $38                                          ; $7562: $ff
	rst $38                                          ; $7563: $ff
	rst $38                                          ; $7564: $ff
	rst $38                                          ; $7565: $ff
	rst $38                                          ; $7566: $ff
	rst $38                                          ; $7567: $ff
	rst $38                                          ; $7568: $ff
	rst $38                                          ; $7569: $ff
	rst $38                                          ; $756a: $ff
	rst $38                                          ; $756b: $ff
	rst $38                                          ; $756c: $ff
	rst $38                                          ; $756d: $ff
	rst $38                                          ; $756e: $ff
	rst $38                                          ; $756f: $ff
	rst $38                                          ; $7570: $ff
	rst $38                                          ; $7571: $ff
	rst $38                                          ; $7572: $ff
	rst $38                                          ; $7573: $ff
	rst $38                                          ; $7574: $ff
	rst $38                                          ; $7575: $ff
	rst $38                                          ; $7576: $ff
	rst $38                                          ; $7577: $ff
	rst $38                                          ; $7578: $ff
	rst $38                                          ; $7579: $ff
	rst $38                                          ; $757a: $ff
	rst $38                                          ; $757b: $ff
	rst $38                                          ; $757c: $ff
	rst $38                                          ; $757d: $ff
	rst $38                                          ; $757e: $ff
	rst $38                                          ; $757f: $ff
	rst $38                                          ; $7580: $ff
	rst $38                                          ; $7581: $ff
	rst $38                                          ; $7582: $ff
	rst $38                                          ; $7583: $ff
	rst $38                                          ; $7584: $ff
	rst $38                                          ; $7585: $ff
	rst $38                                          ; $7586: $ff
	rst $38                                          ; $7587: $ff
	rst $38                                          ; $7588: $ff
	rst $38                                          ; $7589: $ff
	rst $38                                          ; $758a: $ff
	rst $38                                          ; $758b: $ff
	rst $38                                          ; $758c: $ff
	rst $38                                          ; $758d: $ff
	rst $38                                          ; $758e: $ff
	rst $38                                          ; $758f: $ff
	rst $38                                          ; $7590: $ff
	rst $38                                          ; $7591: $ff
	rst $38                                          ; $7592: $ff
	rst $38                                          ; $7593: $ff
	rst $38                                          ; $7594: $ff
	rst $38                                          ; $7595: $ff
	rst $38                                          ; $7596: $ff
	rst $38                                          ; $7597: $ff
	rst $38                                          ; $7598: $ff
	rst $38                                          ; $7599: $ff
	rst $38                                          ; $759a: $ff
	rst $38                                          ; $759b: $ff
	rst $38                                          ; $759c: $ff
	rst $38                                          ; $759d: $ff
	rst $38                                          ; $759e: $ff
	rst $38                                          ; $759f: $ff
	rst $38                                          ; $75a0: $ff
	rst $38                                          ; $75a1: $ff
	rst $38                                          ; $75a2: $ff
	rst $38                                          ; $75a3: $ff
	rst $38                                          ; $75a4: $ff
	rst $38                                          ; $75a5: $ff
	rst $38                                          ; $75a6: $ff
	rst $38                                          ; $75a7: $ff
	rst $38                                          ; $75a8: $ff
	rst $38                                          ; $75a9: $ff
	rst $38                                          ; $75aa: $ff
	rst $38                                          ; $75ab: $ff
	rst $38                                          ; $75ac: $ff
	rst $38                                          ; $75ad: $ff
	rst $38                                          ; $75ae: $ff
	rst $38                                          ; $75af: $ff
	rst $38                                          ; $75b0: $ff
	rst $38                                          ; $75b1: $ff
	rst $38                                          ; $75b2: $ff
	rst $38                                          ; $75b3: $ff
	rst $38                                          ; $75b4: $ff
	rst $38                                          ; $75b5: $ff
	rst $38                                          ; $75b6: $ff
	rst $38                                          ; $75b7: $ff
	rst $38                                          ; $75b8: $ff
	rst $38                                          ; $75b9: $ff
	rst $38                                          ; $75ba: $ff
	rst $38                                          ; $75bb: $ff
	rst $38                                          ; $75bc: $ff
	rst $38                                          ; $75bd: $ff
	rst $38                                          ; $75be: $ff
	rst $38                                          ; $75bf: $ff
	rst $38                                          ; $75c0: $ff
	rst $38                                          ; $75c1: $ff
	rst $38                                          ; $75c2: $ff
	rst $38                                          ; $75c3: $ff
	rst $38                                          ; $75c4: $ff
	rst $38                                          ; $75c5: $ff
	rst $38                                          ; $75c6: $ff
	rst $38                                          ; $75c7: $ff
	rst $38                                          ; $75c8: $ff
	rst $38                                          ; $75c9: $ff
	rst $38                                          ; $75ca: $ff
	rst $38                                          ; $75cb: $ff
	rst $38                                          ; $75cc: $ff
	rst $38                                          ; $75cd: $ff
	rst $38                                          ; $75ce: $ff
	rst $38                                          ; $75cf: $ff
	rst $38                                          ; $75d0: $ff
	rst $38                                          ; $75d1: $ff
	rst $38                                          ; $75d2: $ff
	rst $38                                          ; $75d3: $ff
	rst $38                                          ; $75d4: $ff
	rst $38                                          ; $75d5: $ff
	rst $38                                          ; $75d6: $ff
	rst $38                                          ; $75d7: $ff
	rst $38                                          ; $75d8: $ff
	rst $38                                          ; $75d9: $ff
	rst $38                                          ; $75da: $ff
	rst $38                                          ; $75db: $ff
	rst $38                                          ; $75dc: $ff
	rst $38                                          ; $75dd: $ff
	rst $38                                          ; $75de: $ff
	rst $38                                          ; $75df: $ff
	rst $38                                          ; $75e0: $ff
	rst $38                                          ; $75e1: $ff
	rst $38                                          ; $75e2: $ff
	rst $38                                          ; $75e3: $ff
	rst $38                                          ; $75e4: $ff
	rst $38                                          ; $75e5: $ff
	rst $38                                          ; $75e6: $ff
	rst $38                                          ; $75e7: $ff
	rst $38                                          ; $75e8: $ff
	rst $38                                          ; $75e9: $ff
	rst $38                                          ; $75ea: $ff
	rst $38                                          ; $75eb: $ff
	rst $38                                          ; $75ec: $ff
	rst $38                                          ; $75ed: $ff
	rst $38                                          ; $75ee: $ff
	rst $38                                          ; $75ef: $ff
	rst $38                                          ; $75f0: $ff
	rst $38                                          ; $75f1: $ff
	rst $38                                          ; $75f2: $ff
	rst $38                                          ; $75f3: $ff
	rst $38                                          ; $75f4: $ff
	rst $38                                          ; $75f5: $ff
	rst $38                                          ; $75f6: $ff
	rst $38                                          ; $75f7: $ff
	rst $38                                          ; $75f8: $ff
	rst $38                                          ; $75f9: $ff
	rst $38                                          ; $75fa: $ff
	rst $38                                          ; $75fb: $ff
	rst $38                                          ; $75fc: $ff
	rst $38                                          ; $75fd: $ff
	rst $38                                          ; $75fe: $ff
	rst $38                                          ; $75ff: $ff
	rst $38                                          ; $7600: $ff
	rst $38                                          ; $7601: $ff
	rst $38                                          ; $7602: $ff
	rst $38                                          ; $7603: $ff
	rst $38                                          ; $7604: $ff
	rst $38                                          ; $7605: $ff
	rst $38                                          ; $7606: $ff
	rst $38                                          ; $7607: $ff
	rst $38                                          ; $7608: $ff
	rst $38                                          ; $7609: $ff
	rst $38                                          ; $760a: $ff
	rst $38                                          ; $760b: $ff
	rst $38                                          ; $760c: $ff
	rst $38                                          ; $760d: $ff
	rst $38                                          ; $760e: $ff
	rst $38                                          ; $760f: $ff
	rst $38                                          ; $7610: $ff
	rst $38                                          ; $7611: $ff
	rst $38                                          ; $7612: $ff
	rst $38                                          ; $7613: $ff
	rst $38                                          ; $7614: $ff
	rst $38                                          ; $7615: $ff
	rst $38                                          ; $7616: $ff
	rst $38                                          ; $7617: $ff
	rst $38                                          ; $7618: $ff
	rst $38                                          ; $7619: $ff
	rst $38                                          ; $761a: $ff
	rst $38                                          ; $761b: $ff
	rst $38                                          ; $761c: $ff
	rst $38                                          ; $761d: $ff
	rst $38                                          ; $761e: $ff
	rst $38                                          ; $761f: $ff
	rst $38                                          ; $7620: $ff
	rst $38                                          ; $7621: $ff
	rst $38                                          ; $7622: $ff
	rst $38                                          ; $7623: $ff
	rst $38                                          ; $7624: $ff
	rst $38                                          ; $7625: $ff
	rst $38                                          ; $7626: $ff
	rst $38                                          ; $7627: $ff
	rst $38                                          ; $7628: $ff
	rst $38                                          ; $7629: $ff
	rst $38                                          ; $762a: $ff
	rst $38                                          ; $762b: $ff
	rst $38                                          ; $762c: $ff
	rst $38                                          ; $762d: $ff
	rst $38                                          ; $762e: $ff
	rst $38                                          ; $762f: $ff
	rst $38                                          ; $7630: $ff
	rst $38                                          ; $7631: $ff
	rst $38                                          ; $7632: $ff
	rst $38                                          ; $7633: $ff
	rst $38                                          ; $7634: $ff
	rst $38                                          ; $7635: $ff
	rst $38                                          ; $7636: $ff
	rst $38                                          ; $7637: $ff
	rst $38                                          ; $7638: $ff
	rst $38                                          ; $7639: $ff
	rst $38                                          ; $763a: $ff
	rst $38                                          ; $763b: $ff
	rst $38                                          ; $763c: $ff
	rst $38                                          ; $763d: $ff
	rst $38                                          ; $763e: $ff
	rst $38                                          ; $763f: $ff
	rst $38                                          ; $7640: $ff
	rst $38                                          ; $7641: $ff
	rst $38                                          ; $7642: $ff
	rst $38                                          ; $7643: $ff
	rst $38                                          ; $7644: $ff
	rst $38                                          ; $7645: $ff
	rst $38                                          ; $7646: $ff
	rst $38                                          ; $7647: $ff
	rst $38                                          ; $7648: $ff
	rst $38                                          ; $7649: $ff
	rst $38                                          ; $764a: $ff
	rst $38                                          ; $764b: $ff
	rst $38                                          ; $764c: $ff
	rst $38                                          ; $764d: $ff
	rst $38                                          ; $764e: $ff
	rst $38                                          ; $764f: $ff
	rst $38                                          ; $7650: $ff
	rst $38                                          ; $7651: $ff
	rst $38                                          ; $7652: $ff
	rst $38                                          ; $7653: $ff
	rst $38                                          ; $7654: $ff
	rst $38                                          ; $7655: $ff
	rst $38                                          ; $7656: $ff
	rst $38                                          ; $7657: $ff
	rst $38                                          ; $7658: $ff
	rst $38                                          ; $7659: $ff
	rst $38                                          ; $765a: $ff
	rst $38                                          ; $765b: $ff
	rst $38                                          ; $765c: $ff
	rst $38                                          ; $765d: $ff
	rst $38                                          ; $765e: $ff
	rst $38                                          ; $765f: $ff
	rst $38                                          ; $7660: $ff
	rst $38                                          ; $7661: $ff
	rst $38                                          ; $7662: $ff
	rst $38                                          ; $7663: $ff
	rst $38                                          ; $7664: $ff
	rst $38                                          ; $7665: $ff
	rst $38                                          ; $7666: $ff
	rst $38                                          ; $7667: $ff
	rst $38                                          ; $7668: $ff
	rst $38                                          ; $7669: $ff
	rst $38                                          ; $766a: $ff
	rst $38                                          ; $766b: $ff
	rst $38                                          ; $766c: $ff
	rst $38                                          ; $766d: $ff
	rst $38                                          ; $766e: $ff
	rst $38                                          ; $766f: $ff
	rst $38                                          ; $7670: $ff
	rst $38                                          ; $7671: $ff
	rst $38                                          ; $7672: $ff
	rst $38                                          ; $7673: $ff
	rst $38                                          ; $7674: $ff
	rst $38                                          ; $7675: $ff
	rst $38                                          ; $7676: $ff
	rst $38                                          ; $7677: $ff
	rst $38                                          ; $7678: $ff
	rst $38                                          ; $7679: $ff
	rst $38                                          ; $767a: $ff
	rst $38                                          ; $767b: $ff
	rst $38                                          ; $767c: $ff
	rst $38                                          ; $767d: $ff
	rst $38                                          ; $767e: $ff
	rst $38                                          ; $767f: $ff
	rst $38                                          ; $7680: $ff
	rst $38                                          ; $7681: $ff
	rst $38                                          ; $7682: $ff
	rst $38                                          ; $7683: $ff
	rst $38                                          ; $7684: $ff
	rst $38                                          ; $7685: $ff
	rst $38                                          ; $7686: $ff
	rst $38                                          ; $7687: $ff
	rst $38                                          ; $7688: $ff
	rst $38                                          ; $7689: $ff
	rst $38                                          ; $768a: $ff
	rst $38                                          ; $768b: $ff
	rst $38                                          ; $768c: $ff
	rst $38                                          ; $768d: $ff
	rst $38                                          ; $768e: $ff
	rst $38                                          ; $768f: $ff
	rst $38                                          ; $7690: $ff
	rst $38                                          ; $7691: $ff
	rst $38                                          ; $7692: $ff
	rst $38                                          ; $7693: $ff
	rst $38                                          ; $7694: $ff
	rst $38                                          ; $7695: $ff
	rst $38                                          ; $7696: $ff
	rst $38                                          ; $7697: $ff
	rst $38                                          ; $7698: $ff
	rst $38                                          ; $7699: $ff
	rst $38                                          ; $769a: $ff
	rst $38                                          ; $769b: $ff
	rst $38                                          ; $769c: $ff
	rst $38                                          ; $769d: $ff
	rst $38                                          ; $769e: $ff
	rst $38                                          ; $769f: $ff
	rst $38                                          ; $76a0: $ff
	rst $38                                          ; $76a1: $ff
	rst $38                                          ; $76a2: $ff
	rst $38                                          ; $76a3: $ff
	rst $38                                          ; $76a4: $ff
	rst $38                                          ; $76a5: $ff
	rst $38                                          ; $76a6: $ff
	rst $38                                          ; $76a7: $ff
	rst $38                                          ; $76a8: $ff
	rst $38                                          ; $76a9: $ff
	rst $38                                          ; $76aa: $ff
	rst $38                                          ; $76ab: $ff
	rst $38                                          ; $76ac: $ff
	rst $38                                          ; $76ad: $ff
	rst $38                                          ; $76ae: $ff
	rst $38                                          ; $76af: $ff
	rst $38                                          ; $76b0: $ff
	rst $38                                          ; $76b1: $ff
	rst $38                                          ; $76b2: $ff
	rst $38                                          ; $76b3: $ff
	rst $38                                          ; $76b4: $ff
	rst $38                                          ; $76b5: $ff
	rst $38                                          ; $76b6: $ff
	rst $38                                          ; $76b7: $ff
	rst $38                                          ; $76b8: $ff
	rst $38                                          ; $76b9: $ff
	rst $38                                          ; $76ba: $ff
	rst $38                                          ; $76bb: $ff
	rst $38                                          ; $76bc: $ff
	rst $38                                          ; $76bd: $ff
	rst $38                                          ; $76be: $ff
	rst $38                                          ; $76bf: $ff
	rst $38                                          ; $76c0: $ff
	rst $38                                          ; $76c1: $ff
	rst $38                                          ; $76c2: $ff
	rst $38                                          ; $76c3: $ff
	rst $38                                          ; $76c4: $ff
	rst $38                                          ; $76c5: $ff
	rst $38                                          ; $76c6: $ff
	rst $38                                          ; $76c7: $ff
	rst $38                                          ; $76c8: $ff
	rst $38                                          ; $76c9: $ff
	rst $38                                          ; $76ca: $ff
	rst $38                                          ; $76cb: $ff
	rst $38                                          ; $76cc: $ff
	rst $38                                          ; $76cd: $ff
	rst $38                                          ; $76ce: $ff
	rst $38                                          ; $76cf: $ff
	rst $38                                          ; $76d0: $ff
	rst $38                                          ; $76d1: $ff
	rst $38                                          ; $76d2: $ff
	rst $38                                          ; $76d3: $ff
	rst $38                                          ; $76d4: $ff
	rst $38                                          ; $76d5: $ff
	rst $38                                          ; $76d6: $ff
	rst $38                                          ; $76d7: $ff
	rst $38                                          ; $76d8: $ff
	rst $38                                          ; $76d9: $ff
	rst $38                                          ; $76da: $ff
	rst $38                                          ; $76db: $ff
	rst $38                                          ; $76dc: $ff
	rst $38                                          ; $76dd: $ff
	rst $38                                          ; $76de: $ff
	rst $38                                          ; $76df: $ff
	rst $38                                          ; $76e0: $ff
	rst $38                                          ; $76e1: $ff
	rst $38                                          ; $76e2: $ff
	rst $38                                          ; $76e3: $ff
	rst $38                                          ; $76e4: $ff
	rst $38                                          ; $76e5: $ff
	rst $38                                          ; $76e6: $ff
	rst $38                                          ; $76e7: $ff
	rst $38                                          ; $76e8: $ff
	rst $38                                          ; $76e9: $ff
	rst $38                                          ; $76ea: $ff
	rst $38                                          ; $76eb: $ff
	rst $38                                          ; $76ec: $ff
	rst $38                                          ; $76ed: $ff
	rst $38                                          ; $76ee: $ff
	rst $38                                          ; $76ef: $ff
	rst $38                                          ; $76f0: $ff
	rst $38                                          ; $76f1: $ff
	rst $38                                          ; $76f2: $ff
	rst $38                                          ; $76f3: $ff
	rst $38                                          ; $76f4: $ff
	rst $38                                          ; $76f5: $ff
	rst $38                                          ; $76f6: $ff
	rst $38                                          ; $76f7: $ff
	rst $38                                          ; $76f8: $ff
	rst $38                                          ; $76f9: $ff
	rst $38                                          ; $76fa: $ff
	rst $38                                          ; $76fb: $ff
	rst $38                                          ; $76fc: $ff
	rst $38                                          ; $76fd: $ff
	rst $38                                          ; $76fe: $ff
	rst $38                                          ; $76ff: $ff
	rst $38                                          ; $7700: $ff
	rst $38                                          ; $7701: $ff
	rst $38                                          ; $7702: $ff
	rst $38                                          ; $7703: $ff
	rst $38                                          ; $7704: $ff
	rst $38                                          ; $7705: $ff
	rst $38                                          ; $7706: $ff
	rst $38                                          ; $7707: $ff
	rst $38                                          ; $7708: $ff
	rst $38                                          ; $7709: $ff
	rst $38                                          ; $770a: $ff
	rst $38                                          ; $770b: $ff
	rst $38                                          ; $770c: $ff
	rst $38                                          ; $770d: $ff
	rst $38                                          ; $770e: $ff
	rst $38                                          ; $770f: $ff
	rst $38                                          ; $7710: $ff
	rst $38                                          ; $7711: $ff
	rst $38                                          ; $7712: $ff
	rst $38                                          ; $7713: $ff
	rst $38                                          ; $7714: $ff
	rst $38                                          ; $7715: $ff
	rst $38                                          ; $7716: $ff
	rst $38                                          ; $7717: $ff
	rst $38                                          ; $7718: $ff
	rst $38                                          ; $7719: $ff
	rst $38                                          ; $771a: $ff
	rst $38                                          ; $771b: $ff
	rst $38                                          ; $771c: $ff
	rst $38                                          ; $771d: $ff
	rst $38                                          ; $771e: $ff
	rst $38                                          ; $771f: $ff
	rst $38                                          ; $7720: $ff
	rst $38                                          ; $7721: $ff
	rst $38                                          ; $7722: $ff
	rst $38                                          ; $7723: $ff
	rst $38                                          ; $7724: $ff
	rst $38                                          ; $7725: $ff
	rst $38                                          ; $7726: $ff
	rst $38                                          ; $7727: $ff
	rst $38                                          ; $7728: $ff
	rst $38                                          ; $7729: $ff
	rst $38                                          ; $772a: $ff
	rst $38                                          ; $772b: $ff
	rst $38                                          ; $772c: $ff
	rst $38                                          ; $772d: $ff
	rst $38                                          ; $772e: $ff
	rst $38                                          ; $772f: $ff
	rst $38                                          ; $7730: $ff
	rst $38                                          ; $7731: $ff
	rst $38                                          ; $7732: $ff
	rst $38                                          ; $7733: $ff
	rst $38                                          ; $7734: $ff
	rst $38                                          ; $7735: $ff
	rst $38                                          ; $7736: $ff
	rst $38                                          ; $7737: $ff
	rst $38                                          ; $7738: $ff
	rst $38                                          ; $7739: $ff
	rst $38                                          ; $773a: $ff
	rst $38                                          ; $773b: $ff
	rst $38                                          ; $773c: $ff
	rst $38                                          ; $773d: $ff
	rst $38                                          ; $773e: $ff
	rst $38                                          ; $773f: $ff
	rst $38                                          ; $7740: $ff
	rst $38                                          ; $7741: $ff
	rst $38                                          ; $7742: $ff
	rst $38                                          ; $7743: $ff
	rst $38                                          ; $7744: $ff
	rst $38                                          ; $7745: $ff
	rst $38                                          ; $7746: $ff
	rst $38                                          ; $7747: $ff
	rst $38                                          ; $7748: $ff
	rst $38                                          ; $7749: $ff
	rst $38                                          ; $774a: $ff
	rst $38                                          ; $774b: $ff
	rst $38                                          ; $774c: $ff
	rst $38                                          ; $774d: $ff
	rst $38                                          ; $774e: $ff
	rst $38                                          ; $774f: $ff
	rst $38                                          ; $7750: $ff
	rst $38                                          ; $7751: $ff
	rst $38                                          ; $7752: $ff
	rst $38                                          ; $7753: $ff
	rst $38                                          ; $7754: $ff
	rst $38                                          ; $7755: $ff
	rst $38                                          ; $7756: $ff
	rst $38                                          ; $7757: $ff
	rst $38                                          ; $7758: $ff
	rst $38                                          ; $7759: $ff
	rst $38                                          ; $775a: $ff
	rst $38                                          ; $775b: $ff
	rst $38                                          ; $775c: $ff
	rst $38                                          ; $775d: $ff
	rst $38                                          ; $775e: $ff
	rst $38                                          ; $775f: $ff
	rst $38                                          ; $7760: $ff
	rst $38                                          ; $7761: $ff
	rst $38                                          ; $7762: $ff
	rst $38                                          ; $7763: $ff
	rst $38                                          ; $7764: $ff
	rst $38                                          ; $7765: $ff
	rst $38                                          ; $7766: $ff
	rst $38                                          ; $7767: $ff
	rst $38                                          ; $7768: $ff
	rst $38                                          ; $7769: $ff
	rst $38                                          ; $776a: $ff
	rst $38                                          ; $776b: $ff
	rst $38                                          ; $776c: $ff
	rst $38                                          ; $776d: $ff
	rst $38                                          ; $776e: $ff
	rst $38                                          ; $776f: $ff
	rst $38                                          ; $7770: $ff
	rst $38                                          ; $7771: $ff
	rst $38                                          ; $7772: $ff
	rst $38                                          ; $7773: $ff
	rst $38                                          ; $7774: $ff
	rst $38                                          ; $7775: $ff
	rst $38                                          ; $7776: $ff
	rst $38                                          ; $7777: $ff
	rst $38                                          ; $7778: $ff
	rst $38                                          ; $7779: $ff
	rst $38                                          ; $777a: $ff
	rst $38                                          ; $777b: $ff
	rst $38                                          ; $777c: $ff
	rst $38                                          ; $777d: $ff
	rst $38                                          ; $777e: $ff
	rst $38                                          ; $777f: $ff
	rst $38                                          ; $7780: $ff
	rst $38                                          ; $7781: $ff
	rst $38                                          ; $7782: $ff
	rst $38                                          ; $7783: $ff
	rst $38                                          ; $7784: $ff
	rst $38                                          ; $7785: $ff
	rst $38                                          ; $7786: $ff
	rst $38                                          ; $7787: $ff
	rst $38                                          ; $7788: $ff
	rst $38                                          ; $7789: $ff
	rst $38                                          ; $778a: $ff
	rst $38                                          ; $778b: $ff
	rst $38                                          ; $778c: $ff
	rst $38                                          ; $778d: $ff
	rst $38                                          ; $778e: $ff
	rst $38                                          ; $778f: $ff
	rst $38                                          ; $7790: $ff
	rst $38                                          ; $7791: $ff
	rst $38                                          ; $7792: $ff
	rst $38                                          ; $7793: $ff
	rst $38                                          ; $7794: $ff
	rst $38                                          ; $7795: $ff
	rst $38                                          ; $7796: $ff
	rst $38                                          ; $7797: $ff
	rst $38                                          ; $7798: $ff
	rst $38                                          ; $7799: $ff
	rst $38                                          ; $779a: $ff
	rst $38                                          ; $779b: $ff
	rst $38                                          ; $779c: $ff
	rst $38                                          ; $779d: $ff
	rst $38                                          ; $779e: $ff
	rst $38                                          ; $779f: $ff
	rst $38                                          ; $77a0: $ff
	rst $38                                          ; $77a1: $ff
	rst $38                                          ; $77a2: $ff
	rst $38                                          ; $77a3: $ff
	rst $38                                          ; $77a4: $ff
	rst $38                                          ; $77a5: $ff
	rst $38                                          ; $77a6: $ff
	rst $38                                          ; $77a7: $ff
	rst $38                                          ; $77a8: $ff
	rst $38                                          ; $77a9: $ff
	rst $38                                          ; $77aa: $ff
	rst $38                                          ; $77ab: $ff
	rst $38                                          ; $77ac: $ff
	rst $38                                          ; $77ad: $ff
	rst $38                                          ; $77ae: $ff
	rst $38                                          ; $77af: $ff
	rst $38                                          ; $77b0: $ff
	rst $38                                          ; $77b1: $ff
	rst $38                                          ; $77b2: $ff
	rst $38                                          ; $77b3: $ff
	rst $38                                          ; $77b4: $ff
	rst $38                                          ; $77b5: $ff
	rst $38                                          ; $77b6: $ff
	rst $38                                          ; $77b7: $ff
	rst $38                                          ; $77b8: $ff
	rst $38                                          ; $77b9: $ff
	rst $38                                          ; $77ba: $ff
	rst $38                                          ; $77bb: $ff
	rst $38                                          ; $77bc: $ff
	rst $38                                          ; $77bd: $ff
	rst $38                                          ; $77be: $ff
	rst $38                                          ; $77bf: $ff
	rst $38                                          ; $77c0: $ff
	rst $38                                          ; $77c1: $ff
	rst $38                                          ; $77c2: $ff
	rst $38                                          ; $77c3: $ff
	rst $38                                          ; $77c4: $ff
	rst $38                                          ; $77c5: $ff
	rst $38                                          ; $77c6: $ff
	rst $38                                          ; $77c7: $ff
	rst $38                                          ; $77c8: $ff
	rst $38                                          ; $77c9: $ff
	rst $38                                          ; $77ca: $ff
	rst $38                                          ; $77cb: $ff
	rst $38                                          ; $77cc: $ff
	rst $38                                          ; $77cd: $ff
	rst $38                                          ; $77ce: $ff
	rst $38                                          ; $77cf: $ff
	rst $38                                          ; $77d0: $ff
	rst $38                                          ; $77d1: $ff
	rst $38                                          ; $77d2: $ff
	rst $38                                          ; $77d3: $ff
	rst $38                                          ; $77d4: $ff
	rst $38                                          ; $77d5: $ff
	rst $38                                          ; $77d6: $ff
	rst $38                                          ; $77d7: $ff
	rst $38                                          ; $77d8: $ff
	rst $38                                          ; $77d9: $ff
	rst $38                                          ; $77da: $ff
	rst $38                                          ; $77db: $ff
	rst $38                                          ; $77dc: $ff
	rst $38                                          ; $77dd: $ff
	rst $38                                          ; $77de: $ff
	rst $38                                          ; $77df: $ff
	rst $38                                          ; $77e0: $ff
	rst $38                                          ; $77e1: $ff
	rst $38                                          ; $77e2: $ff
	rst $38                                          ; $77e3: $ff
	rst $38                                          ; $77e4: $ff
	rst $38                                          ; $77e5: $ff
	rst $38                                          ; $77e6: $ff
	rst $38                                          ; $77e7: $ff
	rst $38                                          ; $77e8: $ff
	rst $38                                          ; $77e9: $ff
	rst $38                                          ; $77ea: $ff
	rst $38                                          ; $77eb: $ff
	rst $38                                          ; $77ec: $ff
	rst $38                                          ; $77ed: $ff
	rst $38                                          ; $77ee: $ff
	rst $38                                          ; $77ef: $ff
	rst $38                                          ; $77f0: $ff
	rst $38                                          ; $77f1: $ff
	rst $38                                          ; $77f2: $ff
	rst $38                                          ; $77f3: $ff
	rst $38                                          ; $77f4: $ff
	rst $38                                          ; $77f5: $ff
	rst $38                                          ; $77f6: $ff
	rst $38                                          ; $77f7: $ff
	rst $38                                          ; $77f8: $ff
	rst $38                                          ; $77f9: $ff
	rst $38                                          ; $77fa: $ff
	rst $38                                          ; $77fb: $ff
	rst $38                                          ; $77fc: $ff
	rst $38                                          ; $77fd: $ff
	rst $38                                          ; $77fe: $ff
	rst $38                                          ; $77ff: $ff
	rst $38                                          ; $7800: $ff
	rst $38                                          ; $7801: $ff
	rst $38                                          ; $7802: $ff
	rst $38                                          ; $7803: $ff
	rst $38                                          ; $7804: $ff
	rst $38                                          ; $7805: $ff
	rst $38                                          ; $7806: $ff
	rst $38                                          ; $7807: $ff
	rst $38                                          ; $7808: $ff
	rst $38                                          ; $7809: $ff
	rst $38                                          ; $780a: $ff
	rst $38                                          ; $780b: $ff
	rst $38                                          ; $780c: $ff
	rst $38                                          ; $780d: $ff
	rst $38                                          ; $780e: $ff
	rst $38                                          ; $780f: $ff
	rst $38                                          ; $7810: $ff
	rst $38                                          ; $7811: $ff
	rst $38                                          ; $7812: $ff
	rst $38                                          ; $7813: $ff
	rst $38                                          ; $7814: $ff
	rst $38                                          ; $7815: $ff
	rst $38                                          ; $7816: $ff
	rst $38                                          ; $7817: $ff
	rst $38                                          ; $7818: $ff
	rst $38                                          ; $7819: $ff
	rst $38                                          ; $781a: $ff
	rst $38                                          ; $781b: $ff
	rst $38                                          ; $781c: $ff
	rst $38                                          ; $781d: $ff
	rst $38                                          ; $781e: $ff
	rst $38                                          ; $781f: $ff
	rst $38                                          ; $7820: $ff
	rst $38                                          ; $7821: $ff
	rst $38                                          ; $7822: $ff
	rst $38                                          ; $7823: $ff
	rst $38                                          ; $7824: $ff
	rst $38                                          ; $7825: $ff
	rst $38                                          ; $7826: $ff
	rst $38                                          ; $7827: $ff
	rst $38                                          ; $7828: $ff
	rst $38                                          ; $7829: $ff
	rst $38                                          ; $782a: $ff
	rst $38                                          ; $782b: $ff
	rst $38                                          ; $782c: $ff
	rst $38                                          ; $782d: $ff
	rst $38                                          ; $782e: $ff
	rst $38                                          ; $782f: $ff
	rst $38                                          ; $7830: $ff
	rst $38                                          ; $7831: $ff
	rst $38                                          ; $7832: $ff
	rst $38                                          ; $7833: $ff
	rst $38                                          ; $7834: $ff
	rst $38                                          ; $7835: $ff
	rst $38                                          ; $7836: $ff
	rst $38                                          ; $7837: $ff
	rst $38                                          ; $7838: $ff
	rst $38                                          ; $7839: $ff
	rst $38                                          ; $783a: $ff
	rst $38                                          ; $783b: $ff
	rst $38                                          ; $783c: $ff
	rst $38                                          ; $783d: $ff
	rst $38                                          ; $783e: $ff
	rst $38                                          ; $783f: $ff
	rst $38                                          ; $7840: $ff
	rst $38                                          ; $7841: $ff
	rst $38                                          ; $7842: $ff
	rst $38                                          ; $7843: $ff
	rst $38                                          ; $7844: $ff
	rst $38                                          ; $7845: $ff
	rst $38                                          ; $7846: $ff
	rst $38                                          ; $7847: $ff
	rst $38                                          ; $7848: $ff
	rst $38                                          ; $7849: $ff
	rst $38                                          ; $784a: $ff
	rst $38                                          ; $784b: $ff
	rst $38                                          ; $784c: $ff
	rst $38                                          ; $784d: $ff
	rst $38                                          ; $784e: $ff
	rst $38                                          ; $784f: $ff
	rst $38                                          ; $7850: $ff
	rst $38                                          ; $7851: $ff
	rst $38                                          ; $7852: $ff
	rst $38                                          ; $7853: $ff
	rst $38                                          ; $7854: $ff
	rst $38                                          ; $7855: $ff
	rst $38                                          ; $7856: $ff
	rst $38                                          ; $7857: $ff
	rst $38                                          ; $7858: $ff
	rst $38                                          ; $7859: $ff
	rst $38                                          ; $785a: $ff
	rst $38                                          ; $785b: $ff
	rst $38                                          ; $785c: $ff
	rst $38                                          ; $785d: $ff
	rst $38                                          ; $785e: $ff
	rst $38                                          ; $785f: $ff
	rst $38                                          ; $7860: $ff
	rst $38                                          ; $7861: $ff
	rst $38                                          ; $7862: $ff
	rst $38                                          ; $7863: $ff
	rst $38                                          ; $7864: $ff
	rst $38                                          ; $7865: $ff
	rst $38                                          ; $7866: $ff
	rst $38                                          ; $7867: $ff
	rst $38                                          ; $7868: $ff
	rst $38                                          ; $7869: $ff
	rst $38                                          ; $786a: $ff
	rst $38                                          ; $786b: $ff
	rst $38                                          ; $786c: $ff
	rst $38                                          ; $786d: $ff
	rst $38                                          ; $786e: $ff
	rst $38                                          ; $786f: $ff
	rst $38                                          ; $7870: $ff
	rst $38                                          ; $7871: $ff
	rst $38                                          ; $7872: $ff
	rst $38                                          ; $7873: $ff
	rst $38                                          ; $7874: $ff
	rst $38                                          ; $7875: $ff
	rst $38                                          ; $7876: $ff
	rst $38                                          ; $7877: $ff
	rst $38                                          ; $7878: $ff
	rst $38                                          ; $7879: $ff
	rst $38                                          ; $787a: $ff
	rst $38                                          ; $787b: $ff
	rst $38                                          ; $787c: $ff
	rst $38                                          ; $787d: $ff
	rst $38                                          ; $787e: $ff
	rst $38                                          ; $787f: $ff
	rst $38                                          ; $7880: $ff
	rst $38                                          ; $7881: $ff
	rst $38                                          ; $7882: $ff
	rst $38                                          ; $7883: $ff
	rst $38                                          ; $7884: $ff
	rst $38                                          ; $7885: $ff
	rst $38                                          ; $7886: $ff
	rst $38                                          ; $7887: $ff
	rst $38                                          ; $7888: $ff
	rst $38                                          ; $7889: $ff
	rst $38                                          ; $788a: $ff
	rst $38                                          ; $788b: $ff
	rst $38                                          ; $788c: $ff
	rst $38                                          ; $788d: $ff
	rst $38                                          ; $788e: $ff
	rst $38                                          ; $788f: $ff
	rst $38                                          ; $7890: $ff
	rst $38                                          ; $7891: $ff
	rst $38                                          ; $7892: $ff
	rst $38                                          ; $7893: $ff
	rst $38                                          ; $7894: $ff
	rst $38                                          ; $7895: $ff
	rst $38                                          ; $7896: $ff
	rst $38                                          ; $7897: $ff
	rst $38                                          ; $7898: $ff
	rst $38                                          ; $7899: $ff
	rst $38                                          ; $789a: $ff
	rst $38                                          ; $789b: $ff
	rst $38                                          ; $789c: $ff
	rst $38                                          ; $789d: $ff
	rst $38                                          ; $789e: $ff
	rst $38                                          ; $789f: $ff
	rst $38                                          ; $78a0: $ff
	rst $38                                          ; $78a1: $ff
	rst $38                                          ; $78a2: $ff
	rst $38                                          ; $78a3: $ff
	rst $38                                          ; $78a4: $ff
	rst $38                                          ; $78a5: $ff
	rst $38                                          ; $78a6: $ff
	rst $38                                          ; $78a7: $ff
	rst $38                                          ; $78a8: $ff
	rst $38                                          ; $78a9: $ff
	rst $38                                          ; $78aa: $ff
	rst $38                                          ; $78ab: $ff
	rst $38                                          ; $78ac: $ff
	rst $38                                          ; $78ad: $ff
	rst $38                                          ; $78ae: $ff
	rst $38                                          ; $78af: $ff
	rst $38                                          ; $78b0: $ff
	rst $38                                          ; $78b1: $ff
	rst $38                                          ; $78b2: $ff
	rst $38                                          ; $78b3: $ff
	rst $38                                          ; $78b4: $ff
	rst $38                                          ; $78b5: $ff
	rst $38                                          ; $78b6: $ff
	rst $38                                          ; $78b7: $ff
	rst $38                                          ; $78b8: $ff
	rst $38                                          ; $78b9: $ff
	rst $38                                          ; $78ba: $ff
	rst $38                                          ; $78bb: $ff
	rst $38                                          ; $78bc: $ff
	rst $38                                          ; $78bd: $ff
	rst $38                                          ; $78be: $ff
	rst $38                                          ; $78bf: $ff
	rst $38                                          ; $78c0: $ff
	rst $38                                          ; $78c1: $ff
	rst $38                                          ; $78c2: $ff
	rst $38                                          ; $78c3: $ff
	rst $38                                          ; $78c4: $ff
	rst $38                                          ; $78c5: $ff
	rst $38                                          ; $78c6: $ff
	rst $38                                          ; $78c7: $ff
	rst $38                                          ; $78c8: $ff
	rst $38                                          ; $78c9: $ff
	rst $38                                          ; $78ca: $ff
	rst $38                                          ; $78cb: $ff
	rst $38                                          ; $78cc: $ff
	rst $38                                          ; $78cd: $ff
	rst $38                                          ; $78ce: $ff
	rst $38                                          ; $78cf: $ff
	rst $38                                          ; $78d0: $ff
	rst $38                                          ; $78d1: $ff
	rst $38                                          ; $78d2: $ff
	rst $38                                          ; $78d3: $ff
	rst $38                                          ; $78d4: $ff
	rst $38                                          ; $78d5: $ff
	rst $38                                          ; $78d6: $ff
	rst $38                                          ; $78d7: $ff
	rst $38                                          ; $78d8: $ff
	rst $38                                          ; $78d9: $ff
	rst $38                                          ; $78da: $ff
	rst $38                                          ; $78db: $ff
	rst $38                                          ; $78dc: $ff
	rst $38                                          ; $78dd: $ff
	rst $38                                          ; $78de: $ff
	rst $38                                          ; $78df: $ff
	rst $38                                          ; $78e0: $ff
	rst $38                                          ; $78e1: $ff
	rst $38                                          ; $78e2: $ff
	rst $38                                          ; $78e3: $ff
	rst $38                                          ; $78e4: $ff
	rst $38                                          ; $78e5: $ff
	rst $38                                          ; $78e6: $ff
	rst $38                                          ; $78e7: $ff
	rst $38                                          ; $78e8: $ff
	rst $38                                          ; $78e9: $ff
	rst $38                                          ; $78ea: $ff
	rst $38                                          ; $78eb: $ff
	rst $38                                          ; $78ec: $ff
	rst $38                                          ; $78ed: $ff
	rst $38                                          ; $78ee: $ff
	rst $38                                          ; $78ef: $ff
	rst $38                                          ; $78f0: $ff
	rst $38                                          ; $78f1: $ff
	rst $38                                          ; $78f2: $ff
	rst $38                                          ; $78f3: $ff
	rst $38                                          ; $78f4: $ff
	rst $38                                          ; $78f5: $ff
	rst $38                                          ; $78f6: $ff
	rst $38                                          ; $78f7: $ff
	rst $38                                          ; $78f8: $ff
	rst $38                                          ; $78f9: $ff
	rst $38                                          ; $78fa: $ff
	rst $38                                          ; $78fb: $ff
	rst $38                                          ; $78fc: $ff
	rst $38                                          ; $78fd: $ff
	rst $38                                          ; $78fe: $ff
	rst $38                                          ; $78ff: $ff
	rst $38                                          ; $7900: $ff
	rst $38                                          ; $7901: $ff
	rst $38                                          ; $7902: $ff
	rst $38                                          ; $7903: $ff
	rst $38                                          ; $7904: $ff
	rst $38                                          ; $7905: $ff
	rst $38                                          ; $7906: $ff
	rst $38                                          ; $7907: $ff
	rst $38                                          ; $7908: $ff
	rst $38                                          ; $7909: $ff
	rst $38                                          ; $790a: $ff
	rst $38                                          ; $790b: $ff
	rst $38                                          ; $790c: $ff
	rst $38                                          ; $790d: $ff
	rst $38                                          ; $790e: $ff
	rst $38                                          ; $790f: $ff
	rst $38                                          ; $7910: $ff
	rst $38                                          ; $7911: $ff
	rst $38                                          ; $7912: $ff
	rst $38                                          ; $7913: $ff
	rst $38                                          ; $7914: $ff
	rst $38                                          ; $7915: $ff
	rst $38                                          ; $7916: $ff
	rst $38                                          ; $7917: $ff
	rst $38                                          ; $7918: $ff
	rst $38                                          ; $7919: $ff
	rst $38                                          ; $791a: $ff
	rst $38                                          ; $791b: $ff
	rst $38                                          ; $791c: $ff
	rst $38                                          ; $791d: $ff
	rst $38                                          ; $791e: $ff
	rst $38                                          ; $791f: $ff
	rst $38                                          ; $7920: $ff
	rst $38                                          ; $7921: $ff
	rst $38                                          ; $7922: $ff
	rst $38                                          ; $7923: $ff
	rst $38                                          ; $7924: $ff
	rst $38                                          ; $7925: $ff
	rst $38                                          ; $7926: $ff
	rst $38                                          ; $7927: $ff
	rst $38                                          ; $7928: $ff
	rst $38                                          ; $7929: $ff
	rst $38                                          ; $792a: $ff
	rst $38                                          ; $792b: $ff
	rst $38                                          ; $792c: $ff
	rst $38                                          ; $792d: $ff
	rst $38                                          ; $792e: $ff
	rst $38                                          ; $792f: $ff
	rst $38                                          ; $7930: $ff
	rst $38                                          ; $7931: $ff
	rst $38                                          ; $7932: $ff
	rst $38                                          ; $7933: $ff
	rst $38                                          ; $7934: $ff
	rst $38                                          ; $7935: $ff
	rst $38                                          ; $7936: $ff
	rst $38                                          ; $7937: $ff
	rst $38                                          ; $7938: $ff
	rst $38                                          ; $7939: $ff
	rst $38                                          ; $793a: $ff
	rst $38                                          ; $793b: $ff
	rst $38                                          ; $793c: $ff
	rst $38                                          ; $793d: $ff
	rst $38                                          ; $793e: $ff
	rst $38                                          ; $793f: $ff
	rst $38                                          ; $7940: $ff
	rst $38                                          ; $7941: $ff
	rst $38                                          ; $7942: $ff
	rst $38                                          ; $7943: $ff
	rst $38                                          ; $7944: $ff
	rst $38                                          ; $7945: $ff
	rst $38                                          ; $7946: $ff
	rst $38                                          ; $7947: $ff
	rst $38                                          ; $7948: $ff
	rst $38                                          ; $7949: $ff
	rst $38                                          ; $794a: $ff
	rst $38                                          ; $794b: $ff
	rst $38                                          ; $794c: $ff
	rst $38                                          ; $794d: $ff
	rst $38                                          ; $794e: $ff
	rst $38                                          ; $794f: $ff
	rst $38                                          ; $7950: $ff
	rst $38                                          ; $7951: $ff
	rst $38                                          ; $7952: $ff
	rst $38                                          ; $7953: $ff
	rst $38                                          ; $7954: $ff
	rst $38                                          ; $7955: $ff
	rst $38                                          ; $7956: $ff
	rst $38                                          ; $7957: $ff
	rst $38                                          ; $7958: $ff
	rst $38                                          ; $7959: $ff
	rst $38                                          ; $795a: $ff
	rst $38                                          ; $795b: $ff
	rst $38                                          ; $795c: $ff
	rst $38                                          ; $795d: $ff
	rst $38                                          ; $795e: $ff
	rst $38                                          ; $795f: $ff
	rst $38                                          ; $7960: $ff
	rst $38                                          ; $7961: $ff
	rst $38                                          ; $7962: $ff
	rst $38                                          ; $7963: $ff
	rst $38                                          ; $7964: $ff
	rst $38                                          ; $7965: $ff
	rst $38                                          ; $7966: $ff
	rst $38                                          ; $7967: $ff
	rst $38                                          ; $7968: $ff
	rst $38                                          ; $7969: $ff
	rst $38                                          ; $796a: $ff
	rst $38                                          ; $796b: $ff
	rst $38                                          ; $796c: $ff
	rst $38                                          ; $796d: $ff
	rst $38                                          ; $796e: $ff
	rst $38                                          ; $796f: $ff
	rst $38                                          ; $7970: $ff
	rst $38                                          ; $7971: $ff
	rst $38                                          ; $7972: $ff
	rst $38                                          ; $7973: $ff
	rst $38                                          ; $7974: $ff
	rst $38                                          ; $7975: $ff
	rst $38                                          ; $7976: $ff
	rst $38                                          ; $7977: $ff
	rst $38                                          ; $7978: $ff
	rst $38                                          ; $7979: $ff
	rst $38                                          ; $797a: $ff
	rst $38                                          ; $797b: $ff
	rst $38                                          ; $797c: $ff
	rst $38                                          ; $797d: $ff
	rst $38                                          ; $797e: $ff
	rst $38                                          ; $797f: $ff
	rst $38                                          ; $7980: $ff
	rst $38                                          ; $7981: $ff
	rst $38                                          ; $7982: $ff
	rst $38                                          ; $7983: $ff
	rst $38                                          ; $7984: $ff
	rst $38                                          ; $7985: $ff
	rst $38                                          ; $7986: $ff
	rst $38                                          ; $7987: $ff
	rst $38                                          ; $7988: $ff
	rst $38                                          ; $7989: $ff
	rst $38                                          ; $798a: $ff
	rst $38                                          ; $798b: $ff
	rst $38                                          ; $798c: $ff
	rst $38                                          ; $798d: $ff
	rst $38                                          ; $798e: $ff
	rst $38                                          ; $798f: $ff
	rst $38                                          ; $7990: $ff
	rst $38                                          ; $7991: $ff
	rst $38                                          ; $7992: $ff
	rst $38                                          ; $7993: $ff
	rst $38                                          ; $7994: $ff
	rst $38                                          ; $7995: $ff
	rst $38                                          ; $7996: $ff
	rst $38                                          ; $7997: $ff
	rst $38                                          ; $7998: $ff
	rst $38                                          ; $7999: $ff
	rst $38                                          ; $799a: $ff
	rst $38                                          ; $799b: $ff
	rst $38                                          ; $799c: $ff
	rst $38                                          ; $799d: $ff
	rst $38                                          ; $799e: $ff
	rst $38                                          ; $799f: $ff
	rst $38                                          ; $79a0: $ff
	rst $38                                          ; $79a1: $ff
	rst $38                                          ; $79a2: $ff
	rst $38                                          ; $79a3: $ff
	rst $38                                          ; $79a4: $ff
	rst $38                                          ; $79a5: $ff
	rst $38                                          ; $79a6: $ff
	rst $38                                          ; $79a7: $ff
	rst $38                                          ; $79a8: $ff
	rst $38                                          ; $79a9: $ff
	rst $38                                          ; $79aa: $ff
	rst $38                                          ; $79ab: $ff
	rst $38                                          ; $79ac: $ff
	rst $38                                          ; $79ad: $ff
	rst $38                                          ; $79ae: $ff
	rst $38                                          ; $79af: $ff
	rst $38                                          ; $79b0: $ff
	rst $38                                          ; $79b1: $ff
	rst $38                                          ; $79b2: $ff
	rst $38                                          ; $79b3: $ff
	rst $38                                          ; $79b4: $ff
	rst $38                                          ; $79b5: $ff
	rst $38                                          ; $79b6: $ff
	rst $38                                          ; $79b7: $ff
	rst $38                                          ; $79b8: $ff
	rst $38                                          ; $79b9: $ff
	rst $38                                          ; $79ba: $ff
	rst $38                                          ; $79bb: $ff
	rst $38                                          ; $79bc: $ff
	rst $38                                          ; $79bd: $ff
	rst $38                                          ; $79be: $ff
	rst $38                                          ; $79bf: $ff
	rst $38                                          ; $79c0: $ff
	rst $38                                          ; $79c1: $ff
	rst $38                                          ; $79c2: $ff
	rst $38                                          ; $79c3: $ff
	rst $38                                          ; $79c4: $ff
	rst $38                                          ; $79c5: $ff
	rst $38                                          ; $79c6: $ff
	rst $38                                          ; $79c7: $ff
	rst $38                                          ; $79c8: $ff

Jump_005_79c9:
	rst $38                                          ; $79c9: $ff
	rst $38                                          ; $79ca: $ff
	rst $38                                          ; $79cb: $ff
	rst $38                                          ; $79cc: $ff
	rst $38                                          ; $79cd: $ff
	rst $38                                          ; $79ce: $ff
	rst $38                                          ; $79cf: $ff
	rst $38                                          ; $79d0: $ff
	rst $38                                          ; $79d1: $ff
	rst $38                                          ; $79d2: $ff
	rst $38                                          ; $79d3: $ff
	rst $38                                          ; $79d4: $ff
	rst $38                                          ; $79d5: $ff
	rst $38                                          ; $79d6: $ff
	rst $38                                          ; $79d7: $ff
	rst $38                                          ; $79d8: $ff
	rst $38                                          ; $79d9: $ff
	rst $38                                          ; $79da: $ff
	rst $38                                          ; $79db: $ff
	rst $38                                          ; $79dc: $ff
	rst $38                                          ; $79dd: $ff
	rst $38                                          ; $79de: $ff
	rst $38                                          ; $79df: $ff
	rst $38                                          ; $79e0: $ff
	rst $38                                          ; $79e1: $ff
	rst $38                                          ; $79e2: $ff
	rst $38                                          ; $79e3: $ff
	rst $38                                          ; $79e4: $ff
	rst $38                                          ; $79e5: $ff
	rst $38                                          ; $79e6: $ff
	rst $38                                          ; $79e7: $ff
	rst $38                                          ; $79e8: $ff
	rst $38                                          ; $79e9: $ff
	rst $38                                          ; $79ea: $ff
	rst $38                                          ; $79eb: $ff
	rst $38                                          ; $79ec: $ff
	rst $38                                          ; $79ed: $ff
	rst $38                                          ; $79ee: $ff
	rst $38                                          ; $79ef: $ff
	rst $38                                          ; $79f0: $ff
	rst $38                                          ; $79f1: $ff
	rst $38                                          ; $79f2: $ff
	rst $38                                          ; $79f3: $ff
	rst $38                                          ; $79f4: $ff
	rst $38                                          ; $79f5: $ff
	rst $38                                          ; $79f6: $ff
	rst $38                                          ; $79f7: $ff
	rst $38                                          ; $79f8: $ff
	rst $38                                          ; $79f9: $ff
	rst $38                                          ; $79fa: $ff
	rst $38                                          ; $79fb: $ff
	rst $38                                          ; $79fc: $ff
	rst $38                                          ; $79fd: $ff
	rst $38                                          ; $79fe: $ff
	rst $38                                          ; $79ff: $ff
	rst $38                                          ; $7a00: $ff
	rst $38                                          ; $7a01: $ff
	rst $38                                          ; $7a02: $ff
	rst $38                                          ; $7a03: $ff
	rst $38                                          ; $7a04: $ff
	rst $38                                          ; $7a05: $ff
	rst $38                                          ; $7a06: $ff
	rst $38                                          ; $7a07: $ff
	rst $38                                          ; $7a08: $ff
	rst $38                                          ; $7a09: $ff
	rst $38                                          ; $7a0a: $ff
	rst $38                                          ; $7a0b: $ff
	rst $38                                          ; $7a0c: $ff
	rst $38                                          ; $7a0d: $ff
	rst $38                                          ; $7a0e: $ff
	rst $38                                          ; $7a0f: $ff
	rst $38                                          ; $7a10: $ff
	rst $38                                          ; $7a11: $ff
	rst $38                                          ; $7a12: $ff
	rst $38                                          ; $7a13: $ff
	rst $38                                          ; $7a14: $ff
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

Jump_005_7ec9:
	rst $38                                          ; $7ec9: $ff
	rst $38                                          ; $7eca: $ff
	rst $38                                          ; $7ecb: $ff
	rst $38                                          ; $7ecc: $ff
	rst $38                                          ; $7ecd: $ff
	rst $38                                          ; $7ece: $ff
	rst $38                                          ; $7ecf: $ff
	rst $38                                          ; $7ed0: $ff
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
