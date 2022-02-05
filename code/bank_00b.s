; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

	ld a, [$da17]                                    ; $4000: $fa $17 $da
	ld l, c                                          ; $4003: $69
	nop                                              ; $4004: $00
	jr jr_00b_401e                                   ; $4005: $18 $17

	inc sp                                           ; $4007: $33
	ld l, c                                          ; $4008: $69
	nop                                              ; $4009: $00
	sbc b                                            ; $400a: $98
	ld d, $94                                        ; $400b: $16 $94
	ld b, d                                          ; $400d: $42
	nop                                              ; $400e: $00
	sub b                                            ; $400f: $90
	rst $38                                          ; $4010: $ff
	ld a, [$7017]                                    ; $4011: $fa $17 $70
	ld l, d                                          ; $4014: $6a
	add b                                            ; $4015: $80
	call c, $0b17                                    ; $4016: $dc $17 $0b
	ld l, d                                          ; $4019: $6a
	add b                                            ; $401a: $80
	jp c, $2116                                      ; $401b: $da $16 $21

jr_00b_401e:
	ld b, a                                          ; $401e: $47
	nop                                              ; $401f: $00
	sub b                                            ; $4020: $90
	ld d, $a3                                        ; $4021: $16 $a3
	ld b, [hl]                                       ; $4023: $46
	nop                                              ; $4024: $00
	add b                                            ; $4025: $80
	rla                                              ; $4026: $17
	cp b                                             ; $4027: $b8
	ld l, h                                          ; $4028: $6c
	add b                                            ; $4029: $80
	sbc $fc                                          ; $402a: $de $fc
	ld c, $1f                                        ; $402c: $0e $1f
	ld l, h                                          ; $402e: $6c
	db $d3                                           ; $402f: $d3
	call nc, $f9ff                                   ; $4030: $d4 $ff $f9
	rla                                              ; $4033: $17
	pop de                                           ; $4034: $d1
	ld l, h                                          ; $4035: $6c
	add b                                            ; $4036: $80
	sbc $ff                                          ; $4037: $de $ff
	ld a, [$6317]                                    ; $4039: $fa $17 $63
	ld l, e                                          ; $403c: $6b
	nop                                              ; $403d: $00
	jr jr_00b_4057                                   ; $403e: $18 $17

	xor b                                            ; $4040: $a8
	ld l, d                                          ; $4041: $6a
	nop                                              ; $4042: $00
	sbc b                                            ; $4043: $98
	ld d, $43                                        ; $4044: $16 $43
	ld c, b                                          ; $4046: $48
	nop                                              ; $4047: $00
	sub b                                            ; $4048: $90
	rst $38                                          ; $4049: $ff
	ld a, [$9517]                                    ; $404a: $fa $17 $95
	ld l, h                                          ; $404d: $6c
	add b                                            ; $404e: $80
	call c, Call_00b_7717                            ; $404f: $dc $17 $77
	ld l, e                                          ; $4052: $6b
	add b                                            ; $4053: $80
	jp c, $e516                                      ; $4054: $da $16 $e5

jr_00b_4057:
	ld c, d                                          ; $4057: $4a
	or b                                             ; $4058: $b0
	sub d                                            ; $4059: $92
	ld d, $ff                                        ; $405a: $16 $ff
	ld c, [hl]                                       ; $405c: $4e
	nop                                              ; $405d: $00
	adc b                                            ; $405e: $88
	rst $38                                          ; $405f: $ff
	ld a, [$1918]                                    ; $4060: $fa $18 $19
	ld h, h                                          ; $4063: $64
	add b                                            ; $4064: $80
	call c, $a218                                    ; $4065: $dc $18 $a2
	ld h, d                                          ; $4068: $62
	add b                                            ; $4069: $80
	jp c, $0018                                     ; $406a: $da $18 $00

	ld b, b                                          ; $406d: $40
	or b                                             ; $406e: $b0
	sub d                                            ; $406f: $92
	jr jr_00b_40b9                                   ; $4070: $18 $47

	ld b, e                                          ; $4072: $43
	nop                                              ; $4073: $00
	adc b                                            ; $4074: $88
	rst $38                                          ; $4075: $ff
	ld a, [$7b18]                                    ; $4076: $fa $18 $7b
	ld h, l                                          ; $4079: $65
	nop                                              ; $407a: $00
	jr jr_00b_4095                                   ; $407b: $18 $18

	daa                                              ; $407d: $27
	ld h, h                                          ; $407e: $64
	nop                                              ; $407f: $00
	sbc b                                            ; $4080: $98
	ld d, $f3                                        ; $4081: $16 $f3
	ld d, e                                          ; $4083: $53
	nop                                              ; $4084: $00
	add b                                            ; $4085: $80
	jr @+$7e                                         ; $4086: $18 $7c

	ld b, a                                          ; $4088: $47
	nop                                              ; $4089: $00
	sub b                                            ; $408a: $90
	jr jr_00b_40a8                                   ; $408b: $18 $1b

	ld c, l                                          ; $408d: $4d
	nop                                              ; $408e: $00
	adc b                                            ; $408f: $88
	db $fc                                           ; $4090: $fc
	ld c, $7b                                        ; $4091: $0e $7b
	ld l, h                                          ; $4093: $6c
	db $d3                                           ; $4094: $d3

jr_00b_4095:
	call nc, $f9ff                                   ; $4095: $d4 $ff $f9
	ld d, $8d                                        ; $4098: $16 $8d
	ld b, c                                          ; $409a: $41
	nop                                              ; $409b: $00
	add b                                            ; $409c: $80
	db $fc                                           ; $409d: $fc
	ld c, $ae                                        ; $409e: $0e $ae
	ld l, h                                          ; $40a0: $6c
	db $d3                                           ; $40a1: $d3
	call nc, $faff                                   ; $40a2: $d4 $ff $fa
	rla                                              ; $40a5: $17
	dec a                                            ; $40a6: $3d
	ld l, [hl]                                       ; $40a7: $6e

jr_00b_40a8:
	nop                                              ; $40a8: $00
	jr jr_00b_40c2                                   ; $40a9: $18 $17

	and $6c                                          ; $40ab: $e6 $6c
	nop                                              ; $40ad: $00
	sbc b                                            ; $40ae: $98
	ld d, $19                                        ; $40af: $16 $19
	ld d, h                                          ; $40b1: $54
	nop                                              ; $40b2: $00
	sub b                                            ; $40b3: $90
	ld d, $24                                        ; $40b4: $16 $24
	ld e, b                                          ; $40b6: $58
	nop                                              ; $40b7: $00
	adc b                                            ; $40b8: $88

jr_00b_40b9:
	rst $38                                          ; $40b9: $ff
	ld a, [$6f17]                                    ; $40ba: $fa $17 $6f
	ld l, a                                          ; $40bd: $6f
	nop                                              ; $40be: $00
	jr jr_00b_40d8                                   ; $40bf: $18 $17

	add h                                            ; $40c1: $84

jr_00b_40c2:
	ld l, [hl]                                       ; $40c2: $6e
	nop                                              ; $40c3: $00
	sbc b                                            ; $40c4: $98
	ld d, $6e                                        ; $40c5: $16 $6e
	ld e, h                                          ; $40c7: $5c
	nop                                              ; $40c8: $00
	sub b                                            ; $40c9: $90
	ld d, $83                                        ; $40ca: $16 $83
	ld h, b                                          ; $40cc: $60
	nop                                              ; $40cd: $00
	adc b                                            ; $40ce: $88
	rst $38                                          ; $40cf: $ff
	ld a, [$b417]                                    ; $40d0: $fa $17 $b4
	ld [hl], b                                       ; $40d3: $70
	nop                                              ; $40d4: $00
	jr jr_00b_40ee                                   ; $40d5: $18 $17

	adc h                                            ; $40d7: $8c

jr_00b_40d8:
	ld l, a                                          ; $40d8: $6f
	nop                                              ; $40d9: $00
	sbc b                                            ; $40da: $98
	ld d, $5c                                        ; $40db: $16 $5c
	ld h, c                                          ; $40dd: $61
	nop                                              ; $40de: $00
	sub b                                            ; $40df: $90
	ld d, $1e                                        ; $40e0: $16 $1e
	ld h, l                                          ; $40e2: $65
	nop                                              ; $40e3: $00
	adc b                                            ; $40e4: $88
	rst $38                                          ; $40e5: $ff
	rst GetHLinHL                                          ; $40e6: $cf
	jr c, jr_00b_40e9                                ; $40e7: $38 $00

jr_00b_40e9:
	jp nz, $c33b                                     ; $40e9: $c2 $3b $c3

	inc a                                            ; $40ec: $3c
	nop                                              ; $40ed: $00

jr_00b_40ee:
	jp nz, $003a                                     ; $40ee: $c2 $3a $00

	add b                                            ; $40f1: $80
	ld b, b                                          ; $40f2: $40
	jr nz, jr_00b_4105                               ; $40f3: $20 $10

	ld [$0204], sp                                   ; $40f5: $08 $04 $02
	ld bc, $0201                                     ; $40f8: $01 $01 $02
	ld [bc], a                                       ; $40fb: $02
	nop                                              ; $40fc: $00
	inc b                                            ; $40fd: $04
	ld bc, $0108                                     ; $40fe: $01 $08 $01
	db $10                                           ; $4101: $10
	inc b                                            ; $4102: $04
	jr nz, jr_00b_4108                               ; $4103: $20 $03

jr_00b_4105:
	rlca                                             ; $4105: $07
	rrca                                             ; $4106: $0f
	rla                                              ; $4107: $17

jr_00b_4108:
	rra                                              ; $4108: $1f
	daa                                              ; $4109: $27
	ld [bc], a                                       ; $410a: $02
	inc c                                            ; $410b: $0c
	ld bc, $1020                                     ; $410c: $01 $20 $10
	nop                                              ; $410f: $00
	db $fd                                           ; $4110: $fd
	add b                                            ; $4111: $80
	cp $80                                           ; $4112: $fe $80
	nop                                              ; $4114: $00
	nop                                              ; $4115: $00
	ld bc, $d4e7                                     ; $4116: $01 $e7 $d4
	inc bc                                           ; $4119: $03
	push de                                          ; $411a: $d5
	rst FarCall                                          ; $411b: $f7
	call nc, $d4d3                                   ; $411c: $d4 $d3 $d4
	jp nz, $0039                                     ; $411f: $c2 $39 $00

	ld b, l                                          ; $4122: $45
	ld c, l                                          ; $4123: $4d
	ld b, l                                          ; $4124: $45
	ld b, l                                          ; $4125: $45
	ld b, l                                          ; $4126: $45
	ccf                                              ; $4127: $3f
	ld a, [hl+]                                      ; $4128: $2a
	dec [hl]                                         ; $4129: $35
	inc de                                           ; $412a: $13
	ld b, l                                          ; $412b: $45
	ld c, h                                          ; $412c: $4c
	ld b, l                                          ; $412d: $45
	ld b, l                                          ; $412e: $45
	ld b, l                                          ; $412f: $45
	add hl, sp                                       ; $4130: $39
	daa                                              ; $4131: $27
	ccf                                              ; $4132: $3f
	inc de                                           ; $4133: $13
	ld b, l                                          ; $4134: $45
	ld c, e                                          ; $4135: $4b
	ld b, l                                          ; $4136: $45
	ld b, l                                          ; $4137: $45
	ld b, l                                          ; $4138: $45
	ld a, [hl-]                                      ; $4139: $3a
	daa                                              ; $413a: $27
	jr c, jr_00b_4172                                ; $413b: $38 $35

	ld b, l                                          ; $413d: $45
	ld c, d                                          ; $413e: $4a
	ld b, l                                          ; $413f: $45
	ld b, l                                          ; $4140: $45
	ld b, l                                          ; $4141: $45
	inc [hl]                                         ; $4142: $34
	dec [hl]                                         ; $4143: $35
	jr c, jr_00b_4175                                ; $4144: $38 $2f

	ld b, l                                          ; $4146: $45
	ld c, c                                          ; $4147: $49
	ld b, l                                          ; $4148: $45
	ld b, l                                          ; $4149: $45
	ld b, l                                          ; $414a: $45
	ld sp, $2f31                                     ; $414b: $31 $31 $2f
	inc de                                           ; $414e: $13
	ld a, [$fb18]                                    ; $414f: $fa $18 $fb
	ld [hl], h                                       ; $4152: $74
	nop                                              ; $4153: $00
	jr jr_00b_416e                                   ; $4154: $18 $18

	ld d, h                                          ; $4156: $54
	ld [hl], h                                       ; $4157: $74
	nop                                              ; $4158: $00

jr_00b_4159:
	sbc b                                            ; $4159: $98
	ld a, [$a818]                                    ; $415a: $fa $18 $a8
	halt                                             ; $415d: $76
	add b                                            ; $415e: $80
	call c, $2018                                    ; $415f: $dc $18 $20
	halt                                             ; $4162: $76
	add b                                            ; $4163: $80
	jp c, $a317                                      ; $4164: $da $17 $a3

	ld a, b                                          ; $4167: $78
	nop                                              ; $4168: $00
	add b                                            ; $4169: $80

Jump_00b_416a:
	jr jr_00b_41eb                                   ; $416a: $18 $7f

	ld [hl], b                                       ; $416c: $70
	nop                                              ; $416d: $00

jr_00b_416e:
	adc b                                            ; $416e: $88
	rla                                              ; $416f: $17
	adc $70                                          ; $4170: $ce $70

jr_00b_4172:
	nop                                              ; $4172: $00
	sub b                                            ; $4173: $90
	db $fc                                           ; $4174: $fc

jr_00b_4175:
	ld c, $88                                        ; $4175: $0e $88
	ld l, d                                          ; $4177: $6a
	db $d3                                           ; $4178: $d3
	call nc, $faff                                   ; $4179: $d4 $ff $fa
	jr jr_00b_4159                                   ; $417c: $18 $db

	ld [hl], l                                       ; $417e: $75
	nop                                              ; $417f: $00
	jr jr_00b_419a                                   ; $4180: $18 $18

	ld de, $0075                                     ; $4182: $11 $75 $00
	sbc b                                            ; $4185: $98
	rla                                              ; $4186: $17
	add hl, hl                                       ; $4187: $29
	ld [hl], l                                       ; $4188: $75
	nop                                              ; $4189: $00
	sub b                                            ; $418a: $90
	rst $38                                          ; $418b: $ff
	db $fc                                           ; $418c: $fc
	ld c, $b8                                        ; $418d: $0e $b8
	ld l, e                                          ; $418f: $6b
	db $d3                                           ; $4190: $d3
	call nc, $c2ff                                   ; $4191: $d4 $ff $c2
	ccf                                              ; $4194: $3f
	jp $c43f                                         ; $4195: $c3 $3f $c4


	ccf                                              ; $4198: $3f
	push bc                                          ; $4199: $c5

jr_00b_419a:
	ccf                                              ; $419a: $3f
	add $3f                                          ; $419b: $c6 $3f
	rst JumpTable                                          ; $419d: $c7
	ccf                                              ; $419e: $3f
	ret z                                            ; $419f: $c8

	ld b, d                                          ; $41a0: $42
	ret                                              ; $41a1: $c9


	dec a                                            ; $41a2: $3d
	jp z, $cb3d                                      ; $41a3: $ca $3d $cb

	dec a                                            ; $41a6: $3d
	call z, $cd3d                                    ; $41a7: $cc $3d $cd
	dec a                                            ; $41aa: $3d
	adc $40                                          ; $41ab: $ce $40
	rst GetHLinHL                                          ; $41ad: $cf
	ld b, e                                          ; $41ae: $43
	nop                                              ; $41af: $00
	jp nz, $c344                                     ; $41b0: $c2 $44 $c3

	ld b, h                                          ; $41b3: $44
	call nz, $c544                                   ; $41b4: $c4 $44 $c5
	ld b, h                                          ; $41b7: $44
	nop                                              ; $41b8: $00
	jr nz, jr_00b_41db                               ; $41b9: $20 $20

	jr nz, @+$23                                     ; $41bb: $20 $21

	ld hl, $0221                                     ; $41bd: $21 $21 $02
	ld [bc], a                                       ; $41c0: $02
	ld [bc], a                                       ; $41c1: $02
	ld [bc], a                                       ; $41c2: $02
	ld [bc], a                                       ; $41c3: $02
	ld bc, $0101                                     ; $41c4: $01 $01 $01
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	nop                                              ; $41c9: $00
	nop                                              ; $41ca: $00
	nop                                              ; $41cb: $00
	ld b, c                                          ; $41cc: $41
	ld b, c                                          ; $41cd: $41
	ld b, c                                          ; $41ce: $41
	ld b, d                                          ; $41cf: $42
	ld b, d                                          ; $41d0: $42
	ld b, d                                          ; $41d1: $42
	ld b, d                                          ; $41d2: $42
	ld b, d                                          ; $41d3: $42
	ld h, c                                          ; $41d4: $61
	ld h, c                                          ; $41d5: $61
	ld h, c                                          ; $41d6: $61
	jr nz, jr_00b_41f9                               ; $41d7: $20 $20

	inc b                                            ; $41d9: $04
	nop                                              ; $41da: $00

jr_00b_41db:
	dec b                                            ; $41db: $05
	nop                                              ; $41dc: $00
	ld b, $00                                        ; $41dd: $06 $00
	rlca                                             ; $41df: $07
	nop                                              ; $41e0: $00
	ld [$0900], sp                                   ; $41e1: $08 $00 $09
	nop                                              ; $41e4: $00
	ld h, b                                          ; $41e5: $60
	ld d, b                                          ; $41e6: $50
	ld h, b                                          ; $41e7: $60
	ld h, b                                          ; $41e8: $60
	ld a, b                                          ; $41e9: $78
	ld d, b                                          ; $41ea: $50

jr_00b_41eb:
	ld a, b                                          ; $41eb: $78
	ld h, b                                          ; $41ec: $60
	db $d3                                           ; $41ed: $d3
	call nc, $d4e3                                   ; $41ee: $d4 $e3 $d4
	di                                               ; $41f1: $f3
	call nc, $d503                                   ; $41f2: $d4 $03 $d5
	inc de                                           ; $41f5: $13
	push de                                          ; $41f6: $d5
	inc hl                                           ; $41f7: $23
	push de                                          ; $41f8: $d5

jr_00b_41f9:
	inc sp                                           ; $41f9: $33
	push de                                          ; $41fa: $d5
	ld b, e                                          ; $41fb: $43
	push de                                          ; $41fc: $d5
	ld d, e                                          ; $41fd: $53
	push de                                          ; $41fe: $d5
	ld h, e                                          ; $41ff: $63
	push de                                          ; $4200: $d5
	ld a, [$9318]                                    ; $4201: $fa $18 $93
	ld [hl], a                                       ; $4204: $77
	nop                                              ; $4205: $00
	jr jr_00b_4220                                   ; $4206: $18 $18

	ret                                              ; $4208: $c9


	halt                                             ; $4209: $76
	nop                                              ; $420a: $00
	sbc b                                            ; $420b: $98
	rla                                              ; $420c: $17
	ld c, [hl]                                       ; $420d: $4e
	ld h, b                                          ; $420e: $60
	nop                                              ; $420f: $00
	sub b                                            ; $4210: $90
	rst $38                                          ; $4211: $ff
	ld a, [$be18]                                    ; $4212: $fa $18 $be
	ld a, b                                          ; $4215: $78
	add b                                            ; $4216: $80
	call c, Call_00b_7218                            ; $4217: $dc $18 $72
	ld a, b                                          ; $421a: $78
	add b                                            ; $421b: $80
	jp c, $f018                                      ; $421c: $da $18 $f0

	ld d, [hl]                                       ; $421f: $56

jr_00b_4220:
	nop                                              ; $4220: $00
	add b                                            ; $4221: $80
	rla                                              ; $4222: $17
	add [hl]                                         ; $4223: $86
	ld h, e                                          ; $4224: $63
	nop                                              ; $4225: $00
	sub b                                            ; $4226: $90
	db $fc                                           ; $4227: $fc
	ld c, $79                                        ; $4228: $0e $79
	ld h, [hl]                                       ; $422a: $66
	db $d3                                           ; $422b: $d3
	call nc, $18fa                                   ; $422c: $d4 $fa $18
	ld d, a                                          ; $422f: $57
	ld a, b                                          ; $4230: $78
	nop                                              ; $4231: $00
	jr jr_00b_424c                                   ; $4232: $18 $18

	jp c, $0077                                      ; $4234: $da $77 $00

	sbc b                                            ; $4237: $98
	rst $38                                          ; $4238: $ff
	jp nz, $c345                                     ; $4239: $c2 $45 $c3

	ld c, b                                          ; $423c: $48
	call nz, $c546                                   ; $423d: $c4 $46 $c5
	ld c, b                                          ; $4240: $48
	add $46                                          ; $4241: $c6 $46
	rst JumpTable                                          ; $4243: $c7
	ld c, b                                          ; $4244: $48
	ret z                                            ; $4245: $c8

	ld b, [hl]                                       ; $4246: $46
	ret                                              ; $4247: $c9


	ld c, b                                          ; $4248: $48
	jp z, $cb46                                      ; $4249: $ca $46 $cb

jr_00b_424c:
	ld c, b                                          ; $424c: $48
	call z, $cd46                                    ; $424d: $cc $46 $cd
	ld c, b                                          ; $4250: $48
	adc $46                                          ; $4251: $ce $46
	rst GetHLinHL                                          ; $4253: $cf
	ld b, a                                          ; $4254: $47
	nop                                              ; $4255: $00
	nop                                              ; $4256: $00
	sub b                                            ; $4257: $90
	jr nc, jr_00b_42ba                               ; $4258: $30 $60

	db $d3                                           ; $425a: $d3
	call nc, $d4e3                                   ; $425b: $d4 $e3 $d4
	di                                               ; $425e: $f3
	call nc, $d503                                   ; $425f: $d4 $03 $d5
	inc de                                           ; $4262: $13
	push de                                          ; $4263: $d5
	inc hl                                           ; $4264: $23
	push de                                          ; $4265: $d5
	inc sp                                           ; $4266: $33
	push de                                          ; $4267: $d5
	ld b, e                                          ; $4268: $43
	push de                                          ; $4269: $d5
	ld d, e                                          ; $426a: $53
	push de                                          ; $426b: $d5
	ld h, e                                          ; $426c: $63
	push de                                          ; $426d: $d5
	ld [hl], e                                       ; $426e: $73
	push de                                          ; $426f: $d5
	add e                                            ; $4270: $83
	push de                                          ; $4271: $d5
	sub e                                            ; $4272: $93
	push de                                          ; $4273: $d5
	sbc e                                            ; $4274: $9b
	push de                                          ; $4275: $d5
	and e                                            ; $4276: $a3
	push de                                          ; $4277: $d5
	xor e                                            ; $4278: $ab
	push de                                          ; $4279: $d5
	or e                                             ; $427a: $b3
	push de                                          ; $427b: $d5
	cp e                                             ; $427c: $bb
	push de                                          ; $427d: $d5
	jp $cbd5                                         ; $427e: $c3 $d5 $cb


	push de                                          ; $4281: $d5
	db $d3                                           ; $4282: $d3
	push de                                          ; $4283: $d5
	db $db                                           ; $4284: $db
	push de                                          ; $4285: $d5
	db $e3                                           ; $4286: $e3
	push de                                          ; $4287: $d5
	db $eb                                           ; $4288: $eb
	push de                                          ; $4289: $d5
	di                                               ; $428a: $f3
	push de                                          ; $428b: $d5
	ei                                               ; $428c: $fb
	push de                                          ; $428d: $d5
	inc bc                                           ; $428e: $03
	sub $13                                          ; $428f: $d6 $13
	sub $23                                          ; $4291: $d6 $23
	sub $33                                          ; $4293: $d6 $33
	sub $43                                          ; $4295: $d6 $43
	sub $53                                          ; $4297: $d6 $53
	sub $63                                          ; $4299: $d6 $63
	sub $73                                          ; $429b: $d6 $73
	sub $83                                          ; $429d: $d6 $83
	sub $93                                          ; $429f: $d6 $93
	sub $a3                                          ; $42a1: $d6 $a3
	sub $b3                                          ; $42a3: $d6 $b3
	sub $93                                          ; $42a5: $d6 $93
	push de                                          ; $42a7: $d5
	jr nc, @+$32                                     ; $42a8: $30 $30

	jr nc, jr_00b_42dc                               ; $42aa: $30 $30

	jr nc, @+$32                                     ; $42ac: $30 $30

	jr nc, jr_00b_42e0                               ; $42ae: $30 $30

	jr nc, jr_00b_42e2                               ; $42b0: $30 $30

	jr z, @+$32                                      ; $42b2: $28 $30

	jr @+$2f                                         ; $42b4: $18 $2d

	dec l                                            ; $42b6: $2d
	dec l                                            ; $42b7: $2d
	dec l                                            ; $42b8: $2d
	dec l                                            ; $42b9: $2d

jr_00b_42ba:
	dec l                                            ; $42ba: $2d
	dec l                                            ; $42bb: $2d
	dec l                                            ; $42bc: $2d
	dec l                                            ; $42bd: $2d
	dec l                                            ; $42be: $2d
	dec h                                            ; $42bf: $25
	dec l                                            ; $42c0: $2d
	dec d                                            ; $42c1: $15
	dec d                                            ; $42c2: $15
	dec d                                            ; $42c3: $15
	dec d                                            ; $42c4: $15
	dec d                                            ; $42c5: $15
	dec d                                            ; $42c6: $15
	dec d                                            ; $42c7: $15
	dec d                                            ; $42c8: $15
	dec d                                            ; $42c9: $15
	dec d                                            ; $42ca: $15
	dec d                                            ; $42cb: $15
	db $10                                           ; $42cc: $10
	dec d                                            ; $42cd: $15
	ld b, $12                                        ; $42ce: $06 $12
	ld [de], a                                       ; $42d0: $12
	ld [de], a                                       ; $42d1: $12
	ld [de], a                                       ; $42d2: $12
	ld [de], a                                       ; $42d3: $12
	ld [de], a                                       ; $42d4: $12
	ld [de], a                                       ; $42d5: $12
	ld [de], a                                       ; $42d6: $12
	ld [de], a                                       ; $42d7: $12
	ld [de], a                                       ; $42d8: $12
	ld c, $12                                        ; $42d9: $0e $12
	dec b                                            ; $42db: $05

jr_00b_42dc:
	nop                                              ; $42dc: $00
	ld bc, $0403                                     ; $42dd: $01 $03 $04

jr_00b_42e0:
	dec b                                            ; $42e0: $05
	rlca                                             ; $42e1: $07

jr_00b_42e2:
	ld [$0a09], sp                                   ; $42e2: $08 $09 $0a
	inc c                                            ; $42e5: $0c
	dec c                                            ; $42e6: $0d
	ld c, $0f                                        ; $42e7: $0e $0f
	db $10                                           ; $42e9: $10
	ld de, $1312                                     ; $42ea: $11 $12 $13
	inc d                                            ; $42ed: $14
	dec d                                            ; $42ee: $15
	rla                                              ; $42ef: $17
	rla                                              ; $42f0: $17
	jr jr_00b_430c                                   ; $42f1: $18 $19

	ld a, [de]                                       ; $42f3: $1a
	dec de                                           ; $42f4: $1b
	inc e                                            ; $42f5: $1c
	dec e                                            ; $42f6: $1d
	ld e, $1f                                        ; $42f7: $1e $1f
	jr nz, jr_00b_431b                               ; $42f9: $20 $20

	ld hl, $2322                                     ; $42fb: $21 $22 $23
	inc hl                                           ; $42fe: $23
	inc h                                            ; $42ff: $24
	dec h                                            ; $4300: $25
	dec h                                            ; $4301: $25
	ld h, $27                                        ; $4302: $26 $27
	daa                                              ; $4304: $27
	jr z, jr_00b_432f                                ; $4305: $28 $28

	add hl, hl                                       ; $4307: $29
	add hl, hl                                       ; $4308: $29
	ld a, [hl+]                                      ; $4309: $2a
	ld a, [hl+]                                      ; $430a: $2a
	dec hl                                           ; $430b: $2b

jr_00b_430c:
	dec hl                                           ; $430c: $2b
	inc l                                            ; $430d: $2c
	inc l                                            ; $430e: $2c
	inc l                                            ; $430f: $2c
	dec l                                            ; $4310: $2d
	dec l                                            ; $4311: $2d
	dec l                                            ; $4312: $2d
	ld l, $2e                                        ; $4313: $2e $2e
	ld l, $2e                                        ; $4315: $2e $2e
	cpl                                              ; $4317: $2f
	cpl                                              ; $4318: $2f
	cpl                                              ; $4319: $2f
	cpl                                              ; $431a: $2f

jr_00b_431b:
	cpl                                              ; $431b: $2f
	cpl                                              ; $431c: $2f
	cpl                                              ; $431d: $2f
	cpl                                              ; $431e: $2f
	cpl                                              ; $431f: $2f
	cpl                                              ; $4320: $2f
	jr nc, jr_00b_4393                               ; $4321: $30 $70

	ld l, b                                          ; $4323: $68
	ld h, b                                          ; $4324: $60
	ld e, b                                          ; $4325: $58
	ld d, b                                          ; $4326: $50
	ld c, b                                          ; $4327: $48
	ld b, b                                          ; $4328: $40
	nop                                              ; $4329: $00
	ld bc, $0101                                     ; $432a: $01 $01 $01
	rst $38                                          ; $432d: $ff
	rst $38                                          ; $432e: $ff

jr_00b_432f:
	rst $38                                          ; $432f: $ff
	rst $38                                          ; $4330: $ff
	ld bc, $0050                                     ; $4331: $01 $50 $00
	nop                                              ; $4334: $00
	nop                                              ; $4335: $00
	nop                                              ; $4336: $00
	ld b, b                                          ; $4337: $40
	ld h, b                                          ; $4338: $60
	nop                                              ; $4339: $00
	nop                                              ; $433a: $00
	nop                                              ; $433b: $00
	jr nc, jr_00b_438e                               ; $433c: $30 $50

	ld [hl], b                                       ; $433e: $70
	nop                                              ; $433f: $00
	nop                                              ; $4340: $00
	jr nz, @+$42                                     ; $4341: $20 $40

	ld h, b                                          ; $4343: $60
	add b                                            ; $4344: $80
	nop                                              ; $4345: $00
	db $10                                           ; $4346: $10
	jr nc, jr_00b_4399                               ; $4347: $30 $50

	ld [hl], b                                       ; $4349: $70
	sub b                                            ; $434a: $90
	ld a, [$7118]                                    ; $434b: $fa $18 $71
	ld a, l                                          ; $434e: $7d
	nop                                              ; $434f: $00
	jr jr_00b_436a                                   ; $4350: $18 $18

	or d                                             ; $4352: $b2
	ld a, h                                          ; $4353: $7c
	nop                                              ; $4354: $00
	sbc b                                            ; $4355: $98
	rla                                              ; $4356: $17
	db $f4                                           ; $4357: $f4
	ld c, a                                          ; $4358: $4f
	nop                                              ; $4359: $00
	sub b                                            ; $435a: $90
	rla                                              ; $435b: $17
	ld b, h                                          ; $435c: $44
	ld e, h                                          ; $435d: $5c
	nop                                              ; $435e: $00
	add b                                            ; $435f: $80
	db $fc                                           ; $4360: $fc
	ld c, $d8                                        ; $4361: $0e $d8
	ld l, b                                          ; $4363: $68
	db $d3                                           ; $4364: $d3
	call nc, $faff                                   ; $4365: $d4 $ff $fa
	rla                                              ; $4368: $17
	ld e, b                                          ; $4369: $58

jr_00b_436a:
	ld a, a                                          ; $436a: $7f
	nop                                              ; $436b: $00
	jr @+$19                                         ; $436c: $18 $17

	sub l                                            ; $436e: $95
	ld a, [hl]                                       ; $436f: $7e
	nop                                              ; $4370: $00
	sbc b                                            ; $4371: $98
	rla                                              ; $4372: $17
	jp z, $0052                                      ; $4373: $ca $52 $00

	sub b                                            ; $4376: $90
	rla                                              ; $4377: $17
	add [hl]                                         ; $4378: $86
	ld e, d                                          ; $4379: $5a
	nop                                              ; $437a: $00
	add b                                            ; $437b: $80
	db $fc                                           ; $437c: $fc
	ld c, $b6                                        ; $437d: $0e $b6
	ld l, c                                          ; $437f: $69
	db $d3                                           ; $4380: $d3
	call nc, $faff                                   ; $4381: $d4 $ff $fa
	jr jr_00b_43ea                                   ; $4384: $18 $64

	ld a, [hl]                                       ; $4386: $7e
	nop                                              ; $4387: $00
	jr jr_00b_43a2                                   ; $4388: $18 $18

	and l                                            ; $438a: $a5
	ld a, l                                          ; $438b: $7d
	nop                                              ; $438c: $00
	sbc b                                            ; $438d: $98

jr_00b_438e:
	rla                                              ; $438e: $17
	sub h                                            ; $438f: $94
	ld d, l                                          ; $4390: $55
	nop                                              ; $4391: $00
	sub b                                            ; $4392: $90

jr_00b_4393:
	rla                                              ; $4393: $17
	add [hl]                                         ; $4394: $86
	ld e, l                                          ; $4395: $5d
	nop                                              ; $4396: $00
	add b                                            ; $4397: $80
	db $fc                                           ; $4398: $fc

jr_00b_4399:
	ld c, $28                                        ; $4399: $0e $28
	ld l, c                                          ; $439b: $69
	db $d3                                           ; $439c: $d3
	call nc, $faff                                   ; $439d: $d4 $ff $fa

jr_00b_43a0:
	jr jr_00b_4406                                   ; $43a0: $18 $64

jr_00b_43a2:
	ld a, [hl]                                       ; $43a2: $7e
	nop                                              ; $43a3: $00
	jr jr_00b_43be                                   ; $43a4: $18 $18

	and l                                            ; $43a6: $a5
	ld a, l                                          ; $43a7: $7d
	nop                                              ; $43a8: $00
	sbc b                                            ; $43a9: $98
	rla                                              ; $43aa: $17
	sub h                                            ; $43ab: $94
	ld d, l                                          ; $43ac: $55

jr_00b_43ad:
	nop                                              ; $43ad: $00
	sub b                                            ; $43ae: $90
	jr jr_00b_43ad                                   ; $43af: $18 $fc

	ld d, h                                          ; $43b1: $54
	nop                                              ; $43b2: $00
	add b                                            ; $43b3: $80
	db $fc                                           ; $43b4: $fc
	ld c, $28                                        ; $43b5: $0e $28
	ld l, c                                          ; $43b7: $69
	db $d3                                           ; $43b8: $d3
	call nc, $faff                                   ; $43b9: $d4 $ff $fa
	jr jr_00b_43c0                                   ; $43bc: $18 $02

jr_00b_43be:
	ld a, d                                          ; $43be: $7a
	add b                                            ; $43bf: $80

jr_00b_43c0:
	call c, $da18                                    ; $43c0: $dc $18 $da
	ld a, b                                          ; $43c3: $78
	add b                                            ; $43c4: $80
	jp c, $6f17                                      ; $43c5: $da $17 $6f

	ld b, [hl]                                       ; $43c8: $46
	nop                                              ; $43c9: $00
	sub b                                            ; $43ca: $90
	rla                                              ; $43cb: $17
	ld [hl], l                                       ; $43cc: $75
	ld c, h                                          ; $43cd: $4c
	nop                                              ; $43ce: $00
	adc b                                            ; $43cf: $88
	rla                                              ; $43d0: $17
	ld [hl], h                                       ; $43d1: $74

jr_00b_43d2:
	ld a, [hl]                                       ; $43d2: $7e
	add b                                            ; $43d3: $80
	sbc $ff                                          ; $43d4: $de $ff
	ld a, [$0618]                                    ; $43d6: $fa $18 $06
	ld [hl], b                                       ; $43d9: $70
	nop                                              ; $43da: $00
	jr jr_00b_43f5                                   ; $43db: $18 $18

	add hl, de                                       ; $43dd: $19
	ld l, a                                          ; $43de: $6f
	nop                                              ; $43df: $00
	sbc b                                            ; $43e0: $98
	jr jr_00b_43d2                                   ; $43e1: $18 $ef

	ld h, l                                          ; $43e3: $65
	nop                                              ; $43e4: $00
	sub b                                            ; $43e5: $90
	jr jr_00b_43a0                                   ; $43e6: $18 $b8

jr_00b_43e8:
	ld l, e                                          ; $43e8: $6b
	nop                                              ; $43e9: $00

jr_00b_43ea:
	adc b                                            ; $43ea: $88
	rla                                              ; $43eb: $17
	cp b                                             ; $43ec: $b8
	ld c, [hl]                                       ; $43ed: $4e
	nop                                              ; $43ee: $00
	add b                                            ; $43ef: $80
	db $fc                                           ; $43f0: $fc
	ld c, $56                                        ; $43f1: $0e $56
	ld l, d                                          ; $43f3: $6a
	db $d3                                           ; $43f4: $d3

jr_00b_43f5:
	call nc, $faff                                   ; $43f5: $d4 $ff $fa
	jr @+$74                                         ; $43f8: $18 $72

	ld [hl], b                                       ; $43fa: $70
	add b                                            ; $43fb: $80
	call c, $3818                                    ; $43fc: $dc $18 $38
	ld [hl], b                                       ; $43ff: $70
	add b                                            ; $4400: $80
	jp c, $faff                                      ; $4401: $da $ff $fa

	jr jr_00b_43e8                                   ; $4404: $18 $e2

jr_00b_4406:
	ld h, l                                          ; $4406: $65
	add b                                            ; $4407: $80
	call c, $a118                                    ; $4408: $dc $18 $a1
	ld h, l                                          ; $440b: $65
	add b                                            ; $440c: $80
	jp c, $f9ff                                      ; $440d: $da $ff $f9

	ld d, $cb                                        ; $4410: $16 $cb
	ld [hl], b                                       ; $4412: $70
	nop                                              ; $4413: $00
	add b                                            ; $4414: $80
	ld d, $3c                                        ; $4415: $16 $3c
	ld [hl], h                                       ; $4417: $74
	nop                                              ; $4418: $00
	adc h                                            ; $4419: $8c
	db $fc                                           ; $441a: $fc
	dec e                                            ; $441b: $1d
	jp c, $d359                                      ; $441c: $da $59 $d3

	call nc, $f9ff                                   ; $441f: $d4 $ff $f9
	ld d, $fa                                        ; $4422: $16 $fa
	ld h, [hl]                                       ; $4424: $66
	nop                                              ; $4425: $00
	add b                                            ; $4426: $80
	ld d, $4e                                        ; $4427: $16 $4e
	ld l, d                                          ; $4429: $6a
	nop                                              ; $442a: $00
	adc h                                            ; $442b: $8c
	db $fc                                           ; $442c: $fc
	dec e                                            ; $442d: $1d
	add d                                            ; $442e: $82
	ld e, b                                          ; $442f: $58
	db $d3                                           ; $4430: $d3
	call nc, $f9ff                                   ; $4431: $d4 $ff $f9
	jr @+$4f                                         ; $4434: $18 $4d

	ld d, b                                          ; $4436: $50
	nop                                              ; $4437: $00
	add b                                            ; $4438: $80
	jr jr_00b_43ea                                   ; $4439: $18 $af

	ld d, e                                          ; $443b: $53
	nop                                              ; $443c: $00
	adc h                                            ; $443d: $8c
	db $fc                                           ; $443e: $fc
	dec e                                            ; $443f: $1d
	add d                                            ; $4440: $82
	ld e, b                                          ; $4441: $58
	db $d3                                           ; $4442: $d3
	call nc, $f9ff                                   ; $4443: $d4 $ff $f9
	ld d, $93                                        ; $4446: $16 $93
	ld l, e                                          ; $4448: $6b
	nop                                              ; $4449: $00
	add b                                            ; $444a: $80
	ld d, $e2                                        ; $444b: $16 $e2
	ld l, [hl]                                       ; $444d: $6e
	nop                                              ; $444e: $00
	adc h                                            ; $444f: $8c
	db $fc                                           ; $4450: $fc
	ld c, $a2                                        ; $4451: $0e $a2
	ld h, a                                          ; $4453: $67
	db $d3                                           ; $4454: $d3
	call nc, $07ff                                   ; $4455: $d4 $ff $07
	ld [rRAMG], sp                                   ; $4458: $08 $00 $00
	dec bc                                           ; $445b: $0b
	nop                                              ; $445c: $00
	nop                                              ; $445d: $00
	nop                                              ; $445e: $00
	nop                                              ; $445f: $00
	nop                                              ; $4460: $00
	ld d, $17                                        ; $4461: $16 $17
	rrca                                             ; $4463: $0f
	ld c, $0e                                        ; $4464: $0e $0e
	dec c                                            ; $4466: $0d
	inc c                                            ; $4467: $0c
	ld c, $14                                        ; $4468: $0e $14
	dec d                                            ; $446a: $15
	jp $c74a                                         ; $446b: $c3 $4a $c7


	ld c, e                                          ; $446e: $4b
	ret                                              ; $446f: $c9


	ld c, e                                          ; $4470: $4b
	bit 1, e                                         ; $4471: $cb $4b
	bit 1, e                                         ; $4473: $cb $4b
	rst GetHLinHL                                          ; $4475: $cf
	ld c, h                                          ; $4476: $4c
	nop                                              ; $4477: $00
	jp $c44e                                         ; $4478: $c3 $4e $c4


	ld d, b                                          ; $447b: $50
	push bc                                          ; $447c: $c5
	ld d, c                                          ; $447d: $51
	rst JumpTable                                          ; $447e: $c7
	ld c, a                                          ; $447f: $4f
	ret                                              ; $4480: $c9


	ld c, a                                          ; $4481: $4f
	bit 1, a                                         ; $4482: $cb $4f
	nop                                              ; $4484: $00
	jp $c753                                         ; $4485: $c3 $53 $c7


	ld d, h                                          ; $4488: $54
	ret                                              ; $4489: $c9


	ld d, h                                          ; $448a: $54
	bit 2, h                                         ; $448b: $cb $54
	jp nz, $c655                                     ; $448d: $c2 $55 $c6

	ld d, l                                          ; $4490: $55
	ret z                                            ; $4491: $c8

	ld d, l                                          ; $4492: $55
	jp z, $0055                                      ; $4493: $ca $55 $00

	db $d3                                           ; $4496: $d3
	call nc, $d4e3                                   ; $4497: $d4 $e3 $d4
	di                                               ; $449a: $f3
	call nc, $d503                                   ; $449b: $d4 $03 $d5
	inc de                                           ; $449e: $13
	push de                                          ; $449f: $d5
	inc hl                                           ; $44a0: $23
	push de                                          ; $44a1: $d5
	ld [hl], a                                       ; $44a2: $77
	push de                                          ; $44a3: $d5
	add a                                            ; $44a4: $87
	push de                                          ; $44a5: $d5
	sub a                                            ; $44a6: $97
	push de                                          ; $44a7: $d5
	and a                                            ; $44a8: $a7
	push de                                          ; $44a9: $d5
	or a                                             ; $44aa: $b7
	push de                                          ; $44ab: $d5
	rst JumpTable                                          ; $44ac: $c7
	push de                                          ; $44ad: $d5
	rrca                                             ; $44ae: $0f
	sub $0f                                          ; $44af: $d6 $0f
	sub $1f                                          ; $44b1: $d6 $1f
	sub $33                                          ; $44b3: $d6 $33
	sub $47                                          ; $44b5: $d6 $47
	sub $5b                                          ; $44b7: $d6 $5b
	sub $6f                                          ; $44b9: $d6 $6f
	sub $1f                                          ; $44bb: $d6 $1f
	sub $1b                                          ; $44bd: $d6 $1b
	push de                                          ; $44bf: $d5
	inc sp                                           ; $44c0: $33
	push de                                          ; $44c1: $d5
	ld c, e                                          ; $44c2: $4b
	push de                                          ; $44c3: $d5
	db $d3                                           ; $44c4: $d3
	call nc, $d4eb                                   ; $44c5: $d4 $eb $d4
	inc bc                                           ; $44c8: $03
	push de                                          ; $44c9: $d5
	rst SubAFromBC                                          ; $44ca: $e7
	push de                                          ; $44cb: $d5
	rst $38                                          ; $44cc: $ff
	push de                                          ; $44cd: $d5
	rla                                              ; $44ce: $17
	sub $9f                                          ; $44cf: $d6 $9f
	push de                                          ; $44d1: $d5
	or a                                             ; $44d2: $b7
	push de                                          ; $44d3: $d5
	rst GetHLinHL                                          ; $44d4: $cf
	push de                                          ; $44d5: $d5
	add h                                            ; $44d6: $84
	inc e                                            ; $44d7: $1c
	ld [hl], h                                       ; $44d8: $74
	jr nz, @+$66                                     ; $44d9: $20 $64

	inc h                                            ; $44db: $24
	ld l, h                                          ; $44dc: $6c
	ld l, b                                          ; $44dd: $68
	ld a, b                                          ; $44de: $78
	rst $38                                          ; $44df: $ff
	inc bc                                           ; $44e0: $03
	rst GetHLinHL                                          ; $44e1: $cf
	inc bc                                           ; $44e2: $03
	rra                                              ; $44e3: $1f
	inc b                                            ; $44e4: $04
	jr nz, @+$72                                     ; $44e5: $20 $70

	adc a                                            ; $44e7: $8f
	inc bc                                           ; $44e8: $03
	ld b, b                                          ; $44e9: $40
	ld a, b                                          ; $44ea: $78
	rst GetHLinHL                                          ; $44eb: $cf
	inc bc                                           ; $44ec: $03
	ld e, a                                          ; $44ed: $5f
	add b                                            ; $44ee: $80
	rrca                                             ; $44ef: $0f
	inc b                                            ; $44f0: $04
	add a                                            ; $44f1: $87
	add b                                            ; $44f2: $80
	cpl                                              ; $44f3: $2f
	inc b                                            ; $44f4: $04
	and b                                            ; $44f5: $a0
	adc b                                            ; $44f6: $88
	ld c, a                                          ; $44f7: $4f
	inc b                                            ; $44f8: $04
	rst $38                                          ; $44f9: $ff
	sub b                                            ; $44fa: $90
	sbc a                                            ; $44fb: $9f
	inc b                                            ; $44fc: $04
	ld l, c                                          ; $44fd: $69
	ld h, d                                          ; $44fe: $62
	ld [hl], d                                       ; $44ff: $72
	sbc a                                            ; $4500: $9f
	ld [bc], a                                       ; $4501: $02
	ld c, a                                          ; $4502: $4f
	ld [bc], a                                       ; $4503: $02
	rst GetHLinHL                                          ; $4504: $cf
	ld [bc], a                                       ; $4505: $02
	jr nz, jr_00b_4560                               ; $4506: $20 $58

	rst $38                                          ; $4508: $ff
	ld bc, $6040                                     ; $4509: $01 $40 $60
	ccf                                              ; $450c: $3f
	ld [bc], a                                       ; $450d: $02
	ld h, h                                          ; $450e: $64
	ld l, b                                          ; $450f: $68
	ld a, a                                          ; $4510: $7f
	ld [bc], a                                       ; $4511: $02
	and b                                            ; $4512: $a0
	ld [hl], b                                       ; $4513: $70
	cp a                                             ; $4514: $bf
	ld [bc], a                                       ; $4515: $02
	rst $38                                          ; $4516: $ff
	ld a, b                                          ; $4517: $78
	rst $38                                          ; $4518: $ff
	ld [bc], a                                       ; $4519: $02
	ld de, $1312                                     ; $451a: $11 $12 $13
	add a                                            ; $451d: $87
	inc bc                                           ; $451e: $03
	ld e, a                                          ; $451f: $5f
	inc bc                                           ; $4520: $03
	rst GetHLinHL                                          ; $4521: $cf
	inc bc                                           ; $4522: $03
	jr nz, jr_00b_4533                               ; $4523: $20 $0e

	rst $38                                          ; $4525: $ff
	ld [bc], a                                       ; $4526: $02
	ld b, b                                          ; $4527: $40
	db $10                                           ; $4528: $10
	ccf                                              ; $4529: $3f
	inc bc                                           ; $452a: $03
	ld h, h                                          ; $452b: $64
	ld de, $037f                                     ; $452c: $11 $7f $03
	sub [hl]                                         ; $452f: $96
	inc de                                           ; $4530: $13
	cp a                                             ; $4531: $bf
	inc bc                                           ; $4532: $03

jr_00b_4533:
	rst $38                                          ; $4533: $ff
	inc d                                            ; $4534: $14
	rst $38                                          ; $4535: $ff
	inc bc                                           ; $4536: $03
	nop                                              ; $4537: $00
	rst $38                                          ; $4538: $ff
	ld bc, $f50f                                     ; $4539: $01 $0f $f5
	rla                                              ; $453c: $17
	di                                               ; $453d: $f3
	ld c, $f3                                        ; $453e: $0e $f3
	rrca                                             ; $4540: $0f
	rrca                                             ; $4541: $0f
	ld d, $01                                        ; $4542: $16 $01
	ld [bc], a                                       ; $4544: $02
	nop                                              ; $4545: $00
	sub b                                            ; $4546: $90
	add b                                            ; $4547: $80
	ld [hl], b                                       ; $4548: $70
	ld h, b                                          ; $4549: $60
	add b                                            ; $454a: $80
	call c, $dc90                                    ; $454b: $dc $90 $dc
	and b                                            ; $454e: $a0
	call c, $dcb0                                    ; $454f: $dc $b0 $dc
	jp nz, $c35b                                     ; $4552: $c2 $5b $c3

	ld e, e                                          ; $4555: $5b
	call nz, $c55b                                   ; $4556: $c4 $5b $c5
	ld e, e                                          ; $4559: $5b
	add $5c                                          ; $455a: $c6 $5c
	rst JumpTable                                          ; $455c: $c7
	ld e, h                                          ; $455d: $5c
	ret z                                            ; $455e: $c8

	ld e, h                                          ; $455f: $5c

jr_00b_4560:
	ret                                              ; $4560: $c9


	ld e, h                                          ; $4561: $5c
	nop                                              ; $4562: $00
	ld a, [$fb17]                                    ; $4563: $fa $17 $fb
	ld a, l                                          ; $4566: $7d
	nop                                              ; $4567: $00
	jr @+$19                                         ; $4568: $18 $17

	inc a                                            ; $456a: $3c
	ld a, l                                          ; $456b: $7d
	nop                                              ; $456c: $00
	sbc b                                            ; $456d: $98
	rla                                              ; $456e: $17
	ld a, [hl+]                                      ; $456f: $2a

jr_00b_4570:
	ld e, b                                          ; $4570: $58
	nop                                              ; $4571: $00
	sub b                                            ; $4572: $90
	rla                                              ; $4573: $17
	ld a, [hl]                                       ; $4574: $7e
	ld e, a                                          ; $4575: $5f
	nop                                              ; $4576: $00
	add b                                            ; $4577: $80
	db $fc                                           ; $4578: $fc
	ld c, $0f                                        ; $4579: $0e $0f
	ld l, d                                          ; $457b: $6a
	db $d3                                           ; $457c: $d3
	call nc, $faff                                   ; $457d: $d4 $ff $fa
	jr jr_00b_45ce                                   ; $4580: $18 $4c

	ld a, e                                          ; $4582: $7b
	add b                                            ; $4583: $80
	call c, $4e18                                    ; $4584: $dc $18 $4e
	ld a, d                                          ; $4587: $7a
	add b                                            ; $4588: $80
	jp c, $d916                                      ; $4589: $da $16 $d9

	ld [hl], a                                       ; $458c: $77
	nop                                              ; $458d: $00
	sub b                                            ; $458e: $90
	rla                                              ; $458f: $17
	nop                                              ; $4590: $00
	ld b, b                                          ; $4591: $40
	nop                                              ; $4592: $00
	adc b                                            ; $4593: $88
	ld d, $3d                                        ; $4594: $16 $3d
	ld [hl], l                                       ; $4596: $75
	nop                                              ; $4597: $00
	add b                                            ; $4598: $80
	rla                                              ; $4599: $17
	cpl                                              ; $459a: $2f
	ld a, [hl]                                       ; $459b: $7e
	add b                                            ; $459c: $80
	sbc $fc                                          ; $459d: $de $fc
	dec e                                            ; $459f: $1d
	jr @+$5d                                         ; $45a0: $18 $5b

	db $d3                                           ; $45a2: $d3
	call nc, $faff                                   ; $45a3: $d4 $ff $fa
	jr jr_00b_4623                                   ; $45a6: $18 $7b

	ld a, h                                          ; $45a8: $7c
	add b                                            ; $45a9: $80
	call c, $a318                                    ; $45aa: $dc $18 $a3
	ld a, e                                          ; $45ad: $7b
	add b                                            ; $45ae: $80
	jp c, Jump_00b_5617                              ; $45af: $da $17 $56

	ld a, [hl]                                       ; $45b2: $7e
	add b                                            ; $45b3: $80
	sbc $ff                                          ; $45b4: $de $ff
	jp nz, $c357                                     ; $45b6: $c2 $57 $c3

	ld e, b                                          ; $45b9: $58
	call nz, $0059                                   ; $45ba: $c4 $59 $00
	jr nz, @+$0a                                     ; $45bd: $20 $08

	ld b, b                                          ; $45bf: $40
	inc c                                            ; $45c0: $0c
	ld l, c                                          ; $45c1: $69
	db $10                                           ; $45c2: $10
	sub c                                            ; $45c3: $91
	jr jr_00b_4570                                   ; $45c4: $18 $aa

	jr nz, @+$01                                     ; $45c6: $20 $ff

	jr nc, jr_00b_45ca                               ; $45c8: $30 $00

jr_00b_45ca:
	inc b                                            ; $45ca: $04
	ld [$2420], sp                                   ; $45cb: $08 $20 $24

jr_00b_45ce:
	jr z, jr_00b_4644                                ; $45ce: $28 $74

	ld a, [hl]                                       ; $45d0: $7e
	ld a, [hl]                                       ; $45d1: $7e
	ld a, [hl]                                       ; $45d2: $7e
	ld [hl], h                                       ; $45d3: $74
	ld a, [hl]                                       ; $45d4: $7e
	adc d                                            ; $45d5: $8a
	ld a, [hl]                                       ; $45d6: $7e
	sub b                                            ; $45d7: $90
	ld a, [hl]                                       ; $45d8: $7e
	add [hl]                                         ; $45d9: $86
	ld a, [hl]                                       ; $45da: $7e
	add e                                            ; $45db: $83
	push de                                          ; $45dc: $d5
	sbc e                                            ; $45dd: $9b
	push de                                          ; $45de: $d5
	or e                                             ; $45df: $b3
	push de                                          ; $45e0: $d5
	db $d3                                           ; $45e1: $d3
	call nc, $d523                                   ; $45e2: $d4 $23 $d5
	ei                                               ; $45e5: $fb
	call nc, $d553                                   ; $45e6: $d4 $53 $d5

Call_00b_45e9:
	push bc                                          ; $45e9: $c5
	push hl                                          ; $45ea: $e5
	call Call_00b_4614                               ; $45eb: $cd $14 $46
	call $0986                                       ; $45ee: $cd $86 $09
	call $09c3                                       ; $45f1: $cd $c3 $09
	call $0911                                       ; $45f4: $cd $11 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $45f7: $cd $ef $2d
	ldh a, [rLCDC]                                   ; $45fa: $f0 $40
	ld a, $c7                                        ; $45fc: $3e $c7
	ldh [hDisp0_LCDC], a                                     ; $45fe: $e0 $82
	pop hl                                           ; $4600: $e1
	call $0ab5                                       ; $4601: $cd $b5 $0a
	pop bc                                           ; $4604: $c1
	jp $18c4                                         ; $4605: $c3 $c4 $18


Call_00b_4608:
Jump_00b_4608:
	ld l, $00                                        ; $4608: $2e $00

jr_00b_460a:
	ld a, [bc]                                       ; $460a: $0a
	or a                                             ; $460b: $b7
	ret z                                            ; $460c: $c8

	ld h, a                                          ; $460d: $67
	inc bc                                           ; $460e: $03
	ld a, [bc]                                       ; $460f: $0a
	ld [hl], a                                       ; $4610: $77
	inc bc                                           ; $4611: $03
	jr jr_00b_460a                                   ; $4612: $18 $f6

Call_00b_4614:
Jump_00b_4614:
	ld hl, $c146                                     ; $4614: $21 $46 $c1
	inc [hl]                                         ; $4617: $34
	ret                                              ; $4618: $c9


Jump_00b_4619:
	ld hl, $c152                                     ; $4619: $21 $52 $c1
	inc [hl]                                         ; $461c: $34
	ret                                              ; $461d: $c9


Call_00b_461e:
	ld a, [wInitialA]                                    ; $461e: $fa $00 $c1
	cp $11                                           ; $4621: $fe $11

jr_00b_4623:
	jp z, $199b                                      ; $4623: $ca $9b $19

	xor a                                            ; $4626: $af
	or a                                             ; $4627: $b7
	ret                                              ; $4628: $c9


Call_00b_4629:
	ld hl, $98a2                                     ; $4629: $21 $a2 $98
	ld d, $05                                        ; $462c: $16 $05
	ld c, $60                                        ; $462e: $0e $60

jr_00b_4630:
	ld b, $10                                        ; $4630: $06 $10

jr_00b_4632:
	push hl                                          ; $4632: $e5
	ld [hl], c                                       ; $4633: $71
	ld a, $20                                        ; $4634: $3e $20
	rst AddAOntoHL                                          ; $4636: $ef
	inc c                                            ; $4637: $0c
	ld [hl], c                                       ; $4638: $71
	inc c                                            ; $4639: $0c
	pop hl                                           ; $463a: $e1
	inc hl                                           ; $463b: $23
	dec b                                            ; $463c: $05
	jr nz, jr_00b_4632                               ; $463d: $20 $f3

	dec d                                            ; $463f: $15
	ret z                                            ; $4640: $c8

	ld a, $30                                        ; $4641: $3e $30
	rst AddAOntoHL                                          ; $4643: $ef

jr_00b_4644:
	jr jr_00b_4630                                   ; $4644: $18 $ea

Call_00b_4646:
	ld a, $20                                        ; $4646: $3e $20
	ld [$d7ff], a                                    ; $4648: $ea $ff $d7
	xor a                                            ; $464b: $af
	ld [wCurrTextLinePixelIdx], a                                    ; $464c: $ea $00 $d8
	ld [$d7fb], a                                    ; $464f: $ea $fb $d7
	ld [$d7f9], a                                    ; $4652: $ea $f9 $d7
	ld a, $03                                        ; $4655: $3e $03
	ld [$d7fa], a                                    ; $4657: $ea $fa $d7
	ld d, $00                                        ; $465a: $16 $00

jr_00b_465c:
	xor a                                            ; $465c: $af
	ld [wCurrTilePixelIdx], a                                    ; $465d: $ea $fe $d7
	call Call_00b_466a                               ; $4660: $cd $6a $46
	inc d                                            ; $4663: $14
	ld a, d                                          ; $4664: $7a
	cp $05                                           ; $4665: $fe $05
	ret z                                            ; $4667: $c8

	jr jr_00b_465c                                   ; $4668: $18 $f2

Call_00b_466a:
	push de                                          ; $466a: $d5
	xor a                                            ; $466b: $af
	ld [wCurrTextLinePixelIdx], a                                    ; $466c: $ea $00 $d8
	ld [wCharTilesDataDest], a                                    ; $466f: $ea $fc $d7
	ld bc, $469c                                     ; $4672: $01 $9c $46
	ld a, d                                          ; $4675: $7a
	call $132c                                       ; $4676: $cd $2c $13
	ld a, [bc]                                       ; $4679: $0a
	ld [wCharTilesDataDest+1], a                                    ; $467a: $ea $fd $d7
	push hl                                          ; $467d: $e5
	push de                                          ; $467e: $d5
	ld de, $c0d0                                     ; $467f: $11 $d0 $c0
	rst FarCall                                          ; $4682: $f7
	rst SubAFromHL                                          ; $4683: $d7
	call z, $fa0c                                    ; $4684: $cc $0c $fa
	ret nc                                           ; $4687: $d0

	ret nz                                           ; $4688: $c0

	ld b, a                                          ; $4689: $47
	ld a, [$c0d1]                                    ; $468a: $fa $d1 $c0
	ld l, a                                          ; $468d: $6f
	ld a, [$c0d2]                                    ; $468e: $fa $d2 $c0
	ld h, a                                          ; $4691: $67
	pop de                                           ; $4692: $d1
	call Func_1c32                                       ; $4693: $cd $32 $1c
	pop hl                                           ; $4696: $e1
	pop de                                           ; $4697: $d1
	inc hl                                           ; $4698: $23
	inc hl                                           ; $4699: $23
	inc hl                                           ; $469a: $23
	ret                                              ; $469b: $c9


	sub [hl]                                         ; $469c: $96
	adc b                                            ; $469d: $88
	adc d                                            ; $469e: $8a
	adc h                                            ; $469f: $8c
	adc [hl]                                         ; $46a0: $8e

Call_00b_46a1:
Jump_00b_46a1:
	ld [$c0d8], a                                    ; $46a1: $ea $d8 $c0
	ld hl, $5b37                                     ; $46a4: $21 $37 $5b
	rst FarCall                                          ; $46a7: $f7
	and b                                            ; $46a8: $a0
	rst GetHLinHL                                          ; $46a9: $cf
	inc c                                            ; $46aa: $0c
	ld a, [$c0d8]                                    ; $46ab: $fa $d8 $c0
	ld hl, $5b27                                     ; $46ae: $21 $27 $5b
	rst FarCall                                          ; $46b1: $f7
	adc d                                            ; $46b2: $8a
	rst GetHLinHL                                          ; $46b3: $cf
	inc c                                            ; $46b4: $0c
	call Call_00b_45e9                               ; $46b5: $cd $e9 $45
	call Call_00b_4629                               ; $46b8: $cd $29 $46
	ld a, [$c0d8]                                    ; $46bb: $fa $d8 $c0
	ld hl, $5b47                                     ; $46be: $21 $47 $5b
	rst FarCall                                          ; $46c1: $f7
	adc d                                            ; $46c2: $8a
	rst GetHLinHL                                          ; $46c3: $cf
	inc c                                            ; $46c4: $0c
	call Call_00b_4646                               ; $46c5: $cd $46 $46
	call $09d3                                       ; $46c8: $cd $d3 $09
	ld b, $08                                        ; $46cb: $06 $08
	call $0a64                                       ; $46cd: $cd $64 $0a
	call $096e                                       ; $46d0: $cd $6e $09
	ld bc, $681a                                     ; $46d3: $01 $1a $68
	jp $18b7                                         ; $46d6: $c3 $b7 $18


Call_00b_46d9:
	push af                                          ; $46d9: $f5
	ld a, $00                                        ; $46da: $3e $00
	call $1e2e                                       ; $46dc: $cd $2e $1e
	pop af                                           ; $46df: $f1
	or a                                             ; $46e0: $b7
	ld a, $58                                        ; $46e1: $3e $58
	jp nz, $1e27                                     ; $46e3: $c2 $27 $1e

	ld a, $5b                                        ; $46e6: $3e $5b
	jp $1e27                                         ; $46e8: $c3 $27 $1e


	ld a, [wInitialA]                                    ; $46eb: $fa $00 $c1
	cp $11                                           ; $46ee: $fe $11
	jp z, Jump_00b_4614                              ; $46f0: $ca $14 $46

	call $0a6f                                       ; $46f3: $cd $6f $0a
	jp nc, Jump_00b_4614                             ; $46f6: $d2 $14 $46

	ret                                              ; $46f9: $c9


	call Call_00b_4736                               ; $46fa: $cd $36 $47
	ld a, [wButtonsPressed]                                    ; $46fd: $fa $25 $c1
	and $90                                          ; $4700: $e6 $90
	jp z, $2e21                                      ; $4702: $ca $21 $2e

	ld b, $08                                        ; $4705: $06 $08
	call $0a64                                       ; $4707: $cd $64 $0a
	ld bc, $67fc                                     ; $470a: $01 $fc $67
	call $18c4                                       ; $470d: $cd $c4 $18
	call Call_00b_4614                               ; $4710: $cd $14 $46
	jp $2e21                                         ; $4713: $c3 $21 $2e


	ld a, [wInitialA]                                    ; $4716: $fa $00 $c1
	cp $11                                           ; $4719: $fe $11
	jr nz, jr_00b_4724                               ; $471b: $20 $07

	call z, $19a2                                    ; $471d: $cc $a2 $19
	jp z, Jump_00b_4614                              ; $4720: $ca $14 $46

	ret                                              ; $4723: $c9


jr_00b_4724:
	call $0a90                                       ; $4724: $cd $90 $0a
	jp nc, Jump_00b_4614                             ; $4727: $d2 $14 $46

	ret                                              ; $472a: $c9


	ld a, $10                                        ; $472b: $3e $10
	ld [$c2c7], a                                    ; $472d: $ea $c7 $c2
	ld a, $01                                        ; $4730: $3e $01
	ld [$c151], a                                    ; $4732: $ea $51 $c1
	ret                                              ; $4735: $c9


Call_00b_4736:
	ld hl, $c161                                     ; $4736: $21 $61 $c1
	ld a, [hl]                                       ; $4739: $7e
	or a                                             ; $473a: $b7
	ret z                                            ; $473b: $c8

	dec [hl]                                         ; $473c: $35
	ret nz                                           ; $473d: $c0

	ld a, $31                                        ; $473e: $3e $31
	jp $1e2e                                         ; $4740: $c3 $2e $1e


Call_00b_4743:
Jump_00b_4743:
	bit 7, d                                         ; $4743: $cb $7a
	jr z, jr_00b_474a                                ; $4745: $28 $03

	xor a                                            ; $4747: $af
	jr jr_00b_474e                                   ; $4748: $18 $04

jr_00b_474a:
	ld a, $01                                        ; $474a: $3e $01
	set 7, d                                         ; $474c: $cb $fa

jr_00b_474e:
	ldh [rVBK], a                                    ; $474e: $e0 $4f
	call Call_00b_4759                               ; $4750: $cd $59 $47
	call Call_00b_4759                               ; $4753: $cd $59 $47
	call Call_00b_4759                               ; $4756: $cd $59 $47

Call_00b_4759:
	ld bc, $0004                                     ; $4759: $01 $04 $00
	call $cfda                                       ; $475c: $cd $da $cf
	ld a, $1c                                        ; $475f: $3e $1c
	call $1327                                       ; $4761: $cd $27 $13
	ret                                              ; $4764: $c9


Call_00b_4765:
Jump_00b_4765:
jr_00b_4765:
	push de                                          ; $4765: $d5
	push bc                                          ; $4766: $c5
	bit 7, d                                         ; $4767: $cb $7a
	jr z, jr_00b_476e                                ; $4769: $28 $03

	xor a                                            ; $476b: $af
	jr jr_00b_4772                                   ; $476c: $18 $04

jr_00b_476e:
	ld a, $01                                        ; $476e: $3e $01
	set 7, d                                         ; $4770: $cb $fa

jr_00b_4772:
	ldh [rVBK], a                                    ; $4772: $e0 $4f
	ld b, $00                                        ; $4774: $06 $00
	call $cfda                                       ; $4776: $cd $da $cf
	pop bc                                           ; $4779: $c1
	dec b                                            ; $477a: $05
	pop de                                           ; $477b: $d1
	ret z                                            ; $477c: $c8

	ld a, $20                                        ; $477d: $3e $20
	call $1327                                       ; $477f: $cd $27 $13
	jr jr_00b_4765                                   ; $4782: $18 $e1

Call_00b_4784:
Jump_00b_4784:
	ld de, $9800                                     ; $4784: $11 $00 $98

Call_00b_4787:
	ld hl, $de80                                     ; $4787: $21 $80 $de
	ld c, $40                                        ; $478a: $0e $40

jr_00b_478c:
	push bc                                          ; $478c: $c5
	res 7, d                                         ; $478d: $cb $ba
	ld a, [hl]                                       ; $478f: $7e
	ld b, $00                                        ; $4790: $06 $00
	ld c, a                                          ; $4792: $4f
	call $cee3                                       ; $4793: $cd $e3 $ce
	ld a, c                                          ; $4796: $79
	ld [$c0d0], a                                    ; $4797: $ea $d0 $c0
	ld a, b                                          ; $479a: $78
	ld [$c0d1], a                                    ; $479b: $ea $d1 $c0
	push hl                                          ; $479e: $e5
	ld hl, $dc80                                     ; $479f: $21 $80 $dc
	add hl, bc                                       ; $47a2: $09
	call Call_00b_47d2                               ; $47a3: $cd $d2 $47
	xor a                                            ; $47a6: $af
	ldh [rVBK], a                                    ; $47a7: $e0 $4f
	ld hl, $da80                                     ; $47a9: $21 $80 $da
	ld a, [$c0d0]                                    ; $47ac: $fa $d0 $c0
	ld c, a                                          ; $47af: $4f
	ld a, [$c0d1]                                    ; $47b0: $fa $d1 $c0
	ld b, a                                          ; $47b3: $47
	add hl, bc                                       ; $47b4: $09
	set 7, d                                         ; $47b5: $cb $fa
	call Call_00b_47d2                               ; $47b7: $cd $d2 $47
	pop hl                                           ; $47ba: $e1
	inc hl                                           ; $47bb: $23
	pop bc                                           ; $47bc: $c1
	dec c                                            ; $47bd: $0d
	ld a, $04                                        ; $47be: $3e $04
	call $1327                                       ; $47c0: $cd $27 $13
	ld a, c                                          ; $47c3: $79
	and $07                                          ; $47c4: $e6 $07
	jr nz, jr_00b_47cd                               ; $47c6: $20 $05

	ld a, $60                                        ; $47c8: $3e $60
	call $1327                                       ; $47ca: $cd $27 $13

jr_00b_47cd:
	ld a, c                                          ; $47cd: $79
	or a                                             ; $47ce: $b7
	jr nz, jr_00b_478c                               ; $47cf: $20 $bb

	ret                                              ; $47d1: $c9


Call_00b_47d2:
	push de                                          ; $47d2: $d5
	call Call_00b_4743                               ; $47d3: $cd $43 $47
	pop de                                           ; $47d6: $d1
	ret                                              ; $47d7: $c9


Call_00b_47d8:
	ld c, $40                                        ; $47d8: $0e $40
	ld hl, $de80                                     ; $47da: $21 $80 $de

jr_00b_47dd:
	ld a, [hl]                                       ; $47dd: $7e
	cp b                                             ; $47de: $b8
	jr c, jr_00b_47e3                                ; $47df: $38 $02

	sub b                                            ; $47e1: $90
	ld [hl], a                                       ; $47e2: $77

jr_00b_47e3:
	inc hl                                           ; $47e3: $23
	dec c                                            ; $47e4: $0d
	jr nz, jr_00b_47dd                               ; $47e5: $20 $f6

	ret                                              ; $47e7: $c9


Call_00b_47e8:
	push bc                                          ; $47e8: $c5
	ld a, b                                          ; $47e9: $78
	call Call_000_12fc                                       ; $47ea: $cd $fc $12
	add c                                            ; $47ed: $81
	pop bc                                           ; $47ee: $c1
	ret                                              ; $47ef: $c9


	ld a, [$c146]                                    ; $47f0: $fa $46 $c1
	call wJumpTable                                       ; $47f3: $cd $80 $cf
	ld [de], a                                       ; $47f6: $12
	ld c, b                                          ; $47f7: $48
	db $eb                                           ; $47f8: $eb
	ld b, [hl]                                       ; $47f9: $46
	jr z, jr_00b_4844                                ; $47fa: $28 $48

	dec [hl]                                         ; $47fc: $35
	ld c, b                                          ; $47fd: $48
	and d                                            ; $47fe: $a2
	ld c, c                                          ; $47ff: $49
	cp e                                             ; $4800: $bb
	ld c, b                                          ; $4801: $48
	ld l, c                                          ; $4802: $69
	ld c, c                                          ; $4803: $49
	and d                                            ; $4804: $a2
	ld c, c                                          ; $4805: $49
	pop bc                                           ; $4806: $c1
	ld c, c                                          ; $4807: $49
	ld bc, $3b4a                                     ; $4808: $01 $4a $3b
	ld c, d                                          ; $480b: $4a
	db $fd                                           ; $480c: $fd
	ld b, [hl]                                       ; $480d: $46
	ld d, $47                                        ; $480e: $16 $47
	dec hl                                           ; $4810: $2b
	ld b, a                                          ; $4811: $47
	ld a, $01                                        ; $4812: $3e $01
	ld [$a1c4], a                                    ; $4814: $ea $c4 $a1
	xor a                                            ; $4817: $af
	call $1e2e                                       ; $4818: $cd $2e $1e
	call $068e                                       ; $481b: $cd $8e $06
	ld a, $15                                        ; $481e: $3e $15
	call $1e27                                       ; $4820: $cd $27 $1e
	ld a, $06                                        ; $4823: $3e $06
	jp Jump_00b_46a1                                 ; $4825: $c3 $a1 $46


	ld a, [wButtonsPressed]                                    ; $4828: $fa $25 $c1
	and $90                                          ; $482b: $e6 $90
	ret z                                            ; $482d: $c8

	xor a                                            ; $482e: $af
	call $1e2e                                       ; $482f: $cd $2e $1e
	jp Jump_00b_4614                                 ; $4832: $c3 $14 $46


	ld hl, $4011                                     ; $4835: $21 $11 $40
	ld bc, $6554                                     ; $4838: $01 $54 $65
	call Call_00b_45e9                               ; $483b: $cd $e9 $45
	call Call_00b_4784                               ; $483e: $cd $84 $47
	ld hl, $4032                                     ; $4841: $21 $32 $40

jr_00b_4844:
	call $0ab5                                       ; $4844: $cd $b5 $0a
	ld de, $9c00                                     ; $4847: $11 $00 $9c
	call Call_00b_4787                               ; $484a: $cd $87 $47
	ld hl, $3700                                     ; $484d: $21 $00 $37
	call $095c                                       ; $4850: $cd $5c $09

Call_00b_4853:
	ld a, $0a                                        ; $4853: $3e $0a
	call $068e                                       ; $4855: $cd $8e $06
	ld bc, $40e6                                     ; $4858: $01 $e6 $40
	call Call_00b_4608                               ; $485b: $cd $08 $46
	ld a, $06                                        ; $485e: $3e $06
	ld [$c186], a                                    ; $4860: $ea $86 $c1
	xor a                                            ; $4863: $af
	ld hl, $d900                                     ; $4864: $21 $00 $d9
	ld c, $40                                        ; $4867: $0e $40
	call $cfd5                                       ; $4869: $cd $d5 $cf
	ld hl, $da00                                     ; $486c: $21 $00 $da
	ld c, $40                                        ; $486f: $0e $40
	call $cfd5                                       ; $4871: $cd $d5 $cf
	call Call_00b_4aaa                               ; $4874: $cd $aa $4a
	call Call_00b_4ac3                               ; $4877: $cd $c3 $4a
	call Call_00b_4adc                               ; $487a: $cd $dc $4a
	call Call_00b_4af8                               ; $487d: $cd $f8 $4a
	ld a, $01                                        ; $4880: $3e $01
	ldh [rVBK], a                                    ; $4882: $e0 $4f
	ld a, $05                                        ; $4884: $3e $05
	ld hl, $9de1                                     ; $4886: $21 $e1 $9d
	call $cbe9                                       ; $4889: $cd $e9 $cb
	ld a, $06                                        ; $488c: $3e $06
	call $cbed                                       ; $488e: $cd $ed $cb
	xor a                                            ; $4891: $af
	ldh [rVBK], a                                    ; $4892: $e0 $4f
	ld [$c13c], a                                    ; $4894: $ea $3c $c1
	call Call_00b_4b12                               ; $4897: $cd $12 $4b
	call Call_00b_4bd7                               ; $489a: $cd $d7 $4b
	call Call_00b_4ea7                               ; $489d: $cd $a7 $4e
	call $096e                                       ; $48a0: $cd $6e $09
	xor a                                            ; $48a3: $af
	ld [$c10b], a                                    ; $48a4: $ea $0b $c1
	ld hl, $ff82                                     ; $48a7: $21 $82 $ff
	ld a, [hl]                                       ; $48aa: $7e
	and $f9                                          ; $48ab: $e6 $f9
	ld [hl], a                                       ; $48ad: $77
	ld a, $50                                        ; $48ae: $3e $50
	ldh [hDisp0_SCX], a                                     ; $48b0: $e0 $84
	xor a                                            ; $48b2: $af
	ldh [$9d], a                                     ; $48b3: $e0 $9d
	ld a, $b4                                        ; $48b5: $3e $b4
	ld [$d840], a                                    ; $48b7: $ea $40 $d8
	ret                                              ; $48ba: $c9


	call Call_00b_4ed3                               ; $48bb: $cd $d3 $4e
	call Call_00b_4cbd                               ; $48be: $cd $bd $4c
	call Call_00b_4d25                               ; $48c1: $cd $25 $4d
	call Call_00b_4bcf                               ; $48c4: $cd $cf $4b
	call Call_00b_4bf9                               ; $48c7: $cd $f9 $4b
	call Call_00b_4e9f                               ; $48ca: $cd $9f $4e
	call Call_00b_4b9a                               ; $48cd: $cd $9a $4b
	ld a, [$c157]                                    ; $48d0: $fa $57 $c1
	ld b, a                                          ; $48d3: $47
	ld a, [$c15c]                                    ; $48d4: $fa $5c $c1
	srl b                                            ; $48d7: $cb $38
	inc b                                            ; $48d9: $04
	inc b                                            ; $48da: $04
	cp b                                             ; $48db: $b8
	jr c, jr_00b_48f1                                ; $48dc: $38 $13

	call Call_00b_4614                               ; $48de: $cd $14 $46
	ld bc, $67be                                     ; $48e1: $01 $be $67
	call $18b7                                       ; $48e4: $cd $b7 $18
	ld a, $04                                        ; $48e7: $3e $04
	ld [$c2c7], a                                    ; $48e9: $ea $c7 $c2
	ld b, $30                                        ; $48ec: $06 $30
	call $0a64                                       ; $48ee: $cd $64 $0a

jr_00b_48f1:
	call Call_00b_4b34                               ; $48f1: $cd $34 $4b
	call Call_00b_4c3b                               ; $48f4: $cd $3b $4c
	ld hl, $c158                                     ; $48f7: $21 $58 $c1
	ld a, [hl+]                                      ; $48fa: $2a
	add [hl]                                         ; $48fb: $86
	ld [hl+], a                                      ; $48fc: $22
	jr nc, jr_00b_4963                               ; $48fd: $30 $64

	inc [hl]                                         ; $48ff: $34
	ld a, [hl]                                       ; $4900: $7e
	cp $06                                           ; $4901: $fe $06
	jr nz, jr_00b_4963                               ; $4903: $20 $5e

	xor a                                            ; $4905: $af
	ld [hl+], a                                      ; $4906: $22
	ld hl, $c15c                                     ; $4907: $21 $5c $c1
	ld a, [hl]                                       ; $490a: $7e
	ld hl, $c157                                     ; $490b: $21 $57 $c1
	ld b, [hl]                                       ; $490e: $46
	srl b                                            ; $490f: $cb $38
	cp b                                             ; $4911: $b8
	jr nc, jr_00b_4943                               ; $4912: $30 $2f

	ld hl, $c157                                     ; $4914: $21 $57 $c1
	ld a, [hl]                                       ; $4917: $7e
	srl a                                            ; $4918: $cb $3f
	ld hl, $c15c                                     ; $491a: $21 $5c $c1
	cp [hl]                                          ; $491d: $be
	jr c, jr_00b_4943                                ; $491e: $38 $23

	xor a                                            ; $4920: $af
	ld [$c15d], a                                    ; $4921: $ea $5d $c1
	call Call_00b_4c71                               ; $4924: $cd $71 $4c
	ld hl, $c15d                                     ; $4927: $21 $5d $c1
	inc [hl]                                         ; $492a: $34
	call Call_00b_4c71                               ; $492b: $cd $71 $4c
	ld hl, $c15d                                     ; $492e: $21 $5d $c1
	inc [hl]                                         ; $4931: $34
	call Call_00b_4c71                               ; $4932: $cd $71 $4c
	ld hl, $c15d                                     ; $4935: $21 $5d $c1
	inc [hl]                                         ; $4938: $34
	call Call_00b_4c71                               ; $4939: $cd $71 $4c
	ld hl, $c15d                                     ; $493c: $21 $5d $c1
	inc [hl]                                         ; $493f: $34
	call Call_00b_4c71                               ; $4940: $cd $71 $4c

jr_00b_4943:
	ld hl, $c15b                                     ; $4943: $21 $5b $c1
	ld a, [hl]                                       ; $4946: $7e
	or a                                             ; $4947: $b7
	jr nz, jr_00b_4957                               ; $4948: $20 $0d

	ld hl, $d900                                     ; $494a: $21 $00 $d9
	ld a, [hl]                                       ; $494d: $7e
	or a                                             ; $494e: $b7
	jr z, jr_00b_4952                                ; $494f: $28 $01

	inc h                                            ; $4951: $24

jr_00b_4952:
	ld a, $37                                        ; $4952: $3e $37
	ld l, $00                                        ; $4954: $2e $00
	ld [hl], a                                       ; $4956: $77

jr_00b_4957:
	ld hl, $c15b                                     ; $4957: $21 $5b $c1
	inc [hl]                                         ; $495a: $34
	ld a, [hl]                                       ; $495b: $7e
	cp $10                                           ; $495c: $fe $10
	jr nz, jr_00b_4963                               ; $495e: $20 $03

	xor a                                            ; $4960: $af
	ld [hl+], a                                      ; $4961: $22
	inc [hl]                                         ; $4962: $34

jr_00b_4963:
	call Call_00b_4b93                               ; $4963: $cd $93 $4b
	jp $2e1b                                         ; $4966: $c3 $1b $2e


	call Call_00b_4ed3                               ; $4969: $cd $d3 $4e
	call Call_00b_4bcf                               ; $496c: $cd $cf $4b
	call Call_00b_4bf9                               ; $496f: $cd $f9 $4b
	call Call_00b_4e9f                               ; $4972: $cd $9f $4e
	call Call_00b_4b9a                               ; $4975: $cd $9a $4b
	call Call_00b_4cbd                               ; $4978: $cd $bd $4c
	ld a, [wInitialA]                                    ; $497b: $fa $00 $c1
	cp $11                                           ; $497e: $fe $11
	jr z, jr_00b_4989                                ; $4980: $28 $07

	call $0a7a                                       ; $4982: $cd $7a $0a
	jr c, jr_00b_4996                                ; $4985: $38 $0f

	jr jr_00b_498e                                   ; $4987: $18 $05

jr_00b_4989:
	call Call_00b_461e                               ; $4989: $cd $1e $46
	jr nz, jr_00b_4996                               ; $498c: $20 $08

jr_00b_498e:
	call Call_00b_4614                               ; $498e: $cd $14 $46
	ld a, $b4                                        ; $4991: $3e $b4
	ld [$d840], a                                    ; $4993: $ea $40 $d8

jr_00b_4996:
	call Call_00b_4b34                               ; $4996: $cd $34 $4b
	call Call_00b_4c3b                               ; $4999: $cd $3b $4c
	call Call_00b_4b93                               ; $499c: $cd $93 $4b
	jp $2e1b                                         ; $499f: $c3 $1b $2e


	ld hl, $c171                                     ; $49a2: $21 $71 $c1
	bit 7, [hl]                                      ; $49a5: $cb $7e
	jp z, Jump_00b_4614                              ; $49a7: $ca $14 $46

	call $2dc4                                       ; $49aa: $cd $c4 $2d
	ld a, [$c13c]                                    ; $49ad: $fa $3c $c1
	or a                                             ; $49b0: $b7
	jp nz, Jump_00b_4614                             ; $49b1: $c2 $14 $46

	ld hl, $d840                                     ; $49b4: $21 $40 $d8
	dec [hl]                                         ; $49b7: $35
	ret nz                                           ; $49b8: $c0

	ld hl, $c171                                     ; $49b9: $21 $71 $c1
	res 7, [hl]                                      ; $49bc: $cb $be
	jp Jump_00b_4614                                 ; $49be: $c3 $14 $46


	ld a, $b4                                        ; $49c1: $3e $b4
	ld [$d840], a                                    ; $49c3: $ea $40 $d8
	xor a                                            ; $49c6: $af
	ld [$c13c], a                                    ; $49c7: $ea $3c $c1
	ld [$c188], a                                    ; $49ca: $ea $88 $c1
	ld hl, $c176                                     ; $49cd: $21 $76 $c1
	call $cbee                                       ; $49d0: $cd $ee $cb
	ld a, [$c16b]                                    ; $49d3: $fa $6b $c1
	ld [hl+], a                                      ; $49d6: $22
	ld a, [$c153]                                    ; $49d7: $fa $53 $c1
	bit 5, a                                         ; $49da: $cb $6f
	ld a, $a0                                        ; $49dc: $3e $a0
	jr nz, jr_00b_49ea                               ; $49de: $20 $0a

	ld a, [$c166]                                    ; $49e0: $fa $66 $c1
	swap a                                           ; $49e3: $cb $37
	ld b, a                                          ; $49e5: $47
	ld a, [$c167]                                    ; $49e6: $fa $67 $c1
	or b                                             ; $49e9: $b0

jr_00b_49ea:
	ld [hl+], a                                      ; $49ea: $22
	ld a, [$c168]                                    ; $49eb: $fa $68 $c1
	swap a                                           ; $49ee: $cb $37
	ld b, a                                          ; $49f0: $47
	ld a, [$c169]                                    ; $49f1: $fa $69 $c1
	or b                                             ; $49f4: $b0
	ld [hl+], a                                      ; $49f5: $22
	ld hl, $c171                                     ; $49f6: $21 $71 $c1
	bit 7, [hl]                                      ; $49f9: $cb $7e
	jp nz, Jump_00b_4614                             ; $49fb: $c2 $14 $46

	jp Jump_00b_4f00                                 ; $49fe: $c3 $00 $4f


	ld hl, $d840                                     ; $4a01: $21 $40 $d8
	dec [hl]                                         ; $4a04: $35
	jp z, Jump_00b_4614                              ; $4a05: $ca $14 $46

	ld a, [$c188]                                    ; $4a08: $fa $88 $c1
	ld hl, $c179                                     ; $4a0b: $21 $79 $c1
	rst AddAOntoHL                                          ; $4a0e: $ef
	ld a, [hl]                                       ; $4a0f: $7e
	inc a                                            ; $4a10: $3c
	call $2db1                                       ; $4a11: $cd $b1 $2d
	ldh a, [$9f]                                     ; $4a14: $f0 $9f
	dec a                                            ; $4a16: $3d
	jr z, jr_00b_4a20                                ; $4a17: $28 $07

	ld a, [$c13d]                                    ; $4a19: $fa $3d $c1
	or a                                             ; $4a1c: $b7
	ret z                                            ; $4a1d: $c8

	jr jr_00b_4a25                                   ; $4a1e: $18 $05

jr_00b_4a20:
	ld a, [$c138]                                    ; $4a20: $fa $38 $c1
	or a                                             ; $4a23: $b7
	ret z                                            ; $4a24: $c8

jr_00b_4a25:
	ld a, [$c188]                                    ; $4a25: $fa $88 $c1
	ld hl, $c176                                     ; $4a28: $21 $76 $c1
	rst AddAOntoHL                                          ; $4a2b: $ef
	ldh a, [$9d]                                     ; $4a2c: $f0 $9d
	dec a                                            ; $4a2e: $3d
	ld [hl], a                                       ; $4a2f: $77
	ld hl, $c188                                     ; $4a30: $21 $88 $c1
	inc [hl]                                         ; $4a33: $34
	ld a, [hl]                                       ; $4a34: $7e
	cp $03                                           ; $4a35: $fe $03
	jp z, Jump_00b_4614                              ; $4a37: $ca $14 $46

	ret                                              ; $4a3a: $c9


	call $2de4                                       ; $4a3b: $cd $e4 $2d
	call $0986                                       ; $4a3e: $cd $86 $09
	call $0911                                       ; $4a41: $cd $11 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4a44: $cd $ef $2d
	call $0963                                       ; $4a47: $cd $63 $09
	call $09c3                                       ; $4a4a: $cd $c3 $09
	xor a                                            ; $4a4d: $af
	call $068e                                       ; $4a4e: $cd $8e $06
	ld a, $c1                                        ; $4a51: $3e $c1
	ldh [hDisp0_LCDC], a                                     ; $4a53: $e0 $82
	ld bc, $67de                                     ; $4a55: $01 $de $67
	call $18b7                                       ; $4a58: $cd $b7 $18
	ld de, $c179                                     ; $4a5b: $11 $79 $c1
	ld a, [de]                                       ; $4a5e: $1a
	ld hl, $c176                                     ; $4a5f: $21 $76 $c1
	cp [hl]                                          ; $4a62: $be
	jr z, jr_00b_4a69                                ; $4a63: $28 $04

	jr nc, jr_00b_4a85                               ; $4a65: $30 $1e

	jr jr_00b_4a8d                                   ; $4a67: $18 $24

jr_00b_4a69:
	inc de                                           ; $4a69: $13
	ld a, [de]                                       ; $4a6a: $1a
	inc hl                                           ; $4a6b: $23
	cp [hl]                                          ; $4a6c: $be
	jr z, jr_00b_4a73                                ; $4a6d: $28 $04

	jr nc, jr_00b_4a85                               ; $4a6f: $30 $14

	jr jr_00b_4a8d                                   ; $4a71: $18 $1a

jr_00b_4a73:
	inc de                                           ; $4a73: $13
	ld a, [de]                                       ; $4a74: $1a
	inc hl                                           ; $4a75: $23
	cp [hl]                                          ; $4a76: $be
	jr z, jr_00b_4a7d                                ; $4a77: $28 $04

	jr nc, jr_00b_4a85                               ; $4a79: $30 $0a

	jr jr_00b_4a8d                                   ; $4a7b: $18 $10

jr_00b_4a7d:
	ld bc, $6574                                     ; $4a7d: $01 $74 $65
	ld hl, $40d0                                     ; $4a80: $21 $d0 $40
	jr jr_00b_4a93                                   ; $4a83: $18 $0e

jr_00b_4a85:
	ld bc, $656c                                     ; $4a85: $01 $6c $65
	ld hl, $40a4                                     ; $4a88: $21 $a4 $40
	jr jr_00b_4a93                                   ; $4a8b: $18 $06

jr_00b_4a8d:
	ld bc, $6570                                     ; $4a8d: $01 $70 $65
	ld hl, $40ba                                     ; $4a90: $21 $ba $40

jr_00b_4a93:
	push hl                                          ; $4a93: $e5
	call $18c4                                       ; $4a94: $cd $c4 $18
	pop hl                                           ; $4a97: $e1
	call $0ab5                                       ; $4a98: $cd $b5 $0a
	xor a                                            ; $4a9b: $af
	call $1e2e                                       ; $4a9c: $cd $2e $1e
	ld a, $14                                        ; $4a9f: $3e $14
	call $1e27                                       ; $4aa1: $cd $27 $1e
	call $096e                                       ; $4aa4: $cd $6e $09
	jp Jump_00b_4614                                 ; $4aa7: $c3 $14 $46


Call_00b_4aaa:
	xor a                                            ; $4aaa: $af
	ld hl, $c153                                     ; $4aab: $21 $53 $c1
	ld [hl+], a                                      ; $4aae: $22
	inc hl                                           ; $4aaf: $23
	call $cbd5                                       ; $4ab0: $cd $d5 $cb
	ld hl, $c16a                                     ; $4ab3: $21 $6a $c1
	ld a, $00                                        ; $4ab6: $3e $00
	ld [hl+], a                                      ; $4ab8: $22
	ld a, $08                                        ; $4ab9: $3e $08
	ld [hl+], a                                      ; $4abb: $22
	xor a                                            ; $4abc: $af
	ld [hl+], a                                      ; $4abd: $22
	ld hl, $c175                                     ; $4abe: $21 $75 $c1
	ld [hl], a                                       ; $4ac1: $77
	ret                                              ; $4ac2: $c9


Call_00b_4ac3:
	ld a, [$c171]                                    ; $4ac3: $fa $71 $c1
	res 7, a                                         ; $4ac6: $cb $bf
	or a                                             ; $4ac8: $b7
	ret z                                            ; $4ac9: $c8

	ld hl, $6120                                     ; $4aca: $21 $20 $61
	call $cf95                                       ; $4acd: $cd $95 $cf
	ld a, [de]                                       ; $4ad0: $1a
	ld [$c189], a                                    ; $4ad1: $ea $89 $c1
	inc de                                           ; $4ad4: $13

Jump_00b_4ad5:
	ld hl, $c172                                     ; $4ad5: $21 $72 $c1
	ld a, e                                          ; $4ad8: $7b
	ld [hl+], a                                      ; $4ad9: $22
	ld [hl], d                                       ; $4ada: $72
	ret                                              ; $4adb: $c9


Call_00b_4adc:
	ld bc, $c154                                     ; $4adc: $01 $54 $c1
	ld a, [bc]                                       ; $4adf: $0a
	ld hl, $53ce                                     ; $4ae0: $21 $ce $53
	call $cf8a                                       ; $4ae3: $cd $8a $cf
	inc bc                                           ; $4ae6: $03
	ld a, l                                          ; $4ae7: $7d
	ld [bc], a                                       ; $4ae8: $02
	inc bc                                           ; $4ae9: $03
	ld a, h                                          ; $4aea: $7c
	ld [bc], a                                       ; $4aeb: $02
	ld de, $c157                                     ; $4aec: $11 $57 $c1
	call $ccda                                       ; $4aef: $cd $da $cc
	ld de, $c161                                     ; $4af2: $11 $61 $c1
	jp $ccd1                                         ; $4af5: $c3 $d1 $cc


Call_00b_4af8:
	ld hl, $404a                                     ; $4af8: $21 $4a $40
	ld bc, $6560                                     ; $4afb: $01 $60 $65
	ld a, [$c154]                                    ; $4afe: $fa $54 $c1
	or a                                             ; $4b01: $b7
	jr z, jr_00b_4b0a                                ; $4b02: $28 $06

	ld hl, $4060                                     ; $4b04: $21 $60 $40
	ld bc, $6564                                     ; $4b07: $01 $64 $65

jr_00b_4b0a:
	push bc                                          ; $4b0a: $c5
	call $0ab5                                       ; $4b0b: $cd $b5 $0a
	pop bc                                           ; $4b0e: $c1
	jp $18b7                                         ; $4b0f: $c3 $b7 $18


Call_00b_4b12:
	ld a, [$c154]                                    ; $4b12: $fa $54 $c1
	cp $01                                           ; $4b15: $fe $01
	ret c                                            ; $4b17: $d8

	jr nz, jr_00b_4b27                               ; $4b18: $20 $0d

	ld hl, $9e04                                     ; $4b1a: $21 $04 $9e
	ld a, $16                                        ; $4b1d: $3e $16
	ld [hl+], a                                      ; $4b1f: $22
	ld a, $18                                        ; $4b20: $3e $18
	ld [hl+], a                                      ; $4b22: $22
	ld a, $15                                        ; $4b23: $3e $15
	ld [hl+], a                                      ; $4b25: $22
	ret                                              ; $4b26: $c9


jr_00b_4b27:
	ld hl, $9e04                                     ; $4b27: $21 $04 $9e
	ld a, $16                                        ; $4b2a: $3e $16
	ld [hl+], a                                      ; $4b2c: $22
	ld a, $18                                        ; $4b2d: $3e $18
	ld [hl+], a                                      ; $4b2f: $22
	ld a, $17                                        ; $4b30: $3e $17
	ld [hl+], a                                      ; $4b32: $22
	ret                                              ; $4b33: $c9


Call_00b_4b34:
	ld a, [$c171]                                    ; $4b34: $fa $71 $c1
	res 7, a                                         ; $4b37: $cb $bf
	or a                                             ; $4b39: $b7
	jr nz, jr_00b_4b48                               ; $4b3a: $20 $0c

	ld hl, $c16f                                     ; $4b3c: $21 $6f $c1
	ld a, [wButtonsHeld]                                    ; $4b3f: $fa $23 $c1
	ld [hl+], a                                      ; $4b42: $22
	ld a, [wButtonsPressed]                                    ; $4b43: $fa $25 $c1
	ld [hl], a                                       ; $4b46: $77
	ret                                              ; $4b47: $c9


jr_00b_4b48:
	ld hl, $c172                                     ; $4b48: $21 $72 $c1
	ld a, [hl+]                                      ; $4b4b: $2a
	ld d, [hl]                                       ; $4b4c: $56
	ld e, a                                          ; $4b4d: $5f
	ld hl, $c15c                                     ; $4b4e: $21 $5c $c1
	ld a, [de]                                       ; $4b51: $1a
	cp $ff                                           ; $4b52: $fe $ff
	jr z, jr_00b_4b84                                ; $4b54: $28 $2e

	bit 7, a                                         ; $4b56: $cb $7f
	jr nz, jr_00b_4b5f                               ; $4b58: $20 $05

	cp [hl]                                          ; $4b5a: $be
	jr nz, jr_00b_4b84                               ; $4b5b: $20 $27

	inc de                                           ; $4b5d: $13
	ld a, [de]                                       ; $4b5e: $1a

jr_00b_4b5f:
	dec hl                                           ; $4b5f: $2b
	res 7, a                                         ; $4b60: $cb $bf
	ld b, a                                          ; $4b62: $47
	and $0f                                          ; $4b63: $e6 $0f
	ld c, a                                          ; $4b65: $4f
	ld a, b                                          ; $4b66: $78
	and $f0                                          ; $4b67: $e6 $f0
	swap a                                           ; $4b69: $cb $37
	ld b, a                                          ; $4b6b: $47
	ld a, [hl-]                                      ; $4b6c: $3a
	cp c                                             ; $4b6d: $b9
	jr nz, jr_00b_4b84                               ; $4b6e: $20 $14

	ld a, [hl]                                       ; $4b70: $7e
	cp b                                             ; $4b71: $b8
	jr nz, jr_00b_4b84                               ; $4b72: $20 $10

	inc de                                           ; $4b74: $13
	ld a, [de]                                       ; $4b75: $1a
	ld hl, $c16f                                     ; $4b76: $21 $6f $c1
	ld [hl+], a                                      ; $4b79: $22
	ld [hl], a                                       ; $4b7a: $77
	ld a, $08                                        ; $4b7b: $3e $08
	ld [$c174], a                                    ; $4b7d: $ea $74 $c1
	inc de                                           ; $4b80: $13
	jp Jump_00b_4ad5                                 ; $4b81: $c3 $d5 $4a


jr_00b_4b84:
	xor a                                            ; $4b84: $af
	ld hl, $c170                                     ; $4b85: $21 $70 $c1
	ld [hl-], a                                      ; $4b88: $32
	ld de, $c174                                     ; $4b89: $11 $74 $c1
	ld a, [de]                                       ; $4b8c: $1a
	dec a                                            ; $4b8d: $3d
	ld [de], a                                       ; $4b8e: $12
	or a                                             ; $4b8f: $b7
	ret nz                                           ; $4b90: $c0

	ld [hl], a                                       ; $4b91: $77
	ret                                              ; $4b92: $c9


Call_00b_4b93:
	xor a                                            ; $4b93: $af
	ld hl, $c17c                                     ; $4b94: $21 $7c $c1
	jp $cbec                                         ; $4b97: $c3 $ec $cb


Call_00b_4b9a:
	xor a                                            ; $4b9a: $af
	ld [$c0d8], a                                    ; $4b9b: $ea $d8 $c0
	call Call_00b_4baa                               ; $4b9e: $cd $aa $4b
	call Call_00b_4baa                               ; $4ba1: $cd $aa $4b
	call Call_00b_4baa                               ; $4ba4: $cd $aa $4b
	call Call_00b_4baa                               ; $4ba7: $cd $aa $4b

Call_00b_4baa:
	ld a, [$c0d8]                                    ; $4baa: $fa $d8 $c0
	ld hl, $410a                                     ; $4bad: $21 $0a $41
	rst AddAOntoHL                                          ; $4bb0: $ef
	ld a, [$c170]                                    ; $4bb1: $fa $70 $c1
	and [hl]                                         ; $4bb4: $a6
	jr z, jr_00b_4bca                                ; $4bb5: $28 $13

	ld a, [$c0d8]                                    ; $4bb7: $fa $d8 $c0
	ld hl, $c17c                                     ; $4bba: $21 $7c $c1
	rst AddAOntoHL                                          ; $4bbd: $ef
	ld a, [hl]                                       ; $4bbe: $7e
	or a                                             ; $4bbf: $b7
	jr nz, jr_00b_4bca                               ; $4bc0: $20 $08

	ld d, $00                                        ; $4bc2: $16 $00
	call Call_00b_534c                               ; $4bc4: $cd $4c $53
	call Call_00b_535a                               ; $4bc7: $cd $5a $53

jr_00b_4bca:
	ld hl, $c0d8                                     ; $4bca: $21 $d8 $c0
	inc [hl]                                         ; $4bcd: $34
	ret                                              ; $4bce: $c9


Call_00b_4bcf:
	ld a, [wFrameCounter]                                    ; $4bcf: $fa $1f $c1
	and $07                                          ; $4bd2: $e6 $07
	cp $03                                           ; $4bd4: $fe $03
	ret nz                                           ; $4bd6: $c0

Call_00b_4bd7:
	ld hl, $c16c                                     ; $4bd7: $21 $6c $c1
	ld a, [$c16b]                                    ; $4bda: $fa $6b $c1
	cp [hl]                                          ; $4bdd: $be
	ret z                                            ; $4bde: $c8

	ld [hl], a                                       ; $4bdf: $77
	ld b, a                                          ; $4be0: $47
	ld c, $0c                                        ; $4be1: $0e $0c
	call BCequBtimesC                                       ; $4be3: $cd $5f $12
	ld hl, $5e30                                     ; $4be6: $21 $30 $5e
	add hl, bc                                       ; $4be9: $09
	ld d, h                                          ; $4bea: $54
	ld e, l                                          ; $4beb: $5d
	ld a, $0c                                        ; $4bec: $3e $0c
	ld [$c0d0], a                                    ; $4bee: $ea $d0 $c0
	ld a, $0c                                        ; $4bf1: $3e $0c
	ld hl, $9de1                                     ; $4bf3: $21 $e1 $9d
	jp $1675                                         ; $4bf6: $c3 $75 $16


Call_00b_4bf9:
	ld a, [wFrameCounter]                                    ; $4bf9: $fa $1f $c1
	and $07                                          ; $4bfc: $e6 $07
	cp $07                                           ; $4bfe: $fe $07
	ret nz                                           ; $4c00: $c0

	ld hl, $c166                                     ; $4c01: $21 $66 $c1
	ld a, [hl]                                       ; $4c04: $7e
	cp $0a                                           ; $4c05: $fe $0a
	jr c, jr_00b_4c1c                                ; $4c07: $38 $13

	xor a                                            ; $4c09: $af
	call $cbed                                       ; $4c0a: $cd $ed $cb
	ld hl, $c153                                     ; $4c0d: $21 $53 $c1
	set 5, [hl]                                      ; $4c10: $cb $ee
	ld a, $01                                        ; $4c12: $3e $01
	ld e, $16                                        ; $4c14: $1e $16
	ld hl, $9e08                                     ; $4c16: $21 $08 $9e
	call $165f                                       ; $4c19: $cd $5f $16

jr_00b_4c1c:
	ld a, $04                                        ; $4c1c: $3e $04
	ld hl, $9e09                                     ; $4c1e: $21 $09 $9e
	call EnqueueDataCopyType4FullHeader                                       ; $4c21: $cd $83 $16
	ld de, $c166                                     ; $4c24: $11 $66 $c1
	ld a, [de]                                       ; $4c27: $1a
	add $15                                          ; $4c28: $c6 $15
	ld [hl+], a                                      ; $4c2a: $22
	inc de                                           ; $4c2b: $13
	ld a, [de]                                       ; $4c2c: $1a
	add $15                                          ; $4c2d: $c6 $15
	ld [hl+], a                                      ; $4c2f: $22
	inc de                                           ; $4c30: $13
	ld a, [de]                                       ; $4c31: $1a
	add $15                                          ; $4c32: $c6 $15
	ld [hl+], a                                      ; $4c34: $22
	inc de                                           ; $4c35: $13
	ld a, [de]                                       ; $4c36: $1a
	add $15                                          ; $4c37: $c6 $15
	ld [hl], a                                       ; $4c39: $77
	ret                                              ; $4c3a: $c9


Call_00b_4c3b:
	ld a, [wFrameCounter]                                    ; $4c3b: $fa $1f $c1
	and $03                                          ; $4c3e: $e6 $03
	cp $03                                           ; $4c40: $fe $03
	ret z                                            ; $4c42: $c8

	rlca                                             ; $4c43: $07
	ld [$c0d8], a                                    ; $4c44: $ea $d8 $c0
	call Call_00b_4c52                               ; $4c47: $cd $52 $4c
	ld hl, $c0d8                                     ; $4c4a: $21 $d8 $c0
	inc [hl]                                         ; $4c4d: $34
	ld a, $05                                        ; $4c4e: $3e $05
	cp [hl]                                          ; $4c50: $be
	ret z                                            ; $4c51: $c8

Call_00b_4c52:
	ld a, [$c0d8]                                    ; $4c52: $fa $d8 $c0
	ld hl, $9801                                     ; $4c55: $21 $01 $98
	rst AddAOntoHL                                          ; $4c58: $ef
	push hl                                          ; $4c59: $e5
	ld a, [$c0d8]                                    ; $4c5a: $fa $d8 $c0
	ld hl, $410a                                     ; $4c5d: $21 $0a $41
	rst AddAOntoHL                                          ; $4c60: $ef
	ld a, [$c16f]                                    ; $4c61: $fa $6f $c1
	ld e, $01                                        ; $4c64: $1e $01
	and [hl]                                         ; $4c66: $a6
	jr z, jr_00b_4c6b                                ; $4c67: $28 $02

	ld e, $24                                        ; $4c69: $1e $24

jr_00b_4c6b:
	ld a, $0e                                        ; $4c6b: $3e $0e
	pop hl                                           ; $4c6d: $e1
	jp $1667                                         ; $4c6e: $c3 $67 $16


Call_00b_4c71:
	ld hl, $c15c                                     ; $4c71: $21 $5c $c1
	call Call_00b_4d1c                               ; $4c74: $cd $1c $4d
	ld a, $11                                        ; $4c77: $3e $11
	call $1327                                       ; $4c79: $cd $27 $13
	ld a, [$c15d]                                    ; $4c7c: $fa $5d $c1
	ld b, a                                          ; $4c7f: $47
	ld a, [$c157]                                    ; $4c80: $fa $57 $c1
	ld c, a                                          ; $4c83: $4f
	call BCequBtimesC                                       ; $4c84: $cd $5f $12
	call wAddBContoDE                                       ; $4c87: $cd $92 $ce
	ld a, [hl-]                                      ; $4c8a: $3a
	sla a                                            ; $4c8b: $cb $27
	call $1327                                       ; $4c8d: $cd $27 $13
	bit 3, [hl]                                      ; $4c90: $cb $5e
	jr z, jr_00b_4c95                                ; $4c92: $28 $01

	inc de                                           ; $4c94: $13

jr_00b_4c95:
	ld a, [hl]                                       ; $4c95: $7e
	res 3, a                                         ; $4c96: $cb $9f
	ld bc, $40f1                                     ; $4c98: $01 $f1 $40
	call $132c                                       ; $4c9b: $cd $2c $13
	ld a, [bc]                                       ; $4c9e: $0a
	ld c, a                                          ; $4c9f: $4f
	ld a, [de]                                       ; $4ca0: $1a
	and c                                            ; $4ca1: $a1
	ret z                                            ; $4ca2: $c8

	call $2e08                                       ; $4ca3: $cd $08 $2e
	ld a, [$c15d]                                    ; $4ca6: $fa $5d $c1
	ld bc, $40f4                                     ; $4ca9: $01 $f4 $40
	call $132c                                       ; $4cac: $cd $2c $13
	ld a, [bc]                                       ; $4caf: $0a
	ld c, a                                          ; $4cb0: $4f
	ld de, $c160                                     ; $4cb1: $11 $60 $c1
	ld a, [de]                                       ; $4cb4: $1a
	or c                                             ; $4cb5: $b1
	ld [de], a                                       ; $4cb6: $12
	ld a, $36                                        ; $4cb7: $3e $36
	ld l, $00                                        ; $4cb9: $2e $00
	ld [hl], a                                       ; $4cbb: $77
	ret                                              ; $4cbc: $c9


Call_00b_4cbd:
	ld a, [$c170]                                    ; $4cbd: $fa $70 $c1
	and $3f                                          ; $4cc0: $e6 $3f
	ret z                                            ; $4cc2: $c8

	call Call_00b_4d1c                               ; $4cc3: $cd $1c $4d
	ld h, d                                          ; $4cc6: $62
	ld l, e                                          ; $4cc7: $6b
	ld a, $07                                        ; $4cc8: $3e $07
	rst AddAOntoHL                                          ; $4cca: $ef
	ld de, $40f9                                     ; $4ccb: $11 $f9 $40
	ld c, $06                                        ; $4cce: $0e $06

jr_00b_4cd0:
	ld a, [$c170]                                    ; $4cd0: $fa $70 $c1
	ld b, a                                          ; $4cd3: $47
	ld a, [de]                                       ; $4cd4: $1a
	inc de                                           ; $4cd5: $13
	and b                                            ; $4cd6: $a0
	push hl                                          ; $4cd7: $e5
	push de                                          ; $4cd8: $d5
	call nz, Call_00b_4ce3                           ; $4cd9: $c4 $e3 $4c
	pop de                                           ; $4cdc: $d1
	pop hl                                           ; $4cdd: $e1
	inc de                                           ; $4cde: $13
	dec c                                            ; $4cdf: $0d
	jr nz, jr_00b_4cd0                               ; $4ce0: $20 $ee

	ret z                                            ; $4ce2: $c8

Call_00b_4ce3:
	ld a, [de]                                       ; $4ce3: $1a
	call $cf8a                                       ; $4ce4: $cd $8a $cf

jr_00b_4ce7:
	ld a, [$c15c]                                    ; $4ce7: $fa $5c $c1
	cp [hl]                                          ; $4cea: $be
	jr z, jr_00b_4cf1                                ; $4ceb: $28 $04

	jr nc, jr_00b_4d05                               ; $4ced: $30 $16

	jr c, jr_00b_4d0c                                ; $4cef: $38 $1b

jr_00b_4cf1:
	inc hl                                           ; $4cf1: $23
	ld a, [$c15b]                                    ; $4cf2: $fa $5b $c1
	cp [hl]                                          ; $4cf5: $be
	jr z, jr_00b_4cfc                                ; $4cf6: $28 $04

	jr nc, jr_00b_4d06                               ; $4cf8: $30 $0c

	jr c, jr_00b_4d0d                                ; $4cfa: $38 $11

jr_00b_4cfc:
	inc hl                                           ; $4cfc: $23
	ld a, [$c15a]                                    ; $4cfd: $fa $5a $c1
	cp [hl]                                          ; $4d00: $be
	jr c, jr_00b_4d0e                                ; $4d01: $38 $0b

	jr jr_00b_4d07                                   ; $4d03: $18 $02

jr_00b_4d05:
	inc hl                                           ; $4d05: $23

jr_00b_4d06:
	inc hl                                           ; $4d06: $23

jr_00b_4d07:
	inc hl                                           ; $4d07: $23
	inc hl                                           ; $4d08: $23
	inc hl                                           ; $4d09: $23
	jr jr_00b_4ce7                                   ; $4d0a: $18 $db

jr_00b_4d0c:
	inc hl                                           ; $4d0c: $23

jr_00b_4d0d:
	inc hl                                           ; $4d0d: $23

jr_00b_4d0e:
	inc hl                                           ; $4d0e: $23
	ld a, [hl+]                                      ; $4d0f: $2a
	ld [$c2ca], a                                    ; $4d10: $ea $ca $c2
	ld a, [hl]                                       ; $4d13: $7e
	or a                                             ; $4d14: $b7
	ret z                                            ; $4d15: $c8

	di                                               ; $4d16: $f3
	call $1e2e                                       ; $4d17: $cd $2e $1e
	ei                                               ; $4d1a: $fb
	ret                                              ; $4d1b: $c9


Call_00b_4d1c:
	ld a, [$c155]                                    ; $4d1c: $fa $55 $c1
	ld e, a                                          ; $4d1f: $5f
	ld a, [$c156]                                    ; $4d20: $fa $56 $c1
	ld d, a                                          ; $4d23: $57
	ret                                              ; $4d24: $c9


Call_00b_4d25:
	ld hl, $c164                                     ; $4d25: $21 $64 $c1
	ld a, [hl+]                                      ; $4d28: $2a
	ld e, a                                          ; $4d29: $5f
	ld d, [hl]                                       ; $4d2a: $56
	ld hl, $c153                                     ; $4d2b: $21 $53 $c1
	bit 6, [hl]                                      ; $4d2e: $cb $76
	jr z, jr_00b_4d37                                ; $4d30: $28 $05

	ld a, $04                                        ; $4d32: $3e $04
	rst SubAFromDE                                          ; $4d34: $df
	jr jr_00b_4d99                                   ; $4d35: $18 $62

jr_00b_4d37:
	ld hl, $c15c                                     ; $4d37: $21 $5c $c1
	ld a, [hl-]                                      ; $4d3a: $3a
	ld b, a                                          ; $4d3b: $47
	ld a, [de]                                       ; $4d3c: $1a
	inc de                                           ; $4d3d: $13
	or a                                             ; $4d3e: $b7
	jr z, jr_00b_4d59                                ; $4d3f: $28 $18

	bit 7, a                                         ; $4d41: $cb $7f
	jr z, jr_00b_4d4d                                ; $4d43: $28 $08

	res 7, a                                         ; $4d45: $cb $bf
	ld c, a                                          ; $4d47: $4f
	ld a, [hl-]                                      ; $4d48: $3a
	ld b, a                                          ; $4d49: $47
	ld a, c                                          ; $4d4a: $79
	jr jr_00b_4d53                                   ; $4d4b: $18 $06

jr_00b_4d4d:
	cp b                                             ; $4d4d: $b8
	ret nz                                           ; $4d4e: $c0

	ld a, [hl-]                                      ; $4d4f: $3a
	ld b, a                                          ; $4d50: $47
	ld a, [de]                                       ; $4d51: $1a
	inc de                                           ; $4d52: $13

jr_00b_4d53:
	cp b                                             ; $4d53: $b8
	ret nz                                           ; $4d54: $c0

	ld a, $05                                        ; $4d55: $3e $05
	cp [hl]                                          ; $4d57: $be
	ret nz                                           ; $4d58: $c0

jr_00b_4d59:
	ld a, [de]                                       ; $4d59: $1a
	ld b, d                                          ; $4d5a: $42
	ld c, e                                          ; $4d5b: $4b
	ld hl, $6057                                     ; $4d5c: $21 $57 $60
	call $cf8a                                       ; $4d5f: $cd $8a $cf
	ld d, b                                          ; $4d62: $50
	ld e, c                                          ; $4d63: $59
	inc de                                           ; $4d64: $13
	ld bc, $4d6a                                     ; $4d65: $01 $6a $4d
	push bc                                          ; $4d68: $c5
	jp hl                                            ; $4d69: $e9


	ld hl, $c164                                     ; $4d6a: $21 $64 $c1
	ld a, e                                          ; $4d6d: $7b
	ld [hl+], a                                      ; $4d6e: $22
	ld [hl], d                                       ; $4d6f: $72
	jr jr_00b_4d37                                   ; $4d70: $18 $c5

	call Call_00b_4e8d                               ; $4d72: $cd $8d $4e
	push de                                          ; $4d75: $d5
	call $18c4                                       ; $4d76: $cd $c4 $18
	pop de                                           ; $4d79: $d1
	ret                                              ; $4d7a: $c9


	call Call_00b_4e8d                               ; $4d7b: $cd $8d $4e
	push de                                          ; $4d7e: $d5
	call $189d                                       ; $4d7f: $cd $9d $18
	pop de                                           ; $4d82: $d1
	ret                                              ; $4d83: $c9


	push de                                          ; $4d84: $d5
	ld a, $02                                        ; $4d85: $3e $02
	call $18f5                                       ; $4d87: $cd $f5 $18
	pop de                                           ; $4d8a: $d1
	call Call_00b_4e8d                               ; $4d8b: $cd $8d $4e
	push de                                          ; $4d8e: $d5
	call $18aa                                       ; $4d8f: $cd $aa $18
	pop de                                           ; $4d92: $d1
	ret                                              ; $4d93: $c9


	ld hl, $c153                                     ; $4d94: $21 $53 $c1
	set 6, [hl]                                      ; $4d97: $cb $f6

jr_00b_4d99:
	ld hl, $c16e                                     ; $4d99: $21 $6e $c1
	ld a, [hl]                                       ; $4d9c: $7e
	or a                                             ; $4d9d: $b7
	jr z, jr_00b_4da2                                ; $4d9e: $28 $02

	dec [hl]                                         ; $4da0: $35
	ret                                              ; $4da1: $c9


jr_00b_4da2:
	push de                                          ; $4da2: $d5
	xor a                                            ; $4da3: $af
	ld [$c0dd], a                                    ; $4da4: $ea $dd $c0
	call Call_00b_4dd9                               ; $4da7: $cd $d9 $4d
	ld a, [wInitialA]                                    ; $4daa: $fa $00 $c1
	cp $11                                           ; $4dad: $fe $11
	jr nz, jr_00b_4dbc                               ; $4daf: $20 $0b

	ld a, $01                                        ; $4db1: $3e $01
	ld [$c0dd], a                                    ; $4db3: $ea $dd $c0
	pop de                                           ; $4db6: $d1
	call Call_00b_4dd9                               ; $4db7: $cd $d9 $4d
	jr jr_00b_4dbd                                   ; $4dba: $18 $01

jr_00b_4dbc:
	pop bc                                           ; $4dbc: $c1

jr_00b_4dbd:
	ld a, [$c0dd]                                    ; $4dbd: $fa $dd $c0
	or a                                             ; $4dc0: $b7
	jr nz, jr_00b_4dcd                               ; $4dc1: $20 $0a

	ld hl, $c16d                                     ; $4dc3: $21 $6d $c1
	inc [hl]                                         ; $4dc6: $34
	inc hl                                           ; $4dc7: $23
	ld a, [$c0dc]                                    ; $4dc8: $fa $dc $c0
	ld [hl], a                                       ; $4dcb: $77
	ret                                              ; $4dcc: $c9


jr_00b_4dcd:
	xor a                                            ; $4dcd: $af
	ld hl, $c16d                                     ; $4dce: $21 $6d $c1
	ld [hl+], a                                      ; $4dd1: $22
	ld [hl], a                                       ; $4dd2: $77
	ld hl, $c153                                     ; $4dd3: $21 $53 $c1
	res 6, [hl]                                      ; $4dd6: $cb $b6
	ret                                              ; $4dd8: $c9


Call_00b_4dd9:
	ld a, [de]                                       ; $4dd9: $1a
	and $f0                                          ; $4dda: $e6 $f0
	swap a                                           ; $4ddc: $cb $37
	ld [$c0dc], a                                    ; $4dde: $ea $dc $c0
	ld a, [de]                                       ; $4de1: $1a
	and $0f                                          ; $4de2: $e6 $0f
	ld hl, $605f                                     ; $4de4: $21 $5f $60
	call $cfa0                                       ; $4de7: $cd $a0 $cf
	ld a, c                                          ; $4dea: $79
	ld hl, $c0d8                                     ; $4deb: $21 $d8 $c0
	ld [hl+], a                                      ; $4dee: $22
	ld a, b                                          ; $4def: $78
	ld [hl+], a                                      ; $4df0: $22
	inc de                                           ; $4df1: $13
	ld a, [de]                                       ; $4df2: $1a
	ld b, $00                                        ; $4df3: $06 $00
	ld c, a                                          ; $4df5: $4f
	call $cee3                                       ; $4df6: $cd $e3 $ce
	ld a, c                                          ; $4df9: $79
	ld [hl+], a                                      ; $4dfa: $22
	ld a, [$c0dd]                                    ; $4dfb: $fa $dd $c0
	or a                                             ; $4dfe: $b7
	ld a, b                                          ; $4dff: $78
	jr z, jr_00b_4e04                                ; $4e00: $28 $02

	add $02                                          ; $4e02: $c6 $02

jr_00b_4e04:
	ld [hl], a                                       ; $4e04: $77
	inc de                                           ; $4e05: $13
	ld hl, $c16d                                     ; $4e06: $21 $6d $c1
	ld c, [hl]                                       ; $4e09: $4e
	ld b, $05                                        ; $4e0a: $06 $05
	call BCequBtimesC                                       ; $4e0c: $cd $5f $12
	call Call_00b_4e86                               ; $4e0f: $cd $86 $4e
	push de                                          ; $4e12: $d5
	add hl, bc                                       ; $4e13: $09
	ld a, [hl+]                                      ; $4e14: $2a
	cp $ff                                           ; $4e15: $fe $ff
	jr z, jr_00b_4e7f                                ; $4e17: $28 $66

	ld d, [hl]                                       ; $4e19: $56
	ld e, a                                          ; $4e1a: $5f
	ld a, [$c0d8]                                    ; $4e1b: $fa $d8 $c0
	ld c, a                                          ; $4e1e: $4f
	ld a, [$c0d9]                                    ; $4e1f: $fa $d9 $c0
	ld b, a                                          ; $4e22: $47
	call wAddBContoDE                                       ; $4e23: $cd $92 $ce
	ld a, [$c0dd]                                    ; $4e26: $fa $dd $c0
	or a                                             ; $4e29: $b7
	jr z, jr_00b_4e2e                                ; $4e2a: $28 $02

	res 7, d                                         ; $4e2c: $cb $ba

jr_00b_4e2e:
	inc hl                                           ; $4e2e: $23
	ld a, [hl+]                                      ; $4e2f: $2a
	ld c, [hl]                                       ; $4e30: $4e
	push hl                                          ; $4e31: $e5
	call wSwapDEandHL                                       ; $4e32: $cd $d4 $ce
	call $16af                                       ; $4e35: $cd $af $16
	pop de                                           ; $4e38: $d1
	call wSwapDEandHL                                       ; $4e39: $cd $d4 $ce
	push de                                          ; $4e3c: $d5
	dec hl                                           ; $4e3d: $2b
	ld a, [hl+]                                      ; $4e3e: $2a
	ld [$c0d8], a                                    ; $4e3f: $ea $d8 $c0
	ld a, [hl+]                                      ; $4e42: $2a
	ld b, $20                                        ; $4e43: $06 $20
	call $12b5                                       ; $4e45: $cd $b5 $12
	push bc                                          ; $4e48: $c5
	ld b, a                                          ; $4e49: $47
	ld c, $04                                        ; $4e4a: $0e $04
	call BCequBtimesC                                       ; $4e4c: $cd $5f $12
	ld a, c                                          ; $4e4f: $79
	pop bc                                           ; $4e50: $c1
	add b                                            ; $4e51: $80
	ld [$c0d9], a                                    ; $4e52: $ea $d9 $c0
	ld a, [hl+]                                      ; $4e55: $2a
	ld bc, $da80                                     ; $4e56: $01 $80 $da
	call $132c                                       ; $4e59: $cd $2c $13
	ld a, [$c0da]                                    ; $4e5c: $fa $da $c0
	ld e, a                                          ; $4e5f: $5f
	ld a, [$c0db]                                    ; $4e60: $fa $db $c0
	ld d, a                                          ; $4e63: $57
	call wAddBContoDE                                       ; $4e64: $cd $92 $ce
	pop hl                                           ; $4e67: $e1
	ld a, [$c0d8]                                    ; $4e68: $fa $d8 $c0
	ld c, a                                          ; $4e6b: $4f
	ld a, [$c0d9]                                    ; $4e6c: $fa $d9 $c0
	ld b, a                                          ; $4e6f: $47

jr_00b_4e70:
	ld a, [de]                                       ; $4e70: $1a
	ld [hl+], a                                      ; $4e71: $22
	ld a, b                                          ; $4e72: $78
	call $1327                                       ; $4e73: $cd $27 $13
	dec c                                            ; $4e76: $0d
	jr nz, jr_00b_4e70                               ; $4e77: $20 $f7

	pop de                                           ; $4e79: $d1
	xor a                                            ; $4e7a: $af
	ld [$c0dd], a                                    ; $4e7b: $ea $dd $c0
	ret                                              ; $4e7e: $c9


jr_00b_4e7f:
	pop de                                           ; $4e7f: $d1
	ld a, $01                                        ; $4e80: $3e $01
	ld [$c0dd], a                                    ; $4e82: $ea $dd $c0
	ret                                              ; $4e85: $c9


Call_00b_4e86:
	ld a, [de]                                       ; $4e86: $1a
	ld l, a                                          ; $4e87: $6f
	inc de                                           ; $4e88: $13
	ld a, [de]                                       ; $4e89: $1a
	ld h, a                                          ; $4e8a: $67
	inc de                                           ; $4e8b: $13
	ret                                              ; $4e8c: $c9


Call_00b_4e8d:
	ld a, [de]                                       ; $4e8d: $1a
	ld c, a                                          ; $4e8e: $4f
	inc de                                           ; $4e8f: $13
	ld a, [de]                                       ; $4e90: $1a
	ld b, a                                          ; $4e91: $47
	inc de                                           ; $4e92: $13
	ret                                              ; $4e93: $c9


	ld a, [$c139]                                    ; $4e94: $fa $39 $c1
	dec a                                            ; $4e97: $3d
	ret nz                                           ; $4e98: $c0

	ld hl, $c171                                     ; $4e99: $21 $71 $c1
	res 7, [hl]                                      ; $4e9c: $cb $be
	ret                                              ; $4e9e: $c9


Call_00b_4e9f:
	ld a, [wFrameCounter]                                    ; $4e9f: $fa $1f $c1
	and $07                                          ; $4ea2: $e6 $07
	cp $06                                           ; $4ea4: $fe $06
	ret nz                                           ; $4ea6: $c0

Call_00b_4ea7:
	ld hl, $c171                                     ; $4ea7: $21 $71 $c1
	bit 7, [hl]                                      ; $4eaa: $cb $7e
	ld a, $08                                        ; $4eac: $3e $08
	ld hl, $9da3                                     ; $4eae: $21 $a3 $9d
	jr nz, jr_00b_4eb8                               ; $4eb1: $20 $05

	ld e, $1f                                        ; $4eb3: $1e $1f
	jp $165f                                         ; $4eb5: $c3 $5f $16


jr_00b_4eb8:
	call EnqueueDataCopyType4FullHeader                                       ; $4eb8: $cd $83 $16
	ld a, $25                                        ; $4ebb: $3e $25
	ld [hl+], a                                      ; $4ebd: $22
	ld a, $26                                        ; $4ebe: $3e $26
	ld [hl+], a                                      ; $4ec0: $22
	ld a, $27                                        ; $4ec1: $3e $27
	ld [hl+], a                                      ; $4ec3: $22
	ld a, $28                                        ; $4ec4: $3e $28
	ld [hl+], a                                      ; $4ec6: $22
	ld a, $1f                                        ; $4ec7: $3e $1f
	ld [hl+], a                                      ; $4ec9: $22
	ld a, $27                                        ; $4eca: $3e $27
	ld [hl+], a                                      ; $4ecc: $22
	ld a, $29                                        ; $4ecd: $3e $29
	ld [hl+], a                                      ; $4ecf: $22
	ld [hl], $2a                                     ; $4ed0: $36 $2a
	ret                                              ; $4ed2: $c9


Call_00b_4ed3:
	ld hl, $c171                                     ; $4ed3: $21 $71 $c1
	bit 7, [hl]                                      ; $4ed6: $cb $7e
	jr nz, jr_00b_4edd                               ; $4ed8: $20 $03

	xor a                                            ; $4eda: $af
	jr jr_00b_4efc                                   ; $4edb: $18 $1f

jr_00b_4edd:
	ld a, [$c16b]                                    ; $4edd: $fa $6b $c1
	inc a                                            ; $4ee0: $3c
	call $2db1                                       ; $4ee1: $cd $b1 $2d
	ld a, [$c138]                                    ; $4ee4: $fa $38 $c1
	or a                                             ; $4ee7: $b7
	ret z                                            ; $4ee8: $c8

	ldh a, [$9d]                                     ; $4ee9: $f0 $9d
	rla                                              ; $4eeb: $17
	ret c                                            ; $4eec: $d8

	rra                                              ; $4eed: $1f
	dec a                                            ; $4eee: $3d
	ld hl, $c16b                                     ; $4eef: $21 $6b $c1
	sub [hl]                                         ; $4ef2: $96
	jr nc, jr_00b_4ef8                               ; $4ef3: $30 $03

	xor a                                            ; $4ef5: $af
	jr jr_00b_4efc                                   ; $4ef6: $18 $04

jr_00b_4ef8:
	ld b, a                                          ; $4ef8: $47
	srl a                                            ; $4ef9: $cb $3f
	add b                                            ; $4efb: $80

jr_00b_4efc:
	ld [$c175], a                                    ; $4efc: $ea $75 $c1
	ret                                              ; $4eff: $c9


Jump_00b_4f00:
	ld a, [$c152]                                    ; $4f00: $fa $52 $c1
	call wJumpTable                                       ; $4f03: $cd $80 $cf
	inc c                                            ; $4f06: $0c
	ld c, a                                          ; $4f07: $4f
	jr jr_00b_4f59                                   ; $4f08: $18 $4f

	dec hl                                           ; $4f0a: $2b
	ld b, a                                          ; $4f0b: $47
	call Call_00b_4f3a                               ; $4f0c: $cd $3a $4f
	call Call_00b_4f67                               ; $4f0f: $cd $67 $4f
	ld a, $02                                        ; $4f12: $3e $02
	ld [$c152], a                                    ; $4f14: $ea $52 $c1
	ret                                              ; $4f17: $c9


	ld a, [wInitialA]                                    ; $4f18: $fa $00 $c1
	cp $11                                           ; $4f1b: $fe $11
	jr nz, jr_00b_4f26                               ; $4f1d: $20 $07

	call z, $19a2                                    ; $4f1f: $cc $a2 $19
	jp z, Jump_00b_4619                              ; $4f22: $ca $19 $46

	ret                                              ; $4f25: $c9


jr_00b_4f26:
	call $0a90                                       ; $4f26: $cd $90 $0a
	jp nc, Jump_00b_4619                             ; $4f29: $d2 $19 $46

	ret                                              ; $4f2c: $c9


	ld hl, $c154                                     ; $4f2d: $21 $54 $c1
	xor a                                            ; $4f30: $af
	ld [hl+], a                                      ; $4f31: $22
	ld a, $27                                        ; $4f32: $3e $27
	ld [hl+], a                                      ; $4f34: $22
	inc hl                                           ; $4f35: $23
	xor a                                            ; $4f36: $af
	jp $cbea                                         ; $4f37: $c3 $ea $cb


Call_00b_4f3a:
	ld a, [$c153]                                    ; $4f3a: $fa $53 $c1
	bit 5, a                                         ; $4f3d: $cb $6f
	jr z, jr_00b_4f49                                ; $4f3f: $28 $08

	ld a, $01                                        ; $4f41: $3e $01
	ld [$c165], a                                    ; $4f43: $ea $65 $c1
	xor a                                            ; $4f46: $af
	jr jr_00b_4f63                                   ; $4f47: $18 $1a

jr_00b_4f49:
	xor a                                            ; $4f49: $af
	ld [$c165], a                                    ; $4f4a: $ea $65 $c1
	ld a, [$c166]                                    ; $4f4d: $fa $66 $c1
	cp $04                                           ; $4f50: $fe $04
	jr c, jr_00b_4f61                                ; $4f52: $38 $0d

	cp $09                                           ; $4f54: $fe $09
	jr c, jr_00b_4f5b                                ; $4f56: $38 $03

	xor a                                            ; $4f58: $af

jr_00b_4f59:
	jr jr_00b_4f63                                   ; $4f59: $18 $08

jr_00b_4f5b:
	ld b, a                                          ; $4f5b: $47
	ld a, $08                                        ; $4f5c: $3e $08
	sub b                                            ; $4f5e: $90
	jr jr_00b_4f63                                   ; $4f5f: $18 $02

jr_00b_4f61:
	ld a, $ff                                        ; $4f61: $3e $ff

jr_00b_4f63:
	ld [$c156], a                                    ; $4f63: $ea $56 $c1
	ret                                              ; $4f66: $c9


Call_00b_4f67:
	ld hl, $c165                                     ; $4f67: $21 $65 $c1
	ld a, [hl+]                                      ; $4f6a: $2a
	ld b, a                                          ; $4f6b: $47
	ld c, $64                                        ; $4f6c: $0e $64
	call BCequBtimesC                                       ; $4f6e: $cd $5f $12
	ld d, c                                          ; $4f71: $51
	ld a, [hl+]                                      ; $4f72: $2a
	ld b, a                                          ; $4f73: $47
	ld c, $0a                                        ; $4f74: $0e $0a
	call BCequBtimesC                                       ; $4f76: $cd $5f $12
	ld e, c                                          ; $4f79: $59
	ld a, [hl]                                       ; $4f7a: $7e
	add e                                            ; $4f7b: $83
	add d                                            ; $4f7c: $82
	ld [$c150], a                                    ; $4f7d: $ea $50 $c1
	ret                                              ; $4f80: $c9


	ld hl, $c165                                     ; $4f81: $21 $65 $c1
	ld c, $05                                        ; $4f84: $0e $05

jr_00b_4f86:
	ld a, [hl]                                       ; $4f86: $7e
	add $45                                          ; $4f87: $c6 $45
	ld [hl+], a                                      ; $4f89: $22
	dec c                                            ; $4f8a: $0d
	jr nz, jr_00b_4f86                               ; $4f8b: $20 $f9

	ret                                              ; $4f8d: $c9


Call_00b_4f8e:
	push af                                          ; $4f8e: $f5
	push bc                                          ; $4f8f: $c5
	ld a, [$c156]                                    ; $4f90: $fa $56 $c1
	ld b, a                                          ; $4f93: $47
	ld c, $40                                        ; $4f94: $0e $40
	call BCequBtimesC                                       ; $4f96: $cd $5f $12
	add hl, bc                                       ; $4f99: $09
	pop bc                                           ; $4f9a: $c1
	pop af                                           ; $4f9b: $f1
	ret                                              ; $4f9c: $c9


	ld c, $00                                        ; $4f9d: $0e $00
	ld de, $9847                                     ; $4f9f: $11 $47 $98
	ld hl, $4122                                     ; $4fa2: $21 $22 $41

jr_00b_4fa5:
	ld a, [$c156]                                    ; $4fa5: $fa $56 $c1
	cp c                                             ; $4fa8: $b9
	jr nz, jr_00b_4fb7                               ; $4fa9: $20 $0c

	push hl                                          ; $4fab: $e5
	ld hl, $c165                                     ; $4fac: $21 $65 $c1
	call $ccd1                                       ; $4faf: $cd $d1 $cc
	pop hl                                           ; $4fb2: $e1
	ld a, $3b                                        ; $4fb3: $3e $3b
	jr jr_00b_4fc0                                   ; $4fb5: $18 $09

jr_00b_4fb7:
	call $ccd1                                       ; $4fb7: $cd $d1 $cc
	inc de                                           ; $4fba: $13
	call $ccd4                                       ; $4fbb: $cd $d4 $cc
	ld a, $36                                        ; $4fbe: $3e $36

jr_00b_4fc0:
	call $1327                                       ; $4fc0: $cd $27 $13
	inc c                                            ; $4fc3: $0c
	ld a, c                                          ; $4fc4: $79
	cp $05                                           ; $4fc5: $fe $05
	jr nz, jr_00b_4fa5                               ; $4fc7: $20 $dc

	ret                                              ; $4fc9: $c9


	ld a, [wButtonsPressed]                                    ; $4fca: $fa $25 $c1
	and $80                                          ; $4fcd: $e6 $80
	ret z                                            ; $4fcf: $c8

	ld a, [$c155]                                    ; $4fd0: $fa $55 $c1
	cp $1c                                           ; $4fd3: $fe $1c
	jr z, jr_00b_4fdd                                ; $4fd5: $28 $06

	ld hl, $c153                                     ; $4fd7: $21 $53 $c1
	set 4, [hl]                                      ; $4fda: $cb $e6
	ret                                              ; $4fdc: $c9


jr_00b_4fdd:
	ld a, $33                                        ; $4fdd: $3e $33
	call $1e2e                                       ; $4fdf: $cd $2e $1e

Jump_00b_4fe2:
	ld a, $10                                        ; $4fe2: $3e $10
	ld [$c2c7], a                                    ; $4fe4: $ea $c7 $c2
	ld hl, $c152                                     ; $4fe7: $21 $52 $c1
	inc [hl]                                         ; $4fea: $34
	ld bc, $67fc                                     ; $4feb: $01 $fc $67
	jp $18c4                                         ; $4fee: $c3 $c4 $18


	ld a, [$c153]                                    ; $4ff1: $fa $53 $c1
	bit 4, a                                         ; $4ff4: $cb $67
	ld hl, $c154                                     ; $4ff6: $21 $54 $c1
	jr z, jr_00b_5008                                ; $4ff9: $28 $0d

	ld a, [$c155]                                    ; $4ffb: $fa $55 $c1
	cp $1c                                           ; $4ffe: $fe $1c
	jr nc, jr_00b_5030                               ; $5000: $30 $2e

	cp $09                                           ; $5002: $fe $09
	jr nc, jr_00b_502b                               ; $5004: $30 $25

	jr jr_00b_5030                                   ; $5006: $18 $28

jr_00b_5008:
	ld hl, $c15c                                     ; $5008: $21 $5c $c1
	ld a, [hl]                                       ; $500b: $7e
	or a                                             ; $500c: $b7
	jr z, jr_00b_5011                                ; $500d: $28 $02

	dec [hl]                                         ; $500f: $35
	ret                                              ; $5010: $c9


jr_00b_5011:
	ld a, [wButtonsHeld]                                    ; $5011: $fa $23 $c1
	and $03                                          ; $5014: $e6 $03
	ret z                                            ; $5016: $c8

	ld a, $82                                        ; $5017: $3e $82
	call $1e2e                                       ; $5019: $cd $2e $1e
	ld hl, $c15c                                     ; $501c: $21 $5c $c1
	ld [hl], $04                                     ; $501f: $36 $04
	ld hl, $c154                                     ; $5021: $21 $54 $c1
	ld a, [wButtonsHeld]                                    ; $5024: $fa $23 $c1
	cp $02                                           ; $5027: $fe $02
	jr z, jr_00b_5030                                ; $5029: $28 $05

jr_00b_502b:
	inc [hl]                                         ; $502b: $34
	inc hl                                           ; $502c: $23
	inc [hl]                                         ; $502d: $34
	jr jr_00b_5033                                   ; $502e: $18 $03

jr_00b_5030:
	dec [hl]                                         ; $5030: $35
	inc hl                                           ; $5031: $23
	dec [hl]                                         ; $5032: $35

jr_00b_5033:
	ld a, [hl]                                       ; $5033: $7e
	call Call_00b_50e3                               ; $5034: $cd $e3 $50
	ld [hl], a                                       ; $5037: $77
	cp $1c                                           ; $5038: $fe $1c
	jr nz, jr_00b_5041                               ; $503a: $20 $05

	ld hl, $c153                                     ; $503c: $21 $53 $c1
	res 4, [hl]                                      ; $503f: $cb $a6

jr_00b_5041:
	ld hl, $c155                                     ; $5041: $21 $55 $c1
	ld e, [hl]                                       ; $5044: $5e
	dec hl                                           ; $5045: $2b
	ld a, [hl]                                       ; $5046: $7e
	add $14                                          ; $5047: $c6 $14
	and $1f                                          ; $5049: $e6 $1f
	ld bc, $99c0                                     ; $504b: $01 $c0 $99
	call $132c                                       ; $504e: $cd $2c $13
	ld a, e                                          ; $5051: $7b
	add $15                                          ; $5052: $c6 $15
	call Call_00b_50ef                               ; $5054: $cd $ef $50
	add $1e                                          ; $5057: $c6 $1e
	ld e, a                                          ; $5059: $5f
	ld a, $01                                        ; $505a: $3e $01
	push hl                                          ; $505c: $e5
	ld h, b                                          ; $505d: $60
	ld l, c                                          ; $505e: $69
	call $165f                                       ; $505f: $cd $5f $16
	pop hl                                           ; $5062: $e1
	inc hl                                           ; $5063: $23
	ld e, [hl]                                       ; $5064: $5e
	dec hl                                           ; $5065: $2b
	ld a, [hl]                                       ; $5066: $7e
	dec a                                            ; $5067: $3d
	and $1f                                          ; $5068: $e6 $1f
	ld hl, $99c0                                     ; $506a: $21 $c0 $99
	rst AddAOntoHL                                          ; $506d: $ef
	ld a, e                                          ; $506e: $7b
	add $1e                                          ; $506f: $c6 $1e
	ld e, a                                          ; $5071: $5f
	ld a, $01                                        ; $5072: $3e $01
	jp $165f                                         ; $5074: $c3 $5f $16


	ld a, [wButtonsPressed]                                    ; $5077: $fa $25 $c1
	and $10                                          ; $507a: $e6 $10
	ret z                                            ; $507c: $c8

	ld a, $33                                        ; $507d: $3e $33
	call $1e2e                                       ; $507f: $cd $2e $1e
	ld hl, $c155                                     ; $5082: $21 $55 $c1
	ld a, [hl]                                       ; $5085: $7e
	add $0a                                          ; $5086: $c6 $0a
	call Call_00b_50ef                               ; $5088: $cd $ef $50
	add $1e                                          ; $508b: $c6 $1e
	cp $44                                           ; $508d: $fe $44
	jp z, Jump_00b_4fe2                              ; $508f: $ca $e2 $4f

	cp $43                                           ; $5092: $fe $43
	jr z, jr_00b_50ca                                ; $5094: $28 $34

	ld hl, $c157                                     ; $5096: $21 $57 $c1
	ld b, a                                          ; $5099: $47
	ld a, [hl+]                                      ; $509a: $2a
	cp $04                                           ; $509b: $fe $04
	ret z                                            ; $509d: $c8

	rst AddAOntoHL                                          ; $509e: $ef
	ld [hl], b                                       ; $509f: $70
	ld a, [$c157]                                    ; $50a0: $fa $57 $c1
	ld hl, $984d                                     ; $50a3: $21 $4d $98
	rst AddAOntoHL                                          ; $50a6: $ef
	call Call_00b_4f8e                               ; $50a7: $cd $8e $4f
	ld e, b                                          ; $50aa: $58
	ld a, $01                                        ; $50ab: $3e $01
	call $165f                                       ; $50ad: $cd $5f $16
	ld hl, $c157                                     ; $50b0: $21 $57 $c1
	inc [hl]                                         ; $50b3: $34
	ld a, [hl]                                       ; $50b4: $7e
	cp $04                                           ; $50b5: $fe $04
	ret nz                                           ; $50b7: $c0

	ld a, [$c155]                                    ; $50b8: $fa $55 $c1
	cp $1c                                           ; $50bb: $fe $1c
	ret z                                            ; $50bd: $c8

	ld hl, $c153                                     ; $50be: $21 $53 $c1
	set 4, [hl]                                      ; $50c1: $cb $e6
	ret                                              ; $50c3: $c9


	ld a, [wButtonsPressed]                                    ; $50c4: $fa $25 $c1
	and $20                                          ; $50c7: $e6 $20
	ret z                                            ; $50c9: $c8

jr_00b_50ca:
	ld a, [$c157]                                    ; $50ca: $fa $57 $c1
	or a                                             ; $50cd: $b7
	ret z                                            ; $50ce: $c8

	dec a                                            ; $50cf: $3d
	ld hl, $984d                                     ; $50d0: $21 $4d $98
	rst AddAOntoHL                                          ; $50d3: $ef
	call Call_00b_4f8e                               ; $50d4: $cd $8e $4f
	ld e, $13                                        ; $50d7: $1e $13
	ld a, $01                                        ; $50d9: $3e $01
	call $165f                                       ; $50db: $cd $5f $16
	ld hl, $c157                                     ; $50de: $21 $57 $c1
	dec [hl]                                         ; $50e1: $35
	ret                                              ; $50e2: $c9


Call_00b_50e3:
	cp $28                                           ; $50e3: $fe $28
	ret c                                            ; $50e5: $d8

	bit 7, a                                         ; $50e6: $cb $7f
	jr z, jr_00b_50ed                                ; $50e8: $28 $03

	ld a, $27                                        ; $50ea: $3e $27
	ret                                              ; $50ec: $c9


jr_00b_50ed:
	xor a                                            ; $50ed: $af
	ret                                              ; $50ee: $c9


Call_00b_50ef:
	cp $28                                           ; $50ef: $fe $28
	ret c                                            ; $50f1: $d8

	sub $28                                          ; $50f2: $d6 $28
	ret                                              ; $50f4: $c9


	ld a, [$c146]                                    ; $50f5: $fa $46 $c1
	call wJumpTable                                       ; $50f8: $cd $80 $cf
	dec de                                           ; $50fb: $1b
	ld d, c                                          ; $50fc: $51
	ld b, a                                          ; $50fd: $47
	ld d, c                                          ; $50fe: $51
	ld c, d                                          ; $50ff: $4a
	ld d, c                                          ; $5100: $51
	dec [hl]                                         ; $5101: $35
	ld c, b                                          ; $5102: $48
	ld d, c                                          ; $5103: $51
	ld d, c                                          ; $5104: $51
	and d                                            ; $5105: $a2
	ld c, c                                          ; $5106: $49
	cp e                                             ; $5107: $bb
	ld c, b                                          ; $5108: $48
	ld l, c                                          ; $5109: $69
	ld c, c                                          ; $510a: $49
	ld d, c                                          ; $510b: $51
	ld d, c                                          ; $510c: $51
	and d                                            ; $510d: $a2
	ld c, c                                          ; $510e: $49
	pop bc                                           ; $510f: $c1
	ld c, c                                          ; $5110: $49
	ld bc, $3b4a                                     ; $5111: $01 $4a $3b
	ld c, d                                          ; $5114: $4a
	db $fd                                           ; $5115: $fd
	ld b, [hl]                                       ; $5116: $46
	ld d, $47                                        ; $5117: $16 $47
	dec hl                                           ; $5119: $2b
	ld b, a                                          ; $511a: $47
	xor a                                            ; $511b: $af
	call $1e2e                                       ; $511c: $cd $2e $1e
	call $068e                                       ; $511f: $cd $8e $06
	ld a, $15                                        ; $5122: $3e $15
	call $1e27                                       ; $5124: $cd $27 $1e
	call $0986                                       ; $5127: $cd $86 $09
	ld hl, $4076                                     ; $512a: $21 $76 $40
	ld bc, $655a                                     ; $512d: $01 $5a $65
	call Call_00b_45e9                               ; $5130: $cd $e9 $45
	ld bc, $681a                                     ; $5133: $01 $1a $68
	call $18b7                                       ; $5136: $cd $b7 $18
	ld bc, $40ee                                     ; $5139: $01 $ee $40
	call Call_00b_4608                               ; $513c: $cd $08 $46
	call $096e                                       ; $513f: $cd $6e $09
	ld hl, $ff82                                     ; $5142: $21 $82 $ff
	res 2, [hl]                                      ; $5145: $cb $96
	jp $2e21                                         ; $5147: $c3 $21 $2e


	call Call_00b_461e                               ; $514a: $cd $1e $46
	ret nz                                           ; $514d: $c0

	jp Jump_00b_4614                                 ; $514e: $c3 $14 $46


	xor a                                            ; $5151: $af
	ldh [$9d], a                                     ; $5152: $e0 $9d
	jp Jump_00b_4614                                 ; $5154: $c3 $14 $46


	rst JumpTable                                          ; $5157: $c7
	ld e, h                                          ; $5158: $5c
	ld d, c                                          ; $5159: $51
	sub h                                            ; $515a: $94
	ld d, c                                          ; $515b: $51
	inc [hl]                                         ; $515c: $34
	ld a, [$c158]                                    ; $515d: $fa $58 $c1
	ld c, a                                          ; $5160: $4f
	ld b, $00                                        ; $5161: $06 $00
	call $3d32                                       ; $5163: $cd $32 $3d
	ld a, [$c159]                                    ; $5166: $fa $59 $c1
	ld l, $04                                        ; $5169: $2e $04
	ld [hl], a                                       ; $516b: $77
	ld b, $10                                        ; $516c: $06 $10
	ld c, $00                                        ; $516e: $0e $00
	ld de, $c160                                     ; $5170: $11 $60 $c1

jr_00b_5173:
	ld a, [de]                                       ; $5173: $1a
	and b                                            ; $5174: $a0
	cp b                                             ; $5175: $b8
	jr z, jr_00b_517d                                ; $5176: $28 $05

	inc c                                            ; $5178: $0c
	srl b                                            ; $5179: $cb $38
	jr jr_00b_5173                                   ; $517b: $18 $f6

jr_00b_517d:
	ld a, [de]                                       ; $517d: $1a
	sub b                                            ; $517e: $90
	ld [de], a                                       ; $517f: $12
	ld l, $30                                        ; $5180: $2e $30
	ld [hl], c                                       ; $5182: $71
	ld de, $4105                                     ; $5183: $11 $05 $41
	ld a, c                                          ; $5186: $79
	call $1327                                       ; $5187: $cd $27 $13
	ld a, [de]                                       ; $518a: $1a
	ld d, a                                          ; $518b: $57
	ld e, $00                                        ; $518c: $1e $00
	ld bc, $d51f                                     ; $518e: $01 $1f $d5
	jp $3bef                                         ; $5191: $c3 $ef $3b


	ld l, $01                                        ; $5194: $2e $01
	bit 2, [hl]                                      ; $5196: $cb $56
	jr nz, jr_00b_51db                               ; $5198: $20 $41

	ld l, $05                                        ; $519a: $2e $05
	ld a, [hl]                                       ; $519c: $7e
	cp $6c                                           ; $519d: $fe $6c
	jp c, $3d2c                                      ; $519f: $da $2c $3d

	ld l, $30                                        ; $51a2: $2e $30
	ld a, [hl]                                       ; $51a4: $7e
	ld bc, $c17c                                     ; $51a5: $01 $7c $c1
	call $132c                                       ; $51a8: $cd $2c $13
	ld a, $01                                        ; $51ab: $3e $01
	ld [bc], a                                       ; $51ad: $02
	ld l, $30                                        ; $51ae: $2e $30
	ld a, [hl]                                       ; $51b0: $7e
	ld bc, $410a                                     ; $51b1: $01 $0a $41
	call $132c                                       ; $51b4: $cd $2c $13
	ld a, [bc]                                       ; $51b7: $0a
	ld b, a                                          ; $51b8: $47
	ld a, [$c170]                                    ; $51b9: $fa $70 $c1
	and b                                            ; $51bc: $a0
	jr z, jr_00b_51db                                ; $51bd: $28 $1c

	ld l, $01                                        ; $51bf: $2e $01
	set 2, [hl]                                      ; $51c1: $cb $d6
	ld l, $05                                        ; $51c3: $2e $05
	ld a, [hl-]                                      ; $51c5: $3a
	sub $70                                          ; $51c6: $d6 $70
	ld b, a                                          ; $51c8: $47
	ld c, [hl]                                       ; $51c9: $4e
	bit 7, b                                         ; $51ca: $cb $78
	call nz, $cec0                                   ; $51cc: $c4 $c0 $ce
	call Call_00b_53b5                               ; $51cf: $cd $b5 $53
	call Call_00b_534c                               ; $51d2: $cd $4c $53
	call Call_00b_535a                               ; $51d5: $cd $5a $53
	call Call_00b_5383                               ; $51d8: $cd $83 $53

jr_00b_51db:
	ld l, $05                                        ; $51db: $2e $05
	ld a, [hl]                                       ; $51dd: $7e
	cp $74                                           ; $51de: $fe $74
	jr nc, jr_00b_51ee                               ; $51e0: $30 $0c

	cp $70                                           ; $51e2: $fe $70
	jp nz, $3d2c                                     ; $51e4: $c2 $2c $3d

	ld l, $01                                        ; $51e7: $2e $01
	set 7, [hl]                                      ; $51e9: $cb $fe
	jp $3d2c                                         ; $51eb: $c3 $2c $3d


jr_00b_51ee:
	ld l, $01                                        ; $51ee: $2e $01
	bit 2, [hl]                                      ; $51f0: $cb $56
	jp nz, $2dfc                                     ; $51f2: $c2 $fc $2d

	ld d, $01                                        ; $51f5: $16 $01
	call Call_00b_534c                               ; $51f7: $cd $4c $53
	call Call_00b_535a                               ; $51fa: $cd $5a $53
	jp $2dfc                                         ; $51fd: $c3 $fc $2d


	rst JumpTable                                          ; $5200: $c7
	dec b                                            ; $5201: $05
	ld d, d                                          ; $5202: $52
	ld e, $52                                        ; $5203: $1e $52
	inc [hl]                                         ; $5205: $34
	ld a, [$c158]                                    ; $5206: $fa $58 $c1
	ld c, a                                          ; $5209: $4f
	ld b, $00                                        ; $520a: $06 $00
	call $3d32                                       ; $520c: $cd $32 $3d
	ld a, [$c159]                                    ; $520f: $fa $59 $c1
	ld l, $04                                        ; $5212: $2e $04
	ld [hl], a                                       ; $5214: $77
	ld de, $0700                                     ; $5215: $11 $00 $07
	ld bc, $d523                                     ; $5218: $01 $23 $d5
	jp $3bef                                         ; $521b: $c3 $ef $3b


	ld l, $05                                        ; $521e: $2e $05
	ld a, [hl]                                       ; $5220: $7e
	cp $70                                           ; $5221: $fe $70
	jp nz, $3d2c                                     ; $5223: $c2 $2c $3d

	ld a, [$c153]                                    ; $5226: $fa $53 $c1
	ld b, a                                          ; $5229: $47
	bit 7, b                                         ; $522a: $cb $78
	jp nz, $2dfc                                     ; $522c: $c2 $fc $2d

	ld a, [$c161]                                    ; $522f: $fa $61 $c1
	call $1e27                                       ; $5232: $cd $27 $1e
	set 7, b                                         ; $5235: $cb $f8
	ld a, b                                          ; $5237: $78
	ld [$c153], a                                    ; $5238: $ea $53 $c1
	jp $2dfc                                         ; $523b: $c3 $fc $2d


	rst JumpTable                                          ; $523e: $c7
	ld b, e                                          ; $523f: $43
	ld d, d                                          ; $5240: $52
	ld c, [hl]                                       ; $5241: $4e
	ld d, d                                          ; $5242: $52
	inc [hl]                                         ; $5243: $34
	ld l, $01                                        ; $5244: $2e $01
	set 7, [hl]                                      ; $5246: $cb $fe
	ld de, $1c70                                     ; $5248: $11 $70 $1c
	jp $3bf4                                         ; $524b: $c3 $f4 $3b


	ld l, $0b                                        ; $524e: $2e $0b
	ld a, [hl]                                       ; $5250: $7e
	ld l, $01                                        ; $5251: $2e $01
	or a                                             ; $5253: $b7
	jr nz, jr_00b_5259                               ; $5254: $20 $03

	set 7, [hl]                                      ; $5256: $cb $fe
	ret                                              ; $5258: $c9


jr_00b_5259:
	res 7, [hl]                                      ; $5259: $cb $be
	ld a, [hl]                                       ; $525b: $7e
	and $03                                          ; $525c: $e6 $03
	ld a, [hl]                                       ; $525e: $7e
	push hl                                          ; $525f: $e5
	ld hl, $4117                                     ; $5260: $21 $17 $41
	call $cfa0                                       ; $5263: $cd $a0 $cf
	pop hl                                           ; $5266: $e1
	jp $3d3d                                         ; $5267: $c3 $3d $3d


	ld de, $4c84                                     ; $526a: $11 $84 $4c
	ld bc, $d50f                                     ; $526d: $01 $0f $d5
	jp $3bef                                         ; $5270: $c3 $ef $3b


	rst JumpTable                                          ; $5273: $c7
	ld a, b                                          ; $5274: $78
	ld d, d                                          ; $5275: $52
	add [hl]                                         ; $5276: $86
	ld d, d                                          ; $5277: $52
	inc [hl]                                         ; $5278: $34
	ld l, $30                                        ; $5279: $2e $30
	ld [hl], $02                                     ; $527b: $36 $02
	ld de, $2a3c                                     ; $527d: $11 $3c $2a
	ld bc, $d4d3                                     ; $5280: $01 $d3 $d4
	jp $3bef                                         ; $5283: $c3 $ef $3b


	ld a, [$c171]                                    ; $5286: $fa $71 $c1
	bit 7, a                                         ; $5289: $cb $7f
	jr nz, jr_00b_5295                               ; $528b: $20 $08

	ld a, [wButtonsPressed]                                    ; $528d: $fa $25 $c1
	and $33                                          ; $5290: $e6 $33
	ret z                                            ; $5292: $c8

	jr jr_00b_52b1                                   ; $5293: $18 $1c

jr_00b_5295:
	ldh a, [$9f]                                     ; $5295: $f0 $9f
	dec a                                            ; $5297: $3d
	jr nz, jr_00b_52a7                               ; $5298: $20 $0d

	ld a, [wButtonsPressed]                                    ; $529a: $fa $25 $c1
	and $33                                          ; $529d: $e6 $33
	ret z                                            ; $529f: $c8

	inc a                                            ; $52a0: $3c
	call $2d9f                                       ; $52a1: $cd $9f $2d
	dec a                                            ; $52a4: $3d
	jr jr_00b_52b1                                   ; $52a5: $18 $0a

jr_00b_52a7:
	ld a, [$c138]                                    ; $52a7: $fa $38 $c1
	or a                                             ; $52aa: $b7
	ret z                                            ; $52ab: $c8

	ldh a, [$9d]                                     ; $52ac: $f0 $9d
	dec a                                            ; $52ae: $3d
	jr jr_00b_52b1                                   ; $52af: $18 $00

jr_00b_52b1:
	bit 5, a                                         ; $52b1: $cb $6f
	jr z, jr_00b_52c9                                ; $52b3: $28 $14

	call $2de4                                       ; $52b5: $cd $e4 $2d
	ld b, $08                                        ; $52b8: $06 $08
	call $0a64                                       ; $52ba: $cd $64 $0a
	ld bc, $67fc                                     ; $52bd: $01 $fc $67
	call $18c4                                       ; $52c0: $cd $c4 $18
	ld a, $0e                                        ; $52c3: $3e $0e
	ld [$c146], a                                    ; $52c5: $ea $46 $c1
	ret                                              ; $52c8: $c9


jr_00b_52c9:
	and $13                                          ; $52c9: $e6 $13
	ret z                                            ; $52cb: $c8

	ld l, $30                                        ; $52cc: $2e $30
	bit 4, a                                         ; $52ce: $cb $67
	jr z, jr_00b_52ed                                ; $52d0: $28 $1b

	ld a, [hl]                                       ; $52d2: $7e
	and $01                                          ; $52d3: $e6 $01
	inc a                                            ; $52d5: $3c
	ld [$c154], a                                    ; $52d6: $ea $54 $c1
	xor a                                            ; $52d9: $af
	call $1e2e                                       ; $52da: $cd $2e $1e
	ld a, $08                                        ; $52dd: $3e $08
	call $1e2e                                       ; $52df: $cd $2e $1e
	push hl                                          ; $52e2: $e5
	call Call_00b_4614                               ; $52e3: $cd $14 $46
	pop hl                                           ; $52e6: $e1
	ld bc, $67fc                                     ; $52e7: $01 $fc $67
	jp $18b7                                         ; $52ea: $c3 $b7 $18


jr_00b_52ed:
	cp [hl]                                          ; $52ed: $be
	ret z                                            ; $52ee: $c8

	cp $03                                           ; $52ef: $fe $03
	jr nz, jr_00b_52f5                               ; $52f1: $20 $02

	ld a, $02                                        ; $52f3: $3e $02

jr_00b_52f5:
	ld [hl], a                                       ; $52f5: $77
	ld a, $07                                        ; $52f6: $3e $07
	call $1e2e                                       ; $52f8: $cd $2e $1e
	ld a, [hl]                                       ; $52fb: $7e
	ld de, $2a3c                                     ; $52fc: $11 $3c $2a
	bit 0, a                                         ; $52ff: $cb $47
	jp z, $3bf4                                      ; $5301: $ca $f4 $3b

	ld de, $773c                                     ; $5304: $11 $3c $77
	jp $3bf4                                         ; $5307: $c3 $f4 $3b


	ld l, $01                                        ; $530a: $2e $01
	set 7, [hl]                                      ; $530c: $cb $fe
	ld a, [$c139]                                    ; $530e: $fa $39 $c1
	dec a                                            ; $5311: $3d
	ret z                                            ; $5312: $c8

	res 7, [hl]                                      ; $5313: $cb $be
	ld l, $0a                                        ; $5315: $2e $0a
	ld a, [hl]                                       ; $5317: $7e
	rst JumpTable                                          ; $5318: $c7
	dec e                                            ; $5319: $1d
	ld d, e                                          ; $531a: $53
	daa                                              ; $531b: $27
	ld d, e                                          ; $531c: $53
	inc [hl]                                         ; $531d: $34
	ld de, $5050                                     ; $531e: $11 $50 $50
	ld bc, $d4f3                                     ; $5321: $01 $f3 $d4
	jp $3bef                                         ; $5324: $c3 $ef $3b


	ld l, $05                                        ; $5327: $2e $05
	dec [hl]                                         ; $5329: $35
	ld a, [hl]                                       ; $532a: $7e
	cp $18                                           ; $532b: $fe $18
	ret nz                                           ; $532d: $c0

	ld [hl], $50                                     ; $532e: $36 $50
	ret                                              ; $5330: $c9


	ld l, $01                                        ; $5331: $2e $01
	set 7, [hl]                                      ; $5333: $cb $fe
	ld a, [$c139]                                    ; $5335: $fa $39 $c1
	dec a                                            ; $5338: $3d
	ret nz                                           ; $5339: $c0

	ld a, [wFrameCounter]                                    ; $533a: $fa $1f $c1
	bit 6, a                                         ; $533d: $cb $77
	jr z, jr_00b_5343                                ; $533f: $28 $02

	res 7, [hl]                                      ; $5341: $cb $be

jr_00b_5343:
	ld de, $5030                                     ; $5343: $11 $30 $50
	ld bc, $d4d3                                     ; $5346: $01 $d3 $d4
	jp $3bef                                         ; $5349: $c3 $ef $3b


Call_00b_534c:
	ld bc, $cf01                                     ; $534c: $01 $01 $cf
	ld a, [bc]                                       ; $534f: $0a
	and $fc                                          ; $5350: $e6 $fc
	add d                                            ; $5352: $82
	ld [bc], a                                       ; $5353: $02
	ld c, $0b                                        ; $5354: $0e $0b
	ld a, $12                                        ; $5356: $3e $12
	ld [bc], a                                       ; $5358: $02
	ret                                              ; $5359: $c9


Call_00b_535a:
	push de                                          ; $535a: $d5
	ld a, d                                          ; $535b: $7a
	push hl                                          ; $535c: $e5
	ld hl, $410f                                     ; $535d: $21 $0f $41
	call $cfa0                                       ; $5360: $cd $a0 $cf
	ld hl, $c16a                                     ; $5363: $21 $6a $c1
	ld a, [hl+]                                      ; $5366: $2a
	ld e, a                                          ; $5367: $5f
	ld d, [hl]                                       ; $5368: $56
	call wAddBContoDE                                       ; $5369: $cd $92 $ce
	bit 7, d                                         ; $536c: $cb $7a
	jr z, jr_00b_5375                                ; $536e: $28 $05

	ld de, $0000                                     ; $5370: $11 $00 $00
	jr jr_00b_537d                                   ; $5373: $18 $08

jr_00b_5375:
	ld a, d                                          ; $5375: $7a
	cp $31                                           ; $5376: $fe $31
	jr c, jr_00b_537d                                ; $5378: $38 $03

	ld de, $30ff                                     ; $537a: $11 $ff $30

jr_00b_537d:
	ld a, d                                          ; $537d: $7a
	ld [hl-], a                                      ; $537e: $32
	ld [hl], e                                       ; $537f: $73
	pop hl                                           ; $5380: $e1
	pop de                                           ; $5381: $d1
	ret                                              ; $5382: $c9


Call_00b_5383:
	bit 1, d                                         ; $5383: $cb $4a
	ret z                                            ; $5385: $c8

	ld a, d                                          ; $5386: $7a
	ld de, $c162                                     ; $5387: $11 $62 $c1
	bit 0, a                                         ; $538a: $cb $47
	jr nz, jr_00b_538f                               ; $538c: $20 $01

	inc de                                           ; $538e: $13

jr_00b_538f:
	push hl                                          ; $538f: $e5
	ld hl, $c169                                     ; $5390: $21 $69 $c1
	ld a, [de]                                       ; $5393: $1a
	ld b, $0a                                        ; $5394: $06 $0a
	call Call_00b_53a1                               ; $5396: $cd $a1 $53
	call Call_00b_53a1                               ; $5399: $cd $a1 $53
	call Call_00b_53a1                               ; $539c: $cd $a1 $53
	pop hl                                           ; $539f: $e1
	ret                                              ; $53a0: $c9


Call_00b_53a1:
	ld b, $0a                                        ; $53a1: $06 $0a
	call $12b5                                       ; $53a3: $cd $b5 $12
	push af                                          ; $53a6: $f5
	ld a, [hl]                                       ; $53a7: $7e
	add b                                            ; $53a8: $80
	ld [hl-], a                                      ; $53a9: $32
	cp $0a                                           ; $53aa: $fe $0a
	jr c, jr_00b_53b3                                ; $53ac: $38 $05

	inc hl                                           ; $53ae: $23
	sub $0a                                          ; $53af: $d6 $0a
	ld [hl-], a                                      ; $53b1: $32
	inc [hl]                                         ; $53b2: $34

jr_00b_53b3:
	pop af                                           ; $53b3: $f1
	ret                                              ; $53b4: $c9


Call_00b_53b5:
	ld de, $0300                                     ; $53b5: $11 $00 $03
	call wCpBCtoDE                                       ; $53b8: $cd $8c $ce
	jr c, jr_00b_53c0                                ; $53bb: $38 $03

	ld d, $01                                        ; $53bd: $16 $01
	ret                                              ; $53bf: $c9


jr_00b_53c0:
	ld de, $0200                                     ; $53c0: $11 $00 $02
	call wCpBCtoDE                                       ; $53c3: $cd $8c $ce
	jr c, jr_00b_53cb                                ; $53c6: $38 $03

	ld d, $02                                        ; $53c8: $16 $02
	ret                                              ; $53ca: $c9


jr_00b_53cb:
	ld d, $03                                        ; $53cb: $16 $03
	ret                                              ; $53cd: $c9


	db $fc                                           ; $53ce: $fc
	ld d, a                                          ; $53cf: $57
	ldh a, [c]                                       ; $53d0: $f2
	ld d, l                                          ; $53d1: $55
	call nc, Call_00b_4853                           ; $53d2: $d4 $53 $48
	db $ec                                           ; $53d5: $ec
	dec bc                                           ; $53d6: $0b
	ld c, e                                          ; $53d7: $4b
	rrca                                             ; $53d8: $0f
	ld b, b                                          ; $53d9: $40
	ld e, h                                          ; $53da: $5c
	ld c, l                                          ; $53db: $4d
	ld d, l                                          ; $53dc: $55
	ld d, a                                          ; $53dd: $57
	ld d, l                                          ; $53de: $55
	sbc b                                            ; $53df: $98
	ld d, l                                          ; $53e0: $55
	and d                                            ; $53e1: $a2
	ld d, l                                          ; $53e2: $55
	push bc                                          ; $53e3: $c5
	ld d, l                                          ; $53e4: $55
	nop                                              ; $53e5: $00
	nop                                              ; $53e6: $00
	nop                                              ; $53e7: $00
	nop                                              ; $53e8: $00
	nop                                              ; $53e9: $00
	nop                                              ; $53ea: $00
	nop                                              ; $53eb: $00
	nop                                              ; $53ec: $00
	nop                                              ; $53ed: $00
	nop                                              ; $53ee: $00
	nop                                              ; $53ef: $00
	nop                                              ; $53f0: $00
	nop                                              ; $53f1: $00
	nop                                              ; $53f2: $00
	nop                                              ; $53f3: $00
	nop                                              ; $53f4: $00
	nop                                              ; $53f5: $00
	nop                                              ; $53f6: $00
	nop                                              ; $53f7: $00
	nop                                              ; $53f8: $00
	nop                                              ; $53f9: $00
	nop                                              ; $53fa: $00
	nop                                              ; $53fb: $00
	nop                                              ; $53fc: $00
	nop                                              ; $53fd: $00
	nop                                              ; $53fe: $00
	nop                                              ; $53ff: $00
	nop                                              ; $5400: $00
	nop                                              ; $5401: $00
	nop                                              ; $5402: $00
	nop                                              ; $5403: $00
	ld [rRAMG], sp                                   ; $5404: $08 $00 $00
	nop                                              ; $5407: $00
	nop                                              ; $5408: $00
	nop                                              ; $5409: $00
	nop                                              ; $540a: $00
	nop                                              ; $540b: $00
	nop                                              ; $540c: $00
	nop                                              ; $540d: $00
	nop                                              ; $540e: $00
	nop                                              ; $540f: $00
	nop                                              ; $5410: $00
	nop                                              ; $5411: $00
	nop                                              ; $5412: $00
	nop                                              ; $5413: $00
	nop                                              ; $5414: $00
	nop                                              ; $5415: $00
	nop                                              ; $5416: $00
	nop                                              ; $5417: $00
	nop                                              ; $5418: $00
	nop                                              ; $5419: $00
	nop                                              ; $541a: $00
	nop                                              ; $541b: $00
	add b                                            ; $541c: $80
	nop                                              ; $541d: $00
	nop                                              ; $541e: $00
	nop                                              ; $541f: $00
	nop                                              ; $5420: $00
	nop                                              ; $5421: $00
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00
	nop                                              ; $5424: $00
	nop                                              ; $5425: $00
	nop                                              ; $5426: $00
	nop                                              ; $5427: $00
	nop                                              ; $5428: $00
	nop                                              ; $5429: $00
	nop                                              ; $542a: $00
	nop                                              ; $542b: $00
	nop                                              ; $542c: $00
	nop                                              ; $542d: $00
	nop                                              ; $542e: $00
	nop                                              ; $542f: $00
	nop                                              ; $5430: $00
	add b                                            ; $5431: $80
	nop                                              ; $5432: $00
	nop                                              ; $5433: $00
	nop                                              ; $5434: $00
	add b                                            ; $5435: $80
	nop                                              ; $5436: $00
	nop                                              ; $5437: $00
	nop                                              ; $5438: $00
	add b                                            ; $5439: $80
	nop                                              ; $543a: $00
	nop                                              ; $543b: $00
	nop                                              ; $543c: $00
	add b                                            ; $543d: $80
	and b                                            ; $543e: $a0
	add b                                            ; $543f: $80
	and b                                            ; $5440: $a0
	add b                                            ; $5441: $80
	and b                                            ; $5442: $a0
	add b                                            ; $5443: $80
	and b                                            ; $5444: $a0
	and b                                            ; $5445: $a0
	ld [$08a0], sp                                   ; $5446: $08 $a0 $08
	and b                                            ; $5449: $a0
	ld [$00a0], sp                                   ; $544a: $08 $a0 $00
	add b                                            ; $544d: $80
	add b                                            ; $544e: $80
	add b                                            ; $544f: $80
	add b                                            ; $5450: $80
	add b                                            ; $5451: $80
	add b                                            ; $5452: $80
	add b                                            ; $5453: $80
	add b                                            ; $5454: $80
	add b                                            ; $5455: $80
	add b                                            ; $5456: $80
	add b                                            ; $5457: $80
	add b                                            ; $5458: $80
	add b                                            ; $5459: $80
	add b                                            ; $545a: $80
	adc b                                            ; $545b: $88
	adc b                                            ; $545c: $88
	add b                                            ; $545d: $80
	add b                                            ; $545e: $80
	add b                                            ; $545f: $80
	add b                                            ; $5460: $80
	add b                                            ; $5461: $80
	add b                                            ; $5462: $80
	add b                                            ; $5463: $80
	nop                                              ; $5464: $00
	ld [$0808], sp                                   ; $5465: $08 $08 $08
	ld [$0808], sp                                   ; $5468: $08 $08 $08
	ld [$0808], sp                                   ; $546b: $08 $08 $08
	ld [$0808], sp                                   ; $546e: $08 $08 $08
	ld [$0808], sp                                   ; $5471: $08 $08 $08
	ld [rRAMG], sp                                   ; $5474: $08 $00 $00
	nop                                              ; $5477: $00
	nop                                              ; $5478: $00
	nop                                              ; $5479: $00
	nop                                              ; $547a: $00
	nop                                              ; $547b: $00
	nop                                              ; $547c: $00
	nop                                              ; $547d: $00
	nop                                              ; $547e: $00
	nop                                              ; $547f: $00
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	nop                                              ; $5487: $00
	ld a, [bc]                                       ; $5488: $0a
	nop                                              ; $5489: $00
	nop                                              ; $548a: $00
	nop                                              ; $548b: $00
	ld a, [bc]                                       ; $548c: $0a
	nop                                              ; $548d: $00
	ld [bc], a                                       ; $548e: $02
	nop                                              ; $548f: $00
	ld [bc], a                                       ; $5490: $02
	nop                                              ; $5491: $00
	ld [bc], a                                       ; $5492: $02
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	nop                                              ; $5495: $00
	nop                                              ; $5496: $00
	nop                                              ; $5497: $00
	nop                                              ; $5498: $00
	nop                                              ; $5499: $00
	nop                                              ; $549a: $00
	nop                                              ; $549b: $00
	nop                                              ; $549c: $00
	nop                                              ; $549d: $00
	nop                                              ; $549e: $00
	nop                                              ; $549f: $00
	nop                                              ; $54a0: $00
	nop                                              ; $54a1: $00
	nop                                              ; $54a2: $00
	nop                                              ; $54a3: $00
	nop                                              ; $54a4: $00
	nop                                              ; $54a5: $00
	nop                                              ; $54a6: $00
	nop                                              ; $54a7: $00
	nop                                              ; $54a8: $00
	nop                                              ; $54a9: $00
	nop                                              ; $54aa: $00
	nop                                              ; $54ab: $00
	nop                                              ; $54ac: $00
	nop                                              ; $54ad: $00
	nop                                              ; $54ae: $00
	nop                                              ; $54af: $00
	nop                                              ; $54b0: $00
	nop                                              ; $54b1: $00
	nop                                              ; $54b2: $00
	nop                                              ; $54b3: $00
	nop                                              ; $54b4: $00
	nop                                              ; $54b5: $00
	nop                                              ; $54b6: $00
	nop                                              ; $54b7: $00
	nop                                              ; $54b8: $00
	nop                                              ; $54b9: $00
	nop                                              ; $54ba: $00
	nop                                              ; $54bb: $00
	nop                                              ; $54bc: $00
	nop                                              ; $54bd: $00
	nop                                              ; $54be: $00
	nop                                              ; $54bf: $00
	nop                                              ; $54c0: $00
	nop                                              ; $54c1: $00
	nop                                              ; $54c2: $00
	nop                                              ; $54c3: $00
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	nop                                              ; $54c6: $00
	nop                                              ; $54c7: $00
	add b                                            ; $54c8: $80
	nop                                              ; $54c9: $00
	nop                                              ; $54ca: $00
	nop                                              ; $54cb: $00
	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	ld [rRAMG], sp                                   ; $54ce: $08 $00 $00
	nop                                              ; $54d1: $00
	ld [rRAMG], sp                                   ; $54d2: $08 $00 $00
	nop                                              ; $54d5: $00
	and b                                            ; $54d6: $a0
	nop                                              ; $54d7: $00
	and b                                            ; $54d8: $a0
	nop                                              ; $54d9: $00
	and b                                            ; $54da: $a0
	nop                                              ; $54db: $00
	and b                                            ; $54dc: $a0
	ld [$0808], sp                                   ; $54dd: $08 $08 $08
	ld [$0808], sp                                   ; $54e0: $08 $08 $08
	ld [_SetWramBankToHighByteInStackAfterReturn], sp                                   ; $54e3: $08 $48 $08
	ld [$0808], sp                                   ; $54e6: $08 $08 $08
	ld [$0008], sp                                   ; $54e9: $08 $08 $00
	nop                                              ; $54ec: $00
	nop                                              ; $54ed: $00
	nop                                              ; $54ee: $00
	nop                                              ; $54ef: $00
	nop                                              ; $54f0: $00
	nop                                              ; $54f1: $00
	nop                                              ; $54f2: $00
	nop                                              ; $54f3: $00
	nop                                              ; $54f4: $00
	nop                                              ; $54f5: $00
	nop                                              ; $54f6: $00
	nop                                              ; $54f7: $00
	nop                                              ; $54f8: $00
	nop                                              ; $54f9: $00
	nop                                              ; $54fa: $00
	nop                                              ; $54fb: $00
	nop                                              ; $54fc: $00
	nop                                              ; $54fd: $00
	xor h                                            ; $54fe: $ac
	nop                                              ; $54ff: $00
	xor h                                            ; $5500: $ac
	nop                                              ; $5501: $00
	xor h                                            ; $5502: $ac
	nop                                              ; $5503: $00
	xor h                                            ; $5504: $ac
	nop                                              ; $5505: $00
	nop                                              ; $5506: $00
	nop                                              ; $5507: $00
	nop                                              ; $5508: $00
	nop                                              ; $5509: $00
	nop                                              ; $550a: $00
	add b                                            ; $550b: $80
	nop                                              ; $550c: $00
	nop                                              ; $550d: $00
	nop                                              ; $550e: $00
	nop                                              ; $550f: $00
	nop                                              ; $5510: $00
	nop                                              ; $5511: $00
	nop                                              ; $5512: $00
	add b                                            ; $5513: $80
	nop                                              ; $5514: $00
	nop                                              ; $5515: $00
	ld [bc], a                                       ; $5516: $02
	nop                                              ; $5517: $00
	nop                                              ; $5518: $00
	nop                                              ; $5519: $00
	ld [bc], a                                       ; $551a: $02
	nop                                              ; $551b: $00
	nop                                              ; $551c: $00
	ld [$0800], sp                                   ; $551d: $08 $00 $08
	nop                                              ; $5520: $00
	ld [$0800], sp                                   ; $5521: $08 $00 $08
	nop                                              ; $5524: $00
	nop                                              ; $5525: $00
	nop                                              ; $5526: $00
	nop                                              ; $5527: $00
	nop                                              ; $5528: $00
	nop                                              ; $5529: $00
	nop                                              ; $552a: $00
	nop                                              ; $552b: $00
	nop                                              ; $552c: $00
	nop                                              ; $552d: $00
	nop                                              ; $552e: $00
	nop                                              ; $552f: $00
	nop                                              ; $5530: $00
	nop                                              ; $5531: $00
	nop                                              ; $5532: $00
	nop                                              ; $5533: $00
	nop                                              ; $5534: $00
	ld [_SetWramBankToHighByteInStackAfterReturn], sp                                   ; $5535: $08 $48 $08
	ld c, b                                          ; $5538: $48
	ld [$0048], sp                                   ; $5539: $08 $48 $00
	nop                                              ; $553c: $00
	nop                                              ; $553d: $00
	nop                                              ; $553e: $00
	nop                                              ; $553f: $00
	nop                                              ; $5540: $00
	nop                                              ; $5541: $00
	nop                                              ; $5542: $00
	nop                                              ; $5543: $00
	nop                                              ; $5544: $00
	nop                                              ; $5545: $00
	nop                                              ; $5546: $00
	nop                                              ; $5547: $00
	nop                                              ; $5548: $00
	nop                                              ; $5549: $00
	nop                                              ; $554a: $00
	nop                                              ; $554b: $00
	nop                                              ; $554c: $00
	inc e                                            ; $554d: $1c
	inc b                                            ; $554e: $04
	ld [bc], a                                       ; $554f: $02
	nop                                              ; $5550: $00
	and h                                            ; $5551: $a4
	rst $38                                          ; $5552: $ff
	nop                                              ; $5553: $00
	nop                                              ; $5554: $00
	nop                                              ; $5555: $00
	xor d                                            ; $5556: $aa
	inc b                                            ; $5557: $04
	inc b                                            ; $5558: $04
	ld [bc], a                                       ; $5559: $02
	nop                                              ; $555a: $00
	and l                                            ; $555b: $a5
	ld b, $04                                        ; $555c: $06 $04
	ld [bc], a                                       ; $555e: $02
	nop                                              ; $555f: $00
	or d                                             ; $5560: $b2
	ld [$0204], sp                                   ; $5561: $08 $04 $02
	nop                                              ; $5564: $00
	and l                                            ; $5565: $a5
	dec c                                            ; $5566: $0d
	ld c, $02                                        ; $5567: $0e $02
	nop                                              ; $5569: $00
	xor h                                            ; $556a: $ac
	ld c, $02                                        ; $556b: $0e $02
	ld [bc], a                                       ; $556d: $02
	nop                                              ; $556e: $00
	or h                                             ; $556f: $b4
	ld c, $0e                                        ; $5570: $0e $0e
	ld [bc], a                                       ; $5572: $02
	nop                                              ; $5573: $00
	xor h                                            ; $5574: $ac
	rrca                                             ; $5575: $0f
	ld [bc], a                                       ; $5576: $02
	ld [bc], a                                       ; $5577: $02
	nop                                              ; $5578: $00
	or h                                             ; $5579: $b4
	rrca                                             ; $557a: $0f
	ld c, $02                                        ; $557b: $0e $02
	nop                                              ; $557d: $00
	xor h                                            ; $557e: $ac
	db $10                                           ; $557f: $10
	ld [bc], a                                       ; $5580: $02
	ld [bc], a                                       ; $5581: $02
	nop                                              ; $5582: $00
	or h                                             ; $5583: $b4
	db $10                                           ; $5584: $10
	ld c, $02                                        ; $5585: $0e $02
	nop                                              ; $5587: $00
	xor h                                            ; $5588: $ac
	inc e                                            ; $5589: $1c
	ld [bc], a                                       ; $558a: $02
	ld [bc], a                                       ; $558b: $02
	nop                                              ; $558c: $00
	xor a                                            ; $558d: $af
	inc e                                            ; $558e: $1c
	inc c                                            ; $558f: $0c
	ld [bc], a                                       ; $5590: $02
	nop                                              ; $5591: $00
	xor c                                            ; $5592: $a9
	rst $38                                          ; $5593: $ff
	nop                                              ; $5594: $00
	nop                                              ; $5595: $00
	nop                                              ; $5596: $00
	xor a                                            ; $5597: $af
	dec c                                            ; $5598: $0d
	inc b                                            ; $5599: $04
	ld [bc], a                                       ; $559a: $02
	nop                                              ; $559b: $00
	or l                                             ; $559c: $b5
	rst $38                                          ; $559d: $ff
	nop                                              ; $559e: $00
	nop                                              ; $559f: $00
	nop                                              ; $55a0: $00
	xor [hl]                                         ; $55a1: $ae
	add hl, bc                                       ; $55a2: $09
	inc b                                            ; $55a3: $04
	ld [bc], a                                       ; $55a4: $02
	nop                                              ; $55a5: $00
	or d                                             ; $55a6: $b2
	dec c                                            ; $55a7: $0d
	inc b                                            ; $55a8: $04
	ld [bc], a                                       ; $55a9: $02
	nop                                              ; $55aa: $00
	or l                                             ; $55ab: $b5
	ld de, $0204                                     ; $55ac: $11 $04 $02
	nop                                              ; $55af: $00
	or h                                             ; $55b0: $b4
	inc d                                            ; $55b1: $14
	ld a, [bc]                                       ; $55b2: $0a
	ld [bc], a                                       ; $55b3: $02
	nop                                              ; $55b4: $00
	or b                                             ; $55b5: $b0
	inc d                                            ; $55b6: $14
	ld c, $02                                        ; $55b7: $0e $02
	nop                                              ; $55b9: $00
	or c                                             ; $55ba: $b1
	jr jr_00b_55c1                                   ; $55bb: $18 $04

	ld [bc], a                                       ; $55bd: $02
	nop                                              ; $55be: $00
	or b                                             ; $55bf: $b0
	rst $38                                          ; $55c0: $ff

jr_00b_55c1:
	nop                                              ; $55c1: $00
	nop                                              ; $55c2: $00
	nop                                              ; $55c3: $00
	or c                                             ; $55c4: $b1
	add hl, bc                                       ; $55c5: $09
	inc b                                            ; $55c6: $04
	ld [bc], a                                       ; $55c7: $02
	nop                                              ; $55c8: $00
	and l                                            ; $55c9: $a5
	ld de, $0204                                     ; $55ca: $11 $04 $02
	nop                                              ; $55cd: $00
	xor [hl]                                         ; $55ce: $ae
	add hl, de                                       ; $55cf: $19
	ld a, [bc]                                       ; $55d0: $0a
	ld [bc], a                                       ; $55d1: $02
	nop                                              ; $55d2: $00
	or b                                             ; $55d3: $b0
	add hl, de                                       ; $55d4: $19
	ld c, $02                                        ; $55d5: $0e $02
	nop                                              ; $55d7: $00
	or c                                             ; $55d8: $b1
	ld a, [de]                                       ; $55d9: $1a
	ld a, [bc]                                       ; $55da: $0a
	ld [bc], a                                       ; $55db: $02
	nop                                              ; $55dc: $00
	or b                                             ; $55dd: $b0
	ld a, [de]                                       ; $55de: $1a
	ld c, $02                                        ; $55df: $0e $02
	nop                                              ; $55e1: $00
	or c                                             ; $55e2: $b1
	dec de                                           ; $55e3: $1b
	ld a, [bc]                                       ; $55e4: $0a
	ld [bc], a                                       ; $55e5: $02
	nop                                              ; $55e6: $00
	or b                                             ; $55e7: $b0
	dec de                                           ; $55e8: $1b
	ld c, $02                                        ; $55e9: $0e $02
	nop                                              ; $55eb: $00
	or c                                             ; $55ec: $b1
	rst $38                                          ; $55ed: $ff
	nop                                              ; $55ee: $00
	nop                                              ; $55ef: $00
	nop                                              ; $55f0: $00
	or b                                             ; $55f1: $b0
	ld d, [hl]                                       ; $55f2: $56
	ldh [$0a], a                                     ; $55f3: $e0 $0a
	ld sp, $4009                                     ; $55f5: $31 $09 $40
	ld e, h                                          ; $55f8: $5c
	or c                                             ; $55f9: $b1
	ld d, a                                          ; $55fa: $57
	ret nz                                           ; $55fb: $c0

	ld d, a                                          ; $55fc: $57
	push bc                                          ; $55fd: $c5
	ld d, a                                          ; $55fe: $57
	jp z, $de57                                      ; $55ff: $ca $57 $de

	ld d, a                                          ; $5602: $57
	nop                                              ; $5603: $00
	nop                                              ; $5604: $00
	nop                                              ; $5605: $00
	nop                                              ; $5606: $00
	adc b                                            ; $5607: $88
	adc b                                            ; $5608: $88
	adc b                                            ; $5609: $88
	adc b                                            ; $560a: $88
	adc b                                            ; $560b: $88
	adc b                                            ; $560c: $88
	adc b                                            ; $560d: $88
	adc b                                            ; $560e: $88
	nop                                              ; $560f: $00
	nop                                              ; $5610: $00
	ld bc, $0000                                     ; $5611: $01 $00 $00
	nop                                              ; $5614: $00
	nop                                              ; $5615: $00
	nop                                              ; $5616: $00

Jump_00b_5617:
	nop                                              ; $5617: $00
	nop                                              ; $5618: $00
	ld bc, $0000                                     ; $5619: $01 $00 $00
	nop                                              ; $561c: $00
	nop                                              ; $561d: $00
	nop                                              ; $561e: $00
	nop                                              ; $561f: $00
	nop                                              ; $5620: $00
	nop                                              ; $5621: $00
	nop                                              ; $5622: $00
	nop                                              ; $5623: $00
	nop                                              ; $5624: $00
	nop                                              ; $5625: $00
	nop                                              ; $5626: $00
	nop                                              ; $5627: $00
	nop                                              ; $5628: $00
	nop                                              ; $5629: $00
	nop                                              ; $562a: $00
	nop                                              ; $562b: $00
	nop                                              ; $562c: $00
	nop                                              ; $562d: $00
	nop                                              ; $562e: $00
	nop                                              ; $562f: $00
	nop                                              ; $5630: $00
	adc b                                            ; $5631: $88
	adc b                                            ; $5632: $88
	adc b                                            ; $5633: $88
	adc b                                            ; $5634: $88
	adc b                                            ; $5635: $88
	adc b                                            ; $5636: $88
	adc b                                            ; $5637: $88
	adc b                                            ; $5638: $88
	adc b                                            ; $5639: $88
	adc b                                            ; $563a: $88
	adc b                                            ; $563b: $88
	adc b                                            ; $563c: $88
	adc b                                            ; $563d: $88
	adc b                                            ; $563e: $88
	adc b                                            ; $563f: $88
	adc b                                            ; $5640: $88
	adc b                                            ; $5641: $88
	adc b                                            ; $5642: $88
	adc b                                            ; $5643: $88
	adc b                                            ; $5644: $88
	adc b                                            ; $5645: $88
	adc b                                            ; $5646: $88
	adc b                                            ; $5647: $88
	adc b                                            ; $5648: $88
	adc b                                            ; $5649: $88
	adc b                                            ; $564a: $88
	adc b                                            ; $564b: $88
	adc b                                            ; $564c: $88
	adc b                                            ; $564d: $88
	adc b                                            ; $564e: $88
	adc b                                            ; $564f: $88
	adc b                                            ; $5650: $88
	adc b                                            ; $5651: $88
	adc b                                            ; $5652: $88
	adc b                                            ; $5653: $88
	adc b                                            ; $5654: $88
	adc b                                            ; $5655: $88
	adc b                                            ; $5656: $88
	adc b                                            ; $5657: $88
	adc b                                            ; $5658: $88
	nop                                              ; $5659: $00
	nop                                              ; $565a: $00
	nop                                              ; $565b: $00
	nop                                              ; $565c: $00
	nop                                              ; $565d: $00
	nop                                              ; $565e: $00
	nop                                              ; $565f: $00
	nop                                              ; $5660: $00
	nop                                              ; $5661: $00
	nop                                              ; $5662: $00
	nop                                              ; $5663: $00
	nop                                              ; $5664: $00
	nop                                              ; $5665: $00
	nop                                              ; $5666: $00
	ld [$0800], sp                                   ; $5667: $08 $00 $08
	nop                                              ; $566a: $00
	nop                                              ; $566b: $00
	nop                                              ; $566c: $00
	nop                                              ; $566d: $00
	nop                                              ; $566e: $00
	ld [$0800], sp                                   ; $566f: $08 $00 $08
	nop                                              ; $5672: $00
	nop                                              ; $5673: $00
	nop                                              ; $5674: $00
	nop                                              ; $5675: $00
	nop                                              ; $5676: $00
	nop                                              ; $5677: $00
	nop                                              ; $5678: $00
	nop                                              ; $5679: $00
	nop                                              ; $567a: $00
	nop                                              ; $567b: $00
	nop                                              ; $567c: $00
	nop                                              ; $567d: $00
	nop                                              ; $567e: $00
	nop                                              ; $567f: $00
	nop                                              ; $5680: $00
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	nop                                              ; $5683: $00
	nop                                              ; $5684: $00
	nop                                              ; $5685: $00
	nop                                              ; $5686: $00
	nop                                              ; $5687: $00
	nop                                              ; $5688: $00
	nop                                              ; $5689: $00
	nop                                              ; $568a: $00
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	nop                                              ; $568d: $00
	nop                                              ; $568e: $00
	nop                                              ; $568f: $00
	nop                                              ; $5690: $00
	nop                                              ; $5691: $00
	nop                                              ; $5692: $00
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	nop                                              ; $5695: $00
	nop                                              ; $5696: $00
	nop                                              ; $5697: $00
	nop                                              ; $5698: $00
	nop                                              ; $5699: $00
	nop                                              ; $569a: $00
	nop                                              ; $569b: $00
	nop                                              ; $569c: $00
	nop                                              ; $569d: $00
	nop                                              ; $569e: $00
	nop                                              ; $569f: $00
	nop                                              ; $56a0: $00
	nop                                              ; $56a1: $00
	nop                                              ; $56a2: $00
	nop                                              ; $56a3: $00
	nop                                              ; $56a4: $00
	nop                                              ; $56a5: $00
	nop                                              ; $56a6: $00
	nop                                              ; $56a7: $00
	nop                                              ; $56a8: $00
	nop                                              ; $56a9: $00
	nop                                              ; $56aa: $00
	nop                                              ; $56ab: $00
	nop                                              ; $56ac: $00
	nop                                              ; $56ad: $00
	nop                                              ; $56ae: $00
	nop                                              ; $56af: $00
	nop                                              ; $56b0: $00
	nop                                              ; $56b1: $00
	nop                                              ; $56b2: $00
	nop                                              ; $56b3: $00
	nop                                              ; $56b4: $00
	nop                                              ; $56b5: $00
	nop                                              ; $56b6: $00
	nop                                              ; $56b7: $00
	nop                                              ; $56b8: $00
	nop                                              ; $56b9: $00
	nop                                              ; $56ba: $00
	ld bc, $8000                                     ; $56bb: $01 $00 $80
	nop                                              ; $56be: $00
	add c                                            ; $56bf: $81
	nop                                              ; $56c0: $00
	add b                                            ; $56c1: $80
	nop                                              ; $56c2: $00
	ld bc, $8000                                     ; $56c3: $01 $00 $80
	nop                                              ; $56c6: $00
	add c                                            ; $56c7: $81
	nop                                              ; $56c8: $00
	add b                                            ; $56c9: $80
	nop                                              ; $56ca: $00
	nop                                              ; $56cb: $00
	nop                                              ; $56cc: $00
	nop                                              ; $56cd: $00
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	nop                                              ; $56d0: $00
	nop                                              ; $56d1: $00
	nop                                              ; $56d2: $00
	nop                                              ; $56d3: $00
	nop                                              ; $56d4: $00
	nop                                              ; $56d5: $00
	nop                                              ; $56d6: $00
	nop                                              ; $56d7: $00
	nop                                              ; $56d8: $00
	nop                                              ; $56d9: $00
	nop                                              ; $56da: $00
	nop                                              ; $56db: $00
	nop                                              ; $56dc: $00
	nop                                              ; $56dd: $00
	nop                                              ; $56de: $00
	nop                                              ; $56df: $00
	nop                                              ; $56e0: $00
	nop                                              ; $56e1: $00
	nop                                              ; $56e2: $00
	nop                                              ; $56e3: $00
	nop                                              ; $56e4: $00
	nop                                              ; $56e5: $00
	nop                                              ; $56e6: $00
	nop                                              ; $56e7: $00
	nop                                              ; $56e8: $00
	nop                                              ; $56e9: $00
	nop                                              ; $56ea: $00
	nop                                              ; $56eb: $00
	nop                                              ; $56ec: $00
	nop                                              ; $56ed: $00
	nop                                              ; $56ee: $00
	nop                                              ; $56ef: $00
	nop                                              ; $56f0: $00
	nop                                              ; $56f1: $00
	nop                                              ; $56f2: $00
	nop                                              ; $56f3: $00
	nop                                              ; $56f4: $00
	nop                                              ; $56f5: $00
	nop                                              ; $56f6: $00
	nop                                              ; $56f7: $00
	nop                                              ; $56f8: $00
	nop                                              ; $56f9: $00
	nop                                              ; $56fa: $00
	nop                                              ; $56fb: $00
	nop                                              ; $56fc: $00
	nop                                              ; $56fd: $00
	nop                                              ; $56fe: $00
	nop                                              ; $56ff: $00
	nop                                              ; $5700: $00
	nop                                              ; $5701: $00
	nop                                              ; $5702: $00
	nop                                              ; $5703: $00
	nop                                              ; $5704: $00
	nop                                              ; $5705: $00
	nop                                              ; $5706: $00
	nop                                              ; $5707: $00
	nop                                              ; $5708: $00
	nop                                              ; $5709: $00
	nop                                              ; $570a: $00
	nop                                              ; $570b: $00
	nop                                              ; $570c: $00
	nop                                              ; $570d: $00
	nop                                              ; $570e: $00
	adc b                                            ; $570f: $88
	adc b                                            ; $5710: $88
	ld [rRAMG], sp                                   ; $5711: $08 $00 $00
	nop                                              ; $5714: $00
	nop                                              ; $5715: $00
	nop                                              ; $5716: $00
	ld [$0800], sp                                   ; $5717: $08 $00 $08
	nop                                              ; $571a: $00
	nop                                              ; $571b: $00
	nop                                              ; $571c: $00
	nop                                              ; $571d: $00
	nop                                              ; $571e: $00
	ld [rRAMG], sp                                   ; $571f: $08 $00 $00
	jr nz, jr_00b_5724                               ; $5722: $20 $00

jr_00b_5724:
	jr nc, jr_00b_5726                               ; $5724: $30 $00

jr_00b_5726:
	jr nz, jr_00b_5728                               ; $5726: $20 $00

jr_00b_5728:
	jr nz, jr_00b_572a                               ; $5728: $20 $00

jr_00b_572a:
	jr nz, jr_00b_572c                               ; $572a: $20 $00

jr_00b_572c:
	jr nz, jr_00b_572e                               ; $572c: $20 $00

jr_00b_572e:
	jr nz, jr_00b_5730                               ; $572e: $20 $00

jr_00b_5730:
	jr nz, @-$6c                                     ; $5730: $20 $92

	add b                                            ; $5732: $80
	add hl, bc                                       ; $5733: $09
	ld [$0809], sp                                   ; $5734: $08 $09 $08
	add hl, bc                                       ; $5737: $09
	ld [$4909], sp                                   ; $5738: $08 $09 $49
	add hl, bc                                       ; $573b: $09
	ld [$0809], sp                                   ; $573c: $08 $09 $08
	add hl, bc                                       ; $573f: $09
	ld [$4109], sp                                   ; $5740: $08 $09 $41
	add hl, bc                                       ; $5743: $09
	ld [$0809], sp                                   ; $5744: $08 $09 $08
	add hl, bc                                       ; $5747: $09
	ld [$4909], sp                                   ; $5748: $08 $09 $49
	add hl, bc                                       ; $574b: $09
	ld [$0809], sp                                   ; $574c: $08 $09 $08
	add hl, bc                                       ; $574f: $09
	ld [$4909], sp                                   ; $5750: $08 $09 $49
	nop                                              ; $5753: $00
	nop                                              ; $5754: $00
	nop                                              ; $5755: $00
	add b                                            ; $5756: $80
	nop                                              ; $5757: $00
	nop                                              ; $5758: $00
	add b                                            ; $5759: $80
	ld [rRAMG], sp                                   ; $575a: $08 $00 $00
	nop                                              ; $575d: $00
	nop                                              ; $575e: $00
	add b                                            ; $575f: $80
	nop                                              ; $5760: $00
	nop                                              ; $5761: $00
	nop                                              ; $5762: $00
	add b                                            ; $5763: $80
	nop                                              ; $5764: $00
	nop                                              ; $5765: $00
	nop                                              ; $5766: $00
	add b                                            ; $5767: $80
	nop                                              ; $5768: $00
	nop                                              ; $5769: $00
	nop                                              ; $576a: $00
	nop                                              ; $576b: $00
	nop                                              ; $576c: $00
	ld bc, $8000                                     ; $576d: $01 $00 $80
	nop                                              ; $5770: $00
	nop                                              ; $5771: $00
	nop                                              ; $5772: $00
	nop                                              ; $5773: $00
	nop                                              ; $5774: $00
	ld bc, $8008                                     ; $5775: $01 $08 $80
	nop                                              ; $5778: $00
	nop                                              ; $5779: $00
	ld [rRAMG], sp                                   ; $577a: $08 $00 $00
	nop                                              ; $577d: $00
	ld [$0080], sp                                   ; $577e: $08 $80 $00
	nop                                              ; $5781: $00
	nop                                              ; $5782: $00
	nop                                              ; $5783: $00
	nop                                              ; $5784: $00
	add b                                            ; $5785: $80
	ld [rRAMG], sp                                   ; $5786: $08 $00 $00
	nop                                              ; $5789: $00
	nop                                              ; $578a: $00
	nop                                              ; $578b: $00
	nop                                              ; $578c: $00
	nop                                              ; $578d: $00
	nop                                              ; $578e: $00
	nop                                              ; $578f: $00
	nop                                              ; $5790: $00
	nop                                              ; $5791: $00
	nop                                              ; $5792: $00
	nop                                              ; $5793: $00
	nop                                              ; $5794: $00
	nop                                              ; $5795: $00
	nop                                              ; $5796: $00
	nop                                              ; $5797: $00
	ld [rRAMG], sp                                   ; $5798: $08 $00 $00
	nop                                              ; $579b: $00
	nop                                              ; $579c: $00
	nop                                              ; $579d: $00
	nop                                              ; $579e: $00
	nop                                              ; $579f: $00
	nop                                              ; $57a0: $00
	nop                                              ; $57a1: $00
	nop                                              ; $57a2: $00
	nop                                              ; $57a3: $00
	nop                                              ; $57a4: $00
	nop                                              ; $57a5: $00
	nop                                              ; $57a6: $00
	nop                                              ; $57a7: $00
	nop                                              ; $57a8: $00
	add b                                            ; $57a9: $80
	nop                                              ; $57aa: $00
	nop                                              ; $57ab: $00
	nop                                              ; $57ac: $00
	nop                                              ; $57ad: $00
	ld [bc], a                                       ; $57ae: $02
	nop                                              ; $57af: $00
	nop                                              ; $57b0: $00
	rlca                                             ; $57b1: $07
	inc b                                            ; $57b2: $04
	ld [bc], a                                       ; $57b3: $02
	nop                                              ; $57b4: $00
	adc e                                            ; $57b5: $8b
	rrca                                             ; $57b6: $0f
	inc b                                            ; $57b7: $04
	ld [bc], a                                       ; $57b8: $02
	nop                                              ; $57b9: $00
	sub b                                            ; $57ba: $90
	rst $38                                          ; $57bb: $ff
	nop                                              ; $57bc: $00
	nop                                              ; $57bd: $00
	nop                                              ; $57be: $00
	adc e                                            ; $57bf: $8b
	rst $38                                          ; $57c0: $ff
	nop                                              ; $57c1: $00
	nop                                              ; $57c2: $00
	nop                                              ; $57c3: $00
	sub c                                            ; $57c4: $91
	rst $38                                          ; $57c5: $ff
	nop                                              ; $57c6: $00
	nop                                              ; $57c7: $00
	nop                                              ; $57c8: $00
	sub b                                            ; $57c9: $90
	rlca                                             ; $57ca: $07
	inc b                                            ; $57cb: $04
	ld [bc], a                                       ; $57cc: $02
	nop                                              ; $57cd: $00
	adc l                                            ; $57ce: $8d
	rrca                                             ; $57cf: $0f
	inc b                                            ; $57d0: $04
	ld [bc], a                                       ; $57d1: $02
	nop                                              ; $57d2: $00
	adc a                                            ; $57d3: $8f
	rla                                              ; $57d4: $17
	nop                                              ; $57d5: $00
	ld [bc], a                                       ; $57d6: $02
	nop                                              ; $57d7: $00
	adc h                                            ; $57d8: $8c
	rst $38                                          ; $57d9: $ff
	nop                                              ; $57da: $00
	nop                                              ; $57db: $00
	nop                                              ; $57dc: $00
	sub e                                            ; $57dd: $93
	ld b, $04                                        ; $57de: $06 $04
	ld [bc], a                                       ; $57e0: $02
	nop                                              ; $57e1: $00
	adc l                                            ; $57e2: $8d
	add hl, bc                                       ; $57e3: $09
	inc b                                            ; $57e4: $04
	ld [bc], a                                       ; $57e5: $02
	nop                                              ; $57e6: $00
	adc [hl]                                         ; $57e7: $8e
	dec bc                                           ; $57e8: $0b
	nop                                              ; $57e9: $00
	ld [bc], a                                       ; $57ea: $02
	nop                                              ; $57eb: $00
	sub d                                            ; $57ec: $92
	dec c                                            ; $57ed: $0d
	inc b                                            ; $57ee: $04
	ld [bc], a                                       ; $57ef: $02
	nop                                              ; $57f0: $00
	adc [hl]                                         ; $57f1: $8e
	ld c, $0e                                        ; $57f2: $0e $0e
	ld [bc], a                                       ; $57f4: $02
	nop                                              ; $57f5: $00
	sub d                                            ; $57f6: $92
	rst $38                                          ; $57f7: $ff
	nop                                              ; $57f8: $00
	nop                                              ; $57f9: $00
	nop                                              ; $57fa: $00
	adc l                                            ; $57fb: $8d
	ld [hl+], a                                      ; $57fc: $22
	and d                                            ; $57fd: $a2
	inc de                                           ; $57fe: $13
	xor l                                            ; $57ff: $ad
	inc hl                                           ; $5800: $23
	di                                               ; $5801: $f3
	ld e, b                                          ; $5802: $58
	or a                                             ; $5803: $b7
	ld e, b                                          ; $5804: $58
	cp h                                             ; $5805: $bc
	ld e, b                                          ; $5806: $58
	pop bc                                           ; $5807: $c1
	ld e, b                                          ; $5808: $58
	add $58                                          ; $5809: $c6 $58
	bit 3, b                                         ; $580b: $cb $58
	nop                                              ; $580d: $00
	nop                                              ; $580e: $00
	nop                                              ; $580f: $00
	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	nop                                              ; $5812: $00
	nop                                              ; $5813: $00
	nop                                              ; $5814: $00
	nop                                              ; $5815: $00
	nop                                              ; $5816: $00
	nop                                              ; $5817: $00
	nop                                              ; $5818: $00
	nop                                              ; $5819: $00
	nop                                              ; $581a: $00
	nop                                              ; $581b: $00
	nop                                              ; $581c: $00
	nop                                              ; $581d: $00
	nop                                              ; $581e: $00
	nop                                              ; $581f: $00
	nop                                              ; $5820: $00
	nop                                              ; $5821: $00
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	nop                                              ; $5824: $00
	nop                                              ; $5825: $00
	nop                                              ; $5826: $00
	nop                                              ; $5827: $00
	nop                                              ; $5828: $00
	nop                                              ; $5829: $00
	nop                                              ; $582a: $00
	nop                                              ; $582b: $00
	nop                                              ; $582c: $00
	nop                                              ; $582d: $00
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	nop                                              ; $5830: $00
	nop                                              ; $5831: $00
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	nop                                              ; $5834: $00
	nop                                              ; $5835: $00
	nop                                              ; $5836: $00
	nop                                              ; $5837: $00
	nop                                              ; $5838: $00
	nop                                              ; $5839: $00
	nop                                              ; $583a: $00
	nop                                              ; $583b: $00
	nop                                              ; $583c: $00
	nop                                              ; $583d: $00
	nop                                              ; $583e: $00
	nop                                              ; $583f: $00
	nop                                              ; $5840: $00
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	nop                                              ; $5844: $00
	nop                                              ; $5845: $00
	nop                                              ; $5846: $00
	nop                                              ; $5847: $00
	nop                                              ; $5848: $00
	nop                                              ; $5849: $00
	nop                                              ; $584a: $00
	nop                                              ; $584b: $00
	nop                                              ; $584c: $00
	nop                                              ; $584d: $00
	nop                                              ; $584e: $00
	nop                                              ; $584f: $00
	nop                                              ; $5850: $00
	nop                                              ; $5851: $00
	nop                                              ; $5852: $00
	nop                                              ; $5853: $00
	nop                                              ; $5854: $00
	nop                                              ; $5855: $00
	nop                                              ; $5856: $00
	nop                                              ; $5857: $00
	nop                                              ; $5858: $00
	nop                                              ; $5859: $00
	nop                                              ; $585a: $00
	nop                                              ; $585b: $00
	nop                                              ; $585c: $00
	nop                                              ; $585d: $00
	nop                                              ; $585e: $00
	nop                                              ; $585f: $00
	nop                                              ; $5860: $00
	nop                                              ; $5861: $00
	nop                                              ; $5862: $00
	nop                                              ; $5863: $00
	nop                                              ; $5864: $00
	nop                                              ; $5865: $00
	nop                                              ; $5866: $00
	nop                                              ; $5867: $00
	nop                                              ; $5868: $00
	nop                                              ; $5869: $00
	nop                                              ; $586a: $00
	nop                                              ; $586b: $00
	nop                                              ; $586c: $00
	nop                                              ; $586d: $00
	nop                                              ; $586e: $00
	nop                                              ; $586f: $00
	nop                                              ; $5870: $00
	nop                                              ; $5871: $00
	nop                                              ; $5872: $00
	nop                                              ; $5873: $00
	nop                                              ; $5874: $00
	nop                                              ; $5875: $00
	nop                                              ; $5876: $00
	nop                                              ; $5877: $00
	nop                                              ; $5878: $00
	nop                                              ; $5879: $00
	nop                                              ; $587a: $00
	nop                                              ; $587b: $00
	nop                                              ; $587c: $00
	nop                                              ; $587d: $00
	nop                                              ; $587e: $00
	nop                                              ; $587f: $00
	nop                                              ; $5880: $00
	nop                                              ; $5881: $00
	nop                                              ; $5882: $00
	nop                                              ; $5883: $00
	nop                                              ; $5884: $00
	nop                                              ; $5885: $00
	nop                                              ; $5886: $00
	nop                                              ; $5887: $00
	nop                                              ; $5888: $00
	nop                                              ; $5889: $00
	nop                                              ; $588a: $00
	nop                                              ; $588b: $00
	nop                                              ; $588c: $00
	nop                                              ; $588d: $00
	nop                                              ; $588e: $00
	nop                                              ; $588f: $00
	nop                                              ; $5890: $00
	nop                                              ; $5891: $00
	nop                                              ; $5892: $00
	nop                                              ; $5893: $00
	nop                                              ; $5894: $00
	nop                                              ; $5895: $00
	nop                                              ; $5896: $00
	nop                                              ; $5897: $00
	nop                                              ; $5898: $00
	nop                                              ; $5899: $00
	nop                                              ; $589a: $00
	nop                                              ; $589b: $00
	nop                                              ; $589c: $00
	nop                                              ; $589d: $00
	nop                                              ; $589e: $00
	ld [hl+], a                                      ; $589f: $22
	ld [hl+], a                                      ; $58a0: $22
	nop                                              ; $58a1: $00
	nop                                              ; $58a2: $00
	ld [hl+], a                                      ; $58a3: $22
	or d                                             ; $58a4: $b2
	nop                                              ; $58a5: $00
	nop                                              ; $58a6: $00
	or b                                             ; $58a7: $b0
	cp d                                             ; $58a8: $ba
	nop                                              ; $58a9: $00
	nop                                              ; $58aa: $00
	db $db                                           ; $58ab: $db
	ld [hl+], a                                      ; $58ac: $22
	db $db                                           ; $58ad: $db
	ld [hl+], a                                      ; $58ae: $22
	nop                                              ; $58af: $00
	nop                                              ; $58b0: $00
	ei                                               ; $58b1: $fb
	ld a, [rRAMG]                                    ; $58b2: $fa $00 $00
	dec hl                                           ; $58b5: $2b
	rst SubAFromDE                                          ; $58b6: $df
	rst $38                                          ; $58b7: $ff
	nop                                              ; $58b8: $00
	nop                                              ; $58b9: $00
	nop                                              ; $58ba: $00
	nop                                              ; $58bb: $00
	rst $38                                          ; $58bc: $ff
	nop                                              ; $58bd: $00
	nop                                              ; $58be: $00
	nop                                              ; $58bf: $00
	nop                                              ; $58c0: $00
	rst $38                                          ; $58c1: $ff
	nop                                              ; $58c2: $00
	nop                                              ; $58c3: $00
	nop                                              ; $58c4: $00
	nop                                              ; $58c5: $00
	rst $38                                          ; $58c6: $ff
	nop                                              ; $58c7: $00
	nop                                              ; $58c8: $00
	nop                                              ; $58c9: $00
	nop                                              ; $58ca: $00
	rlca                                             ; $58cb: $07
	ld [bc], a                                       ; $58cc: $02
	ld [bc], a                                       ; $58cd: $02
	nop                                              ; $58ce: $00
	sbc d                                            ; $58cf: $9a
	ld [$020a], sp                                   ; $58d0: $08 $0a $02
	nop                                              ; $58d3: $00
	sbc e                                            ; $58d4: $9b
	ld [$020c], sp                                   ; $58d5: $08 $0c $02
	nop                                              ; $58d8: $00
	sbc h                                            ; $58d9: $9c
	add hl, bc                                       ; $58da: $09
	ld [bc], a                                       ; $58db: $02
	ld [bc], a                                       ; $58dc: $02
	nop                                              ; $58dd: $00
	sbc e                                            ; $58de: $9b
	dec c                                            ; $58df: $0d
	ld [bc], a                                       ; $58e0: $02
	ld [bc], a                                       ; $58e1: $02
	nop                                              ; $58e2: $00
	sbc l                                            ; $58e3: $9d
	ld c, $02                                        ; $58e4: $0e $02
	ld [bc], a                                       ; $58e6: $02
	nop                                              ; $58e7: $00
	sbc [hl]                                         ; $58e8: $9e
	db $10                                           ; $58e9: $10
	ld [bc], a                                       ; $58ea: $02
	ld [bc], a                                       ; $58eb: $02
	nop                                              ; $58ec: $00
	sbc e                                            ; $58ed: $9b
	rst $38                                          ; $58ee: $ff
	nop                                              ; $58ef: $00
	nop                                              ; $58f0: $00
	nop                                              ; $58f1: $00
	sbc l                                            ; $58f2: $9d
	ld bc, $0103                                     ; $58f3: $01 $03 $01
	call c, $0067                                    ; $58f6: $dc $67 $00
	inc bc                                           ; $58f9: $03
	stop                                             ; $58fa: $10 $00
	cp $60                                           ; $58fc: $fe $60
	add a                                            ; $58fe: $87
	inc bc                                           ; $58ff: $03
	jr jr_00b_590a                                   ; $5900: $18 $08

	cp $60                                           ; $5902: $fe $60
	adc e                                            ; $5904: $8b
	inc bc                                           ; $5905: $03
	ld d, $06                                        ; $5906: $16 $06
	cp $60                                           ; $5908: $fe $60

jr_00b_590a:
	adc a                                            ; $590a: $8f
	inc bc                                           ; $590b: $03
	ld [de], a                                       ; $590c: $12
	ld [bc], a                                       ; $590d: $02
	cp $60                                           ; $590e: $fe $60
	ld [bc], a                                       ; $5910: $02
	inc bc                                           ; $5911: $03
	inc bc                                           ; $5912: $03
	inc de                                           ; $5913: $13
	inc bc                                           ; $5914: $03
	sbc e                                            ; $5915: $9b
	ld h, b                                          ; $5916: $60
	add a                                            ; $5917: $87
	inc bc                                           ; $5918: $03
	dec d                                            ; $5919: $15
	dec b                                            ; $591a: $05
	or b                                             ; $591b: $b0
	ld h, b                                          ; $591c: $60
	adc e                                            ; $591d: $8b
	inc bc                                           ; $591e: $03
	ld de, $7101                                     ; $591f: $11 $01 $71
	ld h, b                                          ; $5922: $60
	adc a                                            ; $5923: $8f
	inc bc                                           ; $5924: $03
	rla                                              ; $5925: $17
	rlca                                             ; $5926: $07
	add [hl]                                         ; $5927: $86
	ld h, b                                          ; $5928: $60
	inc bc                                           ; $5929: $03
	inc bc                                           ; $592a: $03
	inc bc                                           ; $592b: $03
	inc d                                            ; $592c: $14
	inc b                                            ; $592d: $04
	jp c, $8b60                                      ; $592e: $da $60 $8b

	inc bc                                           ; $5931: $03
	nop                                              ; $5932: $00
	add hl, bc                                       ; $5933: $09
	sbc e                                            ; $5934: $9b
	ld h, b                                          ; $5935: $60
	adc h                                            ; $5936: $8c
	inc bc                                           ; $5937: $03
	ld bc, $9b0a                                     ; $5938: $01 $0a $9b
	ld h, b                                          ; $593b: $60
	adc l                                            ; $593c: $8d
	inc bc                                           ; $593d: $03
	ld [bc], a                                       ; $593e: $02
	dec bc                                           ; $593f: $0b
	sbc e                                            ; $5940: $9b
	ld h, b                                          ; $5941: $60
	adc [hl]                                         ; $5942: $8e
	inc bc                                           ; $5943: $03
	dec b                                            ; $5944: $05
	ld c, $b0                                        ; $5945: $0e $b0
	ld h, b                                          ; $5947: $60
	adc a                                            ; $5948: $8f
	inc bc                                           ; $5949: $03
	inc b                                            ; $594a: $04
	dec c                                            ; $594b: $0d
	or b                                             ; $594c: $b0
	ld h, b                                          ; $594d: $60
	inc b                                            ; $594e: $04
	nop                                              ; $594f: $00
	inc bc                                           ; $5950: $03
	inc bc                                           ; $5951: $03
	inc c                                            ; $5952: $0c
	or b                                             ; $5953: $b0
	ld h, b                                          ; $5954: $60
	add c                                            ; $5955: $81
	inc bc                                           ; $5956: $03
	ld b, $0f                                        ; $5957: $06 $0f
	sbc e                                            ; $5959: $9b
	ld h, b                                          ; $595a: $60
	add d                                            ; $595b: $82
	inc bc                                           ; $595c: $03
	rlca                                             ; $595d: $07
	db $10                                           ; $595e: $10
	sbc e                                            ; $595f: $9b
	ld h, b                                          ; $5960: $60
	add e                                            ; $5961: $83
	inc bc                                           ; $5962: $03
	ld [$9b11], sp                                   ; $5963: $08 $11 $9b
	ld h, b                                          ; $5966: $60
	dec b                                            ; $5967: $05
	dec b                                            ; $5968: $05
	ld bc, $67c4                                     ; $5969: $01 $c4 $67
	nop                                              ; $596c: $00
	inc bc                                           ; $596d: $03
	rlca                                             ; $596e: $07
	ld [de], a                                       ; $596f: $12
	add [hl]                                         ; $5970: $86
	ld h, b                                          ; $5971: $60
	add [hl]                                         ; $5972: $86
	inc bc                                           ; $5973: $03
	rlca                                             ; $5974: $07
	db $10                                           ; $5975: $10
	add [hl]                                         ; $5976: $86
	ld h, b                                          ; $5977: $60
	adc c                                            ; $5978: $89
	ld bc, $67c4                                     ; $5979: $01 $c4 $67
	nop                                              ; $597c: $00
	nop                                              ; $597d: $00
	ld h, b                                          ; $597e: $60
	ld h, l                                          ; $597f: $65
	nop                                              ; $5980: $00
	inc bc                                           ; $5981: $03
	rlca                                             ; $5982: $07
	ld [de], a                                       ; $5983: $12
	add [hl]                                         ; $5984: $86
	ld h, b                                          ; $5985: $60
	adc d                                            ; $5986: $8a
	inc bc                                           ; $5987: $03
	rlca                                             ; $5988: $07
	db $10                                           ; $5989: $10
	add [hl]                                         ; $598a: $86
	ld h, b                                          ; $598b: $60
	adc l                                            ; $598c: $8d
	ld bc, $67c4                                     ; $598d: $01 $c4 $67
	nop                                              ; $5990: $00
	nop                                              ; $5991: $00
	ld h, b                                          ; $5992: $60
	ld h, l                                          ; $5993: $65
	nop                                              ; $5994: $00
	inc bc                                           ; $5995: $03
	rlca                                             ; $5996: $07
	ld [de], a                                       ; $5997: $12
	add [hl]                                         ; $5998: $86
	ld h, b                                          ; $5999: $60
	adc [hl]                                         ; $599a: $8e
	inc bc                                           ; $599b: $03
	rlca                                             ; $599c: $07
	db $10                                           ; $599d: $10
	add [hl]                                         ; $599e: $86
	ld h, b                                          ; $599f: $60
	ld b, $01                                        ; $59a0: $06 $01
	ld bc, $67c4                                     ; $59a2: $01 $c4 $67
	nop                                              ; $59a5: $00
	nop                                              ; $59a6: $00
	ld h, b                                          ; $59a7: $60
	ld h, l                                          ; $59a8: $65
	nop                                              ; $59a9: $00
	inc bc                                           ; $59aa: $03
	rlca                                             ; $59ab: $07
	ld [de], a                                       ; $59ac: $12
	add [hl]                                         ; $59ad: $86
	ld h, b                                          ; $59ae: $60
	add d                                            ; $59af: $82
	inc bc                                           ; $59b0: $03
	rlca                                             ; $59b1: $07
	db $10                                           ; $59b2: $10
	add [hl]                                         ; $59b3: $86
	ld h, b                                          ; $59b4: $60
	rlca                                             ; $59b5: $07
	dec b                                            ; $59b6: $05
	ld bc, $67c4                                     ; $59b7: $01 $c4 $67
	nop                                              ; $59ba: $00
	nop                                              ; $59bb: $00
	ld h, b                                          ; $59bc: $60
	ld h, l                                          ; $59bd: $65
	nop                                              ; $59be: $00
	inc bc                                           ; $59bf: $03
	rlca                                             ; $59c0: $07
	ld [de], a                                       ; $59c1: $12
	add [hl]                                         ; $59c2: $86
	ld h, b                                          ; $59c3: $60
	add [hl]                                         ; $59c4: $86
	inc bc                                           ; $59c5: $03
	rlca                                             ; $59c6: $07
	db $10                                           ; $59c7: $10
	add [hl]                                         ; $59c8: $86
	ld h, b                                          ; $59c9: $60
	adc c                                            ; $59ca: $89
	ld bc, $67c4                                     ; $59cb: $01 $c4 $67
	nop                                              ; $59ce: $00
	nop                                              ; $59cf: $00
	ld h, b                                          ; $59d0: $60
	ld h, l                                          ; $59d1: $65
	nop                                              ; $59d2: $00
	inc bc                                           ; $59d3: $03
	rlca                                             ; $59d4: $07
	ld [de], a                                       ; $59d5: $12
	add [hl]                                         ; $59d6: $86
	ld h, b                                          ; $59d7: $60
	adc d                                            ; $59d8: $8a
	inc bc                                           ; $59d9: $03
	rlca                                             ; $59da: $07
	db $10                                           ; $59db: $10
	add [hl]                                         ; $59dc: $86
	ld h, b                                          ; $59dd: $60
	adc e                                            ; $59de: $8b
	ld bc, $67c4                                     ; $59df: $01 $c4 $67
	nop                                              ; $59e2: $00
	nop                                              ; $59e3: $00
	ld h, b                                          ; $59e4: $60
	ld h, l                                          ; $59e5: $65
	nop                                              ; $59e6: $00
	inc bc                                           ; $59e7: $03
	rlca                                             ; $59e8: $07
	ld [de], a                                       ; $59e9: $12
	add [hl]                                         ; $59ea: $86
	ld h, b                                          ; $59eb: $60
	adc h                                            ; $59ec: $8c
	inc bc                                           ; $59ed: $03
	rlca                                             ; $59ee: $07
	db $10                                           ; $59ef: $10
	add [hl]                                         ; $59f0: $86
	ld h, b                                          ; $59f1: $60
	adc l                                            ; $59f2: $8d
	ld bc, $67c4                                     ; $59f3: $01 $c4 $67
	nop                                              ; $59f6: $00
	nop                                              ; $59f7: $00
	ld h, b                                          ; $59f8: $60
	ld h, l                                          ; $59f9: $65
	nop                                              ; $59fa: $00
	inc bc                                           ; $59fb: $03
	rlca                                             ; $59fc: $07
	ld [de], a                                       ; $59fd: $12
	add [hl]                                         ; $59fe: $86
	ld h, b                                          ; $59ff: $60
	adc [hl]                                         ; $5a00: $8e
	ld bc, $67c4                                     ; $5a01: $01 $c4 $67
	nop                                              ; $5a04: $00
	nop                                              ; $5a05: $00
	ld h, b                                          ; $5a06: $60
	ld h, l                                          ; $5a07: $65
	adc a                                            ; $5a08: $8f
	inc bc                                           ; $5a09: $03
	rlca                                             ; $5a0a: $07
	db $10                                           ; $5a0b: $10
	add [hl]                                         ; $5a0c: $86
	ld h, b                                          ; $5a0d: $60
	ld [$0101], sp                                   ; $5a0e: $08 $01 $01
	call nz, $0067                                   ; $5a11: $c4 $67 $00
	nop                                              ; $5a14: $00
	ld h, b                                          ; $5a15: $60
	ld h, l                                          ; $5a16: $65
	nop                                              ; $5a17: $00
	inc bc                                           ; $5a18: $03
	rlca                                             ; $5a19: $07
	ld [de], a                                       ; $5a1a: $12
	add [hl]                                         ; $5a1b: $86
	ld h, b                                          ; $5a1c: $60
	add d                                            ; $5a1d: $82
	inc bc                                           ; $5a1e: $03
	rlca                                             ; $5a1f: $07
	db $10                                           ; $5a20: $10
	add [hl]                                         ; $5a21: $86
	ld h, b                                          ; $5a22: $60
	add hl, bc                                       ; $5a23: $09
	inc bc                                           ; $5a24: $03
	ld bc, $67c4                                     ; $5a25: $01 $c4 $67
	nop                                              ; $5a28: $00
	nop                                              ; $5a29: $00
	ld h, b                                          ; $5a2a: $60
	ld h, l                                          ; $5a2b: $65
	nop                                              ; $5a2c: $00
	inc bc                                           ; $5a2d: $03
	rlca                                             ; $5a2e: $07
	ld [de], a                                       ; $5a2f: $12
	add [hl]                                         ; $5a30: $86
	ld h, b                                          ; $5a31: $60
	add h                                            ; $5a32: $84
	inc bc                                           ; $5a33: $03
	rlca                                             ; $5a34: $07
	db $10                                           ; $5a35: $10
	add [hl]                                         ; $5a36: $86
	ld h, b                                          ; $5a37: $60
	add l                                            ; $5a38: $85
	ld bc, $67c4                                     ; $5a39: $01 $c4 $67
	nop                                              ; $5a3c: $00
	nop                                              ; $5a3d: $00
	ld h, b                                          ; $5a3e: $60
	ld h, l                                          ; $5a3f: $65
	nop                                              ; $5a40: $00
	inc bc                                           ; $5a41: $03
	rlca                                             ; $5a42: $07
	ld [de], a                                       ; $5a43: $12
	add [hl]                                         ; $5a44: $86
	ld h, b                                          ; $5a45: $60
	add [hl]                                         ; $5a46: $86
	ld bc, $67c4                                     ; $5a47: $01 $c4 $67
	nop                                              ; $5a4a: $00
	nop                                              ; $5a4b: $00
	ld h, b                                          ; $5a4c: $60
	ld h, l                                          ; $5a4d: $65
	add a                                            ; $5a4e: $87
	inc bc                                           ; $5a4f: $03
	rlca                                             ; $5a50: $07
	db $10                                           ; $5a51: $10
	add [hl]                                         ; $5a52: $86
	ld h, b                                          ; $5a53: $60
	adc e                                            ; $5a54: $8b
	ld bc, $67c4                                     ; $5a55: $01 $c4 $67
	nop                                              ; $5a58: $00
	nop                                              ; $5a59: $00
	ld h, b                                          ; $5a5a: $60
	ld h, l                                          ; $5a5b: $65
	nop                                              ; $5a5c: $00
	inc bc                                           ; $5a5d: $03
	rlca                                             ; $5a5e: $07
	ld [de], a                                       ; $5a5f: $12
	add [hl]                                         ; $5a60: $86
	ld h, b                                          ; $5a61: $60
	adc h                                            ; $5a62: $8c
	inc bc                                           ; $5a63: $03
	rlca                                             ; $5a64: $07
	db $10                                           ; $5a65: $10
	add [hl]                                         ; $5a66: $86
	ld h, b                                          ; $5a67: $60
	adc l                                            ; $5a68: $8d
	ld bc, $67c4                                     ; $5a69: $01 $c4 $67
	nop                                              ; $5a6c: $00
	nop                                              ; $5a6d: $00
	ld h, b                                          ; $5a6e: $60
	ld h, l                                          ; $5a6f: $65
	nop                                              ; $5a70: $00
	inc bc                                           ; $5a71: $03
	rlca                                             ; $5a72: $07
	ld [de], a                                       ; $5a73: $12
	add [hl]                                         ; $5a74: $86
	ld h, b                                          ; $5a75: $60
	adc [hl]                                         ; $5a76: $8e
	ld bc, $67c4                                     ; $5a77: $01 $c4 $67
	nop                                              ; $5a7a: $00
	nop                                              ; $5a7b: $00
	ld h, b                                          ; $5a7c: $60
	ld h, l                                          ; $5a7d: $65
	adc a                                            ; $5a7e: $8f
	ld bc, $67c4                                     ; $5a7f: $01 $c4 $67
	nop                                              ; $5a82: $00
	nop                                              ; $5a83: $00
	ld h, b                                          ; $5a84: $60
	ld h, l                                          ; $5a85: $65
	ld a, [bc]                                       ; $5a86: $0a
	nop                                              ; $5a87: $00
	inc bc                                           ; $5a88: $03
	rlca                                             ; $5a89: $07
	db $10                                           ; $5a8a: $10
	add [hl]                                         ; $5a8b: $86
	ld h, b                                          ; $5a8c: $60
	add c                                            ; $5a8d: $81
	ld bc, $67c4                                     ; $5a8e: $01 $c4 $67
	nop                                              ; $5a91: $00
	nop                                              ; $5a92: $00
	ld h, b                                          ; $5a93: $60
	ld h, l                                          ; $5a94: $65
	nop                                              ; $5a95: $00
	inc bc                                           ; $5a96: $03
	rlca                                             ; $5a97: $07
	ld [de], a                                       ; $5a98: $12
	add [hl]                                         ; $5a99: $86
	ld h, b                                          ; $5a9a: $60
	add d                                            ; $5a9b: $82
	inc bc                                           ; $5a9c: $03
	rlca                                             ; $5a9d: $07
	db $10                                           ; $5a9e: $10
	add [hl]                                         ; $5a9f: $86
	ld h, b                                          ; $5aa0: $60
	dec bc                                           ; $5aa1: $0b
	inc bc                                           ; $5aa2: $03
	ld bc, $67c4                                     ; $5aa3: $01 $c4 $67
	nop                                              ; $5aa6: $00
	nop                                              ; $5aa7: $00
	ld h, b                                          ; $5aa8: $60
	ld h, l                                          ; $5aa9: $65
	nop                                              ; $5aaa: $00
	inc bc                                           ; $5aab: $03
	rlca                                             ; $5aac: $07
	ld [de], a                                       ; $5aad: $12
	add [hl]                                         ; $5aae: $86
	ld h, b                                          ; $5aaf: $60
	add h                                            ; $5ab0: $84
	ld bc, $67c4                                     ; $5ab1: $01 $c4 $67
	nop                                              ; $5ab4: $00
	nop                                              ; $5ab5: $00
	ld h, b                                          ; $5ab6: $60
	ld h, l                                          ; $5ab7: $65
	add l                                            ; $5ab8: $85
	inc bc                                           ; $5ab9: $03
	rlca                                             ; $5aba: $07
	db $10                                           ; $5abb: $10
	add [hl]                                         ; $5abc: $86
	ld h, b                                          ; $5abd: $60
	add [hl]                                         ; $5abe: $86
	ld bc, $67c4                                     ; $5abf: $01 $c4 $67
	nop                                              ; $5ac2: $00
	nop                                              ; $5ac3: $00
	ld h, b                                          ; $5ac4: $60
	ld h, l                                          ; $5ac5: $65
	nop                                              ; $5ac6: $00
	inc bc                                           ; $5ac7: $03
	rlca                                             ; $5ac8: $07
	ld [de], a                                       ; $5ac9: $12
	add [hl]                                         ; $5aca: $86
	ld h, b                                          ; $5acb: $60
	add a                                            ; $5acc: $87
	ld bc, $67c4                                     ; $5acd: $01 $c4 $67
	nop                                              ; $5ad0: $00
	nop                                              ; $5ad1: $00
	ld h, b                                          ; $5ad2: $60
	ld h, l                                          ; $5ad3: $65
	adc b                                            ; $5ad4: $88
	inc bc                                           ; $5ad5: $03
	rlca                                             ; $5ad6: $07
	db $10                                           ; $5ad7: $10
	add [hl]                                         ; $5ad8: $86
	ld h, b                                          ; $5ad9: $60
	adc c                                            ; $5ada: $89
	ld bc, $67c4                                     ; $5adb: $01 $c4 $67
	nop                                              ; $5ade: $00
	nop                                              ; $5adf: $00
	ld h, b                                          ; $5ae0: $60
	ld h, l                                          ; $5ae1: $65
	nop                                              ; $5ae2: $00
	inc bc                                           ; $5ae3: $03
	rlca                                             ; $5ae4: $07
	ld [de], a                                       ; $5ae5: $12
	add [hl]                                         ; $5ae6: $86
	ld h, b                                          ; $5ae7: $60
	adc d                                            ; $5ae8: $8a
	ld bc, $67c4                                     ; $5ae9: $01 $c4 $67
	nop                                              ; $5aec: $00
	nop                                              ; $5aed: $00
	ld h, b                                          ; $5aee: $60
	ld h, l                                          ; $5aef: $65
	adc e                                            ; $5af0: $8b
	inc bc                                           ; $5af1: $03
	rlca                                             ; $5af2: $07
	db $10                                           ; $5af3: $10
	add [hl]                                         ; $5af4: $86
	ld h, b                                          ; $5af5: $60
	adc l                                            ; $5af6: $8d
	ld bc, $67c4                                     ; $5af7: $01 $c4 $67
	nop                                              ; $5afa: $00
	nop                                              ; $5afb: $00
	ld h, b                                          ; $5afc: $60
	ld h, l                                          ; $5afd: $65
	nop                                              ; $5afe: $00
	inc bc                                           ; $5aff: $03
	rlca                                             ; $5b00: $07
	ld [de], a                                       ; $5b01: $12
	add [hl]                                         ; $5b02: $86
	ld h, b                                          ; $5b03: $60
	adc [hl]                                         ; $5b04: $8e
	inc bc                                           ; $5b05: $03
	rlca                                             ; $5b06: $07
	db $10                                           ; $5b07: $10
	add [hl]                                         ; $5b08: $86
	ld h, b                                          ; $5b09: $60
	inc c                                            ; $5b0a: $0c
	ld bc, $c401                                     ; $5b0b: $01 $01 $c4
	ld h, a                                          ; $5b0e: $67
	nop                                              ; $5b0f: $00
	nop                                              ; $5b10: $00
	ld h, b                                          ; $5b11: $60
	ld h, l                                          ; $5b12: $65
	nop                                              ; $5b13: $00
	inc bc                                           ; $5b14: $03
	rlca                                             ; $5b15: $07
	ld [de], a                                       ; $5b16: $12
	add [hl]                                         ; $5b17: $86
	ld h, b                                          ; $5b18: $60
	add d                                            ; $5b19: $82
	inc bc                                           ; $5b1a: $03
	rlca                                             ; $5b1b: $07
	db $10                                           ; $5b1c: $10
	add [hl]                                         ; $5b1d: $86
	ld h, b                                          ; $5b1e: $60
	ld c, $03                                        ; $5b1f: $0e $03
	ld bc, $67c4                                     ; $5b21: $01 $c4 $67
	nop                                              ; $5b24: $00
	nop                                              ; $5b25: $00
	ld h, b                                          ; $5b26: $60
	ld h, l                                          ; $5b27: $65
	nop                                              ; $5b28: $00
	inc bc                                           ; $5b29: $03
	rlca                                             ; $5b2a: $07
	ld [de], a                                       ; $5b2b: $12
	add [hl]                                         ; $5b2c: $86
	ld h, b                                          ; $5b2d: $60
	add h                                            ; $5b2e: $84
	ld bc, $67c4                                     ; $5b2f: $01 $c4 $67
	nop                                              ; $5b32: $00
	nop                                              ; $5b33: $00
	ld h, b                                          ; $5b34: $60
	ld h, l                                          ; $5b35: $65
	add l                                            ; $5b36: $85
	ld bc, $67c4                                     ; $5b37: $01 $c4 $67
	nop                                              ; $5b3a: $00
	nop                                              ; $5b3b: $00
	ld h, b                                          ; $5b3c: $60
	ld h, l                                          ; $5b3d: $65
	add [hl]                                         ; $5b3e: $86
	ld bc, $67c4                                     ; $5b3f: $01 $c4 $67
	nop                                              ; $5b42: $00
	nop                                              ; $5b43: $00
	ld h, b                                          ; $5b44: $60
	ld h, l                                          ; $5b45: $65
	add a                                            ; $5b46: $87
	ld bc, $67c4                                     ; $5b47: $01 $c4 $67
	nop                                              ; $5b4a: $00
	nop                                              ; $5b4b: $00
	ld h, b                                          ; $5b4c: $60
	ld h, l                                          ; $5b4d: $65
	adc b                                            ; $5b4e: $88
	inc bc                                           ; $5b4f: $03
	rlca                                             ; $5b50: $07
	db $10                                           ; $5b51: $10
	add [hl]                                         ; $5b52: $86
	ld h, b                                          ; $5b53: $60
	adc c                                            ; $5b54: $89
	ld bc, $67c4                                     ; $5b55: $01 $c4 $67
	nop                                              ; $5b58: $00
	nop                                              ; $5b59: $00
	ld h, b                                          ; $5b5a: $60
	ld h, l                                          ; $5b5b: $65
	nop                                              ; $5b5c: $00
	inc bc                                           ; $5b5d: $03
	rlca                                             ; $5b5e: $07
	ld [de], a                                       ; $5b5f: $12
	add [hl]                                         ; $5b60: $86
	ld h, b                                          ; $5b61: $60
	adc d                                            ; $5b62: $8a
	ld bc, $67c4                                     ; $5b63: $01 $c4 $67
	nop                                              ; $5b66: $00
	nop                                              ; $5b67: $00
	ld h, b                                          ; $5b68: $60
	ld h, l                                          ; $5b69: $65
	adc e                                            ; $5b6a: $8b
	ld bc, $67c4                                     ; $5b6b: $01 $c4 $67
	nop                                              ; $5b6e: $00
	nop                                              ; $5b6f: $00
	ld h, b                                          ; $5b70: $60
	ld h, l                                          ; $5b71: $65
	adc h                                            ; $5b72: $8c
	ld bc, $67c4                                     ; $5b73: $01 $c4 $67
	nop                                              ; $5b76: $00
	nop                                              ; $5b77: $00
	ld h, b                                          ; $5b78: $60
	ld h, l                                          ; $5b79: $65
	adc l                                            ; $5b7a: $8d
	ld bc, $67c4                                     ; $5b7b: $01 $c4 $67
	nop                                              ; $5b7e: $00
	nop                                              ; $5b7f: $00
	ld h, b                                          ; $5b80: $60
	ld h, l                                          ; $5b81: $65
	adc [hl]                                         ; $5b82: $8e
	ld bc, $67c4                                     ; $5b83: $01 $c4 $67
	nop                                              ; $5b86: $00
	nop                                              ; $5b87: $00
	ld h, b                                          ; $5b88: $60
	ld h, l                                          ; $5b89: $65
	adc a                                            ; $5b8a: $8f
	ld bc, $67c4                                     ; $5b8b: $01 $c4 $67
	nop                                              ; $5b8e: $00
	nop                                              ; $5b8f: $00
	ld h, b                                          ; $5b90: $60
	ld h, l                                          ; $5b91: $65
	rrca                                             ; $5b92: $0f
	nop                                              ; $5b93: $00
	inc bc                                           ; $5b94: $03
	rlca                                             ; $5b95: $07
	db $10                                           ; $5b96: $10
	add [hl]                                         ; $5b97: $86
	ld h, b                                          ; $5b98: $60
	add c                                            ; $5b99: $81
	ld bc, $67c4                                     ; $5b9a: $01 $c4 $67
	nop                                              ; $5b9d: $00
	nop                                              ; $5b9e: $00
	ld h, b                                          ; $5b9f: $60
	ld h, l                                          ; $5ba0: $65
	nop                                              ; $5ba1: $00
	inc bc                                           ; $5ba2: $03
	rlca                                             ; $5ba3: $07
	ld [de], a                                       ; $5ba4: $12
	add [hl]                                         ; $5ba5: $86
	ld h, b                                          ; $5ba6: $60
	add d                                            ; $5ba7: $82
	inc bc                                           ; $5ba8: $03
	rlca                                             ; $5ba9: $07
	db $10                                           ; $5baa: $10
	add [hl]                                         ; $5bab: $86
	ld h, b                                          ; $5bac: $60
	db $10                                           ; $5bad: $10
	dec b                                            ; $5bae: $05
	ld bc, $67c4                                     ; $5baf: $01 $c4 $67
	nop                                              ; $5bb2: $00
	nop                                              ; $5bb3: $00
	ld h, b                                          ; $5bb4: $60
	ld h, l                                          ; $5bb5: $65
	nop                                              ; $5bb6: $00
	inc bc                                           ; $5bb7: $03
	rlca                                             ; $5bb8: $07
	ld [de], a                                       ; $5bb9: $12
	add [hl]                                         ; $5bba: $86
	ld h, b                                          ; $5bbb: $60
	add [hl]                                         ; $5bbc: $86
	inc bc                                           ; $5bbd: $03
	rlca                                             ; $5bbe: $07
	db $10                                           ; $5bbf: $10
	add [hl]                                         ; $5bc0: $86
	ld h, b                                          ; $5bc1: $60
	add a                                            ; $5bc2: $87
	ld bc, $67c4                                     ; $5bc3: $01 $c4 $67
	nop                                              ; $5bc6: $00
	nop                                              ; $5bc7: $00
	ld h, b                                          ; $5bc8: $60
	ld h, l                                          ; $5bc9: $65
	nop                                              ; $5bca: $00
	inc bc                                           ; $5bcb: $03
	rlca                                             ; $5bcc: $07
	ld [de], a                                       ; $5bcd: $12
	add [hl]                                         ; $5bce: $86
	ld h, b                                          ; $5bcf: $60
	adc b                                            ; $5bd0: $88
	inc bc                                           ; $5bd1: $03
	rlca                                             ; $5bd2: $07
	db $10                                           ; $5bd3: $10
	add [hl]                                         ; $5bd4: $86
	ld h, b                                          ; $5bd5: $60
	adc c                                            ; $5bd6: $89
	ld bc, $67c4                                     ; $5bd7: $01 $c4 $67
	nop                                              ; $5bda: $00
	nop                                              ; $5bdb: $00
	ld h, b                                          ; $5bdc: $60
	ld h, l                                          ; $5bdd: $65
	nop                                              ; $5bde: $00
	inc bc                                           ; $5bdf: $03
	rlca                                             ; $5be0: $07
	ld [de], a                                       ; $5be1: $12
	add [hl]                                         ; $5be2: $86
	ld h, b                                          ; $5be3: $60
	adc d                                            ; $5be4: $8a
	ld bc, $67c4                                     ; $5be5: $01 $c4 $67
	nop                                              ; $5be8: $00
	nop                                              ; $5be9: $00
	ld h, b                                          ; $5bea: $60
	ld h, l                                          ; $5beb: $65
	adc e                                            ; $5bec: $8b
	ld bc, $67c4                                     ; $5bed: $01 $c4 $67
	nop                                              ; $5bf0: $00
	nop                                              ; $5bf1: $00
	ld h, b                                          ; $5bf2: $60
	ld h, l                                          ; $5bf3: $65
	adc h                                            ; $5bf4: $8c
	ld bc, $67c4                                     ; $5bf5: $01 $c4 $67
	nop                                              ; $5bf8: $00
	nop                                              ; $5bf9: $00
	ld h, b                                          ; $5bfa: $60
	ld h, l                                          ; $5bfb: $65
	adc l                                            ; $5bfc: $8d
	inc bc                                           ; $5bfd: $03
	rlca                                             ; $5bfe: $07
	db $10                                           ; $5bff: $10
	add [hl]                                         ; $5c00: $86
	ld h, b                                          ; $5c01: $60
	adc [hl]                                         ; $5c02: $8e
	ld bc, $67c4                                     ; $5c03: $01 $c4 $67
	nop                                              ; $5c06: $00
	nop                                              ; $5c07: $00
	ld h, b                                          ; $5c08: $60
	ld h, l                                          ; $5c09: $65
	nop                                              ; $5c0a: $00
	inc bc                                           ; $5c0b: $03
	rlca                                             ; $5c0c: $07
	ld [de], a                                       ; $5c0d: $12
	add [hl]                                         ; $5c0e: $86
	ld h, b                                          ; $5c0f: $60
	adc a                                            ; $5c10: $8f
	ld bc, $67c4                                     ; $5c11: $01 $c4 $67
	nop                                              ; $5c14: $00
	nop                                              ; $5c15: $00
	ld h, b                                          ; $5c16: $60
	ld h, l                                          ; $5c17: $65
	ld de, $0100                                     ; $5c18: $11 $00 $01
	call nz, $0067                                   ; $5c1b: $c4 $67 $00
	nop                                              ; $5c1e: $00
	ld h, b                                          ; $5c1f: $60
	ld h, l                                          ; $5c20: $65
	add c                                            ; $5c21: $81
	ld bc, $67c4                                     ; $5c22: $01 $c4 $67
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00
	ld h, b                                          ; $5c27: $60
	ld h, l                                          ; $5c28: $65
	add d                                            ; $5c29: $82
	ld bc, $67c4                                     ; $5c2a: $01 $c4 $67
	nop                                              ; $5c2d: $00
	nop                                              ; $5c2e: $00
	ld h, b                                          ; $5c2f: $60
	ld h, l                                          ; $5c30: $65
	add e                                            ; $5c31: $83
	ld bc, $67c4                                     ; $5c32: $01 $c4 $67
	nop                                              ; $5c35: $00
	nop                                              ; $5c36: $00
	ld h, b                                          ; $5c37: $60
	ld h, l                                          ; $5c38: $65
	add h                                            ; $5c39: $84
	inc bc                                           ; $5c3a: $03
	rlca                                             ; $5c3b: $07
	db $10                                           ; $5c3c: $10
	add [hl]                                         ; $5c3d: $86
	ld h, b                                          ; $5c3e: $60
	rst $38                                          ; $5c3f: $ff
	ld bc, $0103                                     ; $5c40: $01 $03 $01
	call c, $0067                                    ; $5c43: $dc $67 $00
	inc bc                                           ; $5c46: $03
	nop                                              ; $5c47: $00
	inc de                                           ; $5c48: $13
	ld [hl], c                                       ; $5c49: $71
	ld h, b                                          ; $5c4a: $60
	add h                                            ; $5c4b: $84
	inc bc                                           ; $5c4c: $03
	ld bc, $710a                                     ; $5c4d: $01 $0a $71
	ld h, b                                          ; $5c50: $60
	add l                                            ; $5c51: $85
	inc bc                                           ; $5c52: $03
	ld [bc], a                                       ; $5c53: $02
	dec bc                                           ; $5c54: $0b
	ld [hl], c                                       ; $5c55: $71
	ld h, b                                          ; $5c56: $60
	add [hl]                                         ; $5c57: $86
	inc bc                                           ; $5c58: $03
	inc bc                                           ; $5c59: $03
	inc c                                            ; $5c5a: $0c
	ld [hl], c                                       ; $5c5b: $71
	ld h, b                                          ; $5c5c: $60
	add a                                            ; $5c5d: $87
	inc bc                                           ; $5c5e: $03
	inc b                                            ; $5c5f: $04
	dec c                                            ; $5c60: $0d
	ld [hl], c                                       ; $5c61: $71
	ld h, b                                          ; $5c62: $60
	adc b                                            ; $5c63: $88
	inc bc                                           ; $5c64: $03
	dec b                                            ; $5c65: $05
	ld c, $71                                        ; $5c66: $0e $71
	ld h, b                                          ; $5c68: $60
	adc c                                            ; $5c69: $89
	inc bc                                           ; $5c6a: $03
	ld b, $0f                                        ; $5c6b: $06 $0f
	ld [hl], c                                       ; $5c6d: $71
	ld h, b                                          ; $5c6e: $60
	adc d                                            ; $5c6f: $8a
	inc bc                                           ; $5c70: $03
	rlca                                             ; $5c71: $07
	db $10                                           ; $5c72: $10
	ld [hl], c                                       ; $5c73: $71
	ld h, b                                          ; $5c74: $60
	adc e                                            ; $5c75: $8b
	inc bc                                           ; $5c76: $03
	ld [$7111], sp                                   ; $5c77: $08 $11 $71
	ld h, b                                          ; $5c7a: $60
	adc h                                            ; $5c7b: $8c
	inc bc                                           ; $5c7c: $03
	inc b                                            ; $5c7d: $04
	dec bc                                           ; $5c7e: $0b
	ld [hl], c                                       ; $5c7f: $71
	ld h, b                                          ; $5c80: $60
	adc l                                            ; $5c81: $8d
	inc bc                                           ; $5c82: $03
	nop                                              ; $5c83: $00
	dec c                                            ; $5c84: $0d
	ld [hl], c                                       ; $5c85: $71
	ld h, b                                          ; $5c86: $60
	adc [hl]                                         ; $5c87: $8e
	inc bc                                           ; $5c88: $03
	ld [$7110], sp                                   ; $5c89: $08 $10 $71
	ld h, b                                          ; $5c8c: $60
	adc a                                            ; $5c8d: $8f
	inc bc                                           ; $5c8e: $03
	rlca                                             ; $5c8f: $07
	ld a, [bc]                                       ; $5c90: $0a
	ld [hl], c                                       ; $5c91: $71
	ld h, b                                          ; $5c92: $60
	ld [bc], a                                       ; $5c93: $02
	nop                                              ; $5c94: $00
	inc bc                                           ; $5c95: $03
	ld bc, $710c                                     ; $5c96: $01 $0c $71
	ld h, b                                          ; $5c99: $60
	add c                                            ; $5c9a: $81
	inc bc                                           ; $5c9b: $03
	dec b                                            ; $5c9c: $05
	rrca                                             ; $5c9d: $0f
	ld [hl], c                                       ; $5c9e: $71
	ld h, b                                          ; $5c9f: $60
	add d                                            ; $5ca0: $82
	inc bc                                           ; $5ca1: $03
	inc bc                                           ; $5ca2: $03
	ld c, $71                                        ; $5ca3: $0e $71
	ld h, b                                          ; $5ca5: $60
	add e                                            ; $5ca6: $83
	inc bc                                           ; $5ca7: $03
	ld [bc], a                                       ; $5ca8: $02
	db $10                                           ; $5ca9: $10
	ld [hl], c                                       ; $5caa: $71
	ld h, b                                          ; $5cab: $60
	add h                                            ; $5cac: $84
	inc bc                                           ; $5cad: $03
	ld b, $0a                                        ; $5cae: $06 $0a
	ld [hl], c                                       ; $5cb0: $71
	ld h, b                                          ; $5cb1: $60
	add l                                            ; $5cb2: $85
	inc bc                                           ; $5cb3: $03
	ld bc, $710b                                     ; $5cb4: $01 $0b $71
	ld h, b                                          ; $5cb7: $60
	add [hl]                                         ; $5cb8: $86
	inc bc                                           ; $5cb9: $03
	nop                                              ; $5cba: $00
	inc c                                            ; $5cbb: $0c
	ld [hl], c                                       ; $5cbc: $71
	ld h, b                                          ; $5cbd: $60
	add a                                            ; $5cbe: $87
	inc bc                                           ; $5cbf: $03
	inc bc                                           ; $5cc0: $03
	dec c                                            ; $5cc1: $0d
	ld [hl], c                                       ; $5cc2: $71

jr_00b_5cc3:
	ld h, b                                          ; $5cc3: $60
	adc b                                            ; $5cc4: $88
	inc bc                                           ; $5cc5: $03
	ld b, $0e                                        ; $5cc6: $06 $0e
	ld [hl], c                                       ; $5cc8: $71
	ld h, b                                          ; $5cc9: $60
	adc c                                            ; $5cca: $89
	inc bc                                           ; $5ccb: $03
	rlca                                             ; $5ccc: $07
	rrca                                             ; $5ccd: $0f
	ld [hl], c                                       ; $5cce: $71
	ld h, b                                          ; $5ccf: $60
	adc d                                            ; $5cd0: $8a
	inc bc                                           ; $5cd1: $03
	ld [$7110], sp                                   ; $5cd2: $08 $10 $71
	ld h, b                                          ; $5cd5: $60
	adc e                                            ; $5cd6: $8b
	inc bc                                           ; $5cd7: $03
	dec b                                            ; $5cd8: $05
	ld de, $6071                                     ; $5cd9: $11 $71 $60
	adc h                                            ; $5cdc: $8c
	inc bc                                           ; $5cdd: $03
	ld [bc], a                                       ; $5cde: $02
	ld a, [bc]                                       ; $5cdf: $0a
	ld [hl], c                                       ; $5ce0: $71
	ld h, b                                          ; $5ce1: $60
	adc l                                            ; $5ce2: $8d
	inc bc                                           ; $5ce3: $03
	ld bc, $710b                                     ; $5ce4: $01 $0b $71
	ld h, b                                          ; $5ce7: $60
	adc [hl]                                         ; $5ce8: $8e
	inc bc                                           ; $5ce9: $03
	inc b                                            ; $5cea: $04
	inc c                                            ; $5ceb: $0c
	ld [hl], c                                       ; $5cec: $71
	ld h, b                                          ; $5ced: $60
	adc a                                            ; $5cee: $8f
	inc bc                                           ; $5cef: $03
	nop                                              ; $5cf0: $00
	dec c                                            ; $5cf1: $0d
	ld [hl], c                                       ; $5cf2: $71
	ld h, b                                          ; $5cf3: $60
	inc bc                                           ; $5cf4: $03
	nop                                              ; $5cf5: $00
	inc bc                                           ; $5cf6: $03
	ld [$710e], sp                                   ; $5cf7: $08 $0e $71
	ld h, b                                          ; $5cfa: $60
	add c                                            ; $5cfb: $81
	inc bc                                           ; $5cfc: $03
	inc bc                                           ; $5cfd: $03
	rrca                                             ; $5cfe: $0f
	ld [hl], c                                       ; $5cff: $71
	ld h, b                                          ; $5d00: $60
	add d                                            ; $5d01: $82
	inc bc                                           ; $5d02: $03
	rlca                                             ; $5d03: $07
	dec bc                                           ; $5d04: $0b
	ld [hl], c                                       ; $5d05: $71
	ld h, b                                          ; $5d06: $60
	add e                                            ; $5d07: $83
	ld bc, $681c                                     ; $5d08: $01 $1c $68
	nop                                              ; $5d0b: $00
	inc bc                                           ; $5d0c: $03
	ld [de], a                                       ; $5d0d: $12
	ld d, $b0                                        ; $5d0e: $16 $b0
	ld h, b                                          ; $5d10: $60
	add l                                            ; $5d11: $85
	inc bc                                           ; $5d12: $03
	ld de, $b015                                     ; $5d13: $11 $15 $b0
	ld h, b                                          ; $5d16: $60
	add a                                            ; $5d17: $87
	inc bc                                           ; $5d18: $03
	db $10                                           ; $5d19: $10
	inc d                                            ; $5d1a: $14
	or b                                             ; $5d1b: $b0
	ld h, b                                          ; $5d1c: $60
	adc c                                            ; $5d1d: $89
	inc bc                                           ; $5d1e: $03
	inc de                                           ; $5d1f: $13
	rla                                              ; $5d20: $17
	sbc e                                            ; $5d21: $9b
	ld h, b                                          ; $5d22: $60
	adc e                                            ; $5d23: $8b
	inc bc                                           ; $5d24: $03
	inc d                                            ; $5d25: $14
	jr jr_00b_5cc3                                   ; $5d26: $18 $9b

	ld h, b                                          ; $5d28: $60
	adc l                                            ; $5d29: $8d
	inc bc                                           ; $5d2a: $03
	dec d                                            ; $5d2b: $15
	add hl, de                                       ; $5d2c: $19
	sbc e                                            ; $5d2d: $9b
	ld h, b                                          ; $5d2e: $60
	adc a                                            ; $5d2f: $8f
	inc bc                                           ; $5d30: $03
	jr jr_00b_5d4f                                   ; $5d31: $18 $1c

	or b                                             ; $5d33: $b0
	ld h, b                                          ; $5d34: $60
	inc b                                            ; $5d35: $04
	ld bc, $1703                                     ; $5d36: $01 $03 $17
	dec de                                           ; $5d39: $1b
	or b                                             ; $5d3a: $b0
	ld h, b                                          ; $5d3b: $60
	add e                                            ; $5d3c: $83
	inc bc                                           ; $5d3d: $03
	ld d, $1a                                        ; $5d3e: $16 $1a
	or b                                             ; $5d40: $b0
	ld h, b                                          ; $5d41: $60
	rlca                                             ; $5d42: $07
	inc bc                                           ; $5d43: $03
	ld bc, $681c                                     ; $5d44: $01 $1c $68
	nop                                              ; $5d47: $00
	inc bc                                           ; $5d48: $03
	nop                                              ; $5d49: $00
	inc de                                           ; $5d4a: $13
	cp $60                                           ; $5d4b: $fe $60
	add l                                            ; $5d4d: $85
	inc bc                                           ; $5d4e: $03

jr_00b_5d4f:
	ld [bc], a                                       ; $5d4f: $02
	dec bc                                           ; $5d50: $0b
	cp $60                                           ; $5d51: $fe $60
	add a                                            ; $5d53: $87
	inc bc                                           ; $5d54: $03
	inc b                                            ; $5d55: $04
	dec c                                            ; $5d56: $0d
	cp $60                                           ; $5d57: $fe $60
	adc c                                            ; $5d59: $89
	inc bc                                           ; $5d5a: $03
	ld b, $0f                                        ; $5d5b: $06 $0f
	cp $60                                           ; $5d5d: $fe $60
	adc e                                            ; $5d5f: $8b
	inc bc                                           ; $5d60: $03
	ld [$fe11], sp                                   ; $5d61: $08 $11 $fe
	ld h, b                                          ; $5d64: $60
	adc l                                            ; $5d65: $8d
	inc bc                                           ; $5d66: $03
	ld bc, $da0a                                     ; $5d67: $01 $0a $da
	ld h, b                                          ; $5d6a: $60
	adc a                                            ; $5d6b: $8f
	inc bc                                           ; $5d6c: $03
	inc bc                                           ; $5d6d: $03
	inc c                                            ; $5d6e: $0c
	jp c, $0860                                      ; $5d6f: $da $60 $08

	ld bc, $0503                                     ; $5d72: $01 $03 $05
	ld c, $da                                        ; $5d75: $0e $da
	ld h, b                                          ; $5d77: $60
	add e                                            ; $5d78: $83
	inc bc                                           ; $5d79: $03
	rlca                                             ; $5d7a: $07
	db $10                                           ; $5d7b: $10
	jp c, $0960                                      ; $5d7c: $da $60 $09

	dec bc                                           ; $5d7f: $0b
	inc bc                                           ; $5d80: $03
	ld [$da13], sp                                   ; $5d81: $08 $13 $da
	ld h, b                                          ; $5d84: $60
	adc l                                            ; $5d85: $8d
	inc bc                                           ; $5d86: $03
	dec b                                            ; $5d87: $05
	ld a, [bc]                                       ; $5d88: $0a
	jp c, $0a60                                      ; $5d89: $da $60 $0a

	ld bc, $0103                                     ; $5d8c: $01 $03 $01
	inc c                                            ; $5d8f: $0c
	jp c, $8360                                      ; $5d90: $da $60 $83

	inc bc                                           ; $5d93: $03
	nop                                              ; $5d94: $00
	dec c                                            ; $5d95: $0d
	jp c, $8b60                                      ; $5d96: $da $60 $8b

	inc bc                                           ; $5d99: $03
	inc bc                                           ; $5d9a: $03
	ld c, $da                                        ; $5d9b: $0e $da
	ld h, b                                          ; $5d9d: $60
	dec bc                                           ; $5d9e: $0b
	ld bc, $0403                                     ; $5d9f: $01 $03 $04
	ld de, $60da                                     ; $5da2: $11 $da $60
	add e                                            ; $5da5: $83
	inc bc                                           ; $5da6: $03
	dec b                                            ; $5da7: $05
	dec c                                            ; $5da8: $0d
	jp c, $8b60                                      ; $5da9: $da $60 $8b

	inc bc                                           ; $5dac: $03
	ld b, $0b                                        ; $5dad: $06 $0b
	jp c, $8d60                                      ; $5daf: $da $60 $8d

	inc bc                                           ; $5db2: $03
	ld bc, $da12                                     ; $5db3: $01 $12 $da
	ld h, b                                          ; $5db6: $60
	adc a                                            ; $5db7: $8f
	inc bc                                           ; $5db8: $03
	ld [$da10], sp                                   ; $5db9: $08 $10 $da
	ld h, b                                          ; $5dbc: $60
	inc c                                            ; $5dbd: $0c
	ld bc, $0303                                     ; $5dbe: $01 $03 $03
	ld a, [bc]                                       ; $5dc1: $0a
	jp c, $8360                                      ; $5dc2: $da $60 $83

	inc bc                                           ; $5dc5: $03
	rlca                                             ; $5dc6: $07
	inc c                                            ; $5dc7: $0c
	jp c, $8b60                                      ; $5dc8: $da $60 $8b

	inc bc                                           ; $5dcb: $03
	nop                                              ; $5dcc: $00
	ld c, $da                                        ; $5dcd: $0e $da
	ld h, b                                          ; $5dcf: $60
	adc l                                            ; $5dd0: $8d
	inc bc                                           ; $5dd1: $03
	ld [bc], a                                       ; $5dd2: $02
	ld de, $60da                                     ; $5dd3: $11 $da $60
	adc a                                            ; $5dd6: $8f
	inc bc                                           ; $5dd7: $03
	inc b                                            ; $5dd8: $04
	rrca                                             ; $5dd9: $0f
	jp c, $0d60                                      ; $5dda: $da $60 $0d

	ld bc, $0003                                     ; $5ddd: $01 $03 $00
	inc de                                           ; $5de0: $13
	jp c, $8360                                      ; $5de1: $da $60 $83

	inc bc                                           ; $5de4: $03
	ld bc, $da0a                                     ; $5de5: $01 $0a $da
	ld h, b                                          ; $5de8: $60
	add a                                            ; $5de9: $87
	ld bc, $681c                                     ; $5dea: $01 $1c $68
	adc e                                            ; $5ded: $8b
	inc bc                                           ; $5dee: $03
	ld [bc], a                                       ; $5def: $02
	dec bc                                           ; $5df0: $0b
	jp c, $0e60                                      ; $5df1: $da $60 $0e

	inc bc                                           ; $5df4: $03
	inc bc                                           ; $5df5: $03
	inc bc                                           ; $5df6: $03
	inc c                                            ; $5df7: $0c
	jp c, $8760                                      ; $5df8: $da $60 $87

	ld bc, $681c                                     ; $5dfb: $01 $1c $68
	adc e                                            ; $5dfe: $8b
	inc bc                                           ; $5dff: $03
	inc b                                            ; $5e00: $04
	dec c                                            ; $5e01: $0d
	jp c, $0f60                                      ; $5e02: $da $60 $0f

	inc bc                                           ; $5e05: $03
	inc bc                                           ; $5e06: $03
	dec b                                            ; $5e07: $05
	ld c, $da                                        ; $5e08: $0e $da
	ld h, b                                          ; $5e0a: $60
	add a                                            ; $5e0b: $87
	ld bc, $681c                                     ; $5e0c: $01 $1c $68
	adc e                                            ; $5e0f: $8b
	inc bc                                           ; $5e10: $03
	ld b, $0f                                        ; $5e11: $06 $0f
	jp c, $1060                                      ; $5e13: $da $60 $10

	inc bc                                           ; $5e16: $03
	inc bc                                           ; $5e17: $03
	rlca                                             ; $5e18: $07
	db $10                                           ; $5e19: $10
	jp c, $8760                                      ; $5e1a: $da $60 $87

	ld bc, $681c                                     ; $5e1d: $01 $1c $68
	adc e                                            ; $5e20: $8b
	inc bc                                           ; $5e21: $03
	ld [$da11], sp                                   ; $5e22: $08 $11 $da
	ld h, b                                          ; $5e25: $60
	adc a                                            ; $5e26: $8f
	ld bc, $67c4                                     ; $5e27: $01 $c4 $67
	ld de, $0003                                     ; $5e2a: $11 $03 $00
	ld h, h                                          ; $5e2d: $64
	ld h, l                                          ; $5e2e: $65
	nop                                              ; $5e2f: $00
	ld bc, $67dc                                     ; $5e30: $01 $dc $67
	nop                                              ; $5e33: $00
	inc bc                                           ; $5e34: $03
	nop                                              ; $5e35: $00
	nop                                              ; $5e36: $00
	cp $60                                           ; $5e37: $fe $60
	add a                                            ; $5e39: $87
	inc bc                                           ; $5e3a: $03
	nop                                              ; $5e3b: $00
	ld bc, $60fe                                     ; $5e3c: $01 $fe $60
	adc e                                            ; $5e3f: $8b
	inc bc                                           ; $5e40: $03
	nop                                              ; $5e41: $00
	ld [bc], a                                       ; $5e42: $02
	cp $60                                           ; $5e43: $fe $60
	adc a                                            ; $5e45: $8f
	inc bc                                           ; $5e46: $03
	nop                                              ; $5e47: $00
	inc bc                                           ; $5e48: $03
	cp $60                                           ; $5e49: $fe $60
	ld [de], a                                       ; $5e4b: $12
	inc bc                                           ; $5e4c: $03
	inc bc                                           ; $5e4d: $03
	ld b, $04                                        ; $5e4e: $06 $04
	cp $60                                           ; $5e50: $fe $60
	add a                                            ; $5e52: $87
	inc bc                                           ; $5e53: $03
	ld b, $05                                        ; $5e54: $06 $05
	cp $60                                           ; $5e56: $fe $60
	adc e                                            ; $5e58: $8b
	inc bc                                           ; $5e59: $03
	ld b, $06                                        ; $5e5a: $06 $06
	cp $60                                           ; $5e5c: $fe $60
	adc a                                            ; $5e5e: $8f
	inc bc                                           ; $5e5f: $03
	ld b, $07                                        ; $5e60: $06 $07
	cp $60                                           ; $5e62: $fe $60
	inc de                                           ; $5e64: $13
	inc bc                                           ; $5e65: $03
	inc bc                                           ; $5e66: $03
	ld [bc], a                                       ; $5e67: $02
	ld [$60fe], sp                                   ; $5e68: $08 $fe $60
	add a                                            ; $5e6b: $87
	inc bc                                           ; $5e6c: $03
	ld [bc], a                                       ; $5e6d: $02
	add hl, bc                                       ; $5e6e: $09
	cp $60                                           ; $5e6f: $fe $60
	adc e                                            ; $5e71: $8b
	inc bc                                           ; $5e72: $03
	ld [bc], a                                       ; $5e73: $02
	ld [$60fe], sp                                   ; $5e74: $08 $fe $60
	adc a                                            ; $5e77: $8f
	inc bc                                           ; $5e78: $03
	ld [bc], a                                       ; $5e79: $02
	add hl, bc                                       ; $5e7a: $09
	cp $60                                           ; $5e7b: $fe $60
	inc d                                            ; $5e7d: $14
	inc bc                                           ; $5e7e: $03
	ld bc, $681c                                     ; $5e7f: $01 $1c $68
	nop                                              ; $5e82: $00
	inc bc                                           ; $5e83: $03
	ld [$fe02], sp                                   ; $5e84: $08 $02 $fe
	ld h, b                                          ; $5e87: $60
	add a                                            ; $5e88: $87
	ld bc, $681c                                     ; $5e89: $01 $1c $68
	nop                                              ; $5e8c: $00
	inc bc                                           ; $5e8d: $03
	ld [$fe03], sp                                   ; $5e8e: $08 $03 $fe
	ld h, b                                          ; $5e91: $60
	adc e                                            ; $5e92: $8b
	ld bc, $681c                                     ; $5e93: $01 $1c $68
	nop                                              ; $5e96: $00
	inc bc                                           ; $5e97: $03
	ld [$fe00], sp                                   ; $5e98: $08 $00 $fe
	ld h, b                                          ; $5e9b: $60
	adc a                                            ; $5e9c: $8f
	ld bc, $681c                                     ; $5e9d: $01 $1c $68
	nop                                              ; $5ea0: $00
	inc bc                                           ; $5ea1: $03
	ld [$fe01], sp                                   ; $5ea2: $08 $01 $fe
	ld h, b                                          ; $5ea5: $60
	dec d                                            ; $5ea6: $15
	inc bc                                           ; $5ea7: $03
	inc bc                                           ; $5ea8: $03
	inc b                                            ; $5ea9: $04
	nop                                              ; $5eaa: $00
	jp c, $8560                                      ; $5eab: $da $60 $85

	inc bc                                           ; $5eae: $03
	inc b                                            ; $5eaf: $04
	ld bc, $60da                                     ; $5eb0: $01 $da $60
	add a                                            ; $5eb3: $87
	inc bc                                           ; $5eb4: $03
	inc b                                            ; $5eb5: $04
	ld [bc], a                                       ; $5eb6: $02
	jp c, $8960                                      ; $5eb7: $da $60 $89

	inc bc                                           ; $5eba: $03
	inc b                                            ; $5ebb: $04
	inc bc                                           ; $5ebc: $03
	jp c, $8b60                                      ; $5ebd: $da $60 $8b

	inc bc                                           ; $5ec0: $03
	inc b                                            ; $5ec1: $04
	inc b                                            ; $5ec2: $04
	jp c, $8d60                                      ; $5ec3: $da $60 $8d

	inc bc                                           ; $5ec6: $03
	inc b                                            ; $5ec7: $04
	dec b                                            ; $5ec8: $05
	jp c, $8f60                                      ; $5ec9: $da $60 $8f

	inc bc                                           ; $5ecc: $03
	inc b                                            ; $5ecd: $04
	ld b, $da                                        ; $5ece: $06 $da
	ld h, b                                          ; $5ed0: $60
	ld d, $01                                        ; $5ed1: $16 $01
	inc bc                                           ; $5ed3: $03
	inc b                                            ; $5ed4: $04
	rlca                                             ; $5ed5: $07
	jp c, $8360                                      ; $5ed6: $da $60 $83

	inc bc                                           ; $5ed9: $03
	ld bc, $c508                                     ; $5eda: $01 $08 $c5
	ld h, b                                          ; $5edd: $60
	add a                                            ; $5ede: $87
	inc bc                                           ; $5edf: $03
	ld bc, $c509                                     ; $5ee0: $01 $09 $c5
	ld h, b                                          ; $5ee3: $60
	adc e                                            ; $5ee4: $8b
	inc bc                                           ; $5ee5: $03
	inc bc                                           ; $5ee6: $03
	inc b                                            ; $5ee7: $04
	push bc                                          ; $5ee8: $c5
	ld h, b                                          ; $5ee9: $60
	adc a                                            ; $5eea: $8f
	inc bc                                           ; $5eeb: $03
	inc bc                                           ; $5eec: $03
	dec b                                            ; $5eed: $05
	push bc                                          ; $5eee: $c5
	ld h, b                                          ; $5eef: $60
	rla                                              ; $5ef0: $17
	inc bc                                           ; $5ef1: $03
	inc bc                                           ; $5ef2: $03
	rlca                                             ; $5ef3: $07
	ld [$60c5], sp                                   ; $5ef4: $08 $c5 $60
	add a                                            ; $5ef7: $87
	inc bc                                           ; $5ef8: $03
	rlca                                             ; $5ef9: $07
	add hl, bc                                       ; $5efa: $09
	push bc                                          ; $5efb: $c5
	ld h, b                                          ; $5efc: $60
	adc e                                            ; $5efd: $8b
	inc bc                                           ; $5efe: $03
	dec b                                            ; $5eff: $05
	nop                                              ; $5f00: $00
	push bc                                          ; $5f01: $c5
	ld h, b                                          ; $5f02: $60
	adc a                                            ; $5f03: $8f
	inc bc                                           ; $5f04: $03
	dec b                                            ; $5f05: $05
	ld bc, $60c5                                     ; $5f06: $01 $c5 $60
	jr jr_00b_5f0e                                   ; $5f09: $18 $03

	ld bc, $67c4                                     ; $5f0b: $01 $c4 $67

jr_00b_5f0e:
	add a                                            ; $5f0e: $87
	ld bc, $67c4                                     ; $5f0f: $01 $c4 $67
	nop                                              ; $5f12: $00
	nop                                              ; $5f13: $00
	ld h, h                                          ; $5f14: $64
	ld h, l                                          ; $5f15: $65
	adc e                                            ; $5f16: $8b
	ld bc, $67c4                                     ; $5f17: $01 $c4 $67
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	ld h, h                                          ; $5f1c: $64
	ld h, l                                          ; $5f1d: $65
	adc a                                            ; $5f1e: $8f
	ld bc, $67c4                                     ; $5f1f: $01 $c4 $67
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	ld h, h                                          ; $5f24: $64
	ld h, l                                          ; $5f25: $65
	add hl, de                                       ; $5f26: $19
	inc bc                                           ; $5f27: $03
	ld bc, $67dc                                     ; $5f28: $01 $dc $67
	nop                                              ; $5f2b: $00
	nop                                              ; $5f2c: $00
	ld h, h                                          ; $5f2d: $64
	ld h, l                                          ; $5f2e: $65
	nop                                              ; $5f2f: $00
	inc bc                                           ; $5f30: $03
	db $10                                           ; $5f31: $10
	inc d                                            ; $5f32: $14
	ld [hl], c                                       ; $5f33: $71
	ld h, b                                          ; $5f34: $60
	add l                                            ; $5f35: $85
	inc bc                                           ; $5f36: $03
	inc de                                           ; $5f37: $13
	rla                                              ; $5f38: $17
	ld [hl], c                                       ; $5f39: $71
	ld h, b                                          ; $5f3a: $60
	add a                                            ; $5f3b: $87
	inc bc                                           ; $5f3c: $03
	ld d, $1a                                        ; $5f3d: $16 $1a
	ld [hl], c                                       ; $5f3f: $71
	ld h, b                                          ; $5f40: $60
	adc c                                            ; $5f41: $89
	inc bc                                           ; $5f42: $03
	rla                                              ; $5f43: $17
	dec de                                           ; $5f44: $1b
	add [hl]                                         ; $5f45: $86
	ld h, b                                          ; $5f46: $60
	adc e                                            ; $5f47: $8b
	inc bc                                           ; $5f48: $03
	inc d                                            ; $5f49: $14
	jr @-$78                                         ; $5f4a: $18 $86

	ld h, b                                          ; $5f4c: $60
	adc l                                            ; $5f4d: $8d
	inc bc                                           ; $5f4e: $03
	ld de, $8615                                     ; $5f4f: $11 $15 $86
	ld h, b                                          ; $5f52: $60
	adc a                                            ; $5f53: $8f
	inc bc                                           ; $5f54: $03
	ld [de], a                                       ; $5f55: $12
	ld d, $71                                        ; $5f56: $16 $71
	ld h, b                                          ; $5f58: $60
	ld a, [de]                                       ; $5f59: $1a
	ld bc, $1503                                     ; $5f5a: $01 $03 $15
	add hl, de                                       ; $5f5d: $19
	ld [hl], c                                       ; $5f5e: $71
	ld h, b                                          ; $5f5f: $60
	add e                                            ; $5f60: $83
	inc bc                                           ; $5f61: $03
	jr jr_00b_5f80                                   ; $5f62: $18 $1c

	ld [hl], c                                       ; $5f64: $71
	ld h, b                                          ; $5f65: $60
	inc e                                            ; $5f66: $1c
	inc bc                                           ; $5f67: $03
	ld [bc], a                                       ; $5f68: $02
	ld h, h                                          ; $5f69: $64
	ld h, l                                          ; $5f6a: $65
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00
	ld l, b                                          ; $5f6d: $68
	ld h, l                                          ; $5f6e: $65
	nop                                              ; $5f6f: $00
	ld bc, $6828                                     ; $5f70: $01 $28 $68
	adc e                                            ; $5f73: $8b
	ld bc, $67c4                                     ; $5f74: $01 $c4 $67
	dec e                                            ; $5f77: $1d
	inc bc                                           ; $5f78: $03
	ld bc, $67dc                                     ; $5f79: $01 $dc $67
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	ld h, h                                          ; $5f7e: $64
	ld h, l                                          ; $5f7f: $65

jr_00b_5f80:
	nop                                              ; $5f80: $00
	inc bc                                           ; $5f81: $03
	nop                                              ; $5f82: $00
	ld [de], a                                       ; $5f83: $12
	sbc e                                            ; $5f84: $9b
	ld h, b                                          ; $5f85: $60
	add l                                            ; $5f86: $85
	inc bc                                           ; $5f87: $03
	ld bc, $9b11                                     ; $5f88: $01 $11 $9b
	ld h, b                                          ; $5f8b: $60
	add a                                            ; $5f8c: $87
	inc bc                                           ; $5f8d: $03
	ld [bc], a                                       ; $5f8e: $02
	db $10                                           ; $5f8f: $10
	sbc e                                            ; $5f90: $9b
	ld h, b                                          ; $5f91: $60
	adc c                                            ; $5f92: $89
	inc bc                                           ; $5f93: $03
	dec b                                            ; $5f94: $05
	rrca                                             ; $5f95: $0f
	ld [hl], c                                       ; $5f96: $71
	ld h, b                                          ; $5f97: $60
	adc e                                            ; $5f98: $8b
	inc bc                                           ; $5f99: $03
	ld [$710e], sp                                   ; $5f9a: $08 $0e $71
	ld h, b                                          ; $5f9d: $60
	adc l                                            ; $5f9e: $8d
	inc bc                                           ; $5f9f: $03
	rlca                                             ; $5fa0: $07
	dec c                                            ; $5fa1: $0d
	or b                                             ; $5fa2: $b0
	ld h, b                                          ; $5fa3: $60
	adc a                                            ; $5fa4: $8f
	inc bc                                           ; $5fa5: $03
	ld b, $0c                                        ; $5fa6: $06 $0c
	or b                                             ; $5fa8: $b0
	ld h, b                                          ; $5fa9: $60
	ld e, $01                                        ; $5faa: $1e $01
	inc bc                                           ; $5fac: $03
	inc bc                                           ; $5fad: $03
	dec bc                                           ; $5fae: $0b
	add [hl]                                         ; $5faf: $86
	ld h, b                                          ; $5fb0: $60
	add e                                            ; $5fb1: $83
	inc bc                                           ; $5fb2: $03
	inc b                                            ; $5fb3: $04
	ld a, [bc]                                       ; $5fb4: $0a
	sbc e                                            ; $5fb5: $9b
	ld h, b                                          ; $5fb6: $60
	adc e                                            ; $5fb7: $8b
	inc bc                                           ; $5fb8: $03
	inc bc                                           ; $5fb9: $03
	nop                                              ; $5fba: $00
	sbc e                                            ; $5fbb: $9b
	ld h, b                                          ; $5fbc: $60
	adc l                                            ; $5fbd: $8d
	inc bc                                           ; $5fbe: $03
	inc b                                            ; $5fbf: $04
	nop                                              ; $5fc0: $00
	sbc e                                            ; $5fc1: $9b
	ld h, b                                          ; $5fc2: $60
	adc a                                            ; $5fc3: $8f
	inc bc                                           ; $5fc4: $03
	dec b                                            ; $5fc5: $05
	nop                                              ; $5fc6: $00
	sbc e                                            ; $5fc7: $9b
	ld h, b                                          ; $5fc8: $60
	rra                                              ; $5fc9: $1f
	ld bc, $0503                                     ; $5fca: $01 $03 $05
	ld bc, $60b0                                     ; $5fcd: $01 $b0 $60
	add e                                            ; $5fd0: $83
	inc bc                                           ; $5fd1: $03
	inc b                                            ; $5fd2: $04
	ld bc, $60b0                                     ; $5fd3: $01 $b0 $60
	add l                                            ; $5fd6: $85
	inc bc                                           ; $5fd7: $03
	inc bc                                           ; $5fd8: $03
	ld bc, $60b0                                     ; $5fd9: $01 $b0 $60
	adc c                                            ; $5fdc: $89
	inc bc                                           ; $5fdd: $03
	nop                                              ; $5fde: $00
	ld [$60c5], sp                                   ; $5fdf: $08 $c5 $60
	adc l                                            ; $5fe2: $8d
	inc bc                                           ; $5fe3: $03
	ld b, $08                                        ; $5fe4: $06 $08
	push bc                                          ; $5fe6: $c5
	ld h, b                                          ; $5fe7: $60
	jr nz, jr_00b_5feb                               ; $5fe8: $20 $01

	inc bc                                           ; $5fea: $03

jr_00b_5feb:
	ld [bc], a                                       ; $5feb: $02
	ld [$60c5], sp                                   ; $5fec: $08 $c5 $60
	add l                                            ; $5fef: $85
	inc bc                                           ; $5ff0: $03
	ld [$c508], sp                                   ; $5ff1: $08 $08 $c5
	ld h, b                                          ; $5ff4: $60
	adc e                                            ; $5ff5: $8b
	inc bc                                           ; $5ff6: $03
	rlca                                             ; $5ff7: $07
	add hl, bc                                       ; $5ff8: $09
	push bc                                          ; $5ff9: $c5
	ld h, b                                          ; $5ffa: $60
	adc a                                            ; $5ffb: $8f
	inc bc                                           ; $5ffc: $03
	ld bc, $c509                                     ; $5ffd: $01 $09 $c5
	ld h, b                                          ; $6000: $60
	ld hl, $010b                                     ; $6001: $21 $0b $01
	inc e                                            ; $6004: $1c
	ld l, b                                          ; $6005: $68
	adc l                                            ; $6006: $8d
	ld bc, $681c                                     ; $6007: $01 $1c $68
	adc a                                            ; $600a: $8f
	ld bc, $681c                                     ; $600b: $01 $1c $68
	ld [hl+], a                                      ; $600e: $22
	nop                                              ; $600f: $00
	ld bc, $681c                                     ; $6010: $01 $1c $68
	nop                                              ; $6013: $00
	nop                                              ; $6014: $00
	ld h, h                                          ; $6015: $64
	ld h, l                                          ; $6016: $65
	adc e                                            ; $6017: $8b
	ld bc, $681c                                     ; $6018: $01 $1c $68
	adc l                                            ; $601b: $8d
	ld bc, $681c                                     ; $601c: $01 $1c $68
	adc a                                            ; $601f: $8f
	ld bc, $681c                                     ; $6020: $01 $1c $68
	inc hl                                           ; $6023: $23
	nop                                              ; $6024: $00
	ld bc, $681c                                     ; $6025: $01 $1c $68
	nop                                              ; $6028: $00
	nop                                              ; $6029: $00
	ld h, h                                          ; $602a: $64
	ld h, l                                          ; $602b: $65
	adc e                                            ; $602c: $8b
	ld bc, $681c                                     ; $602d: $01 $1c $68
	adc l                                            ; $6030: $8d
	ld bc, $681c                                     ; $6031: $01 $1c $68
	adc a                                            ; $6034: $8f
	ld bc, $681c                                     ; $6035: $01 $1c $68
	inc h                                            ; $6038: $24
	nop                                              ; $6039: $00
	ld bc, $681c                                     ; $603a: $01 $1c $68
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	ld h, h                                          ; $603f: $64
	ld h, l                                          ; $6040: $65
	adc e                                            ; $6041: $8b
	ld bc, $681c                                     ; $6042: $01 $1c $68
	adc l                                            ; $6045: $8d
	ld bc, $681c                                     ; $6046: $01 $1c $68
	adc a                                            ; $6049: $8f
	ld bc, $681c                                     ; $604a: $01 $1c $68
	dec h                                            ; $604d: $25
	nop                                              ; $604e: $00
	ld bc, $681c                                     ; $604f: $01 $1c $68
	nop                                              ; $6052: $00
	nop                                              ; $6053: $00
	ld h, h                                          ; $6054: $64
	ld h, l                                          ; $6055: $65
	rst $38                                          ; $6056: $ff
	ld [hl], d                                       ; $6057: $72
	ld c, l                                          ; $6058: $4d
	ld a, e                                          ; $6059: $7b
	ld c, l                                          ; $605a: $4d
	add h                                            ; $605b: $84
	ld c, l                                          ; $605c: $4d
	sub h                                            ; $605d: $94
	ld c, l                                          ; $605e: $4d
	ld hl, $259c                                     ; $605f: $21 $9c $25
	sbc h                                            ; $6062: $9c
	add hl, hl                                       ; $6063: $29
	sbc h                                            ; $6064: $9c
	and c                                            ; $6065: $a1
	sbc h                                            ; $6066: $9c
	and l                                            ; $6067: $a5
	sbc h                                            ; $6068: $9c
	xor c                                            ; $6069: $a9
	sbc h                                            ; $606a: $9c
	ld hl, $259d                                     ; $606b: $21 $9d $25
	sbc l                                            ; $606e: $9d
	add hl, hl                                       ; $606f: $29
	sbc l                                            ; $6070: $9d
	nop                                              ; $6071: $00
	nop                                              ; $6072: $00
	inc b                                            ; $6073: $04
	ld bc, $2000                                     ; $6074: $01 $00 $20
	nop                                              ; $6077: $00
	inc b                                            ; $6078: $04
	ld bc, $4004                                     ; $6079: $01 $04 $40
	nop                                              ; $607c: $00
	inc b                                            ; $607d: $04
	ld bc, $6008                                     ; $607e: $01 $08 $60
	nop                                              ; $6081: $00
	inc b                                            ; $6082: $04
	ld bc, $ff0c                                     ; $6083: $01 $0c $ff
	ld h, b                                          ; $6086: $60
	nop                                              ; $6087: $00
	inc b                                            ; $6088: $04
	ld bc, $400c                                     ; $6089: $01 $0c $40
	nop                                              ; $608c: $00
	inc b                                            ; $608d: $04
	ld bc, $2008                                     ; $608e: $01 $08 $20
	nop                                              ; $6091: $00
	inc b                                            ; $6092: $04
	ld bc, $0004                                     ; $6093: $01 $04 $00
	nop                                              ; $6096: $00
	inc b                                            ; $6097: $04
	ld bc, $ff00                                     ; $6098: $01 $00 $ff
	nop                                              ; $609b: $00
	nop                                              ; $609c: $00
	inc b                                            ; $609d: $04
	jr nz, jr_00b_60a0                               ; $609e: $20 $00

jr_00b_60a0:
	ld bc, $0400                                     ; $60a0: $01 $00 $04
	jr nz, jr_00b_60a6                               ; $60a3: $20 $01

	ld [bc], a                                       ; $60a5: $02

jr_00b_60a6:
	nop                                              ; $60a6: $00
	inc b                                            ; $60a7: $04
	jr nz, jr_00b_60ac                               ; $60a8: $20 $02

	inc bc                                           ; $60aa: $03
	nop                                              ; $60ab: $00

jr_00b_60ac:
	inc b                                            ; $60ac: $04
	jr nz, jr_00b_60b2                               ; $60ad: $20 $03

	rst $38                                          ; $60af: $ff
	inc bc                                           ; $60b0: $03
	nop                                              ; $60b1: $00

jr_00b_60b2:
	inc b                                            ; $60b2: $04
	jr nz, jr_00b_60b8                               ; $60b3: $20 $03

	ld [bc], a                                       ; $60b5: $02
	nop                                              ; $60b6: $00
	inc b                                            ; $60b7: $04

jr_00b_60b8:
	jr nz, @+$04                                     ; $60b8: $20 $02

	ld bc, $0400                                     ; $60ba: $01 $00 $04
	jr nz, jr_00b_60c0                               ; $60bd: $20 $01

	nop                                              ; $60bf: $00

jr_00b_60c0:
	nop                                              ; $60c0: $00
	inc b                                            ; $60c1: $04
	jr nz, jr_00b_60c4                               ; $60c2: $20 $00

jr_00b_60c4:
	rst $38                                          ; $60c4: $ff
	nop                                              ; $60c5: $00
	nop                                              ; $60c6: $00
	inc b                                            ; $60c7: $04
	ld bc, $4000                                     ; $60c8: $01 $00 $40
	nop                                              ; $60cb: $00
	inc b                                            ; $60cc: $04
	ld bc, $2008                                     ; $60cd: $01 $08 $20
	nop                                              ; $60d0: $00
	inc b                                            ; $60d1: $04
	ld bc, $6004                                     ; $60d2: $01 $04 $60
	nop                                              ; $60d5: $00
	inc b                                            ; $60d6: $04
	ld bc, $ff0c                                     ; $60d7: $01 $0c $ff
	nop                                              ; $60da: $00
	nop                                              ; $60db: $00
	inc b                                            ; $60dc: $04
	jr nz, jr_00b_60df                               ; $60dd: $20 $00

jr_00b_60df:
	ld h, c                                          ; $60df: $61
	nop                                              ; $60e0: $00
	inc bc                                           ; $60e1: $03
	ld bc, $030d                                     ; $60e2: $01 $0d $03
	nop                                              ; $60e5: $00
	inc bc                                           ; $60e6: $03
	jr nz, jr_00b_60ec                               ; $60e7: $20 $03

	ld bc, $0200                                     ; $60e9: $01 $00 $02

jr_00b_60ec:
	ld bc, $2101                                     ; $60ec: $01 $01 $21
	nop                                              ; $60ef: $00
	ld [bc], a                                       ; $60f0: $02
	jr nz, jr_00b_60f8                               ; $60f1: $20 $05

	ld b, d                                          ; $60f3: $42
	nop                                              ; $60f4: $00
	ld bc, $0a01                                     ; $60f5: $01 $01 $0a

jr_00b_60f8:
	ld [hl+], a                                      ; $60f8: $22
	nop                                              ; $60f9: $00
	ld bc, $0620                                     ; $60fa: $01 $20 $06
	rst $38                                          ; $60fd: $ff
	nop                                              ; $60fe: $00
	nop                                              ; $60ff: $00
	inc b                                            ; $6100: $04
	ld hl, $2000                                     ; $6101: $21 $00 $20
	nop                                              ; $6104: $00
	inc bc                                           ; $6105: $03
	ld hl, $0104                                ; $6106: $21 $04 $01
	nop                                              ; $6109: $00
	inc bc                                           ; $610a: $03
	ld hl, $4001                                     ; $610b: $21 $01 $40
	nop                                              ; $610e: $00
	ld [bc], a                                       ; $610f: $02
	ld hl, $0208                                     ; $6110: $21 $08 $02
	nop                                              ; $6113: $00
	ld [bc], a                                       ; $6114: $02
	ld hl, $6002                                     ; $6115: $21 $02 $60
	nop                                              ; $6118: $00
	ld bc, $0c21                                     ; $6119: $01 $21 $0c
	inc bc                                           ; $611c: $03
	nop                                              ; $611d: $00
	ld bc, $0321                                     ; $611e: $01 $21 $03
	rst $38                                          ; $6121: $ff
	ld h, $61                                        ; $6122: $26 $61
	xor c                                            ; $6124: $a9
	ld h, c                                          ; $6125: $61
	nop                                              ; $6126: $00
	ld b, $55                                        ; $6127: $06 $55
	db $10                                           ; $6129: $10
	reti                                             ; $612a: $d9


	db $10                                           ; $612b: $10
	db $dd                                           ; $612c: $dd
	db $10                                           ; $612d: $10
	rlca                                             ; $612e: $07
	ld d, c                                          ; $612f: $51
	db $10                                           ; $6130: $10
	ld [$1055], sp                                   ; $6131: $08 $55 $10
	reti                                             ; $6134: $d9


	db $10                                           ; $6135: $10
	db $db                                           ; $6136: $db
	db $10                                           ; $6137: $10
	db $dd                                           ; $6138: $dd
	db $10                                           ; $6139: $10
	sbc $10                                          ; $613a: $de $10
	add hl, bc                                       ; $613c: $09
	ld d, c                                          ; $613d: $51
	db $10                                           ; $613e: $10
	ld a, [bc]                                       ; $613f: $0a
	ld d, e                                          ; $6140: $53
	db $10                                           ; $6141: $10
	push de                                          ; $6142: $d5
	db $10                                           ; $6143: $10
	sub $10                                          ; $6144: $d6 $10
	db $db                                           ; $6146: $db
	db $10                                           ; $6147: $10
	db $dd                                           ; $6148: $dd
	db $10                                           ; $6149: $10
	sbc $10                                          ; $614a: $de $10
	rst SubAFromDE                                          ; $614c: $df
	db $10                                           ; $614d: $10
	dec bc                                           ; $614e: $0b
	ld d, c                                          ; $614f: $51
	db $10                                           ; $6150: $10
	inc c                                            ; $6151: $0c
	ld d, e                                          ; $6152: $53
	db $10                                           ; $6153: $10
	call nc, $d610                                   ; $6154: $d4 $10 $d6
	db $10                                           ; $6157: $10
	rst SubAFromHL                                          ; $6158: $d7
	db $10                                           ; $6159: $10
	reti                                             ; $615a: $d9


	db $10                                           ; $615b: $10
	jp c, $dd10                                      ; $615c: $da $10 $dd

	db $10                                           ; $615f: $10
	dec c                                            ; $6160: $0d
	ld d, c                                          ; $6161: $51
	db $10                                           ; $6162: $10
	db $d3                                           ; $6163: $d3
	db $10                                           ; $6164: $10
	call nc, $d610                                   ; $6165: $d4 $10 $d6
	db $10                                           ; $6168: $10
	rst SubAFromHL                                          ; $6169: $d7
	db $10                                           ; $616a: $10
	reti                                             ; $616b: $d9


	db $10                                           ; $616c: $10
	jp c, $dd10                                      ; $616d: $da $10 $dd

	db $10                                           ; $6170: $10
	ld c, $51                                        ; $6171: $0e $51
	db $10                                           ; $6173: $10
	rrca                                             ; $6174: $0f
	ld d, e                                          ; $6175: $53
	db $10                                           ; $6176: $10
	call nc, $d510                                   ; $6177: $d4 $10 $d5
	db $10                                           ; $617a: $10
	sub $10                                          ; $617b: $d6 $10
	rst SubAFromHL                                          ; $617d: $d7
	db $10                                           ; $617e: $10
	reti                                             ; $617f: $d9


	db $10                                           ; $6180: $10
	jp c, $db10                                      ; $6181: $da $10 $db

	db $10                                           ; $6184: $10
	call c, $dd10                                    ; $6185: $dc $10 $dd
	db $10                                           ; $6188: $10
	sbc $10                                          ; $6189: $de $10
	rst SubAFromDE                                          ; $618b: $df
	db $10                                           ; $618c: $10
	db $10                                           ; $618d: $10
	ld d, c                                          ; $618e: $51
	db $10                                           ; $618f: $10
	ld de, $1055                                     ; $6190: $11 $55 $10
	rst SubAFromHL                                          ; $6193: $d7
	db $10                                           ; $6194: $10
	reti                                             ; $6195: $d9


	db $10                                           ; $6196: $10
	jp c, $db10                                      ; $6197: $da $10 $db

	db $10                                           ; $619a: $10
	call c, $de10                                    ; $619b: $dc $10 $de
	db $10                                           ; $619e: $10
	rst SubAFromDE                                          ; $619f: $df
	db $10                                           ; $61a0: $10
	ld [de], a                                       ; $61a1: $12
	ld d, b                                          ; $61a2: $50
	db $10                                           ; $61a3: $10
	pop de                                           ; $61a4: $d1
	db $10                                           ; $61a5: $10
	jp nc, $ff10                                     ; $61a6: $d2 $10 $ff

	nop                                              ; $61a9: $00
	ld b, $2b                                        ; $61aa: $06 $2b
	db $10                                           ; $61ac: $10
	adc h                                            ; $61ad: $8c
	db $10                                           ; $61ae: $10
	xor l                                            ; $61af: $ad
	db $10                                           ; $61b0: $10
	ld [$1057], sp                                   ; $61b1: $08 $57 $10
	db $db                                           ; $61b4: $db
	db $10                                           ; $61b5: $10
	call c, $ad10                                    ; $61b6: $dc $10 $ad
	db $10                                           ; $61b9: $10
	add hl, bc                                       ; $61ba: $09
	ld d, d                                          ; $61bb: $52
	db $10                                           ; $61bc: $10
	ld a, [bc]                                       ; $61bd: $0a
	ld d, a                                          ; $61be: $57
	db $10                                           ; $61bf: $10
	jp c, $de10                                      ; $61c0: $da $10 $de

	db $10                                           ; $61c3: $10
	dec bc                                           ; $61c4: $0b
	ld d, d                                          ; $61c5: $52
	db $10                                           ; $61c6: $10
	inc c                                            ; $61c7: $0c
	inc hl                                           ; $61c8: $23
	db $10                                           ; $61c9: $10
	and l                                            ; $61ca: $a5
	db $10                                           ; $61cb: $10
	sbc b                                            ; $61cc: $98
	db $10                                           ; $61cd: $10
	adc e                                            ; $61ce: $8b
	db $10                                           ; $61cf: $10
	sbc $10                                          ; $61d0: $de $10
	adc a                                            ; $61d2: $8f
	db $10                                           ; $61d3: $10
	ret c                                            ; $61d4: $d8

	db $10                                           ; $61d5: $10
	adc c                                            ; $61d6: $89
	db $10                                           ; $61d7: $10
	xor e                                            ; $61d8: $ab
	db $10                                           ; $61d9: $10
	adc h                                            ; $61da: $8c
	db $10                                           ; $61db: $10
	rrca                                             ; $61dc: $0f
	ld d, e                                          ; $61dd: $53
	db $10                                           ; $61de: $10
	add [hl]                                         ; $61df: $86
	db $10                                           ; $61e0: $10
	sbc e                                            ; $61e1: $9b
	db $10                                           ; $61e2: $10
	ld de, $1053                                     ; $61e3: $11 $53 $10
	ret c                                            ; $61e6: $d8

	db $10                                           ; $61e7: $10
	cp l                                             ; $61e8: $bd
	db $10                                           ; $61e9: $10
	rst SubAFromDE                                          ; $61ea: $df
	db $10                                           ; $61eb: $10
	call nc, $ff10                                   ; $61ec: $d4 $10 $ff
	ld a, [$c146]                                    ; $61ef: $fa $46 $c1
	call wJumpTable                                       ; $61f2: $cd $80 $cf
	rlca                                             ; $61f5: $07
	ld h, d                                          ; $61f6: $62
	db $eb                                           ; $61f7: $eb
	ld b, [hl]                                       ; $61f8: $46
	dec e                                            ; $61f9: $1d
	ld h, d                                          ; $61fa: $62
	ld c, h                                          ; $61fb: $4c
	ld h, d                                          ; $61fc: $62
	ld e, b                                          ; $61fd: $58
	ld h, d                                          ; $61fe: $62
	sbc a                                            ; $61ff: $9f
	ld h, d                                          ; $6200: $62
	db $fd                                           ; $6201: $fd
	ld b, [hl]                                       ; $6202: $46
	ld d, $47                                        ; $6203: $16 $47
	dec hl                                           ; $6205: $2b
	ld b, a                                          ; $6206: $47
	xor a                                            ; $6207: $af
	call $1e2e                                       ; $6208: $cd $2e $1e
	call $068e                                       ; $620b: $cd $8e $06
	ld a, $09                                        ; $620e: $3e $09
	ld [$c186], a                                    ; $6210: $ea $86 $c1
	ld a, $33                                        ; $6213: $3e $33
	call $1e27                                       ; $6215: $cd $27 $1e
	ld a, $03                                        ; $6218: $3e $03
	jp Jump_00b_46a1                                 ; $621a: $c3 $a1 $46


	ld a, [wButtonsPressed]                                    ; $621d: $fa $25 $c1
	and $90                                          ; $6220: $e6 $90
	ret z                                            ; $6222: $c8

	ld hl, $414f                                     ; $6223: $21 $4f $41
	ld bc, $6578                                     ; $6226: $01 $78 $65
	call Call_00b_45e9                               ; $6229: $cd $e9 $45
	ld a, $94                                        ; $622c: $3e $94
	ldh [hDisp0_BGP], a                                     ; $622e: $e0 $85
	call Call_00b_62d1                               ; $6230: $cd $d1 $62
	ld bc, $4193                                     ; $6233: $01 $93 $41
	call Call_00b_4608                               ; $6236: $cd $08 $46
	call $096e                                       ; $6239: $cd $6e $09
	ld a, $07                                        ; $623c: $3e $07
	call $068e                                       ; $623e: $cd $8e $06
	ld hl, $ff82                                     ; $6241: $21 $82 $ff
	res 2, [hl]                                      ; $6244: $cb $96
	ld bc, $67de                                     ; $6246: $01 $de $67
	jp $18b7                                         ; $6249: $c3 $b7 $18


	call Call_00b_62e0                               ; $624c: $cd $e0 $62
	call Call_00b_62fa                               ; $624f: $cd $fa $62
	call Call_00b_630a                               ; $6252: $cd $0a $63
	jp $2e21                                         ; $6255: $c3 $21 $2e


	xor a                                            ; $6258: $af
	call $068e                                       ; $6259: $cd $8e $06
	ld a, [$c188]                                    ; $625c: $fa $88 $c1
	dec a                                            ; $625f: $3d
	ld [$c188], a                                    ; $6260: $ea $88 $c1
	ret nz                                           ; $6263: $c0

	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $6264: $cd $ef $2d
	ld hl, $c158                                     ; $6267: $21 $58 $c1
	ld a, [hl+]                                      ; $626a: $2a
	or [hl]                                          ; $626b: $b6
	call Call_00b_46d9                               ; $626c: $cd $d9 $46
	ld bc, $41b0                                     ; $626f: $01 $b0 $41
	call Call_00b_4608                               ; $6272: $cd $08 $46
	ld hl, $c188                                     ; $6275: $21 $88 $c1
	inc [hl]                                         ; $6278: $34
	ld hl, $418c                                     ; $6279: $21 $8c $41
	call $0ab5                                       ; $627c: $cd $b5 $0a
	ld a, [wInitialA]                                    ; $627f: $fa $00 $c1
	cp $11                                           ; $6282: $fe $11
	ld hl, $dc80                                     ; $6284: $21 $80 $dc
	ld de, $1842                                     ; $6287: $11 $42 $18
	ld bc, $0e10                                     ; $628a: $01 $10 $0e
	call z, Call_00b_4765                            ; $628d: $cc $65 $47
	ld hl, $da80                                     ; $6290: $21 $80 $da
	ld de, $9842                                     ; $6293: $11 $42 $98
	ld bc, $0e10                                     ; $6296: $01 $10 $0e
	call Call_00b_4765                               ; $6299: $cd $65 $47
	jp Jump_00b_4614                                 ; $629c: $c3 $14 $46


	ld a, [$c188]                                    ; $629f: $fa $88 $c1
	dec a                                            ; $62a2: $3d
	ld [$c188], a                                    ; $62a3: $ea $88 $c1
	ret nz                                           ; $62a6: $c0

	ld a, [$c15a]                                    ; $62a7: $fa $5a $c1
	ld hl, $c15b                                     ; $62aa: $21 $5b $c1
	or [hl]                                          ; $62ad: $b6
	ld a, $13                                        ; $62ae: $3e $13
	call nz, $1e2e                                   ; $62b0: $c4 $2e $1e
	ld a, $14                                        ; $62b3: $3e $14
	ld [$c188], a                                    ; $62b5: $ea $88 $c1
	call $2e21                                       ; $62b8: $cd $21 $2e
	call Call_00b_6330                               ; $62bb: $cd $30 $63
	ld a, [$c153]                                    ; $62be: $fa $53 $c1
	bit 3, a                                         ; $62c1: $cb $5f
	ret z                                            ; $62c3: $c8

	ld a, [$c158]                                    ; $62c4: $fa $58 $c1
	ld hl, $c159                                     ; $62c7: $21 $59 $c1
	add [hl]                                         ; $62ca: $86
	ld [$c150], a                                    ; $62cb: $ea $50 $c1
	jp Jump_00b_4614                                 ; $62ce: $c3 $14 $46


Call_00b_62d1:
	xor a                                            ; $62d1: $af
	ld hl, $c153                                     ; $62d2: $21 $53 $c1
	ld [hl+], a                                      ; $62d5: $22
	ld [hl], $70                                     ; $62d6: $36 $70
	inc hl                                           ; $62d8: $23
	ld [hl], $80                                     ; $62d9: $36 $80
	inc hl                                           ; $62db: $23
	xor a                                            ; $62dc: $af
	jp $cbea                                         ; $62dd: $c3 $ea $cb


Call_00b_62e0:
	ld h, $c8                                        ; $62e0: $26 $c8
	ld l, $00                                        ; $62e2: $2e $00
	ld b, $05                                        ; $62e4: $06 $05

jr_00b_62e6:
	call Call_00b_62ed                               ; $62e6: $cd $ed $62
	dec b                                            ; $62e9: $05
	jr nz, jr_00b_62e6                               ; $62ea: $20 $fa

	ret                                              ; $62ec: $c9


Call_00b_62ed:
	inc h                                            ; $62ed: $24
	ld a, [hl]                                       ; $62ee: $7e
	or a                                             ; $62ef: $b7
	ret nz                                           ; $62f0: $c0

	call Call_000_1309                                       ; $62f1: $cd $09 $13
	and $07                                          ; $62f4: $e6 $07
	ret nz                                           ; $62f6: $c0

	ld [hl], $3e                                     ; $62f7: $36 $3e
	ret                                              ; $62f9: $c9


Call_00b_62fa:
	ld h, $ce                                        ; $62fa: $26 $ce
	ld l, $00                                        ; $62fc: $2e $00
	ld a, [hl]                                       ; $62fe: $7e
	or a                                             ; $62ff: $b7
	ret nz                                           ; $6300: $c0

	call Call_000_1309                                       ; $6301: $cd $09 $13
	and $1f                                          ; $6304: $e6 $1f
	ret nz                                           ; $6306: $c0

	ld [hl], $41                                     ; $6307: $36 $41
	ret                                              ; $6309: $c9


Call_00b_630a:
	ld a, [$c153]                                    ; $630a: $fa $53 $c1
	bit 5, a                                         ; $630d: $cb $6f
	jr nz, jr_00b_6324                               ; $630f: $20 $13

	ld a, [$c157]                                    ; $6311: $fa $57 $c1
	cp $50                                           ; $6314: $fe $50
	ret c                                            ; $6316: $d8

	ld a, [$c153]                                    ; $6317: $fa $53 $c1
	set 5, a                                         ; $631a: $cb $ef
	ld [$c153], a                                    ; $631c: $ea $53 $c1
	ld a, $80                                        ; $631f: $3e $80
	ld [$c188], a                                    ; $6321: $ea $88 $c1

jr_00b_6324:
	ld hl, $c188                                     ; $6324: $21 $88 $c1
	dec [hl]                                         ; $6327: $35
	ret nz                                           ; $6328: $c0

	ld [hl], $14                                     ; $6329: $36 $14
	ld hl, $c146                                     ; $632b: $21 $46 $c1
	inc [hl]                                         ; $632e: $34
	ret                                              ; $632f: $c9


Call_00b_6330:
	ld hl, $c153                                     ; $6330: $21 $53 $c1
	set 3, [hl]                                      ; $6333: $cb $de
	ld a, [$c158]                                    ; $6335: $fa $58 $c1
	ld b, a                                          ; $6338: $47
	ld a, [$c15a]                                    ; $6339: $fa $5a $c1
	cp b                                             ; $633c: $b8
	jr z, jr_00b_6345                                ; $633d: $28 $06

	inc a                                            ; $633f: $3c
	ld [$c15a], a                                    ; $6340: $ea $5a $c1
	res 3, [hl]                                      ; $6343: $cb $9e

jr_00b_6345:
	ld a, [$c159]                                    ; $6345: $fa $59 $c1
	ld b, a                                          ; $6348: $47
	ld a, [$c15b]                                    ; $6349: $fa $5b $c1
	cp b                                             ; $634c: $b8
	ret z                                            ; $634d: $c8

	inc a                                            ; $634e: $3c
	ld [$c15b], a                                    ; $634f: $ea $5b $c1
	res 3, [hl]                                      ; $6352: $cb $9e
	ret                                              ; $6354: $c9


	rst JumpTable                                          ; $6355: $c7
	ld e, h                                          ; $6356: $5c
	ld h, e                                          ; $6357: $63
	ld l, e                                          ; $6358: $6b
	ld h, e                                          ; $6359: $63
	push de                                          ; $635a: $d5
	ld h, e                                          ; $635b: $63
	inc [hl]                                         ; $635c: $34
	ld bc, $d5f3                                     ; $635d: $01 $f3 $d5
	ld a, [$c155]                                    ; $6360: $fa $55 $c1
	ld d, a                                          ; $6363: $57
	ld a, [$c154]                                    ; $6364: $fa $54 $c1
	ld e, a                                          ; $6367: $5f
	jp $3bef                                         ; $6368: $c3 $ef $3b


	ld a, [$c153]                                    ; $636b: $fa $53 $c1
	and $bf                                          ; $636e: $e6 $bf
	ld [$c153], a                                    ; $6370: $ea $53 $c1
	bit 4, a                                         ; $6373: $cb $67
	ret nz                                           ; $6375: $c0

	bit 5, a                                         ; $6376: $cb $6f
	jr z, jr_00b_6382                                ; $6378: $28 $08

	ld l, $0a                                        ; $637a: $2e $0a
	inc [hl]                                         ; $637c: $34
	ld a, $30                                        ; $637d: $3e $30
	jp $1e2e                                         ; $637f: $c3 $2e $1e


Jump_00b_6382:
jr_00b_6382:
	bit 7, a                                         ; $6382: $cb $7f
	jr z, jr_00b_63a3                                ; $6384: $28 $1d

	ld bc, $000a                                     ; $6386: $01 $0a $00
	call Call_00b_6829                               ; $6389: $cd $29 $68
	ld a, [wButtonsHeld]                                    ; $638c: $fa $23 $c1
	and $10                                          ; $638f: $e6 $10
	jr nz, jr_00b_63bc                               ; $6391: $20 $29

	ld a, [$c153]                                    ; $6393: $fa $53 $c1
	and $3f                                          ; $6396: $e6 $3f
	or $40                                           ; $6398: $f6 $40
	ld [$c153], a                                    ; $639a: $ea $53 $c1
	ld l, $01                                        ; $639d: $2e $01
	res 7, [hl]                                      ; $639f: $cb $be
	jr jr_00b_63bc                                   ; $63a1: $18 $19

jr_00b_63a3:
	ld a, [wButtonsHeld]                                    ; $63a3: $fa $23 $c1
	and $10                                          ; $63a6: $e6 $10
	jr z, jr_00b_63bc                                ; $63a8: $28 $12

	ld bc, $0200                                     ; $63aa: $01 $00 $02
	call Call_00b_6829                               ; $63ad: $cd $29 $68
	ld a, [$c153]                                    ; $63b0: $fa $53 $c1
	or $c0                                           ; $63b3: $f6 $c0
	ld [$c153], a                                    ; $63b5: $ea $53 $c1
	ld l, $01                                        ; $63b8: $2e $01
	set 7, [hl]                                      ; $63ba: $cb $fe

jr_00b_63bc:
	ld a, [wButtonsHeld]                                    ; $63bc: $fa $23 $c1
	rst FarCall                                          ; $63bf: $f7
	rst GetHLinHL                                          ; $63c0: $cf
	ld e, e                                          ; $63c1: $5b
	inc c                                            ; $63c2: $0c
	ret c                                            ; $63c3: $d8

	ld c, $06                                        ; $63c4: $0e $06
	call $3e10                                       ; $63c6: $cd $10 $3e
	call $3e15                                       ; $63c9: $cd $15 $3e
	call $3d1b                                       ; $63cc: $cd $1b $3d
	call Call_00b_675b                               ; $63cf: $cd $5b $67
	jp Jump_00b_674e                                 ; $63d2: $c3 $4e $67


	ld a, [$c153]                                    ; $63d5: $fa $53 $c1
	and $bf                                          ; $63d8: $e6 $bf
	ld [$c153], a                                    ; $63da: $ea $53 $c1
	ld bc, $d61f                                     ; $63dd: $01 $1f $d6
	call $3d3d                                       ; $63e0: $cd $3d $3d
	ld a, [$c153]                                    ; $63e3: $fa $53 $c1
	jp Jump_00b_6382                                 ; $63e6: $c3 $82 $63


	ret                                              ; $63e9: $c9


	ld bc, $d64b                                     ; $63ea: $01 $4b $d6
	ld a, [$c153]                                    ; $63ed: $fa $53 $c1
	bit 5, a                                         ; $63f0: $cb $6f
	jr z, jr_00b_63f7                                ; $63f2: $28 $03

	ld bc, $d677                                     ; $63f4: $01 $77 $d6

jr_00b_63f7:
	ld a, [$c155]                                    ; $63f7: $fa $55 $c1
	ld d, a                                          ; $63fa: $57
	ld a, [$c154]                                    ; $63fb: $fa $54 $c1
	ld e, a                                          ; $63fe: $5f
	call $3bef                                       ; $63ff: $cd $ef $3b
	ld a, [$c153]                                    ; $6402: $fa $53 $c1
	cpl                                              ; $6405: $2f
	and $80                                          ; $6406: $e6 $80
	ld l, $01                                        ; $6408: $2e $01
	ld b, [hl]                                       ; $640a: $46
	res 7, b                                         ; $640b: $cb $b8
	or b                                             ; $640d: $b0
	ld [hl], a                                       ; $640e: $77
	ret                                              ; $640f: $c9


	rst JumpTable                                          ; $6410: $c7
	dec e                                            ; $6411: $1d
	ld h, h                                          ; $6412: $64
	ld a, [hl+]                                      ; $6413: $2a
	ld h, h                                          ; $6414: $64
	add d                                            ; $6415: $82
	ld h, h                                          ; $6416: $64
	and b                                            ; $6417: $a0
	ld h, h                                          ; $6418: $64
	call c, $0f64                                    ; $6419: $dc $64 $0f
	ld h, l                                          ; $641c: $65
	inc [hl]                                         ; $641d: $34
	call Call_00b_66da                               ; $641e: $cd $da $66
	ld bc, $41d9                                     ; $6421: $01 $d9 $41
	call Call_00b_671d                               ; $6424: $cd $1d $67
	jp Jump_00b_666e                                 ; $6427: $c3 $6e $66


	call Call_00b_67e2                               ; $642a: $cd $e2 $67
	call Call_00b_67c3                               ; $642d: $cd $c3 $67
	jr nc, jr_00b_643d                               ; $6430: $30 $0b

	or a                                             ; $6432: $b7
	jr nz, jr_00b_645e                               ; $6433: $20 $29

	ld bc, $1000                                     ; $6435: $01 $00 $10
	call Call_00b_6829                               ; $6438: $cd $29 $68
	jr jr_00b_645e                                   ; $643b: $18 $21

jr_00b_643d:
	ld l, $33                                        ; $643d: $2e $33
	bit 3, [hl]                                      ; $643f: $cb $5e
	jr nz, jr_00b_644a                               ; $6441: $20 $07

	call Call_00b_67ab                               ; $6443: $cd $ab $67
	ld l, $0a                                        ; $6446: $2e $0a
	jr c, jr_00b_6476                                ; $6448: $38 $2c

jr_00b_644a:
	ld l, $30                                        ; $644a: $2e $30
	dec [hl]                                         ; $644c: $35
	ld a, [hl]                                       ; $644d: $7e
	or a                                             ; $644e: $b7
	jr nz, jr_00b_6479                               ; $644f: $20 $28

	ld l, $33                                        ; $6451: $2e $33
	res 3, [hl]                                      ; $6453: $cb $9e
	ld a, [hl]                                       ; $6455: $7e
	ld l, $0a                                        ; $6456: $2e $0a
	and $43                                          ; $6458: $e6 $43
	jr z, jr_00b_6478                                ; $645a: $28 $1c

	jr jr_00b_6477                                   ; $645c: $18 $19

jr_00b_645e:
	ld a, [$c153]                                    ; $645e: $fa $53 $c1
	or $10                                           ; $6461: $f6 $10
	ld [$c153], a                                    ; $6463: $ea $53 $c1
	ld l, $33                                        ; $6466: $2e $33
	set 4, [hl]                                      ; $6468: $cb $e6
	ld l, $0b                                        ; $646a: $2e $0b
	ld [hl], $28                                     ; $646c: $36 $28
	ld a, $2b                                        ; $646e: $3e $2b
	call $1e2e                                       ; $6470: $cd $2e $1e
	ld l, $0a                                        ; $6473: $2e $0a
	inc [hl]                                         ; $6475: $34

jr_00b_6476:
	inc [hl]                                         ; $6476: $34

jr_00b_6477:
	inc [hl]                                         ; $6477: $34

jr_00b_6478:
	inc [hl]                                         ; $6478: $34

jr_00b_6479:
	call $3d1b                                       ; $6479: $cd $1b $3d
	call Call_00b_677c                               ; $647c: $cd $7c $67
	jp $16d0                                         ; $647f: $c3 $d0 $16


	ld bc, $0c04                                     ; $6482: $01 $04 $0c
	call Call_00b_66f8                               ; $6485: $cd $f8 $66
	ld c, $08                                        ; $6488: $0e $08
	call Call_00b_6665                               ; $648a: $cd $65 $66
	ld bc, $41d9                                     ; $648d: $01 $d9 $41
	call Call_00b_671d                               ; $6490: $cd $1d $67
	call $3d1b                                       ; $6493: $cd $1b $3d
	ld l, $0a                                        ; $6496: $2e $0a
	dec [hl]                                         ; $6498: $35
	ld l, $33                                        ; $6499: $2e $33
	set 6, [hl]                                      ; $649b: $cb $f6
	jp $16d0                                         ; $649d: $c3 $d0 $16


	ld l, $33                                        ; $64a0: $2e $33
	bit 6, [hl]                                      ; $64a2: $cb $76
	jr nz, jr_00b_64b0                               ; $64a4: $20 $0a

	inc [hl]                                         ; $64a6: $34
	ld a, [hl]                                       ; $64a7: $7e
	and $03                                          ; $64a8: $e6 $03
	cp $04                                           ; $64aa: $fe $04
	jr z, jr_00b_64d6                                ; $64ac: $28 $28

	jr jr_00b_64bb                                   ; $64ae: $18 $0b

jr_00b_64b0:
	ld a, [hl]                                       ; $64b0: $7e
	and $7f                                          ; $64b1: $e6 $7f
	ld b, a                                          ; $64b3: $47
	call Call_000_1309                                       ; $64b4: $cd $09 $13
	and $80                                          ; $64b7: $e6 $80
	or b                                             ; $64b9: $b0
	ld [hl], a                                       ; $64ba: $77

jr_00b_64bb:
	ld bc, $0c04                                     ; $64bb: $01 $04 $0c
	call Call_00b_66f8                               ; $64be: $cd $f8 $66
	ld c, $08                                        ; $64c1: $0e $08
	call Call_00b_6665                               ; $64c3: $cd $65 $66
	ld bc, $41d9                                     ; $64c6: $01 $d9 $41
	call Call_00b_671d                               ; $64c9: $cd $1d $67
	call $3d1b                                       ; $64cc: $cd $1b $3d
	ld l, $0a                                        ; $64cf: $2e $0a
	dec [hl]                                         ; $64d1: $35
	dec [hl]                                         ; $64d2: $35
	jp $16d0                                         ; $64d3: $c3 $d0 $16


jr_00b_64d6:
	ld a, [hl]                                       ; $64d6: $7e
	and $bc                                          ; $64d7: $e6 $bc
	ld [hl], a                                       ; $64d9: $77
	jr jr_00b_64bb                                   ; $64da: $18 $df

	call $3d01                                       ; $64dc: $cd $01 $3d
	ld a, [$c155]                                    ; $64df: $fa $55 $c1
	ld b, a                                          ; $64e2: $47
	ld a, [$c154]                                    ; $64e3: $fa $54 $c1
	ld c, a                                          ; $64e6: $4f
	call $3e0b                                       ; $64e7: $cd $0b $3e
	ld l, $31                                        ; $64ea: $2e $31
	ld [hl], a                                       ; $64ec: $77
	call Call_00b_6796                               ; $64ed: $cd $96 $67
	ld c, $07                                        ; $64f0: $0e $07
	call Call_00b_6665                               ; $64f2: $cd $65 $66
	ld bc, $41d9                                     ; $64f5: $01 $d9 $41
	call Call_00b_671d                               ; $64f8: $cd $1d $67
	call $3d1b                                       ; $64fb: $cd $1b $3d
	ld a, $fd                                        ; $64fe: $3e $fd
	call $3d43                                       ; $6500: $cd $43 $3d
	ld a, $10                                        ; $6503: $3e $10
	ld l, $30                                        ; $6505: $2e $30
	ld [hl], a                                       ; $6507: $77
	ld l, $33                                        ; $6508: $2e $33
	set 3, [hl]                                      ; $650a: $cb $de
	jp $16d0                                         ; $650c: $c3 $d0 $16


	ld l, $01                                        ; $650f: $2e $01
	set 7, [hl]                                      ; $6511: $cb $fe
	ld l, $0b                                        ; $6513: $2e $0b
	ld a, [hl]                                       ; $6515: $7e
	or a                                             ; $6516: $b7
	ret nz                                           ; $6517: $c0

	ld a, [$c153]                                    ; $6518: $fa $53 $c1
	and $ef                                          ; $651b: $e6 $ef
	ld [$c153], a                                    ; $651d: $ea $53 $c1
	bit 5, a                                         ; $6520: $cb $6f
	jr z, jr_00b_6536                                ; $6522: $28 $12

	ld l, $33                                        ; $6524: $2e $33
	res 4, [hl]                                      ; $6526: $cb $a6
	ld l, $01                                        ; $6528: $2e $01
	res 7, [hl]                                      ; $652a: $cb $be
	ld a, $30                                        ; $652c: $3e $30
	call $1e2e                                       ; $652e: $cd $2e $1e
	ld a, $fc                                        ; $6531: $3e $fc
	jp $3d43                                         ; $6533: $c3 $43 $3d


jr_00b_6536:
	ld a, h                                          ; $6536: $7c
	cp $ce                                           ; $6537: $fe $ce
	jr nz, jr_00b_6545                               ; $6539: $20 $0a

	ld a, [$c159]                                    ; $653b: $fa $59 $c1
	inc a                                            ; $653e: $3c
	ld [$c159], a                                    ; $653f: $ea $59 $c1
	jp $2dfc                                         ; $6542: $c3 $fc $2d


jr_00b_6545:
	ld a, [$c158]                                    ; $6545: $fa $58 $c1
	inc a                                            ; $6548: $3c
	ld [$c158], a                                    ; $6549: $ea $58 $c1
	jp $2dfc                                         ; $654c: $c3 $fc $2d


	rst JumpTable                                          ; $654f: $c7
	ld e, h                                          ; $6550: $5c
	ld h, l                                          ; $6551: $65
	ld a, [hl+]                                      ; $6552: $2a
	ld h, h                                          ; $6553: $64
	add d                                            ; $6554: $82
	ld h, h                                          ; $6555: $64
	and b                                            ; $6556: $a0
	ld h, h                                          ; $6557: $64
	call c, $0f64                                    ; $6558: $dc $64 $0f
	ld h, l                                          ; $655b: $65
	inc [hl]                                         ; $655c: $34
	call Call_00b_66da                               ; $655d: $cd $da $66
	call Call_00b_6682                               ; $6560: $cd $82 $66
	call $3bf4                                       ; $6563: $cd $f4 $3b
	ld l, $32                                        ; $6566: $2e $32
	ld a, $ff                                        ; $6568: $3e $ff
	ld [hl], a                                       ; $656a: $77
	ld bc, $41d9                                     ; $656b: $01 $d9 $41
	jp Jump_00b_671d                                 ; $656e: $c3 $1d $67


	rst JumpTable                                          ; $6571: $c7
	halt                                             ; $6572: $76
	ld h, l                                          ; $6573: $65
	add a                                            ; $6574: $87
	ld h, l                                          ; $6575: $65
	inc [hl]                                         ; $6576: $34
	ld a, h                                          ; $6577: $7c
	cp $c7                                           ; $6578: $fe $c7
	ld a, $01                                        ; $657a: $3e $01
	jr z, jr_00b_6584                                ; $657c: $28 $06

	ld a, $03                                        ; $657e: $3e $03
	call Call_000_12fc                                       ; $6580: $cd $fc $12
	inc a                                            ; $6583: $3c

jr_00b_6584:
	ld l, $33                                        ; $6584: $2e $33
	ld [hl], a                                       ; $6586: $77
	ld a, h                                          ; $6587: $7c
	add $07                                          ; $6588: $c6 $07
	ld d, a                                          ; $658a: $57
	ld l, $09                                        ; $658b: $2e $09
	ld c, $08                                        ; $658d: $0e $08

jr_00b_658f:
	ld e, l                                          ; $658f: $5d
	ld a, [de]                                       ; $6590: $1a
	ld [hl-], a                                      ; $6591: $32
	dec c                                            ; $6592: $0d
	jr nz, jr_00b_658f                               ; $6593: $20 $fa

	ld l, $33                                        ; $6595: $2e $33
	ld b, [hl]                                       ; $6597: $46
	ld l, $03                                        ; $6598: $2e $03
	ld a, [hl]                                       ; $659a: $7e
	and $f8                                          ; $659b: $e6 $f8
	or b                                             ; $659d: $b0
	set 4, a                                         ; $659e: $cb $e7
	ld [hl], a                                       ; $65a0: $77
	ld l, $01                                        ; $65a1: $2e $01
	ld e, $33                                        ; $65a3: $1e $33
	ld a, [de]                                       ; $65a5: $1a
	bit 4, a                                         ; $65a6: $cb $67
	jr z, jr_00b_65ad                                ; $65a8: $28 $03

	res 7, [hl]                                      ; $65aa: $cb $be
	ret                                              ; $65ac: $c9


jr_00b_65ad:
	set 7, [hl]                                      ; $65ad: $cb $fe
	ret                                              ; $65af: $c9


	rst JumpTable                                          ; $65b0: $c7
	cp l                                             ; $65b1: $bd
	ld h, l                                          ; $65b2: $65
	call nc, $0065                                   ; $65b3: $d4 $65 $00
	nop                                              ; $65b6: $00
	nop                                              ; $65b7: $00
	nop                                              ; $65b8: $00
	nop                                              ; $65b9: $00
	nop                                              ; $65ba: $00
	rrca                                             ; $65bb: $0f
	ld h, l                                          ; $65bc: $65
	inc [hl]                                         ; $65bd: $34
	call Call_000_1309                                       ; $65be: $cd $09 $13
	and $1f                                          ; $65c1: $e6 $1f
	ld l, $31                                        ; $65c3: $2e $31
	ld [hl], a                                       ; $65c5: $77
	ld bc, $41df                                     ; $65c6: $01 $df $41
	call Call_00b_671d                               ; $65c9: $cd $1d $67
	call Call_00b_666e                               ; $65cc: $cd $6e $66
	ld c, $09                                        ; $65cf: $0e $09
	jp Jump_00b_6665                                 ; $65d1: $c3 $65 $66


	call Call_00b_67e2                               ; $65d4: $cd $e2 $67
	call Call_00b_67c3                               ; $65d7: $cd $c3 $67
	jr nc, jr_00b_65ff                               ; $65da: $30 $23

	or a                                             ; $65dc: $b7
	jr nz, jr_00b_65e5                               ; $65dd: $20 $06

	ld bc, $5000                                     ; $65df: $01 $00 $50
	call Call_00b_6829                               ; $65e2: $cd $29 $68

jr_00b_65e5:
	ld a, [$c153]                                    ; $65e5: $fa $53 $c1
	or $10                                           ; $65e8: $f6 $10
	ld [$c153], a                                    ; $65ea: $ea $53 $c1
	ld l, $33                                        ; $65ed: $2e $33
	set 4, [hl]                                      ; $65ef: $cb $e6
	ld l, $0b                                        ; $65f1: $2e $0b
	ld [hl], $28                                     ; $65f3: $36 $28
	ld a, $2b                                        ; $65f5: $3e $2b
	call $1e2e                                       ; $65f7: $cd $2e $1e
	ld a, $04                                        ; $65fa: $3e $04
	call $3d43                                       ; $65fc: $cd $43 $3d

jr_00b_65ff:
	call $3d1b                                       ; $65ff: $cd $1b $3d
	call Call_00b_677c                               ; $6602: $cd $7c $67
	jp $16d0                                         ; $6605: $c3 $d0 $16


	rst JumpTable                                          ; $6608: $c7
	dec d                                            ; $6609: $15
	ld h, [hl]                                       ; $660a: $66
	call nc, $0065                                   ; $660b: $d4 $65 $00
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	nop                                              ; $6610: $00
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	rrca                                             ; $6613: $0f
	ld h, l                                          ; $6614: $65
	inc [hl]                                         ; $6615: $34
	call Call_00b_6682                               ; $6616: $cd $82 $66
	call $3bf4                                       ; $6619: $cd $f4 $3b
	ld l, $32                                        ; $661c: $2e $32
	ld a, $ff                                        ; $661e: $3e $ff
	ld [hl], a                                       ; $6620: $77
	ld bc, $41df                                     ; $6621: $01 $df $41
	call Call_00b_671d                               ; $6624: $cd $1d $67
	ld c, $09                                        ; $6627: $0e $09
	jp Jump_00b_6665                                 ; $6629: $c3 $65 $66


	ld a, h                                          ; $662c: $7c
	sub $c2                                          ; $662d: $d6 $c2
	push hl                                          ; $662f: $e5
	ld hl, $41e5                                     ; $6630: $21 $e5 $41
	call $cf95                                       ; $6633: $cd $95 $cf
	pop hl                                           ; $6636: $e1
	call $3bf4                                       ; $6637: $cd $f4 $3b
	bit 1, h                                         ; $663a: $cb $4c
	ld a, [$c15a]                                    ; $663c: $fa $5a $c1
	jr nz, jr_00b_6644                               ; $663f: $20 $03

	ld a, [$c15b]                                    ; $6641: $fa $5b $c1

jr_00b_6644:
	ld b, $0a                                        ; $6644: $06 $0a
	call $12b5                                       ; $6646: $cd $b5 $12
	bit 0, h                                         ; $6649: $cb $44
	jr nz, jr_00b_6655                               ; $664b: $20 $08

	or a                                             ; $664d: $b7
	jr nz, jr_00b_6656                               ; $664e: $20 $06

	ld l, $01                                        ; $6650: $2e $01
	set 7, [hl]                                      ; $6652: $cb $fe
	ret                                              ; $6654: $c9


jr_00b_6655:
	ld a, b                                          ; $6655: $78

jr_00b_6656:
	ld l, $01                                        ; $6656: $2e $01
	res 7, [hl]                                      ; $6658: $cb $be
	push hl                                          ; $665a: $e5
	ld hl, $41ed                                     ; $665b: $21 $ed $41
	call $cfa0                                       ; $665e: $cd $a0 $cf
	pop hl                                           ; $6661: $e1
	jp $3d3d                                         ; $6662: $c3 $3d $3d


Call_00b_6665:
Jump_00b_6665:
	ld l, $31                                        ; $6665: $2e $31
	ld a, [hl]                                       ; $6667: $7e
	call $3e10                                       ; $6668: $cd $10 $3e
	jp $3e15                                         ; $666b: $c3 $15 $3e


Call_00b_666e:
Jump_00b_666e:
	ld a, $a0                                        ; $666e: $3e $a0
	call Call_000_12fc                                       ; $6670: $cd $fc $12
	ld d, a                                          ; $6673: $57
	ld a, $90                                        ; $6674: $3e $90
	call Call_000_12fc                                       ; $6676: $cd $fc $12
	ld e, a                                          ; $6679: $5f
	ld l, $32                                        ; $667a: $2e $32
	ld a, $ff                                        ; $667c: $3e $ff
	ld [hl], a                                       ; $667e: $77
	jp $3bf4                                         ; $667f: $c3 $f4 $3b


Call_00b_6682:
	call Call_000_1309                                       ; $6682: $cd $09 $13
	and $80                                          ; $6685: $e6 $80
	jr z, jr_00b_66a9                                ; $6687: $28 $20

	ld a, $a0                                        ; $6689: $3e $a0
	call Call_000_12fc                                       ; $668b: $cd $fc $12
	ld l, $07                                        ; $668e: $2e $07
	ld [hl], a                                       ; $6690: $77
	call Call_000_1309                                       ; $6691: $cd $09 $13
	and $80                                          ; $6694: $e6 $80
	ld l, $05                                        ; $6696: $2e $05
	jr z, jr_00b_66a3                                ; $6698: $28 $09

	ld a, $f8                                        ; $669a: $3e $f8
	ld [hl], a                                       ; $669c: $77
	call Call_00b_66c9                               ; $669d: $cd $c9 $66
	jp Jump_00b_67fa                                 ; $66a0: $c3 $fa $67


jr_00b_66a3:
	ld a, $98                                        ; $66a3: $3e $98
	ld [hl], a                                       ; $66a5: $77
	jp Jump_00b_66c9                                 ; $66a6: $c3 $c9 $66


jr_00b_66a9:
	ld a, $90                                        ; $66a9: $3e $90
	call Call_000_12fc                                       ; $66ab: $cd $fc $12
	ld l, $05                                        ; $66ae: $2e $05
	ld [hl], a                                       ; $66b0: $77
	call Call_000_1309                                       ; $66b1: $cd $09 $13
	and $80                                          ; $66b4: $e6 $80
	ld l, $07                                        ; $66b6: $2e $07
	jr z, jr_00b_66c3                                ; $66b8: $28 $09

	ld a, $f8                                        ; $66ba: $3e $f8
	ld [hl], a                                       ; $66bc: $77
	call Call_00b_66c9                               ; $66bd: $cd $c9 $66
	jp Jump_00b_67fa                                 ; $66c0: $c3 $fa $67


jr_00b_66c3:
	ld a, $a8                                        ; $66c3: $3e $a8
	ld [hl], a                                       ; $66c5: $77
	jp Jump_00b_66c9                                 ; $66c6: $c3 $c9 $66


Call_00b_66c9:
Jump_00b_66c9:
	call $3d01                                       ; $66c9: $cd $01 $3d
	ld bc, $5045                                     ; $66cc: $01 $45 $50
	call $3e0b                                       ; $66cf: $cd $0b $3e
	ld l, $31                                        ; $66d2: $2e $31
	ld [hl], a                                       ; $66d4: $77
	ld a, $03                                        ; $66d5: $3e $03
	jp Jump_00b_6803                                 ; $66d7: $c3 $03 $68


Call_00b_66da:
	call Call_000_1309                                       ; $66da: $cd $09 $13
	and $1f                                          ; $66dd: $e6 $1f
	ld l, $31                                        ; $66df: $2e $31
	ld [hl], a                                       ; $66e1: $77
	ld a, $01                                        ; $66e2: $3e $01
	ld l, $30                                        ; $66e4: $2e $30
	ld [hl], a                                       ; $66e6: $77
	call Call_000_1309                                       ; $66e7: $cd $09 $13
	and $80                                          ; $66ea: $e6 $80
	ld l, $33                                        ; $66ec: $2e $33
	ld [hl], a                                       ; $66ee: $77
	call Call_000_1309                                       ; $66ef: $cd $09 $13
	cp $c0                                           ; $66f2: $fe $c0
	ret nc                                           ; $66f4: $d0

	set 5, [hl]                                      ; $66f5: $cb $ee
	ret                                              ; $66f7: $c9


Call_00b_66f8:
	ld l, $33                                        ; $66f8: $2e $33
	bit 7, [hl]                                      ; $66fa: $cb $7e
	jr nz, jr_00b_670a                               ; $66fc: $20 $0c

	call Call_000_1309                                       ; $66fe: $cd $09 $13
	and $03                                          ; $6701: $e6 $03
	ld d, a                                          ; $6703: $57
	ld l, $31                                        ; $6704: $2e $31
	ld a, [hl]                                       ; $6706: $7e
	sub d                                            ; $6707: $92
	jr jr_00b_6713                                   ; $6708: $18 $09

jr_00b_670a:
	call Call_000_1309                                       ; $670a: $cd $09 $13
	and $03                                          ; $670d: $e6 $03
	ld l, $31                                        ; $670f: $2e $31
	ld d, [hl]                                       ; $6711: $56
	add d                                            ; $6712: $82

jr_00b_6713:
	and $1f                                          ; $6713: $e6 $1f
	ld [hl], a                                       ; $6715: $77
	call Call_00b_47e8                               ; $6716: $cd $e8 $47
	ld l, $30                                        ; $6719: $2e $30
	ld [hl], a                                       ; $671b: $77
	ret                                              ; $671c: $c9


Call_00b_671d:
Jump_00b_671d:
	ld l, $31                                        ; $671d: $2e $31
	ld a, [hl]                                       ; $671f: $7e
	ld de, $41b9                                     ; $6720: $11 $b9 $41
	call $1327                                       ; $6723: $cd $27 $13
	ld a, [de]                                       ; $6726: $1a
	ld l, $32                                        ; $6727: $2e $32
	ld d, [hl]                                       ; $6729: $56
	cp d                                             ; $672a: $ba
	ret z                                            ; $672b: $c8

	ld [hl], a                                       ; $672c: $77
	and $0f                                          ; $672d: $e6 $0f
	push hl                                          ; $672f: $e5
	call wSwapBCandHL                                       ; $6730: $cd $d9 $ce
	call $cfa0                                       ; $6733: $cd $a0 $cf
	pop hl                                           ; $6736: $e1
	ld l, $31                                        ; $6737: $2e $31
	ld a, [hl]                                       ; $6739: $7e
	ld de, $41b9                                     ; $673a: $11 $b9 $41
	call $1327                                       ; $673d: $cd $27 $13
	ld a, [de]                                       ; $6740: $1a
	and $f0                                          ; $6741: $e6 $f0
	ld d, a                                          ; $6743: $57
	ld l, $10                                        ; $6744: $2e $10
	ld a, [hl]                                       ; $6746: $7e
	and $9f                                          ; $6747: $e6 $9f
	or d                                             ; $6749: $b2
	ld [hl], a                                       ; $674a: $77
	jp $3bfb                                         ; $674b: $c3 $fb $3b


Jump_00b_674e:
	ld l, $07                                        ; $674e: $2e $07
	ld a, [hl]                                       ; $6750: $7e
	ld [$c155], a                                    ; $6751: $ea $55 $c1
	ld l, $05                                        ; $6754: $2e $05
	ld a, [hl]                                       ; $6756: $7e
	ld [$c154], a                                    ; $6757: $ea $54 $c1
	ret                                              ; $675a: $c9


Call_00b_675b:
	ld l, $05                                        ; $675b: $2e $05
	ld a, [hl]                                       ; $675d: $7e
	cp $0c                                           ; $675e: $fe $0c
	jr nc, jr_00b_6766                               ; $6760: $30 $04

	ld [hl], $0c                                     ; $6762: $36 $0c
	jr jr_00b_676c                                   ; $6764: $18 $06

jr_00b_6766:
	cp $84                                           ; $6766: $fe $84
	jr c, jr_00b_676c                                ; $6768: $38 $02

	ld [hl], $84                                     ; $676a: $36 $84

jr_00b_676c:
	ld l, $07                                        ; $676c: $2e $07
	ld a, [hl]                                       ; $676e: $7e
	cp $0c                                           ; $676f: $fe $0c
	jr nc, jr_00b_6776                               ; $6771: $30 $03

	ld [hl], $0c                                     ; $6773: $36 $0c
	ret                                              ; $6775: $c9


jr_00b_6776:
	cp $94                                           ; $6776: $fe $94
	ret c                                            ; $6778: $d8

	ld [hl], $94                                     ; $6779: $36 $94
	ret                                              ; $677b: $c9


Call_00b_677c:
	ld l, $05                                        ; $677c: $2e $05
	ld a, [hl]                                       ; $677e: $7e
	cp $a8                                           ; $677f: $fe $a8
	jr c, jr_00b_678a                                ; $6781: $38 $07

	cp $e8                                           ; $6783: $fe $e8
	jr nc, jr_00b_678a                               ; $6785: $30 $03

	jp $2dfc                                         ; $6787: $c3 $fc $2d


jr_00b_678a:
	ld l, $07                                        ; $678a: $2e $07
	ld a, [hl]                                       ; $678c: $7e
	cp $b8                                           ; $678d: $fe $b8
	ret c                                            ; $678f: $d8

	cp $e8                                           ; $6790: $fe $e8
	ret nc                                           ; $6792: $d0

	jp $2dfc                                         ; $6793: $c3 $fc $2d


Call_00b_6796:
	ld l, $07                                        ; $6796: $2e $07
	ld a, [hl]                                       ; $6798: $7e
	cp $e7                                           ; $6799: $fe $e7
	ret nc                                           ; $679b: $d0

	ld l, $05                                        ; $679c: $2e $05
	ld a, [hl]                                       ; $679e: $7e
	cp $e7                                           ; $679f: $fe $e7
	ret nc                                           ; $67a1: $d0

	ld l, $31                                        ; $67a2: $2e $31
	ld a, [hl]                                       ; $67a4: $7e
	add $10                                          ; $67a5: $c6 $10
	and $1f                                          ; $67a7: $e6 $1f
	ld [hl], a                                       ; $67a9: $77
	ret                                              ; $67aa: $c9


Call_00b_67ab:
	ld l, $33                                        ; $67ab: $2e $33
	bit 5, [hl]                                      ; $67ad: $cb $6e
	jr z, jr_00b_67c0                                ; $67af: $28 $0f

	ld a, [$c153]                                    ; $67b1: $fa $53 $c1
	bit 7, a                                         ; $67b4: $cb $7f
	jr z, jr_00b_67c0                                ; $67b6: $28 $08

	call Call_00b_6819                               ; $67b8: $cd $19 $68
	ld a, $20                                        ; $67bb: $3e $20
	jp $3e1f                                         ; $67bd: $c3 $1f $3e


jr_00b_67c0:
	scf                                              ; $67c0: $37
	ccf                                              ; $67c1: $3f
	ret                                              ; $67c2: $c9


Call_00b_67c3:
	ld a, [$c153]                                    ; $67c3: $fa $53 $c1
	and $e0                                          ; $67c6: $e6 $e0
	cp $40                                           ; $67c8: $fe $40
	jr nz, jr_00b_67c0                               ; $67ca: $20 $f4

Call_00b_67cc:
	call Call_00b_6819                               ; $67cc: $cd $19 $68
	ld a, $05                                        ; $67cf: $3e $05
	call $3e1f                                       ; $67d1: $cd $1f $3e
	ld a, $00                                        ; $67d4: $3e $00
	ret c                                            ; $67d6: $d8

	call Call_00b_6819                               ; $67d7: $cd $19 $68
	ld a, $0d                                        ; $67da: $3e $0d
	call $3e1f                                       ; $67dc: $cd $1f $3e
	ld a, $01                                        ; $67df: $3e $01
	ret                                              ; $67e1: $c9


Call_00b_67e2:
	ld a, [$c153]                                    ; $67e2: $fa $53 $c1
	and $c0                                          ; $67e5: $e6 $c0
	cp $c0                                           ; $67e7: $fe $c0
	ret nz                                           ; $67e9: $c0

	call Call_00b_67cc                               ; $67ea: $cd $cc $67
	ret nc                                           ; $67ed: $d0

	or a                                             ; $67ee: $b7
	ld bc, $5000                                     ; $67ef: $01 $00 $50
	jr z, jr_00b_67f7                                ; $67f2: $28 $03

	ld bc, $1000                                     ; $67f4: $01 $00 $10

jr_00b_67f7:
	jp Jump_00b_6829                                 ; $67f7: $c3 $29 $68


Jump_00b_67fa:
	ld l, $31                                        ; $67fa: $2e $31
	ld a, [hl]                                       ; $67fc: $7e
	add $10                                          ; $67fd: $c6 $10
	and $1f                                          ; $67ff: $e6 $1f
	ld [hl], a                                       ; $6801: $77
	ret                                              ; $6802: $c9


Jump_00b_6803:
	ld l, $31                                        ; $6803: $2e $31
	ld b, [hl]                                       ; $6805: $46
	call Call_000_12fc                                       ; $6806: $cd $fc $12
	ld c, a                                          ; $6809: $4f
	call Call_000_1309                                       ; $680a: $cd $09 $13
	and $01                                          ; $680d: $e6 $01
	ld a, c                                          ; $680f: $79
	jr z, jr_00b_6814                                ; $6810: $28 $02

	cpl                                              ; $6812: $2f
	inc a                                            ; $6813: $3c

jr_00b_6814:
	add b                                            ; $6814: $80
	and $1f                                          ; $6815: $e6 $1f
	ld [hl], a                                       ; $6817: $77
	ret                                              ; $6818: $c9


Call_00b_6819:
	ld a, [$c154]                                    ; $6819: $fa $54 $c1
	ld e, a                                          ; $681c: $5f
	ld a, [$c155]                                    ; $681d: $fa $55 $c1
	ld d, a                                          ; $6820: $57
	call $3cf7                                       ; $6821: $cd $f7 $3c
	ld a, c                                          ; $6824: $79
	sub $0c                                          ; $6825: $d6 $0c
	ld c, a                                          ; $6827: $4f
	ret                                              ; $6828: $c9


Call_00b_6829:
Jump_00b_6829:
	ld a, [$c156]                                    ; $6829: $fa $56 $c1
	add c                                            ; $682c: $81
	ld [$c156], a                                    ; $682d: $ea $56 $c1
	ld a, [$c157]                                    ; $6830: $fa $57 $c1
	adc b                                            ; $6833: $88
	ld [$c157], a                                    ; $6834: $ea $57 $c1
	ret nc                                           ; $6837: $d0

	ld a, $ff                                        ; $6838: $3e $ff
	ld [$c157], a                                    ; $683a: $ea $57 $c1
	ret                                              ; $683d: $c9


	ld a, [$c146]                                    ; $683e: $fa $46 $c1
	call wJumpTable                                       ; $6841: $cd $80 $cf
	ld d, [hl]                                       ; $6844: $56
	ld l, b                                          ; $6845: $68
	db $eb                                           ; $6846: $eb
	ld b, [hl]                                       ; $6847: $46
	ld l, h                                          ; $6848: $6c
	ld l, b                                          ; $6849: $68
	sub e                                            ; $684a: $93
	ld l, b                                          ; $684b: $68
	jp hl                                            ; $684c: $e9


	ld l, b                                          ; $684d: $68
	ld a, [de]                                       ; $684e: $1a
	ld l, c                                          ; $684f: $69
	db $fd                                           ; $6850: $fd
	ld b, [hl]                                       ; $6851: $46
	ld d, $47                                        ; $6852: $16 $47
	dec hl                                           ; $6854: $2b
	ld b, a                                          ; $6855: $47
	xor a                                            ; $6856: $af
	call $1e2e                                       ; $6857: $cd $2e $1e
	call $068e                                       ; $685a: $cd $8e $06
	ld a, $09                                        ; $685d: $3e $09
	ld [$c186], a                                    ; $685f: $ea $86 $c1
	ld a, $33                                        ; $6862: $3e $33
	call $1e27                                       ; $6864: $cd $27 $1e
	ld a, $02                                        ; $6867: $3e $02
	jp Jump_00b_46a1                                 ; $6869: $c3 $a1 $46


	ld a, [wButtonsPressed]                                    ; $686c: $fa $25 $c1
	and $90                                          ; $686f: $e6 $90
	ret z                                            ; $6871: $c8

	ld hl, $4212                                     ; $6872: $21 $12 $42
	ld bc, $6586                                     ; $6875: $01 $86 $65
	call Call_00b_45e9                               ; $6878: $cd $e9 $45
	call Call_00b_693f                               ; $687b: $cd $3f $69
	call Call_00b_694e                               ; $687e: $cd $4e $69
	call Call_00b_6951                               ; $6881: $cd $51 $69
	ld bc, $4239                                     ; $6884: $01 $39 $42
	call Call_00b_4608                               ; $6887: $cd $08 $46
	call $096e                                       ; $688a: $cd $6e $09
	ld bc, $67de                                     ; $688d: $01 $de $67
	jp $18b7                                         ; $6890: $c3 $b7 $18


	ld hl, $c153                                     ; $6893: $21 $53 $c1
	bit 7, [hl]                                      ; $6896: $cb $7e
	jr nz, jr_00b_68a9                               ; $6898: $20 $0f

	bit 1, [hl]                                      ; $689a: $cb $4e
	jr z, jr_00b_68b2                                ; $689c: $28 $14

	bit 0, [hl]                                      ; $689e: $cb $46
	jr nz, jr_00b_68e6                               ; $68a0: $20 $44

	set 0, [hl]                                      ; $68a2: $cb $c6
	call Call_00b_6964                               ; $68a4: $cd $64 $69
	jr jr_00b_68e6                                   ; $68a7: $18 $3d

jr_00b_68a9:
	bit 0, [hl]                                      ; $68a9: $cb $46
	jr nz, jr_00b_68b2                               ; $68ab: $20 $05

	set 0, [hl]                                      ; $68ad: $cb $c6
	call Call_00b_6958                               ; $68af: $cd $58 $69

jr_00b_68b2:
	ld a, [$c153]                                    ; $68b2: $fa $53 $c1
	bit 4, a                                         ; $68b5: $cb $67
	jr z, jr_00b_68e6                                ; $68b7: $28 $2d

	call Call_00b_693f                               ; $68b9: $cd $3f $69
	call Call_00b_6951                               ; $68bc: $cd $51 $69
	ld hl, $c160                                     ; $68bf: $21 $60 $c1
	inc [hl]                                         ; $68c2: $34
	ld a, [hl]                                       ; $68c3: $7e
	cp $05                                           ; $68c4: $fe $05
	jr c, jr_00b_68de                                ; $68c6: $38 $16

	cp $0a                                           ; $68c8: $fe $0a
	jr z, jr_00b_68d3                                ; $68ca: $28 $07

	ld b, a                                          ; $68cc: $47
	ld a, [wMenuOptionSelected]                                    ; $68cd: $fa $5f $c1
	xor b                                            ; $68d0: $a8
	jr z, jr_00b_68de                                ; $68d1: $28 $0b

jr_00b_68d3:
	call Call_00b_4614                               ; $68d3: $cd $14 $46
	call Call_00b_4614                               ; $68d6: $cd $14 $46
	call Call_00b_6982                               ; $68d9: $cd $82 $69
	jr jr_00b_68e6                                   ; $68dc: $18 $08

jr_00b_68de:
	ld hl, $c188                                     ; $68de: $21 $88 $c1
	ld [hl], $04                                     ; $68e1: $36 $04
	jp Jump_00b_4614                                 ; $68e3: $c3 $14 $46


jr_00b_68e6:
	jp $2e21                                         ; $68e6: $c3 $21 $2e


	ld h, $c2                                        ; $68e9: $26 $c2
	ld c, $07                                        ; $68eb: $0e $07

jr_00b_68ed:
	call $2dfc                                       ; $68ed: $cd $fc $2d
	inc h                                            ; $68f0: $24
	inc h                                            ; $68f1: $24
	dec c                                            ; $68f2: $0d
	jr nz, jr_00b_68ed                               ; $68f3: $20 $f8

	dec h                                            ; $68f5: $25
	call $2dfc                                       ; $68f6: $cd $fc $2d
	ld hl, $c188                                     ; $68f9: $21 $88 $c1
	dec [hl]                                         ; $68fc: $35
	ret nz                                           ; $68fd: $c0

	ld [hl], $04                                     ; $68fe: $36 $04
	ld hl, wInitialA                                     ; $6900: $21 $00 $c1

jr_00b_6903:
	inc h                                            ; $6903: $24
	inc h                                            ; $6904: $24
	ld a, [hl]                                       ; $6905: $7e
	or a                                             ; $6906: $b7
	jr z, jr_00b_6903                                ; $6907: $28 $fa

	call $2dfc                                       ; $6909: $cd $fc $2d
	ld a, h                                          ; $690c: $7c
	cp $cd                                           ; $690d: $fe $cd
	ret nz                                           ; $690f: $c0

	ld bc, $4239                                     ; $6910: $01 $39 $42
	ld hl, $c146                                     ; $6913: $21 $46 $c1
	dec [hl]                                         ; $6916: $35
	jp Jump_00b_4608                                 ; $6917: $c3 $08 $46


	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $691a: $cd $ef $2d
	ld a, [wMenuOptionSelected]                                    ; $691d: $fa $5f $c1
	or a                                             ; $6920: $b7
	jr z, jr_00b_692d                                ; $6921: $28 $0a

	ld b, a                                          ; $6923: $47
	ld hl, $c200                                     ; $6924: $21 $00 $c2

jr_00b_6927:
	ld [hl], $49                                     ; $6927: $36 $49
	inc h                                            ; $6929: $24
	dec b                                            ; $692a: $05
	jr nz, jr_00b_6927                               ; $692b: $20 $fa

jr_00b_692d:
	call Call_00b_4614                               ; $692d: $cd $14 $46
	ld a, [wMenuOptionSelected]                                    ; $6930: $fa $5f $c1
	ld [$c150], a                                    ; $6933: $ea $50 $c1
	ld a, [wMenuOptionSelected]                                    ; $6936: $fa $5f $c1
	call Call_00b_46d9                               ; $6939: $cd $d9 $46
	jp $2e21                                         ; $693c: $c3 $21 $2e


Call_00b_693f:
	xor a                                            ; $693f: $af
	ld hl, $c153                                     ; $6940: $21 $53 $c1
	ld [hl+], a                                      ; $6943: $22
	ld a, $04                                        ; $6944: $3e $04
	call Call_000_12fc                                       ; $6946: $cd $fc $12
	ld [hl+], a                                      ; $6949: $22
	xor a                                            ; $694a: $af
	jp $cbe7                                         ; $694b: $c3 $e7 $cb


Call_00b_694e:
	ld [hl+], a                                      ; $694e: $22
	ld [hl], a                                       ; $694f: $77
	ret                                              ; $6950: $c9


Call_00b_6951:
	xor a                                            ; $6951: $af
	ld hl, $c0d8                                     ; $6952: $21 $d8 $c0
	jp $cbe4                                         ; $6955: $c3 $e4 $cb


Call_00b_6958:
	call $0989                                       ; $6958: $cd $89 $09
	ld hl, $422d                                     ; $695b: $21 $2d $42
	call $0ab5                                       ; $695e: $cd $b5 $0a
	jp $0971                                         ; $6961: $c3 $71 $09


Call_00b_6964:
	ld a, [wInitialA]                                    ; $6964: $fa $00 $c1
	cp $11                                           ; $6967: $fe $11
	jr nz, jr_00b_6977                               ; $6969: $20 $0c

	ld a, $01                                        ; $696b: $3e $01
	ldh [rVBK], a                                    ; $696d: $e0 $4f
	ld a, $00                                        ; $696f: $3e $00
	call Call_00b_6979                               ; $6971: $cd $79 $69
	xor a                                            ; $6974: $af
	ldh [rVBK], a                                    ; $6975: $e0 $4f

jr_00b_6977:
	ld a, $02                                        ; $6977: $3e $02

Call_00b_6979:
	ld hl, $9800                                     ; $6979: $21 $00 $98
	ld bc, $0233                                     ; $697c: $01 $33 $02
	jp $cfeb                                         ; $697f: $c3 $eb $cf


Call_00b_6982:
	ld a, [wInitialA]                                    ; $6982: $fa $00 $c1
	cp $11                                           ; $6985: $fe $11
	ld bc, $060c                                     ; $6987: $01 $0c $06
	ld hl, $dc80                                     ; $698a: $21 $80 $dc
	ld de, $1844                                     ; $698d: $11 $44 $18
	call z, Call_00b_4765                            ; $6990: $cc $65 $47
	ld bc, $060c                                     ; $6993: $01 $0c $06
	ld hl, $da80                                     ; $6996: $21 $80 $da
	ld de, $9844                                     ; $6999: $11 $44 $98
	jp Jump_00b_4765                                 ; $699c: $c3 $65 $47


	rst JumpTable                                          ; $699f: $c7
	or b                                             ; $69a0: $b0
	ld l, c                                          ; $69a1: $69
	sbc $69                                          ; $69a2: $de $69
	dec h                                            ; $69a4: $25
	ld l, d                                          ; $69a5: $6a
	add [hl]                                         ; $69a6: $86
	ld l, d                                          ; $69a7: $6a
	jp Jump_00b_416a                                 ; $69a8: $c3 $6a $41


	ld l, e                                          ; $69ab: $6b
	ld a, b                                          ; $69ac: $78
	ld l, e                                          ; $69ad: $6b
	and a                                            ; $69ae: $a7
	ld l, e                                          ; $69af: $6b
	ld l, $01                                        ; $69b0: $2e $01
	set 7, [hl]                                      ; $69b2: $cb $fe
	ld l, $0b                                        ; $69b4: $2e $0b
	ld [hl], $03                                     ; $69b6: $36 $03
	ld l, $31                                        ; $69b8: $2e $31
	ld [hl], $02                                     ; $69ba: $36 $02
	inc l                                            ; $69bc: $2c
	ld [hl], $0c                                     ; $69bd: $36 $0c
	ld de, $5090                                     ; $69bf: $11 $90 $50
	ld bc, $5711                                     ; $69c2: $01 $11 $57
	call $3bef                                       ; $69c5: $cd $ef $3b
	ld a, [wButtonsPressed]                                    ; $69c8: $fa $25 $c1
	bit 4, a                                         ; $69cb: $cb $67
	ret z                                            ; $69cd: $c8

	ld l, $01                                        ; $69ce: $2e $01
	res 7, [hl]                                      ; $69d0: $cb $be
	ld l, $0a                                        ; $69d2: $2e $0a
	inc [hl]                                         ; $69d4: $34
	ld a, [$c153]                                    ; $69d5: $fa $53 $c1
	set 1, a                                         ; $69d8: $cb $cf
	ld [$c153], a                                    ; $69da: $ea $53 $c1
	ret                                              ; $69dd: $c9


	ld a, [wButtonsPressed]                                    ; $69de: $fa $25 $c1
	bit 4, a                                         ; $69e1: $cb $67
	jr z, jr_00b_69f3                                ; $69e3: $28 $0e

	ld l, $30                                        ; $69e5: $2e $30
	res 7, [hl]                                      ; $69e7: $cb $be
	ld a, $82                                        ; $69e9: $3e $82
	call $1e2e                                       ; $69eb: $cd $2e $1e
	ld a, $01                                        ; $69ee: $3e $01
	jp $3d43                                         ; $69f0: $c3 $43 $3d


jr_00b_69f3:
	ld l, $0b                                        ; $69f3: $2e $0b
	ld a, [hl]                                       ; $69f5: $7e
	or a                                             ; $69f6: $b7
	ret nz                                           ; $69f7: $c0

	ld [hl], $03                                     ; $69f8: $36 $03
	ld l, $30                                        ; $69fa: $2e $30
	bit 7, [hl]                                      ; $69fc: $cb $7e
	ld l, $31                                        ; $69fe: $2e $31
	jr nz, jr_00b_6a05                               ; $6a00: $20 $03

	inc [hl]                                         ; $6a02: $34
	jr jr_00b_6a06                                   ; $6a03: $18 $01

jr_00b_6a05:
	dec [hl]                                         ; $6a05: $35

jr_00b_6a06:
	ld a, [hl]                                       ; $6a06: $7e
	ld bc, $0f02                                     ; $6a07: $01 $02 $0f
	call Call_00b_6efe                               ; $6a0a: $cd $fe $6e
	ld a, h                                          ; $6a0d: $7c
	sub $c1                                          ; $6a0e: $d6 $c1
	ld b, a                                          ; $6a10: $47
	ld c, $0c                                        ; $6a11: $0e $0c
	call BCequBtimesC                                       ; $6a13: $cd $5f $12
	ld l, $31                                        ; $6a16: $2e $31
	ld a, [hl]                                       ; $6a18: $7e
	call $3e24                                       ; $6a19: $cd $24 $3e
	ld bc, $9000                                     ; $6a1c: $01 $00 $90
	ld de, $5000                                     ; $6a1f: $11 $00 $50
	jp $3e2e                                         ; $6a22: $c3 $2e $3e


	ld a, [$c153]                                    ; $6a25: $fa $53 $c1
	set 3, a                                         ; $6a28: $cb $df
	ld [$c153], a                                    ; $6a2a: $ea $53 $c1
	ld a, [wButtonsPressed]                                    ; $6a2d: $fa $25 $c1
	bit 4, a                                         ; $6a30: $cb $67
	jr z, jr_00b_6a59                                ; $6a32: $28 $25

	ld l, $30                                        ; $6a34: $2e $30
	res 7, [hl]                                      ; $6a36: $cb $be
	ld l, $01                                        ; $6a38: $2e $01
	set 7, [hl]                                      ; $6a3a: $cb $fe
	ld a, [$c153]                                    ; $6a3c: $fa $53 $c1
	set 7, a                                         ; $6a3f: $cb $ff
	res 0, a                                         ; $6a41: $cb $87
	ld [$c153], a                                    ; $6a43: $ea $53 $c1
	ld l, $07                                        ; $6a46: $2e $07
	ld a, [hl]                                       ; $6a48: $7e
	cp $c8                                           ; $6a49: $fe $c8
	jr c, jr_00b_6a4f                                ; $6a4b: $38 $02

	ld [hl], $00                                     ; $6a4d: $36 $00

jr_00b_6a4f:
	ld a, $82                                        ; $6a4f: $3e $82
	call $1e2e                                       ; $6a51: $cd $2e $1e
	ld a, $01                                        ; $6a54: $3e $01
	jp $3d43                                         ; $6a56: $c3 $43 $3d


jr_00b_6a59:
	ld l, $30                                        ; $6a59: $2e $30
	bit 7, [hl]                                      ; $6a5b: $cb $7e
	ld l, $32                                        ; $6a5d: $2e $32
	ld a, $05                                        ; $6a5f: $3e $05
	jr z, jr_00b_6a65                                ; $6a61: $28 $02

	ld a, $fb                                        ; $6a63: $3e $fb

jr_00b_6a65:
	add [hl]                                         ; $6a65: $86
	ld [hl], a                                       ; $6a66: $77
	ld d, a                                          ; $6a67: $57
	ld bc, $8100                                     ; $6a68: $01 $00 $81
	call Call_00b_6efe                               ; $6a6b: $cd $fe $6e
	ld l, $32                                        ; $6a6e: $2e $32
	ld a, d                                          ; $6a70: $7a
	cp $f0                                           ; $6a71: $fe $f0
	jr c, jr_00b_6a77                                ; $6a73: $38 $02

	xor a                                            ; $6a75: $af
	ld [hl], a                                       ; $6a76: $77

jr_00b_6a77:
	ld c, a                                          ; $6a77: $4f
	dec l                                            ; $6a78: $2d
	ld a, [hl]                                       ; $6a79: $7e
	call $3e24                                       ; $6a7a: $cd $24 $3e
	ld bc, $9000                                     ; $6a7d: $01 $00 $90
	ld de, $5000                                     ; $6a80: $11 $00 $50
	jp $3e2e                                         ; $6a83: $c3 $2e $3e


	ld a, $85                                        ; $6a86: $3e $85
	call $1e2e                                       ; $6a88: $cd $2e $1e
	inc [hl]                                         ; $6a8b: $34
	ld l, $01                                        ; $6a8c: $2e $01
	res 7, [hl]                                      ; $6a8e: $cb $be
	ld de, $c15c                                     ; $6a90: $11 $5c $c1
	ld a, [de]                                       ; $6a93: $1a
	or a                                             ; $6a94: $b7
	jr z, jr_00b_6ab3                                ; $6a95: $28 $1c

	ld c, $03                                        ; $6a97: $0e $03

jr_00b_6a99:
	ld a, [de]                                       ; $6a99: $1a
	dec a                                            ; $6a9a: $3d
	jr z, jr_00b_6aac                                ; $6a9b: $28 $0f

	ld b, h                                          ; $6a9d: $44
	ld h, a                                          ; $6a9e: $67
	push de                                          ; $6a9f: $d5
	call Call_00b_6f3a                               ; $6aa0: $cd $3a $6f
	pop de                                           ; $6aa3: $d1
	ld h, b                                          ; $6aa4: $60
	ld l, $05                                        ; $6aa5: $2e $05
	cp [hl]                                          ; $6aa7: $be
	jr nc, jr_00b_6aac                               ; $6aa8: $30 $02

	xor a                                            ; $6aaa: $af
	ld [de], a                                       ; $6aab: $12

jr_00b_6aac:
	inc de                                           ; $6aac: $13
	dec c                                            ; $6aad: $0d
	jr nz, jr_00b_6a99                               ; $6aae: $20 $e9

	call Call_00b_6f66                               ; $6ab0: $cd $66 $6f

jr_00b_6ab3:
	ld a, [$c15b]                                    ; $6ab3: $fa $5b $c1
	or a                                             ; $6ab6: $b7
	call z, Call_00b_6f11                            ; $6ab7: $cc $11 $6f
	ld de, $50c0                                     ; $6aba: $11 $c0 $50
	ld bc, $56d1                                     ; $6abd: $01 $d1 $56
	jp $3bef                                         ; $6ac0: $c3 $ef $3b


	ld a, [$c153]                                    ; $6ac3: $fa $53 $c1
	bit 6, a                                         ; $6ac6: $cb $77
	ret nz                                           ; $6ac8: $c0

	ld a, [$c157]                                    ; $6ac9: $fa $57 $c1
	ld b, a                                          ; $6acc: $47
	ld a, [$c15b]                                    ; $6acd: $fa $5b $c1
	or a                                             ; $6ad0: $b7
	jr z, jr_00b_6adb                                ; $6ad1: $28 $08

	ld d, a                                          ; $6ad3: $57
	ld e, $34                                        ; $6ad4: $1e $34
	ld a, [de]                                       ; $6ad6: $1a
	ld c, a                                          ; $6ad7: $4f
	ld a, b                                          ; $6ad8: $78
	sub c                                            ; $6ad9: $91
	ld b, a                                          ; $6ada: $47

jr_00b_6adb:
	ld a, [$c15a]                                    ; $6adb: $fa $5a $c1
	sub b                                            ; $6ade: $90
	bit 7, a                                         ; $6adf: $cb $7f
	jr z, jr_00b_6ae5                                ; $6ae1: $28 $02

	cpl                                              ; $6ae3: $2f
	inc a                                            ; $6ae4: $3c

jr_00b_6ae5:
	cp $46                                           ; $6ae5: $fe $46
	ld c, $30                                        ; $6ae7: $0e $30
	jr nc, jr_00b_6af6                               ; $6ae9: $30 $0b

	ld de, $42dc                                     ; $6aeb: $11 $dc $42
	call $1327                                       ; $6aee: $cd $27 $13
	ld a, [de]                                       ; $6af1: $1a
	ld [$c158], a                                    ; $6af2: $ea $58 $c1
	ld c, a                                          ; $6af5: $4f

jr_00b_6af6:
	ld a, [$c159]                                    ; $6af6: $fa $59 $c1
	ld d, a                                          ; $6af9: $57
	ld a, [$c15a]                                    ; $6afa: $fa $5a $c1
	sub c                                            ; $6afd: $91
	ld e, a                                          ; $6afe: $5f
	call $3bf4                                       ; $6aff: $cd $f4 $3b
	call Call_00b_6f21                               ; $6b02: $cd $21 $6f
	ld a, [$c15a]                                    ; $6b05: $fa $5a $c1
	cp $70                                           ; $6b08: $fe $70
	jr c, jr_00b_6b10                                ; $6b0a: $38 $04

	ld l, $01                                        ; $6b0c: $2e $01
	res 7, [hl]                                      ; $6b0e: $cb $be

jr_00b_6b10:
	ld a, [$c153]                                    ; $6b10: $fa $53 $c1
	bit 5, a                                         ; $6b13: $cb $6f
	ret z                                            ; $6b15: $c8

	ld a, [$c15b]                                    ; $6b16: $fa $5b $c1
	or a                                             ; $6b19: $b7
	jr z, jr_00b_6b37                                ; $6b1a: $28 $1b

	ld a, [$c158]                                    ; $6b1c: $fa $58 $c1
	cp $19                                           ; $6b1f: $fe $19
	ret nc                                           ; $6b21: $d0

	ld l, $30                                        ; $6b22: $2e $30
	set 5, [hl]                                      ; $6b24: $cb $ee
	ld bc, $56f1                                     ; $6b26: $01 $f1 $56
	call $3d3d                                       ; $6b29: $cd $3d $3d
	ld l, $0a                                        ; $6b2c: $2e $0a
	inc [hl]                                         ; $6b2e: $34
	ld a, [$c153]                                    ; $6b2f: $fa $53 $c1
	bit 2, a                                         ; $6b32: $cb $57
	ret z                                            ; $6b34: $c8

	inc [hl]                                         ; $6b35: $34
	ret                                              ; $6b36: $c9


jr_00b_6b37:
	set 6, a                                         ; $6b37: $cb $f7
	ld [$c153], a                                    ; $6b39: $ea $53 $c1
	ld a, $84                                        ; $6b3c: $3e $84
	jp $1e2e                                         ; $6b3e: $c3 $2e $1e


	ld bc, $56f1                                     ; $6b41: $01 $f1 $56
	call Call_00b_6f9d                               ; $6b44: $cd $9d $6f
	ld a, [$c153]                                    ; $6b47: $fa $53 $c1
	bit 6, a                                         ; $6b4a: $cb $77
	jr z, jr_00b_6b58                                ; $6b4c: $28 $0a

	ld a, $02                                        ; $6b4e: $3e $02
	call $3d43                                       ; $6b50: $cd $43 $3d
	ld a, $81                                        ; $6b53: $3e $81
	jp $1e2e                                         ; $6b55: $c3 $2e $1e


jr_00b_6b58:
	ld bc, $0080                                     ; $6b58: $01 $80 $00
	call $3d32                                       ; $6b5b: $cd $32 $3d
	call $3d2c                                       ; $6b5e: $cd $2c $3d
	ld l, $05                                        ; $6b61: $2e $05
	ld a, [hl]                                       ; $6b63: $7e
	and $07                                          ; $6b64: $e6 $07
	ld de, $432a                                     ; $6b66: $11 $2a $43
	call $1327                                       ; $6b69: $cd $27 $13
	ld a, [de]                                       ; $6b6c: $1a
	ld l, $07                                        ; $6b6d: $2e $07
	ld b, [hl]                                       ; $6b6f: $46
	add b                                            ; $6b70: $80
	ld [hl], a                                       ; $6b71: $77
	ld d, $cf                                        ; $6b72: $16 $cf
	ld e, l                                          ; $6b74: $5d
	ld [de], a                                       ; $6b75: $12
	jr jr_00b_6b96                                   ; $6b76: $18 $1e

	ld bc, $56f1                                     ; $6b78: $01 $f1 $56
	call Call_00b_6f9d                               ; $6b7b: $cd $9d $6f
	ld a, [$c153]                                    ; $6b7e: $fa $53 $c1
	bit 6, a                                         ; $6b81: $cb $77
	jr z, jr_00b_6b8d                                ; $6b83: $28 $08

	ld l, $0a                                        ; $6b85: $2e $0a
	inc [hl]                                         ; $6b87: $34
	ld a, $81                                        ; $6b88: $3e $81
	jp $1e2e                                         ; $6b8a: $c3 $2e $1e


jr_00b_6b8d:
	ld bc, $0100                                     ; $6b8d: $01 $00 $01
	call $3d32                                       ; $6b90: $cd $32 $3d
	call $3d2c                                       ; $6b93: $cd $2c $3d

jr_00b_6b96:
	ld l, $05                                        ; $6b96: $2e $05
	ld b, [hl]                                       ; $6b98: $46
	ld a, [$c15a]                                    ; $6b99: $fa $5a $c1
	cp b                                             ; $6b9c: $b8
	ret nc                                           ; $6b9d: $d0

	ld a, [$c153]                                    ; $6b9e: $fa $53 $c1
	set 6, a                                         ; $6ba1: $cb $f7
	ld [$c153], a                                    ; $6ba3: $ea $53 $c1
	ret                                              ; $6ba6: $c9


	ld bc, $56f1                                     ; $6ba7: $01 $f1 $56
	jp Jump_00b_6f9d                                 ; $6baa: $c3 $9d $6f


	rst JumpTable                                          ; $6bad: $c7
	or b                                             ; $6bae: $b0
	ld l, c                                          ; $6baf: $69
	sbc $69                                          ; $6bb0: $de $69
	or [hl]                                          ; $6bb2: $b6
	ld l, e                                          ; $6bb3: $6b
	call nz, $fa6b                                   ; $6bb4: $c4 $6b $fa
	ld d, e                                          ; $6bb7: $53
	pop bc                                           ; $6bb8: $c1
	bit 7, a                                         ; $6bb9: $cb $7f
	jr nz, jr_00b_6bc2                               ; $6bbb: $20 $05

	ld l, $01                                        ; $6bbd: $2e $01
	set 7, [hl]                                      ; $6bbf: $cb $fe
	ret                                              ; $6bc1: $c9


jr_00b_6bc2:
	inc [hl]                                         ; $6bc2: $34
	ret                                              ; $6bc3: $c9


	ld a, h                                          ; $6bc4: $7c
	ld d, $c2                                        ; $6bc5: $16 $c2
	ld l, $09                                        ; $6bc7: $2e $09
	ld c, $08                                        ; $6bc9: $0e $08

jr_00b_6bcb:
	ld e, l                                          ; $6bcb: $5d
	ld a, [de]                                       ; $6bcc: $1a
	ld [hl-], a                                      ; $6bcd: $32
	dec c                                            ; $6bce: $0d
	jr nz, jr_00b_6bcb                               ; $6bcf: $20 $fa

	ld de, $c230                                     ; $6bd1: $11 $30 $c2
	ld a, [de]                                       ; $6bd4: $1a
	bit 5, a                                         ; $6bd5: $cb $6f
	jp z, Jump_00b_6f21                              ; $6bd7: $ca $21 $6f

	ld a, [$c15b]                                    ; $6bda: $fa $5b $c1
	dec a                                            ; $6bdd: $3d
	cp h                                             ; $6bde: $bc
	jr z, jr_00b_6bed                                ; $6bdf: $28 $0c

	inc a                                            ; $6be1: $3c
	inc a                                            ; $6be2: $3c
	cp h                                             ; $6be3: $bc
	jp nz, Jump_00b_6f21                             ; $6be4: $c2 $21 $6f

	ld bc, $56e1                                     ; $6be7: $01 $e1 $56
	call Call_00b_6f9d                               ; $6bea: $cd $9d $6f

jr_00b_6bed:
	ld l, $01                                        ; $6bed: $2e $01
	res 7, [hl]                                      ; $6bef: $cb $be
	ret                                              ; $6bf1: $c9


	ld bc, $5701                                     ; $6bf2: $01 $01 $57
	call Call_00b_6f9d                               ; $6bf5: $cd $9d $6f
	ld l, $0a                                        ; $6bf8: $2e $0a
	ld a, [hl]                                       ; $6bfa: $7e
	rst JumpTable                                          ; $6bfb: $c7
	inc b                                            ; $6bfc: $04
	ld l, h                                          ; $6bfd: $6c
	daa                                              ; $6bfe: $27
	ld l, h                                          ; $6bff: $6c
	cp c                                             ; $6c00: $b9
	ld l, h                                          ; $6c01: $6c
	bit 5, h                                         ; $6c02: $cb $6c
	ld l, $01                                        ; $6c04: $2e $01
	set 7, [hl]                                      ; $6c06: $cb $fe
	ld a, [$c153]                                    ; $6c08: $fa $53 $c1
	bit 7, a                                         ; $6c0b: $cb $7f
	ret z                                            ; $6c0d: $c8

	ld l, $01                                        ; $6c0e: $2e $01
	res 7, [hl]                                      ; $6c10: $cb $be
	ld l, $0a                                        ; $6c12: $2e $0a
	inc [hl]                                         ; $6c14: $34
	ld a, $50                                        ; $6c15: $3e $50
	ld [$c159], a                                    ; $6c17: $ea $59 $c1
	ld d, a                                          ; $6c1a: $57
	ld a, $90                                        ; $6c1b: $3e $90
	ld [$c15a], a                                    ; $6c1d: $ea $5a $c1
	ld e, a                                          ; $6c20: $5f
	ld bc, $5701                                     ; $6c21: $01 $01 $57
	jp $3bef                                         ; $6c24: $c3 $ef $3b


	ld a, [$c153]                                    ; $6c27: $fa $53 $c1
	bit 5, a                                         ; $6c2a: $cb $6f
	ret nz                                           ; $6c2c: $c0

	ld a, [$c15b]                                    ; $6c2d: $fa $5b $c1
	or a                                             ; $6c30: $b7
	jr nz, jr_00b_6c66                               ; $6c31: $20 $33

	ld a, [$c15c]                                    ; $6c33: $fa $5c $c1
	or a                                             ; $6c36: $b7
	jr z, jr_00b_6c66                                ; $6c37: $28 $2d

	ld c, h                                          ; $6c39: $4c
	dec a                                            ; $6c3a: $3d
	ld h, a                                          ; $6c3b: $67
	call Call_00b_6f3a                               ; $6c3c: $cd $3a $6f
	ld h, c                                          ; $6c3f: $61
	ld b, a                                          ; $6c40: $47
	ld a, [$c15a]                                    ; $6c41: $fa $5a $c1
	cp b                                             ; $6c44: $b8
	jr nc, jr_00b_6c66                               ; $6c45: $30 $1f

	ld a, [$c15c]                                    ; $6c47: $fa $5c $c1
	ld d, a                                          ; $6c4a: $57
	ld e, $33                                        ; $6c4b: $1e $33
	ld a, [de]                                       ; $6c4d: $1a
	ld d, a                                          ; $6c4e: $57
	ld e, a                                          ; $6c4f: $5f
	ld a, [$c158]                                    ; $6c50: $fa $58 $c1
	srl d                                            ; $6c53: $cb $3a
	srl d                                            ; $6c55: $cb $3a
	cp d                                             ; $6c57: $ba
	jr c, jr_00b_6c85                                ; $6c58: $38 $2b

	srl e                                            ; $6c5a: $cb $3b
	cp e                                             ; $6c5c: $bb
	jr c, jr_00b_6c9d                                ; $6c5d: $38 $3e

	xor a                                            ; $6c5f: $af
	ld [$c15c], a                                    ; $6c60: $ea $5c $c1
	call Call_00b_6f66                               ; $6c63: $cd $66 $6f

jr_00b_6c66:
	call Call_00b_6cdd                               ; $6c66: $cd $dd $6c
	jr c, jr_00b_6c73                                ; $6c69: $38 $08

	cp $10                                           ; $6c6b: $fe $10
	jr nc, jr_00b_6c73                               ; $6c6d: $30 $04

	ld c, $06                                        ; $6c6f: $0e $06
	jr jr_00b_6ceb                                   ; $6c71: $18 $78

jr_00b_6c73:
	ld a, [$c15b]                                    ; $6c73: $fa $5b $c1
	or a                                             ; $6c76: $b7
	jp z, Jump_00b_6d01                              ; $6c77: $ca $01 $6d

	ld a, [$c157]                                    ; $6c7a: $fa $57 $c1
	ld [$c15a], a                                    ; $6c7d: $ea $5a $c1
	ld l, $05                                        ; $6c80: $2e $05
	ld [hl], a                                       ; $6c82: $77
	jr jr_00b_6d01                                   ; $6c83: $18 $7c

jr_00b_6c85:
	ld a, $83                                        ; $6c85: $3e $83
	call $1e2e                                       ; $6c87: $cd $2e $1e
	ld a, [$c157]                                    ; $6c8a: $fa $57 $c1
	ld c, a                                          ; $6c8d: $4f
	ld a, b                                          ; $6c8e: $78
	add a                                            ; $6c8f: $87
	sub c                                            ; $6c90: $91
	ld [$c157], a                                    ; $6c91: $ea $57 $c1
	ld l, $0b                                        ; $6c94: $2e $0b
	ld [hl], $08                                     ; $6c96: $36 $08
	ld a, $01                                        ; $6c98: $3e $01
	jp $3d43                                         ; $6c9a: $c3 $43 $3d


jr_00b_6c9d:
	ld a, $83                                        ; $6c9d: $3e $83
	call $1e2e                                       ; $6c9f: $cd $2e $1e
	ld a, [$c157]                                    ; $6ca2: $fa $57 $c1
	sub b                                            ; $6ca5: $90
	cpl                                              ; $6ca6: $2f
	inc a                                            ; $6ca7: $3c
	srl a                                            ; $6ca8: $cb $3f
	ld c, a                                          ; $6caa: $4f
	ld a, b                                          ; $6cab: $78
	sub c                                            ; $6cac: $91
	ld [$c157], a                                    ; $6cad: $ea $57 $c1
	ld l, $0b                                        ; $6cb0: $2e $0b
	ld [hl], $08                                     ; $6cb2: $36 $08
	ld a, $02                                        ; $6cb4: $3e $02
	jp $3d43                                         ; $6cb6: $c3 $43 $3d


	ld l, $0b                                        ; $6cb9: $2e $0b
	ld a, [hl]                                       ; $6cbb: $7e
	or a                                             ; $6cbc: $b7
	ret nz                                           ; $6cbd: $c0

	call Call_00b_6cdd                               ; $6cbe: $cd $dd $6c
	jr c, jr_00b_6d01                                ; $6cc1: $38 $3e

	cp $10                                           ; $6cc3: $fe $10
	jr c, jr_00b_6d01                                ; $6cc5: $38 $3a

	ld c, $08                                        ; $6cc7: $0e $08
	jr jr_00b_6ceb                                   ; $6cc9: $18 $20

	ld l, $0b                                        ; $6ccb: $2e $0b
	ld a, [hl]                                       ; $6ccd: $7e
	or a                                             ; $6cce: $b7
	ret nz                                           ; $6ccf: $c0

	call Call_00b_6cdd                               ; $6cd0: $cd $dd $6c
	jr c, jr_00b_6d01                                ; $6cd3: $38 $2c

	cp $10                                           ; $6cd5: $fe $10
	jr nc, jr_00b_6d01                               ; $6cd7: $30 $28

	ld c, $08                                        ; $6cd9: $0e $08
	jr jr_00b_6ceb                                   ; $6cdb: $18 $0e

Call_00b_6cdd:
	ld a, [$c156]                                    ; $6cdd: $fa $56 $c1
	ld b, a                                          ; $6ce0: $47
	ld a, [$c157]                                    ; $6ce1: $fa $57 $c1
	ld c, a                                          ; $6ce4: $4f
	call $3d01                                       ; $6ce5: $cd $01 $3d
	jp $3e0b                                         ; $6ce8: $c3 $0b $3e


jr_00b_6ceb:
	call $3e10                                       ; $6ceb: $cd $10 $3e
	call $3e15                                       ; $6cee: $cd $15 $3e
	call $3d1b                                       ; $6cf1: $cd $1b $3d
	ld l, $07                                        ; $6cf4: $2e $07
	ld a, [hl]                                       ; $6cf6: $7e
	ld [$c159], a                                    ; $6cf7: $ea $59 $c1
	ld l, $05                                        ; $6cfa: $2e $05
	ld a, [hl]                                       ; $6cfc: $7e
	ld [$c15a], a                                    ; $6cfd: $ea $5a $c1
	ret                                              ; $6d00: $c9


Jump_00b_6d01:
jr_00b_6d01:
	ld a, [$c153]                                    ; $6d01: $fa $53 $c1
	set 5, a                                         ; $6d04: $cb $ef
	ld [$c153], a                                    ; $6d06: $ea $53 $c1
	ret                                              ; $6d09: $c9


	rst JumpTable                                          ; $6d0a: $c7
	inc de                                           ; $6d0b: $13
	ld l, l                                          ; $6d0c: $6d
	ld [hl], e                                       ; $6d0d: $73
	ld l, l                                          ; $6d0e: $6d
	sub b                                            ; $6d0f: $90
	ld l, l                                          ; $6d10: $6d
	push de                                          ; $6d11: $d5
	ld l, l                                          ; $6d12: $6d
	inc [hl]                                         ; $6d13: $34
	ld l, $01                                        ; $6d14: $2e $01
	set 7, [hl]                                      ; $6d16: $cb $fe
	ld a, h                                          ; $6d18: $7c
	sub $c1                                          ; $6d19: $d6 $c1
	rrca                                             ; $6d1b: $0f
	ld b, a                                          ; $6d1c: $47
	ld c, $04                                        ; $6d1d: $0e $04
	call BCequBtimesC                                       ; $6d1f: $cd $5f $12
	ld l, $0b                                        ; $6d22: $2e $0b
	ld [hl], c                                       ; $6d24: $71

jr_00b_6d25:
	ld a, $0d                                        ; $6d25: $3e $0d
	call Call_000_12fc                                       ; $6d27: $cd $fc $12
	ld b, a                                          ; $6d2a: $47
	ld de, $c0d8                                     ; $6d2b: $11 $d8 $c0
	call $1327                                       ; $6d2e: $cd $27 $13
	ld a, [de]                                       ; $6d31: $1a
	or a                                             ; $6d32: $b7
	jr nz, jr_00b_6d25                               ; $6d33: $20 $f0

	ld a, [$c162]                                    ; $6d35: $fa $62 $c1
	or a                                             ; $6d38: $b7
	jr nz, jr_00b_6d40                               ; $6d39: $20 $05

	ld a, $03                                        ; $6d3b: $3e $03
	cp b                                             ; $6d3d: $b8
	jr z, jr_00b_6d25                                ; $6d3e: $28 $e5

jr_00b_6d40:
	ld a, $ff                                        ; $6d40: $3e $ff
	ld [de], a                                       ; $6d42: $12
	ld a, b                                          ; $6d43: $78
	ld l, $32                                        ; $6d44: $2e $32
	ld [hl], a                                       ; $6d46: $77
	ld a, [$c154]                                    ; $6d47: $fa $54 $c1
	inc a                                            ; $6d4a: $3c
	and $03                                          ; $6d4b: $e6 $03
	ld [$c154], a                                    ; $6d4d: $ea $54 $c1
	ld de, $4256                                     ; $6d50: $11 $56 $42
	call $1327                                       ; $6d53: $cd $27 $13
	ld a, [de]                                       ; $6d56: $1a
	ld b, a                                          ; $6d57: $47
	ld a, $03                                        ; $6d58: $3e $03
	call Call_000_12fc                                       ; $6d5a: $cd $fc $12
	swap a                                           ; $6d5d: $cb $37
	add b                                            ; $6d5f: $80
	ld b, a                                          ; $6d60: $47
	ld a, $cd                                        ; $6d61: $3e $cd
	sub h                                            ; $6d63: $94
	rrca                                             ; $6d64: $0f
	or b                                             ; $6d65: $b0
	ld l, $31                                        ; $6d66: $2e $31
	ld [hl], a                                       ; $6d68: $77
	xor a                                            ; $6d69: $af
	call Call_00b_6e84                               ; $6d6a: $cd $84 $6e
	call Call_00b_6ebf                               ; $6d6d: $cd $bf $6e
	jp Jump_00b_6ee4                                 ; $6d70: $c3 $e4 $6e


	ld l, $0b                                        ; $6d73: $2e $0b
	ld a, [hl]                                       ; $6d75: $7e
	or a                                             ; $6d76: $b7
	ret nz                                           ; $6d77: $c0

	ld l, $01                                        ; $6d78: $2e $01
	res 7, [hl]                                      ; $6d7a: $cb $be
	ld a, [$c153]                                    ; $6d7c: $fa $53 $c1
	bit 1, a                                         ; $6d7f: $cb $4f
	ret z                                            ; $6d81: $c8

	ld l, $0a                                        ; $6d82: $2e $0a
	inc [hl]                                         ; $6d84: $34
	ld a, $01                                        ; $6d85: $3e $01
	call Call_00b_6e84                               ; $6d87: $cd $84 $6e
	ld bc, $4274                                     ; $6d8a: $01 $74 $42
	jp Jump_00b_6eef                                 ; $6d8d: $c3 $ef $6e


	ld a, [$c153]                                    ; $6d90: $fa $53 $c1
	bit 7, a                                         ; $6d93: $cb $7f
	jr nz, jr_00b_6da8                               ; $6d95: $20 $11

	ld a, [$c153]                                    ; $6d97: $fa $53 $c1
	bit 3, a                                         ; $6d9a: $cb $5f
	ret z                                            ; $6d9c: $c8

	ld a, $08                                        ; $6d9d: $3e $08
	ld b, $c2                                        ; $6d9f: $06 $c2
	call $3e1a                                       ; $6da1: $cd $1a $3e
	ret nc                                           ; $6da4: $d0

	jp Jump_00b_6f46                                 ; $6da5: $c3 $46 $6f


jr_00b_6da8:
	inc [hl]                                         ; $6da8: $34
	ld l, $0b                                        ; $6da9: $2e $0b
	ld [hl], $20                                     ; $6dab: $36 $20
	ld a, $08                                        ; $6dad: $3e $08
	ld b, $c2                                        ; $6daf: $06 $c2
	call $3e1a                                       ; $6db1: $cd $1a $3e
	jr nc, jr_00b_6dce                               ; $6db4: $30 $18

	ld a, $05                                        ; $6db6: $3e $05
	ld b, $c2                                        ; $6db8: $06 $c2
	call $3e1a                                       ; $6dba: $cd $1a $3e
	jr nc, jr_00b_6dc7                               ; $6dbd: $30 $08

	ld a, [$c153]                                    ; $6dbf: $fa $53 $c1
	set 2, a                                         ; $6dc2: $cb $d7
	ld [$c153], a                                    ; $6dc4: $ea $53 $c1

jr_00b_6dc7:
	ld a, h                                          ; $6dc7: $7c
	ld [$c15b], a                                    ; $6dc8: $ea $5b $c1
	call Call_00b_6f11                               ; $6dcb: $cd $11 $6f

jr_00b_6dce:
	xor a                                            ; $6dce: $af
	call Call_00b_6e84                               ; $6dcf: $cd $84 $6e
	jp Jump_00b_6ee4                                 ; $6dd2: $c3 $e4 $6e


	ld a, [$c153]                                    ; $6dd5: $fa $53 $c1
	and $60                                          ; $6dd8: $e6 $60
	xor $60                                          ; $6dda: $ee $60
	ret nz                                           ; $6ddc: $c0

	ld a, [wButtonsPressed]                                    ; $6ddd: $fa $25 $c1
	bit 4, a                                         ; $6de0: $cb $67
	jr nz, jr_00b_6df3                               ; $6de2: $20 $0f

	ld a, [$c15b]                                    ; $6de4: $fa $5b $c1
	cp h                                             ; $6de7: $bc
	ret nz                                           ; $6de8: $c0

	ld l, $0b                                        ; $6de9: $2e $0b
	ld a, [hl]                                       ; $6deb: $7e
	or a                                             ; $6dec: $b7
	ret nz                                           ; $6ded: $c0

	ld [hl], $20                                     ; $6dee: $36 $20
	jp $3d4b                                         ; $6df0: $c3 $4b $3d


jr_00b_6df3:
	ld a, [$c15b]                                    ; $6df3: $fa $5b $c1
	cp h                                             ; $6df6: $bc
	jr nz, jr_00b_6e0d                               ; $6df7: $20 $14

	ld a, [wMenuOptionSelected]                                    ; $6df9: $fa $5f $c1
	ld de, $c161                                     ; $6dfc: $11 $61 $c1
	call $1327                                       ; $6dff: $cd $27 $13
	ld l, $32                                        ; $6e02: $2e $32
	ld a, [hl]                                       ; $6e04: $7e
	ld [de], a                                       ; $6e05: $12
	ld a, [wMenuOptionSelected]                                    ; $6e06: $fa $5f $c1
	inc a                                            ; $6e09: $3c
	ld [wMenuOptionSelected], a                                    ; $6e0a: $ea $5f $c1

jr_00b_6e0d:
	ld a, [$c153]                                    ; $6e0d: $fa $53 $c1
	set 4, a                                         ; $6e10: $cb $e7
	ld [$c153], a                                    ; $6e12: $ea $53 $c1
	ret                                              ; $6e15: $c9


	rst JumpTable                                          ; $6e16: $c7
	dec e                                            ; $6e17: $1d
	ld l, [hl]                                       ; $6e18: $6e
	ld [hl], d                                       ; $6e19: $72
	ld l, [hl]                                       ; $6e1a: $6e
	add e                                            ; $6e1b: $83
	ld l, [hl]                                       ; $6e1c: $6e
	inc [hl]                                         ; $6e1d: $34
	ld l, $01                                        ; $6e1e: $2e $01
	set 7, [hl]                                      ; $6e20: $cb $fe
	ld de, $c09f                                     ; $6e22: $11 $9f $c0
	ld a, h                                          ; $6e25: $7c
	call $1327                                       ; $6e26: $cd $27 $13
	ld a, [de]                                       ; $6e29: $1a
	ld l, $32                                        ; $6e2a: $2e $32
	ld [hl], a                                       ; $6e2c: $77
	ld bc, $425a                                     ; $6e2d: $01 $5a $42
	call Call_00b_6eef                               ; $6e30: $cd $ef $6e
	ld b, $58                                        ; $6e33: $06 $58
	ld a, h                                          ; $6e35: $7c
	cp $c7                                           ; $6e36: $fe $c7
	jr c, jr_00b_6e3c                                ; $6e38: $38 $02

	ld b, $78                                        ; $6e3a: $06 $78

jr_00b_6e3c:
	ld l, $05                                        ; $6e3c: $2e $05
	ld [hl], b                                       ; $6e3e: $70
	ld de, $424d                                     ; $6e3f: $11 $4d $42
	ld a, [wMenuOptionSelected]                                    ; $6e42: $fa $5f $c1
	ld b, a                                          ; $6e45: $47
	ld a, h                                          ; $6e46: $7c
	cp $c7                                           ; $6e47: $fe $c7
	jr nc, jr_00b_6e55                               ; $6e49: $30 $0a

	ld de, $426b                                     ; $6e4b: $11 $6b $42
	ld a, b                                          ; $6e4e: $78
	cp $05                                           ; $6e4f: $fe $05
	jr c, jr_00b_6e55                                ; $6e51: $38 $02

	ld b, $05                                        ; $6e53: $06 $05

jr_00b_6e55:
	ld a, $05                                        ; $6e55: $3e $05
	call $1327                                       ; $6e57: $cd $27 $13
	dec b                                            ; $6e5a: $05
	jr nz, jr_00b_6e55                               ; $6e5b: $20 $f8

	ld a, h                                          ; $6e5d: $7c
	call $1327                                       ; $6e5e: $cd $27 $13
	ld a, [de]                                       ; $6e61: $1a
	ld l, $07                                        ; $6e62: $2e $07
	ld [hl], a                                       ; $6e64: $77
	ld a, h                                          ; $6e65: $7c
	sub $c2                                          ; $6e66: $d6 $c2
	ld c, a                                          ; $6e68: $4f
	ld b, $19                                        ; $6e69: $06 $19
	call BCequBtimesC                                       ; $6e6b: $cd $5f $12
	ld l, $0b                                        ; $6e6e: $2e $0b
	ld [hl], c                                       ; $6e70: $71
	ret                                              ; $6e71: $c9


	ld l, $0b                                        ; $6e72: $2e $0b
	ld a, [hl]                                       ; $6e74: $7e
	or a                                             ; $6e75: $b7
	ret nz                                           ; $6e76: $c0

	ld a, $2b                                        ; $6e77: $3e $2b
	call $1e2e                                       ; $6e79: $cd $2e $1e
	ld l, $01                                        ; $6e7c: $2e $01
	res 7, [hl]                                      ; $6e7e: $cb $be
	ld l, $0a                                        ; $6e80: $2e $0a
	inc [hl]                                         ; $6e82: $34
	ret                                              ; $6e83: $c9


Call_00b_6e84:
	push af                                          ; $6e84: $f5
	ld l, $31                                        ; $6e85: $2e $31
	ld a, [hl]                                       ; $6e87: $7e
	ld e, a                                          ; $6e88: $5f
	and $f0                                          ; $6e89: $e6 $f0
	swap a                                           ; $6e8b: $cb $37
	ld b, a                                          ; $6e8d: $47
	ld c, $08                                        ; $6e8e: $0e $08
	call BCequBtimesC                                       ; $6e90: $cd $5f $12
	ld a, c                                          ; $6e93: $79
	add $24                                          ; $6e94: $c6 $24
	ld d, a                                          ; $6e96: $57
	ld a, e                                          ; $6e97: $7b
	and $0f                                          ; $6e98: $e6 $0f
	ld b, a                                          ; $6e9a: $47
	ld c, $08                                        ; $6e9b: $0e $08
	pop af                                           ; $6e9d: $f1
	or a                                             ; $6e9e: $b7
	jr z, jr_00b_6ead                                ; $6e9f: $28 $0c

	sla c                                            ; $6ea1: $cb $21
	call BCequBtimesC                                       ; $6ea3: $cd $5f $12
	ld a, c                                          ; $6ea6: $79
	add $20                                          ; $6ea7: $c6 $20
	ld e, a                                          ; $6ea9: $5f
	jp $3bf4                                         ; $6eaa: $c3 $f4 $3b


jr_00b_6ead:
	call BCequBtimesC                                       ; $6ead: $cd $5f $12
	ld a, c                                          ; $6eb0: $79
	add $40                                          ; $6eb1: $c6 $40
	ld e, a                                          ; $6eb3: $5f
	jp $3bf4                                         ; $6eb4: $c3 $f4 $3b


Call_00b_6eb7:
	ld l, $31                                        ; $6eb7: $2e $31
	ld a, [hl]                                       ; $6eb9: $7e
	and $0f                                          ; $6eba: $e6 $0f
	cp $03                                           ; $6ebc: $fe $03
	ret                                              ; $6ebe: $c9


Call_00b_6ebf:
	ld bc, $42c2                                     ; $6ebf: $01 $c2 $42
	ld de, $42a8                                     ; $6ec2: $11 $a8 $42
	call Call_00b_6eb7                               ; $6ec5: $cd $b7 $6e
	jr nc, jr_00b_6ed0                               ; $6ec8: $30 $06

	ld bc, $42cf                                     ; $6eca: $01 $cf $42
	ld de, $42b5                                     ; $6ecd: $11 $b5 $42

jr_00b_6ed0:
	ld l, $32                                        ; $6ed0: $2e $32
	ld a, [hl]                                       ; $6ed2: $7e
	ld l, a                                          ; $6ed3: $6f
	call $132c                                       ; $6ed4: $cd $2c $13
	ld a, l                                          ; $6ed7: $7d
	call $1327                                       ; $6ed8: $cd $27 $13
	ld a, [bc]                                       ; $6edb: $0a
	ld l, $34                                        ; $6edc: $2e $34
	ld [hl], a                                       ; $6ede: $77
	ld a, [de]                                       ; $6edf: $1a
	ld l, $33                                        ; $6ee0: $2e $33
	ld [hl], a                                       ; $6ee2: $77
	ret                                              ; $6ee3: $c9


Jump_00b_6ee4:
	ld bc, $425a                                     ; $6ee4: $01 $5a $42
	call Call_00b_6eb7                               ; $6ee7: $cd $b7 $6e
	jr nc, jr_00b_6eef                               ; $6eea: $30 $03

	ld bc, $428e                                     ; $6eec: $01 $8e $42

Call_00b_6eef:
Jump_00b_6eef:
jr_00b_6eef:
	ld l, $32                                        ; $6eef: $2e $32
	ld a, [hl]                                       ; $6ef1: $7e
	rlca                                             ; $6ef2: $07
	call $132c                                       ; $6ef3: $cd $2c $13
	ld l, $08                                        ; $6ef6: $2e $08
	ld a, [bc]                                       ; $6ef8: $0a
	ld [hl+], a                                      ; $6ef9: $22
	inc bc                                           ; $6efa: $03
	ld a, [bc]                                       ; $6efb: $0a
	ld [hl], a                                       ; $6efc: $77
	ret                                              ; $6efd: $c9


Call_00b_6efe:
	cp b                                             ; $6efe: $b8
	jr nc, jr_00b_6f05                               ; $6eff: $30 $04

	cp c                                             ; $6f01: $b9
	jr c, jr_00b_6f05                                ; $6f02: $38 $01

	ret                                              ; $6f04: $c9


jr_00b_6f05:
	ld l, $30                                        ; $6f05: $2e $30
	ld a, [hl]                                       ; $6f07: $7e
	ld b, a                                          ; $6f08: $47
	res 7, b                                         ; $6f09: $cb $b8
	cpl                                              ; $6f0b: $2f
	and $80                                          ; $6f0c: $e6 $80
	or b                                             ; $6f0e: $b0
	ld [hl], a                                       ; $6f0f: $77
	ret                                              ; $6f10: $c9


Call_00b_6f11:
	ld l, $05                                        ; $6f11: $2e $05
	ld a, [hl+]                                      ; $6f13: $2a
	srl a                                            ; $6f14: $cb $3f
	add $38                                          ; $6f16: $c6 $38
	ld [$c157], a                                    ; $6f18: $ea $57 $c1
	inc l                                            ; $6f1b: $2c
	ld a, [hl]                                       ; $6f1c: $7e
	ld [$c156], a                                    ; $6f1d: $ea $56 $c1
	ret                                              ; $6f20: $c9


Call_00b_6f21:
Jump_00b_6f21:
	call Call_00b_6f3a                               ; $6f21: $cd $3a $6f
	ld b, a                                          ; $6f24: $47
	ld a, [$c15a]                                    ; $6f25: $fa $5a $c1
	cp b                                             ; $6f28: $b8
	jr c, jr_00b_6f35                                ; $6f29: $38 $0a

	sub b                                            ; $6f2b: $90
	cp $08                                           ; $6f2c: $fe $08
	jr nc, jr_00b_6f35                               ; $6f2e: $30 $05

	ld l, $01                                        ; $6f30: $2e $01
	res 7, [hl]                                      ; $6f32: $cb $be
	ret                                              ; $6f34: $c9


jr_00b_6f35:
	ld l, $01                                        ; $6f35: $2e $01
	set 7, [hl]                                      ; $6f37: $cb $fe
	ret                                              ; $6f39: $c9


Call_00b_6f3a:
	ld a, h                                          ; $6f3a: $7c
	sub $c2                                          ; $6f3b: $d6 $c2
	rrca                                             ; $6f3d: $0f
	ld de, $4322                                     ; $6f3e: $11 $22 $43
	call $1327                                       ; $6f41: $cd $27 $13
	ld a, [de]                                       ; $6f44: $1a
	ret                                              ; $6f45: $c9


Jump_00b_6f46:
	ld de, $c15c                                     ; $6f46: $11 $5c $c1
	ld c, $03                                        ; $6f49: $0e $03

jr_00b_6f4b:
	ld a, [de]                                       ; $6f4b: $1a
	or a                                             ; $6f4c: $b7
	jr z, jr_00b_6f54                                ; $6f4d: $28 $05

	inc de                                           ; $6f4f: $13
	dec c                                            ; $6f50: $0d
	jr nz, jr_00b_6f4b                               ; $6f51: $20 $f8

	ret                                              ; $6f53: $c9


jr_00b_6f54:
	ld a, [$c15c]                                    ; $6f54: $fa $5c $c1
	cp h                                             ; $6f57: $bc
	ret z                                            ; $6f58: $c8

	ld a, [$c15d]                                    ; $6f59: $fa $5d $c1
	cp h                                             ; $6f5c: $bc
	ret z                                            ; $6f5d: $c8

	ld a, [$c15e]                                    ; $6f5e: $fa $5e $c1
	cp h                                             ; $6f61: $bc
	ret z                                            ; $6f62: $c8

	ld a, h                                          ; $6f63: $7c
	ld [de], a                                       ; $6f64: $12
	ret                                              ; $6f65: $c9


Call_00b_6f66:
	xor a                                            ; $6f66: $af
	ld [$c0d8], a                                    ; $6f67: $ea $d8 $c0
	ld [$c0d9], a                                    ; $6f6a: $ea $d9 $c0
	ld [$c0da], a                                    ; $6f6d: $ea $da $c0
	ld de, $c0d8                                     ; $6f70: $11 $d8 $c0
	ld a, [$c15c]                                    ; $6f73: $fa $5c $c1
	or a                                             ; $6f76: $b7
	jr z, jr_00b_6f7b                                ; $6f77: $28 $02

	ld [de], a                                       ; $6f79: $12
	inc de                                           ; $6f7a: $13

jr_00b_6f7b:
	ld a, [$c15d]                                    ; $6f7b: $fa $5d $c1
	or a                                             ; $6f7e: $b7
	jr z, jr_00b_6f83                                ; $6f7f: $28 $02

	ld [de], a                                       ; $6f81: $12
	inc de                                           ; $6f82: $13

jr_00b_6f83:
	ld a, [$c15e]                                    ; $6f83: $fa $5e $c1
	or a                                             ; $6f86: $b7
	jr z, jr_00b_6f8b                                ; $6f87: $28 $02

	ld [de], a                                       ; $6f89: $12
	inc de                                           ; $6f8a: $13

jr_00b_6f8b:
	ld de, $c15c                                     ; $6f8b: $11 $5c $c1
	ld a, [$c0d8]                                    ; $6f8e: $fa $d8 $c0
	ld [de], a                                       ; $6f91: $12
	inc de                                           ; $6f92: $13
	ld a, [$c0d9]                                    ; $6f93: $fa $d9 $c0
	ld [de], a                                       ; $6f96: $12
	inc de                                           ; $6f97: $13
	ld a, [$c0da]                                    ; $6f98: $fa $da $c0
	ld [de], a                                       ; $6f9b: $12
	ret                                              ; $6f9c: $c9


Call_00b_6f9d:
Jump_00b_6f9d:
	ld l, $35                                        ; $6f9d: $2e $35
	inc [hl]                                         ; $6f9f: $34
	bit 0, [hl]                                      ; $6fa0: $cb $46
	jp z, $3d3d                                      ; $6fa2: $ca $3d $3d

	ld a, $08                                        ; $6fa5: $3e $08
	call $132c                                       ; $6fa7: $cd $2c $13
	jp $3d3d                                         ; $6faa: $c3 $3d $3d


Call_00b_6fad:
	rst FarCall                                          ; $6fad: $f7
	cpl                                              ; $6fae: $2f
	ld e, h                                          ; $6faf: $5c
	inc c                                            ; $6fb0: $0c
	ret                                              ; $6fb1: $c9


Call_00b_6fb2:
	xor a                                            ; $6fb2: $af
	ld hl, $c153                                     ; $6fb3: $21 $53 $c1
	ld [hl+], a                                      ; $6fb6: $22
	ld [hl+], a                                      ; $6fb7: $22
	ret                                              ; $6fb8: $c9


Call_00b_6fb9:
	xor a                                            ; $6fb9: $af
	ld hl, $c155                                     ; $6fba: $21 $55 $c1
	ld [hl+], a                                      ; $6fbd: $22
	ld [hl], a                                       ; $6fbe: $77
	ret                                              ; $6fbf: $c9


Jump_00b_6fc0:
	push bc                                          ; $6fc0: $c5
	xor a                                            ; $6fc1: $af
	call $1e2e                                       ; $6fc2: $cd $2e $1e
	call $068e                                       ; $6fc5: $cd $8e $06
	ld a, $09                                        ; $6fc8: $3e $09
	ld [$c186], a                                    ; $6fca: $ea $86 $c1
	ld a, $77                                        ; $6fcd: $3e $77
	call $1e27                                       ; $6fcf: $cd $27 $1e
	pop bc                                           ; $6fd2: $c1
	ld a, c                                          ; $6fd3: $79
	push bc                                          ; $6fd4: $c5
	call Call_00b_46a1                               ; $6fd5: $cd $a1 $46
	ld hl, $c200                                     ; $6fd8: $21 $00 $c2
	pop bc                                           ; $6fdb: $c1
	ld a, b                                          ; $6fdc: $78
	ld [hl], a                                       ; $6fdd: $77
	jp $2e21                                         ; $6fde: $c3 $21 $2e


Call_00b_6fe1:
	ld a, $08                                        ; $6fe1: $3e $08
	call $068e                                       ; $6fe3: $cd $8e $06
	call Call_00b_6fb2                               ; $6fe6: $cd $b2 $6f
	call Call_00b_6fb9                               ; $6fe9: $cd $b9 $6f
	ld a, $30                                        ; $6fec: $3e $30
	ld [$c188], a                                    ; $6fee: $ea $88 $c1
	jp Jump_00b_4784                                 ; $6ff1: $c3 $84 $47


Call_00b_6ff4:
	ld hl, $c155                                     ; $6ff4: $21 $55 $c1
	bit 4, [hl]                                      ; $6ff7: $cb $66
	jr nz, jr_00b_7003                               ; $6ff9: $20 $08

	ld a, [$c318]                                    ; $6ffb: $fa $18 $c3
	ld [$c157], a                                    ; $6ffe: $ea $57 $c1
	jr jr_00b_7008                                   ; $7001: $18 $05

jr_00b_7003:
	ld a, $03                                        ; $7003: $3e $03
	ld [$c157], a                                    ; $7005: $ea $57 $c1

jr_00b_7008:
	ld [$c150], a                                    ; $7008: $ea $50 $c1
	ret                                              ; $700b: $c9


Call_00b_700c:
	ld hl, $43f7                                     ; $700c: $21 $f7 $43
	ld a, [$c158]                                    ; $700f: $fa $58 $c1
	or a                                             ; $7012: $b7
	jr z, jr_00b_7018                                ; $7013: $28 $03

	ld hl, $4403                                     ; $7015: $21 $03 $44

jr_00b_7018:
	call $0ab5                                       ; $7018: $cd $b5 $0a
	ld hl, $454a                                     ; $701b: $21 $4a $45
	ld a, [$c157]                                    ; $701e: $fa $57 $c1
	ld [$c0d8], a                                    ; $7021: $ea $d8 $c0
	call $cf8a                                       ; $7024: $cd $8a $cf
	ld a, [$c0d8]                                    ; $7027: $fa $d8 $c0
	ld de, $1922                                     ; $702a: $11 $22 $19
	rlca                                             ; $702d: $07
	rlca                                             ; $702e: $07
	call $1327                                       ; $702f: $cd $27 $13
	push hl                                          ; $7032: $e5
	push de                                          ; $7033: $d5
	call Call_00b_4743                               ; $7034: $cd $43 $47
	pop de                                           ; $7037: $d1
	pop hl                                           ; $7038: $e1
	set 7, d                                         ; $7039: $cb $fa
	ld bc, $fe00                                     ; $703b: $01 $00 $fe
	add hl, bc                                       ; $703e: $09
	jp Jump_00b_4743                                 ; $703f: $c3 $43 $47


Jump_00b_7042:
	ld de, $c155                                     ; $7042: $11 $55 $c1
	ld a, [de]                                       ; $7045: $1a
	bit 6, a                                         ; $7046: $cb $77
	jr nz, jr_00b_707d                               ; $7048: $20 $33

	bit 4, a                                         ; $704a: $cb $67
	jr nz, jr_00b_7079                               ; $704c: $20 $2b

	bit 5, a                                         ; $704e: $cb $6f
	jp nz, Jump_00b_73d9                             ; $7050: $c2 $d9 $73

	and $03                                          ; $7053: $e6 $03
	cp $03                                           ; $7055: $fe $03
	jr z, jr_00b_7073                                ; $7057: $28 $1a

	ld hl, $c188                                     ; $7059: $21 $88 $c1
	dec [hl]                                         ; $705c: $35
	ld a, [hl]                                       ; $705d: $7e
	or a                                             ; $705e: $b7
	jr nz, jr_00b_7073                               ; $705f: $20 $12

	ld [hl], $30                                     ; $7061: $36 $30
	ld hl, $c155                                     ; $7063: $21 $55 $c1
	inc [hl]                                         ; $7066: $34
	ld a, [hl]                                       ; $7067: $7e
	and $03                                          ; $7068: $e6 $03
	cp $03                                           ; $706a: $fe $03
	jr nz, jr_00b_7073                               ; $706c: $20 $05

	ld a, $40                                        ; $706e: $3e $40
	call $1e2e                                       ; $7070: $cd $2e $1e

jr_00b_7073:
	call Call_00b_711a                               ; $7073: $cd $1a $71
	jp $2e21                                         ; $7076: $c3 $21 $2e


jr_00b_7079:
	bit 5, a                                         ; $7079: $cb $6f
	jr z, jr_00b_7073                                ; $707b: $28 $f6

jr_00b_707d:
	jp Jump_00b_4614                                 ; $707d: $c3 $14 $46


Jump_00b_7080:
	ld a, [wButtonsPressed]                                    ; $7080: $fa $25 $c1
	and $90                                          ; $7083: $e6 $90
	jp z, $2e21                                      ; $7085: $ca $21 $2e

	push de                                          ; $7088: $d5
	push hl                                          ; $7089: $e5
	ld hl, $43bb                                     ; $708a: $21 $bb $43
	call Call_00b_45e9                               ; $708d: $cd $e9 $45
	pop hl                                           ; $7090: $e1
	call $0ab5                                       ; $7091: $cd $b5 $0a
	call Call_00b_6fe1                               ; $7094: $cd $e1 $6f
	pop bc                                           ; $7097: $c1
	call Call_00b_4608                               ; $7098: $cd $08 $46
	call $096e                                       ; $709b: $cd $6e $09
	ld bc, $681a                                     ; $709e: $01 $1a $68
	jp $18b7                                         ; $70a1: $c3 $b7 $18


Jump_00b_70a4:
	call Call_00b_461e                               ; $70a4: $cd $1e $46
	jp z, Jump_00b_7042                              ; $70a7: $ca $42 $70

	call Call_00b_711a                               ; $70aa: $cd $1a $71
	jp $2e21                                         ; $70ad: $c3 $21 $2e


Jump_00b_70b0:
	call Call_00b_4614                               ; $70b0: $cd $14 $46
	ld bc, $67fc                                     ; $70b3: $01 $fc $67
	jp $18b7                                         ; $70b6: $c3 $b7 $18


Jump_00b_70b9:
	call Call_00b_461e                               ; $70b9: $cd $1e $46
	ret nz                                           ; $70bc: $c0

	call Call_00b_4614                               ; $70bd: $cd $14 $46
	ld hl, $c155                                     ; $70c0: $21 $55 $c1
	set 7, [hl]                                      ; $70c3: $cb $fe
	call $0986                                       ; $70c5: $cd $86 $09
	ld hl, $43d6                                     ; $70c8: $21 $d6 $43
	call $0ab5                                       ; $70cb: $cd $b5 $0a
	xor a                                            ; $70ce: $af
	ldh [hDisp0_SCX], a                                     ; $70cf: $e0 $84
	call $068e                                       ; $70d1: $cd $8e $06
	call Call_00b_6ff4                               ; $70d4: $cd $f4 $6f
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $70d7: $cd $ef $2d
	call Call_00b_700c                               ; $70da: $cd $0c $70
	ld bc, $4552                                     ; $70dd: $01 $52 $45
	call Call_00b_4608                               ; $70e0: $cd $08 $46
	call $096e                                       ; $70e3: $cd $6e $09
	ld a, $00                                        ; $70e6: $3e $00
	call $1e2e                                       ; $70e8: $cd $2e $1e
	ld a, $74                                        ; $70eb: $3e $74
	ld b, $ca                                        ; $70ed: $06 $ca
	ld hl, $c157                                     ; $70ef: $21 $57 $c1
	bit 1, [hl]                                      ; $70f2: $cb $4e
	jr z, jr_00b_70fa                                ; $70f4: $28 $04

	ld a, $76                                        ; $70f6: $3e $76
	ld b, $6a                                        ; $70f8: $06 $6a

jr_00b_70fa:
	call $1e27                                       ; $70fa: $cd $27 $1e
	ld a, b                                          ; $70fd: $78
	ld [$c161], a                                    ; $70fe: $ea $61 $c1
	call $2e21                                       ; $7101: $cd $21 $2e
	ld bc, $681a                                     ; $7104: $01 $1a $68
	call $18b7                                       ; $7107: $cd $b7 $18
	ld bc, $65c6                                     ; $710a: $01 $c6 $65
	ld a, [$c158]                                    ; $710d: $fa $58 $c1
	or a                                             ; $7110: $b7
	jp z, $18c4                                      ; $7111: $ca $c4 $18

	ld bc, $65ce                                     ; $7114: $01 $ce $65
	jp $18c4                                         ; $7117: $c3 $c4 $18


Call_00b_711a:
	ld a, [$c331]                                    ; $711a: $fa $31 $c3
	ld e, a                                          ; $711d: $5f
	ld a, [$c332]                                    ; $711e: $fa $32 $c3
	ld d, a                                          ; $7121: $57
	ld bc, $08c0                                     ; $7122: $01 $c0 $08
	call wCpBCtoDE                                       ; $7125: $cd $8c $ce
	ret c                                            ; $7128: $d8

	ld a, d                                          ; $7129: $7a
	rrca                                             ; $712a: $0f
	ld a, e                                          ; $712b: $7b
	rra                                              ; $712c: $1f
	ldh [hDisp0_SCX], a                                     ; $712d: $e0 $84
	and $10                                          ; $712f: $e6 $10
	ld b, a                                          ; $7131: $47
	ld a, [$c153]                                    ; $7132: $fa $53 $c1
	and $10                                          ; $7135: $e6 $10
	xor b                                            ; $7137: $a8
	ret z                                            ; $7138: $c8

	ldh a, [hDisp0_SCX]                                     ; $7139: $f0 $84
	ld [$c153], a                                    ; $713b: $ea $53 $c1
	ld de, $4457                                     ; $713e: $11 $57 $44
	call Call_00b_719c                               ; $7141: $cd $9c $71
	push de                                          ; $7144: $d5
	ld hl, $c0d8                                     ; $7145: $21 $d8 $c0
	call Call_00b_71d3                               ; $7148: $cd $d3 $71
	ld de, $4461                                     ; $714b: $11 $61 $44
	call Call_00b_719c                               ; $714e: $cd $9c $71
	push de                                          ; $7151: $d5
	ld hl, $c0dc                                     ; $7152: $21 $dc $c0
	call Call_00b_71d3                               ; $7155: $cd $d3 $71
	call Call_00b_71c3                               ; $7158: $cd $c3 $71
	call Call_00b_71de                               ; $715b: $cd $de $71
	ld a, [wInitialA]                                    ; $715e: $fa $00 $c1
	cp $11                                           ; $7161: $fe $11
	jr nz, jr_00b_7189                               ; $7163: $20 $24

	pop de                                           ; $7165: $d1
	ld bc, $0200                                     ; $7166: $01 $00 $02
	call wAddBContoDE                                       ; $7169: $cd $92 $ce
	ld hl, $c0dc                                     ; $716c: $21 $dc $c0
	call Call_00b_71d3                               ; $716f: $cd $d3 $71
	pop de                                           ; $7172: $d1
	ld bc, $0200                                     ; $7173: $01 $00 $02
	call wAddBContoDE                                       ; $7176: $cd $92 $ce
	ld hl, $c0d8                                     ; $7179: $21 $d8 $c0
	call Call_00b_71d3                               ; $717c: $cd $d3 $71
	call Call_00b_71c3                               ; $717f: $cd $c3 $71
	ld h, $18                                        ; $7182: $26 $18
	call Call_00b_71de                               ; $7184: $cd $de $71
	jr jr_00b_718b                                   ; $7187: $18 $02

jr_00b_7189:
	pop de                                           ; $7189: $d1
	pop de                                           ; $718a: $d1

jr_00b_718b:
	ldh a, [hDisp0_SCX]                                     ; $718b: $f0 $84
	bit 4, a                                         ; $718d: $cb $67
	ret nz                                           ; $718f: $c0

	ld hl, $c154                                     ; $7190: $21 $54 $c1
	ld a, [hl]                                       ; $7193: $7e
	inc a                                            ; $7194: $3c
	ld [hl], a                                       ; $7195: $77
	cp $0a                                           ; $7196: $fe $0a
	ret nz                                           ; $7198: $c0

	ld [hl], $00                                     ; $7199: $36 $00
	ret                                              ; $719b: $c9


Call_00b_719c:
	ld a, [$c154]                                    ; $719c: $fa $54 $c1
	call $1327                                       ; $719f: $cd $27 $13
	ld a, [de]                                       ; $71a2: $1a
	ld d, $00                                        ; $71a3: $16 $00
	ld e, a                                          ; $71a5: $5f
	call $ceeb                                       ; $71a6: $cd $eb $ce
	ld bc, $da80                                     ; $71a9: $01 $80 $da
	call wAddBContoDE                                       ; $71ac: $cd $92 $ce
	ldh a, [hDisp0_SCX]                                     ; $71af: $f0 $84
	bit 4, a                                         ; $71b1: $cb $67
	ret nz                                           ; $71b3: $c0

	inc de                                           ; $71b4: $13
	inc de                                           ; $71b5: $13
	ret                                              ; $71b6: $c9


Call_00b_71b7:
jr_00b_71b7:
	ld b, $04                                        ; $71b7: $06 $04

jr_00b_71b9:
	ld a, [de]                                       ; $71b9: $1a
	ld [hl+], a                                      ; $71ba: $22
	inc de                                           ; $71bb: $13
	inc de                                           ; $71bc: $13
	inc de                                           ; $71bd: $13
	inc de                                           ; $71be: $13
	dec b                                            ; $71bf: $05
	jr nz, jr_00b_71b9                               ; $71c0: $20 $f7

	ret                                              ; $71c2: $c9


Call_00b_71c3:
	ldh a, [hDisp0_SCX]                                     ; $71c3: $f0 $84
	srl a                                            ; $71c5: $cb $3f
	srl a                                            ; $71c7: $cb $3f
	srl a                                            ; $71c9: $cb $3f
	add $1a                                          ; $71cb: $c6 $1a
	and $1e                                          ; $71cd: $e6 $1e
	ld l, a                                          ; $71cf: $6f
	ld h, $98                                        ; $71d0: $26 $98
	ret                                              ; $71d2: $c9


Call_00b_71d3:
	push de                                          ; $71d3: $d5
	call Call_00b_71b7                               ; $71d4: $cd $b7 $71
	pop de                                           ; $71d7: $d1
	inc de                                           ; $71d8: $13
	ld a, $04                                        ; $71d9: $3e $04
	rst AddAOntoHL                                          ; $71db: $ef
	jr jr_00b_71b7                                   ; $71dc: $18 $d9

Call_00b_71de:
	push hl                                          ; $71de: $e5
	ld a, $08                                        ; $71df: $3e $08
	call $1693                                       ; $71e1: $cd $93 $16
	ld d, h                                          ; $71e4: $54
	ld e, l                                          ; $71e5: $5d
	ld hl, $c0d8                                     ; $71e6: $21 $d8 $c0
	call $ccc8                                       ; $71e9: $cd $c8 $cc
	pop hl                                           ; $71ec: $e1
	inc hl                                           ; $71ed: $23
	ld a, $08                                        ; $71ee: $3e $08
	call $1693                                       ; $71f0: $cd $93 $16
	ld d, h                                          ; $71f3: $54
	ld e, l                                          ; $71f4: $5d
	ld hl, $c0e0                                     ; $71f5: $21 $e0 $c0
	jp $ccc8                                         ; $71f8: $c3 $c8 $cc


	ld b, $c2                                        ; $71fb: $06 $c2
	ld de, $2080                                     ; $71fd: $11 $80 $20
	call Call_00b_7242                               ; $7200: $cd $42 $72
	ld a, h                                          ; $7203: $7c
	cp $c5                                           ; $7204: $fe $c5
	jr nz, jr_00b_7215                               ; $7206: $20 $0d

	ld a, [$c155]                                    ; $7208: $fa $55 $c1
	bit 4, a                                         ; $720b: $cb $67
	jr z, jr_00b_7215                                ; $720d: $28 $06

	ld bc, $d4f3                                     ; $720f: $01 $f3 $d4
	jp $3d3d                                         ; $7212: $c3 $3d $3d


jr_00b_7215:
	ld bc, $d4d3                                     ; $7215: $01 $d3 $d4

Call_00b_7218:
	ld a, h                                          ; $7218: $7c
	sub $c2                                          ; $7219: $d6 $c2
	add a                                            ; $721b: $87
	add a                                            ; $721c: $87
	add a                                            ; $721d: $87
	call $132c                                       ; $721e: $cd $2c $13
	jp $3d3d                                         ; $7221: $c3 $3d $3d


	ld l, $03                                        ; $7224: $2e $03
	set 4, [hl]                                      ; $7226: $cb $e6
	ld b, $c6                                        ; $7228: $06 $c6
	ld de, $1968                                     ; $722a: $11 $68 $19
	call Call_00b_7242                               ; $722d: $cd $42 $72
	ld bc, $d4fb                                     ; $7230: $01 $fb $d4
	ld a, [$c157]                                    ; $7233: $fa $57 $c1
	add $c6                                          ; $7236: $c6 $c6
	cp h                                             ; $7238: $bc
	jp nz, $3d3d                                     ; $7239: $c2 $3d $3d

	ld bc, $d50b                                     ; $723c: $01 $0b $d5
	jp $3d3d                                         ; $723f: $c3 $3d $3d


Call_00b_7242:
	ld a, h                                          ; $7242: $7c
	sub b                                            ; $7243: $90
	ld b, $20                                        ; $7244: $06 $20
	ld c, a                                          ; $7246: $4f
	call BCequBtimesC                                       ; $7247: $cd $5f $12
	ld a, c                                          ; $724a: $79
	add d                                            ; $724b: $82
	ld d, a                                          ; $724c: $57
	jp $3bf4                                         ; $724d: $c3 $f4 $3b


Call_00b_7250:
	ld l, $13                                        ; $7250: $2e $13
	ld a, [hl+]                                      ; $7252: $2a
	ld e, a                                          ; $7253: $5f
	ld d, [hl]                                       ; $7254: $56
	ld a, b                                          ; $7255: $78
	call $1327                                       ; $7256: $cd $27 $13
	ret                                              ; $7259: $c9


Call_00b_725a:
	ld l, $13                                        ; $725a: $2e $13
	ld a, [hl+]                                      ; $725c: $2a
	ld e, a                                          ; $725d: $5f
	ld d, [hl]                                       ; $725e: $56
	ld a, b                                          ; $725f: $78
	rst SubAFromDE                                          ; $7260: $df
	ld a, d                                          ; $7261: $7a
	cp $e0                                           ; $7262: $fe $e0
	ret c                                            ; $7264: $d8

	ld de, $0000                                     ; $7265: $11 $00 $00
	ret                                              ; $7268: $c9


Call_00b_7269:
Jump_00b_7269:
	ld b, $20                                        ; $7269: $06 $20
	call Call_00b_725a                               ; $726b: $cd $5a $72
	jp $3d32                                         ; $726e: $c3 $32 $3d


Call_00b_7271:
Jump_00b_7271:
	ld l, $16                                        ; $7271: $2e $16
	ld a, [hl+]                                      ; $7273: $2a
	ld c, a                                          ; $7274: $4f
	ld b, [hl]                                       ; $7275: $46
	call wCpBCtoDE                                       ; $7276: $cd $8c $ce
	jr nc, jr_00b_727e                               ; $7279: $30 $03

	call $cede                                       ; $727b: $cd $de $ce

jr_00b_727e:
	jp $3d32                                         ; $727e: $c3 $32 $3d


Call_00b_7281:
Jump_00b_7281:
	ld l, $13                                        ; $7281: $2e $13
	ld a, [hl+]                                      ; $7283: $2a
	ld b, [hl]                                       ; $7284: $46
	ld c, a                                          ; $7285: $4f
	ld l, $30                                        ; $7286: $2e $30
	ld a, [hl+]                                      ; $7288: $2a
	ld e, a                                          ; $7289: $5f
	ld a, [hl+]                                      ; $728a: $2a
	ld d, a                                          ; $728b: $57
	call wAddBContoDE                                       ; $728c: $cd $92 $ce
	jr nc, jr_00b_7292                               ; $728f: $30 $01

	inc [hl]                                         ; $7291: $34

jr_00b_7292:
	dec l                                            ; $7292: $2d
	ld a, d                                          ; $7293: $7a
	ld [hl-], a                                      ; $7294: $32
	ld a, e                                          ; $7295: $7b
	ld [hl], a                                       ; $7296: $77
	ret                                              ; $7297: $c9


Call_00b_7298:
	ld l, $31                                        ; $7298: $2e $31
	ld a, [hl+]                                      ; $729a: $2a
	ld e, a                                          ; $729b: $5f
	ld d, [hl]                                       ; $729c: $56
	jp wCpBCtoDE                                         ; $729d: $c3 $8c $ce


Call_00b_72a0:
Jump_00b_72a0:
	call Call_00b_72ef                               ; $72a0: $cd $ef $72
	ret z                                            ; $72a3: $c8

	ld a, [$c331]                                    ; $72a4: $fa $31 $c3
	ld e, a                                          ; $72a7: $5f
	ld a, [$c332]                                    ; $72a8: $fa $32 $c3
	ld d, a                                          ; $72ab: $57
	ld l, $31                                        ; $72ac: $2e $31
	ld a, [hl+]                                      ; $72ae: $2a
	ld c, a                                          ; $72af: $4f
	ld b, [hl]                                       ; $72b0: $46
	call wSwapBCandHL                                       ; $72b1: $cd $d9 $ce
	call wHLminusEquDE                                       ; $72b4: $cd $9e $ce
	call wSwapBCandHL                                       ; $72b7: $cd $d9 $ce
	call Call_00b_72ea                               ; $72ba: $cd $ea $72
	swap a                                           ; $72bd: $cb $37
	rrca                                             ; $72bf: $0f
	rrca                                             ; $72c0: $0f
	add $1c                                          ; $72c1: $c6 $1c
	add c                                            ; $72c3: $81
	ld l, $07                                        ; $72c4: $2e $07
	ld [hl], a                                       ; $72c6: $77
	ld l, $01                                        ; $72c7: $2e $01
	bit 7, b                                         ; $72c9: $cb $78
	jr z, jr_00b_72db                                ; $72cb: $28 $0e

	call $cec0                                       ; $72cd: $cd $c0 $ce
	ld a, b                                          ; $72d0: $78
	or a                                             ; $72d1: $b7
	jr nz, jr_00b_72e7                               ; $72d2: $20 $13

	ld a, c                                          ; $72d4: $79
	cp $40                                           ; $72d5: $fe $40
	jr nc, jr_00b_72e7                               ; $72d7: $30 $0e

	jr jr_00b_72e4                                   ; $72d9: $18 $09

jr_00b_72db:
	ld a, b                                          ; $72db: $78
	or a                                             ; $72dc: $b7
	jr nz, jr_00b_72e7                               ; $72dd: $20 $08

	ld a, c                                          ; $72df: $79
	cp $90                                           ; $72e0: $fe $90
	jr nc, jr_00b_72e7                               ; $72e2: $30 $03

jr_00b_72e4:
	res 7, [hl]                                      ; $72e4: $cb $be
	ret                                              ; $72e6: $c9


jr_00b_72e7:
	set 7, [hl]                                      ; $72e7: $cb $fe
	ret                                              ; $72e9: $c9


Call_00b_72ea:
	ld a, h                                          ; $72ea: $7c
	sub $c7                                          ; $72eb: $d6 $c7
	rrca                                             ; $72ed: $0f
	ret                                              ; $72ee: $c9


Call_00b_72ef:
	ld a, h                                          ; $72ef: $7c
	cp $c3                                           ; $72f0: $fe $c3
	ret                                              ; $72f2: $c9


Call_00b_72f3:
	ld b, a                                          ; $72f3: $47

jr_00b_72f4:
	ld a, [de]                                       ; $72f4: $1a
	cp b                                             ; $72f5: $b8
	jr nc, jr_00b_72ff                               ; $72f6: $30 $07

	ld a, $04                                        ; $72f8: $3e $04
	call $1327                                       ; $72fa: $cd $27 $13
	jr jr_00b_72f4                                   ; $72fd: $18 $f5

jr_00b_72ff:
	inc de                                           ; $72ff: $13
	ld l, $15                                        ; $7300: $2e $15
	ld a, [de]                                       ; $7302: $1a
	ld [hl+], a                                      ; $7303: $22
	inc de                                           ; $7304: $13
	ld a, [de]                                       ; $7305: $1a
	ld [hl+], a                                      ; $7306: $22
	inc de                                           ; $7307: $13
	ld a, [de]                                       ; $7308: $1a
	ld [hl], a                                       ; $7309: $77
	ret                                              ; $730a: $c9


Call_00b_730b:
	call Call_00b_72ea                               ; $730b: $cd $ea $72
	call $132c                                       ; $730e: $cd $2c $13
	ld a, [bc]                                       ; $7311: $0a
	ld l, $15                                        ; $7312: $2e $15
	ld [hl], a                                       ; $7314: $77
	call Call_00b_72ea                               ; $7315: $cd $ea $72
	push hl                                          ; $7318: $e5
	call wSwapDEandHL                                       ; $7319: $cd $d4 $ce
	call $cf95                                       ; $731c: $cd $95 $cf
	pop hl                                           ; $731f: $e1
	ld l, $16                                        ; $7320: $2e $16
	ld a, e                                          ; $7322: $7b
	ld [hl+], a                                      ; $7323: $22
	ld [hl], d                                       ; $7324: $72
	call Call_00b_72ea                               ; $7325: $cd $ea $72
	push hl                                          ; $7328: $e5
	ld hl, $44d6                                     ; $7329: $21 $d6 $44
	call $cf95                                       ; $732c: $cd $95 $cf
	pop hl                                           ; $732f: $e1
	jp $3bf4                                         ; $7330: $c3 $f4 $3b


Call_00b_7333:
	ld l, $0b                                        ; $7333: $2e $0b
	ld a, [hl]                                       ; $7335: $7e
	or a                                             ; $7336: $b7
	ret                                              ; $7337: $c9


Call_00b_7338:
Jump_00b_7338:
	ld de, $c156                                     ; $7338: $11 $56 $c1
	ld a, [de]                                       ; $733b: $1a
	ld l, $18                                        ; $733c: $2e $18
	ld [hl], a                                       ; $733e: $77
	inc a                                            ; $733f: $3c
	ld [de], a                                       ; $7340: $12
	ret                                              ; $7341: $c9


Call_00b_7342:
	ld a, [$c155]                                    ; $7342: $fa $55 $c1
	and $03                                          ; $7345: $e6 $03
	cp $03                                           ; $7347: $fe $03
	ret                                              ; $7349: $c9


Call_00b_734a:
	call Call_00b_72ef                               ; $734a: $cd $ef $72
	ret nz                                           ; $734d: $c0

	ld a, [$c155]                                    ; $734e: $fa $55 $c1
	set 6, a                                         ; $7351: $cb $f7
	ld [$c155], a                                    ; $7353: $ea $55 $c1
	ret                                              ; $7356: $c9


Jump_00b_7357:
	ld l, $33                                        ; $7357: $2e $33
	ld a, [hl]                                       ; $7359: $7e
	inc a                                            ; $735a: $3c
	cp d                                             ; $735b: $ba
	jr c, jr_00b_735f                                ; $735c: $38 $01

	xor a                                            ; $735e: $af

jr_00b_735f:
	ld [hl], a                                       ; $735f: $77
	push hl                                          ; $7360: $e5
	call wSwapBCandHL                                       ; $7361: $cd $d9 $ce
	call $cfa0                                       ; $7364: $cd $a0 $cf
	pop hl                                           ; $7367: $e1
	jp $3d3d                                         ; $7368: $c3 $3d $3d


	rst JumpTable                                          ; $736b: $c7
	ld [hl], b                                       ; $736c: $70
	ld [hl], e                                       ; $736d: $73
	ret nc                                           ; $736e: $d0

	ld d, $11                                        ; $736f: $16 $11
	sbc b                                            ; $7371: $98
	sub b                                            ; $7372: $90
	ld bc, $0010                                     ; $7373: $01 $10 $00
	jr jr_00b_739f                                   ; $7376: $18 $27

	rst JumpTable                                          ; $7378: $c7
	ld a, l                                          ; $7379: $7d
	ld [hl], e                                       ; $737a: $73
	ret nc                                           ; $737b: $d0

	ld d, $11                                        ; $737c: $16 $11
	sbc b                                            ; $737e: $98
	add b                                            ; $737f: $80
	ld bc, $0011                                     ; $7380: $01 $11 $00
	jr jr_00b_739f                                   ; $7383: $18 $1a

	rst JumpTable                                          ; $7385: $c7
	adc d                                            ; $7386: $8a
	ld [hl], e                                       ; $7387: $73
	ret nc                                           ; $7388: $d0

	ld d, $11                                        ; $7389: $16 $11
	sbc b                                            ; $738b: $98
	sub b                                            ; $738c: $90
	ld bc, $0012                                     ; $738d: $01 $12 $00
	jr jr_00b_739f                                   ; $7390: $18 $0d

	rst JumpTable                                          ; $7392: $c7
	sub a                                            ; $7393: $97
	ld [hl], e                                       ; $7394: $73
	ret nc                                           ; $7395: $d0

	ld d, $11                                        ; $7396: $16 $11
	sbc b                                            ; $7398: $98
	sub b                                            ; $7399: $90
	ld bc, $0013                                     ; $739a: $01 $13 $00
	jr jr_00b_739f                                   ; $739d: $18 $00

jr_00b_739f:
	inc [hl]                                         ; $739f: $34
	call $3bf4                                       ; $73a0: $cd $f4 $3b
	jp $3bfb                                         ; $73a3: $c3 $fb $3b


	ld a, [$c146]                                    ; $73a6: $fa $46 $c1
	call wJumpTable                                       ; $73a9: $cd $80 $cf
	cp [hl]                                          ; $73ac: $be
	ld [hl], e                                       ; $73ad: $73
	db $eb                                           ; $73ae: $eb
	ld b, [hl]                                       ; $73af: $46
	call nz, $d073                                   ; $73b0: $c4 $73 $d0
	ld [hl], e                                       ; $73b3: $73
	db $d3                                           ; $73b4: $d3
	ld [hl], e                                       ; $73b5: $73
	sub $73                                          ; $73b6: $d6 $73
	ld a, [$1646]                                    ; $73b8: $fa $46 $16
	ld b, a                                          ; $73bb: $47
	dec hl                                           ; $73bc: $2b
	ld b, a                                          ; $73bd: $47
	ld bc, $4d01                                     ; $73be: $01 $01 $4d
	jp Jump_00b_6fc0                                 ; $73c1: $c3 $c0 $6f


	ld bc, $659c                                     ; $73c4: $01 $9c $65
	ld hl, $440f                                     ; $73c7: $21 $0f $44
	ld de, $446b                                     ; $73ca: $11 $6b $44
	jp Jump_00b_7080                                 ; $73cd: $c3 $80 $70


	jp Jump_00b_70a4                                 ; $73d0: $c3 $a4 $70


	jp Jump_00b_70b0                                 ; $73d3: $c3 $b0 $70


	jp Jump_00b_70b9                                 ; $73d6: $c3 $b9 $70


Jump_00b_73d9:
	ld hl, $c188                                     ; $73d9: $21 $88 $c1
	dec [hl]                                         ; $73dc: $35
	ret nz                                           ; $73dd: $c0

	call $0986                                       ; $73de: $cd $86 $09
	ld hl, $c155                                     ; $73e1: $21 $55 $c1
	ld a, $18                                        ; $73e4: $3e $18
	and [hl]                                         ; $73e6: $a6
	ld [hl], a                                       ; $73e7: $77
	call Call_00b_6fb2                               ; $73e8: $cd $b2 $6f
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $73eb: $cd $ef $2d
	ld bc, $446b                                     ; $73ee: $01 $6b $44
	call Call_00b_4608                               ; $73f1: $cd $08 $46
	ld a, $30                                        ; $73f4: $3e $30
	ld [$c188], a                                    ; $73f6: $ea $88 $c1
	call Call_00b_4784                               ; $73f9: $cd $84 $47
	jp $096e                                         ; $73fc: $c3 $6e $09


	rst JumpTable                                          ; $73ff: $c7
	ld c, $74                                        ; $7400: $0e $74
	dec h                                            ; $7402: $25
	ld [hl], h                                       ; $7403: $74
	ld h, c                                          ; $7404: $61
	ld [hl], h                                       ; $7405: $74
	ld a, d                                          ; $7406: $7a
	ld [hl], h                                       ; $7407: $74
	xor b                                            ; $7408: $a8
	ld [hl], h                                       ; $7409: $74
	ret nc                                           ; $740a: $d0

	ld [hl], h                                       ; $740b: $74
	db $eb                                           ; $740c: $eb
	ld [hl], h                                       ; $740d: $74
	inc [hl]                                         ; $740e: $34
	call Call_00b_6fad                               ; $740f: $cd $ad $6f
	ld de, $44e5                                     ; $7412: $11 $e5 $44
	call Call_00b_72f3                               ; $7415: $cd $f3 $72
	ld l, $19                                        ; $7418: $2e $19
	ld [hl], $ff                                     ; $741a: $36 $ff
	ld bc, $d533                                     ; $741c: $01 $33 $d5
	ld de, $1894                                     ; $741f: $11 $94 $18
	jp $3bef                                         ; $7422: $c3 $ef $3b


	call Call_00b_75df                               ; $7425: $cd $df $75
	ld a, [$c155]                                    ; $7428: $fa $55 $c1
	ld b, a                                          ; $742b: $47
	bit 1, a                                         ; $742c: $cb $4f
	ret z                                            ; $742e: $c8

	ld a, [wFrameCounter]                                    ; $742f: $fa $1f $c1
	bit 1, a                                         ; $7432: $cb $4f
	jr z, jr_00b_743c                                ; $7434: $28 $06

	ld l, $19                                        ; $7436: $2e $19
	dec [hl]                                         ; $7438: $35
	jp z, Jump_00b_75fa                              ; $7439: $ca $fa $75

jr_00b_743c:
	ld a, [wButtonsPressed]                                    ; $743c: $fa $25 $c1
	and $30                                          ; $743f: $e6 $30
	ret z                                            ; $7441: $c8

	ld l, $0a                                        ; $7442: $2e $0a
	inc [hl]                                         ; $7444: $34
	ld l, $0b                                        ; $7445: $2e $0b
	ld [hl], $04                                     ; $7447: $36 $04
	bit 0, b                                         ; $7449: $cb $40
	jr nz, jr_00b_7455                               ; $744b: $20 $08

	ld a, b                                          ; $744d: $78
	or $04                                           ; $744e: $f6 $04
	add $08                                          ; $7450: $c6 $08
	ld [$c155], a                                    ; $7452: $ea $55 $c1

jr_00b_7455:
	ld bc, $d557                                     ; $7455: $01 $57 $d5
	call $3d3d                                       ; $7458: $cd $3d $3d
	ld de, $0200                                     ; $745b: $11 $00 $02
	jp $3d32                                         ; $745e: $c3 $32 $3d


	call $3d25                                       ; $7461: $cd $25 $3d
	call Call_00b_7333                               ; $7464: $cd $33 $73
	jr nz, jr_00b_7470                               ; $7467: $20 $07

	call z, Call_00b_7614                            ; $7469: $cc $14 $76
	ld l, $0b                                        ; $746c: $2e $0b
	ld [hl], $04                                     ; $746e: $36 $04

jr_00b_7470:
	ld l, $07                                        ; $7470: $2e $07
	ld a, [hl]                                       ; $7472: $7e
	cp $48                                           ; $7473: $fe $48
	ret c                                            ; $7475: $d8

	ld l, $0a                                        ; $7476: $2e $0a
	inc [hl]                                         ; $7478: $34
	ret                                              ; $7479: $c9


	ld a, [$c155]                                    ; $747a: $fa $55 $c1
	bit 2, a                                         ; $747d: $cb $57
	jr z, jr_00b_7497                                ; $747f: $28 $16

	call Call_00b_7269                               ; $7481: $cd $69 $72
	ld l, $13                                        ; $7484: $2e $13
	ld a, [hl+]                                      ; $7486: $2a
	ld d, [hl]                                       ; $7487: $56
	or d                                             ; $7488: $b2
	jr nz, jr_00b_7494                               ; $7489: $20 $09

	call Call_00b_7602                               ; $748b: $cd $02 $76
	ld a, [$c155]                                    ; $748e: $fa $55 $c1
	bit 4, a                                         ; $7491: $cb $67
	ret nz                                           ; $7493: $c0

jr_00b_7494:
	jp Jump_00b_7281                                 ; $7494: $c3 $81 $72


jr_00b_7497:
	call Call_00b_7625                               ; $7497: $cd $25 $76
	call Call_00b_7281                               ; $749a: $cd $81 $72
	ld bc, $08c0                                     ; $749d: $01 $c0 $08
	call Call_00b_7298                               ; $74a0: $cd $98 $72
	ret nc                                           ; $74a3: $d0

	ld l, $0a                                        ; $74a4: $2e $0a
	inc [hl]                                         ; $74a6: $34
	ret                                              ; $74a7: $c9


	call Call_00b_7625                               ; $74a8: $cd $25 $76
	call $3d25                                       ; $74ab: $cd $25 $3d
	ld l, $07                                        ; $74ae: $2e $07
	ld a, [hl]                                       ; $74b0: $7e
	cp $68                                           ; $74b1: $fe $68
	ret c                                            ; $74b3: $d8

	ld l, $0a                                        ; $74b4: $2e $0a
	inc [hl]                                         ; $74b6: $34
	ld a, $7b                                        ; $74b7: $3e $7b
	call $1e2e                                       ; $74b9: $cd $2e $1e
	call Call_00b_7338                               ; $74bc: $cd $38 $73
	ld l, $18                                        ; $74bf: $2e $18
	ld a, [hl]                                       ; $74c1: $7e
	cp $03                                           ; $74c2: $fe $03
	ret nz                                           ; $74c4: $c0

	ld a, $7a                                        ; $74c5: $3e $7a
	call $1e2e                                       ; $74c7: $cd $2e $1e
	ld bc, $d56b                                     ; $74ca: $01 $6b $d5
	jp $3d3d                                         ; $74cd: $c3 $3d $3d


	ld b, $60                                        ; $74d0: $06 $60
	call Call_00b_725a                               ; $74d2: $cd $5a $72
	call $3d32                                       ; $74d5: $cd $32 $3d
	ld a, e                                          ; $74d8: $7b
	or d                                             ; $74d9: $b2
	jr nz, jr_00b_74df                               ; $74da: $20 $03

	ld l, $0a                                        ; $74dc: $2e $0a
	inc [hl]                                         ; $74de: $34

jr_00b_74df:
	call Call_00b_72a0                               ; $74df: $cd $a0 $72
	call Call_00b_72ef                               ; $74e2: $cd $ef $72
	jp z, $3d25                                      ; $74e5: $ca $25 $3d

	jp Jump_00b_7281                                 ; $74e8: $c3 $81 $72


	ld a, [$c155]                                    ; $74eb: $fa $55 $c1
	bit 7, a                                         ; $74ee: $cb $7f
	ret nz                                           ; $74f0: $c0

	call Call_00b_734a                               ; $74f1: $cd $4a $73
	call Call_00b_72a0                               ; $74f4: $cd $a0 $72
	call Call_00b_72ef                               ; $74f7: $cd $ef $72
	jr nz, jr_00b_750d                               ; $74fa: $20 $11

	ld l, $18                                        ; $74fc: $2e $18
	ld a, [hl]                                       ; $74fe: $7e
	cp $03                                           ; $74ff: $fe $03
	ld bc, $d56b                                     ; $7501: $01 $6b $d5
	jp z, $3d3d                                      ; $7504: $ca $3d $3d

	ld bc, $d523                                     ; $7507: $01 $23 $d5
	jp $3d3d                                         ; $750a: $c3 $3d $3d


jr_00b_750d:
	ld bc, $d5c7                                     ; $750d: $01 $c7 $d5
	jp $3d3d                                         ; $7510: $c3 $3d $3d


	rst JumpTable                                          ; $7513: $c7
	jr nz, @+$77                                     ; $7514: $20 $75

	jr nc, @+$77                                     ; $7516: $30 $75

	ld h, h                                          ; $7518: $64
	ld [hl], l                                       ; $7519: $75
	add e                                            ; $751a: $83
	ld [hl], l                                       ; $751b: $75
	ret nc                                           ; $751c: $d0

	ld [hl], h                                       ; $751d: $74
	db $eb                                           ; $751e: $eb
	ld [hl], h                                       ; $751f: $74
	inc [hl]                                         ; $7520: $34
	ld bc, $44dc                                     ; $7521: $01 $dc $44
	ld de, $44df                                     ; $7524: $11 $df $44
	call Call_00b_730b                               ; $7527: $cd $0b $73
	ld bc, $d5d7                                     ; $752a: $01 $d7 $d5
	jp $3d3d                                         ; $752d: $c3 $3d $3d


	call Call_00b_75df                               ; $7530: $cd $df $75
	call Call_00b_72a0                               ; $7533: $cd $a0 $72
	ld a, [$c155]                                    ; $7536: $fa $55 $c1
	ld b, a                                          ; $7539: $47
	and $07                                          ; $753a: $e6 $07
	cp $03                                           ; $753c: $fe $03
	jr z, jr_00b_754b                                ; $753e: $28 $0b

	ld a, b                                          ; $7540: $78
	and $90                                          ; $7541: $e6 $90
	cp $90                                           ; $7543: $fe $90
	ret nz                                           ; $7545: $c0

	ld a, $05                                        ; $7546: $3e $05
	jp $3d43                                         ; $7548: $c3 $43 $3d


jr_00b_754b:
	call Call_000_1309                                       ; $754b: $cd $09 $13
	cp $c0                                           ; $754e: $fe $c0
	ret c                                            ; $7550: $d8

	ld l, $0a                                        ; $7551: $2e $0a
	inc [hl]                                         ; $7553: $34
	ld l, $0b                                        ; $7554: $2e $0b
	ld [hl], $04                                     ; $7556: $36 $04
	ld bc, $d5fb                                     ; $7558: $01 $fb $d5
	call $3d3d                                       ; $755b: $cd $3d $3d
	ld de, $0200                                     ; $755e: $11 $00 $02
	jp $3d32                                         ; $7561: $c3 $32 $3d


	call Call_00b_7281                               ; $7564: $cd $81 $72
	call Call_00b_72a0                               ; $7567: $cd $a0 $72
	call Call_00b_7333                               ; $756a: $cd $33 $73
	jr nz, jr_00b_7576                               ; $756d: $20 $07

	call z, Call_00b_7614                            ; $756f: $cc $14 $76
	ld l, $0b                                        ; $7572: $2e $0b
	ld [hl], $04                                     ; $7574: $36 $04

jr_00b_7576:
	ld l, $31                                        ; $7576: $2e $31
	ld a, [hl]                                       ; $7578: $7e
	cp $30                                           ; $7579: $fe $30
	ret c                                            ; $757b: $d8

	call Call_00b_765f                               ; $757c: $cd $5f $76
	ld l, $0a                                        ; $757f: $2e $0a
	inc [hl]                                         ; $7581: $34
	ret                                              ; $7582: $c9


	call Call_00b_7645                               ; $7583: $cd $45 $76
	call Call_00b_7281                               ; $7586: $cd $81 $72
	call Call_00b_72a0                               ; $7589: $cd $a0 $72
	ld bc, $0910                                     ; $758c: $01 $10 $09
	call Call_00b_7298                               ; $758f: $cd $98 $72
	ret nc                                           ; $7592: $d0

	ld l, $0a                                        ; $7593: $2e $0a
	inc [hl]                                         ; $7595: $34
	jp Jump_00b_7338                                 ; $7596: $c3 $38 $73


	rst JumpTable                                          ; $7599: $c7
	sbc [hl]                                         ; $759a: $9e
	ld [hl], l                                       ; $759b: $75
	cp a                                             ; $759c: $bf
	ld [hl], l                                       ; $759d: $75
	ld a, [$c155]                                    ; $759e: $fa $55 $c1
	and $03                                          ; $75a1: $e6 $03
	cp $03                                           ; $75a3: $fe $03
	jr nz, jr_00b_75ae                               ; $75a5: $20 $07

	ld l, $0a                                        ; $75a7: $2e $0a
	inc [hl]                                         ; $75a9: $34
	ld l, $0b                                        ; $75aa: $2e $0b
	ld [hl], $06                                     ; $75ac: $36 $06

jr_00b_75ae:
	push hl                                          ; $75ae: $e5
	ld hl, $44ae                                     ; $75af: $21 $ae $44
	call $cfa0                                       ; $75b2: $cd $a0 $cf
	pop hl                                           ; $75b5: $e1
	ld de, $7050                                     ; $75b6: $11 $50 $70
	call $3bef                                       ; $75b9: $cd $ef $3b
	jp Jump_00b_766a                                 ; $75bc: $c3 $6a $76


	ld l, $0b                                        ; $75bf: $2e $0b
	ld a, [hl]                                       ; $75c1: $7e
	or a                                             ; $75c2: $b7
	jp nz, Jump_00b_766a                             ; $75c3: $c2 $6a $76

	ld [hl], $06                                     ; $75c6: $36 $06
	ld l, $33                                        ; $75c8: $2e $33
	ld a, [hl]                                       ; $75ca: $7e
	cp $04                                           ; $75cb: $fe $04
	jp z, Jump_00b_766a                              ; $75cd: $ca $6a $76

	inc [hl]                                         ; $75d0: $34
	push hl                                          ; $75d1: $e5
	ld hl, $44b6                                     ; $75d2: $21 $b6 $44
	call $cfa0                                       ; $75d5: $cd $a0 $cf
	pop hl                                           ; $75d8: $e1
	call $3d3d                                       ; $75d9: $cd $3d $3d
	jp Jump_00b_766a                                 ; $75dc: $c3 $6a $76


Call_00b_75df:
	ld bc, $d543                                     ; $75df: $01 $43 $d5
	call Call_00b_72ef                               ; $75e2: $cd $ef $72
	jr z, jr_00b_75ea                                ; $75e5: $28 $03

	ld bc, $d5e7                                     ; $75e7: $01 $e7 $d5

jr_00b_75ea:
	ld a, [$c155]                                    ; $75ea: $fa $55 $c1
	and $03                                          ; $75ed: $e6 $03
	cp $02                                           ; $75ef: $fe $02
	jp nc, $3d3d                                     ; $75f1: $d2 $3d $3d

	ld a, $10                                        ; $75f4: $3e $10
	rst SubAFromBC                                          ; $75f6: $e7
	jp $3d3d                                         ; $75f7: $c3 $3d $3d


Jump_00b_75fa:
	ld a, [$c155]                                    ; $75fa: $fa $55 $c1
	set 4, a                                         ; $75fd: $cb $e7
	ld [$c155], a                                    ; $75ff: $ea $55 $c1

Call_00b_7602:
	ld a, $30                                        ; $7602: $3e $30
	ld [$c188], a                                    ; $7604: $ea $88 $c1
	ld a, [$c155]                                    ; $7607: $fa $55 $c1
	set 5, a                                         ; $760a: $cb $ef
	ld [$c155], a                                    ; $760c: $ea $55 $c1
	ld a, $84                                        ; $760f: $3e $84
	jp $1e2e                                         ; $7611: $c3 $2e $1e


Call_00b_7614:
Jump_00b_7614:
	ld d, $06                                        ; $7614: $16 $06
	ld bc, $44a2                                     ; $7616: $01 $a2 $44
	call Call_00b_72ef                               ; $7619: $cd $ef $72
	jp nz, Jump_00b_7357                             ; $761c: $c2 $57 $73

	ld bc, $4496                                     ; $761f: $01 $96 $44
	jp Jump_00b_7357                                 ; $7622: $c3 $57 $73


Call_00b_7625:
	ld a, [wButtonsPressed]                                    ; $7625: $fa $25 $c1
	and $30                                          ; $7628: $e6 $30
	jr nz, jr_00b_7631                               ; $762a: $20 $05

	rst FarCall                                          ; $762c: $f7
	db $ed                                           ; $762d: $ed
	ld e, e                                          ; $762e: $5b
	inc c                                            ; $762f: $0c
	ret                                              ; $7630: $c9


jr_00b_7631:
	ld a, $05                                        ; $7631: $3e $05
	ld [$c162], a                                    ; $7633: $ea $62 $c1
	ld l, $15                                        ; $7636: $2e $15
	ld b, [hl]                                       ; $7638: $46
	call Call_00b_7250                               ; $7639: $cd $50 $72
	call $3d32                                       ; $763c: $cd $32 $3d
	call Call_00b_7271                               ; $763f: $cd $71 $72
	jp Jump_00b_7614                                 ; $7642: $c3 $14 $76


Call_00b_7645:
	call Call_00b_7333                               ; $7645: $cd $33 $73
	jr z, jr_00b_764d                                ; $7648: $28 $03

	jp Jump_00b_7269                                 ; $764a: $c3 $69 $72


jr_00b_764d:
	call Call_00b_765f                               ; $764d: $cd $5f $76
	ld l, $15                                        ; $7650: $2e $15
	ld b, [hl]                                       ; $7652: $46
	call Call_00b_7250                               ; $7653: $cd $50 $72
	call $3d32                                       ; $7656: $cd $32 $3d
	call Call_00b_7271                               ; $7659: $cd $71 $72
	jp Jump_00b_7614                                 ; $765c: $c3 $14 $76


Call_00b_765f:
	ld a, $02                                        ; $765f: $3e $02
	call Call_000_12fc                                       ; $7661: $cd $fc $12
	add $03                                          ; $7664: $c6 $03
	ld l, $0b                                        ; $7666: $2e $0b
	ld [hl], a                                       ; $7668: $77
	ret                                              ; $7669: $c9


Jump_00b_766a:
	call Call_00b_72a0                               ; $766a: $cd $a0 $72
	ld l, $07                                        ; $766d: $2e $07
	ld a, $10                                        ; $766f: $3e $10
	add [hl]                                         ; $7671: $86
	ld [hl], a                                       ; $7672: $77
	ret                                              ; $7673: $c9


	ld a, [$c146]                                    ; $7674: $fa $46 $c1
	call wJumpTable                                       ; $7677: $cd $80 $cf
	adc h                                            ; $767a: $8c
	halt                                             ; $767b: $76
	db $eb                                           ; $767c: $eb
	ld b, [hl]                                       ; $767d: $46
	sbc e                                            ; $767e: $9b
	halt                                             ; $767f: $76
	ret nc                                           ; $7680: $d0

	ld [hl], e                                       ; $7681: $73
	db $d3                                           ; $7682: $d3
	ld [hl], e                                       ; $7683: $73
	sub $73                                          ; $7684: $d6 $73
	ld a, [$1646]                                    ; $7686: $fa $46 $16
	ld b, a                                          ; $7689: $47
	dec hl                                           ; $768a: $2b
	ld b, a                                          ; $768b: $47
	ld bc, $5200                                     ; $768c: $01 $00 $52
	ld a, [$c158]                                    ; $768f: $fa $58 $c1
	or a                                             ; $7692: $b7
	jp z, Jump_00b_6fc0                              ; $7693: $ca $c0 $6f

	ld c, $07                                        ; $7696: $0e $07
	jp Jump_00b_6fc0                                 ; $7698: $c3 $c0 $6f


	ld bc, $65a4                                     ; $769b: $01 $a4 $65
	ld hl, $4421                                     ; $769e: $21 $21 $44
	ld de, $4478                                     ; $76a1: $11 $78 $44
	ld a, [$c158]                                    ; $76a4: $fa $58 $c1
	or a                                             ; $76a7: $b7
	jp z, Jump_00b_7080                              ; $76a8: $ca $80 $70

	ld bc, $65ae                                     ; $76ab: $01 $ae $65
	ld hl, $4433                                     ; $76ae: $21 $33 $44
	jp Jump_00b_7080                                 ; $76b1: $c3 $80 $70


	rst JumpTable                                          ; $76b4: $c7
	push bc                                          ; $76b5: $c5
	halt                                             ; $76b6: $76
	db $eb                                           ; $76b7: $eb
	halt                                             ; $76b8: $76
	inc b                                            ; $76b9: $04
	ld [hl], a                                       ; $76ba: $77
	jr z, @+$79                                      ; $76bb: $28 $77

	ld l, l                                          ; $76bd: $6d
	ld [hl], a                                       ; $76be: $77
	adc d                                            ; $76bf: $8a
	ld [hl], a                                       ; $76c0: $77
	or e                                             ; $76c1: $b3
	ld [hl], a                                       ; $76c2: $77
	rst GetHLinHL                                          ; $76c3: $cf
	ld [hl], a                                       ; $76c4: $77
	ld l, $01                                        ; $76c5: $2e $01
	set 2, [hl]                                      ; $76c7: $cb $d6
	call Call_00b_6fad                               ; $76c9: $cd $ad $6f
	rst FarCall                                          ; $76cc: $f7
	inc e                                            ; $76cd: $1c
	ld e, h                                          ; $76ce: $5c
	inc c                                            ; $76cf: $0c
	ld de, $4506                                     ; $76d0: $11 $06 $45
	call Call_00b_72f3                               ; $76d3: $cd $f3 $72
	call Call_00b_78c2                               ; $76d6: $cd $c2 $78
	ld de, $1894                                     ; $76d9: $11 $94 $18
	call $3bf4                                       ; $76dc: $cd $f4 $3b
	call Call_00b_7342                               ; $76df: $cd $42 $73
	ret nz                                           ; $76e2: $c0

	ld l, $01                                        ; $76e3: $2e $01
	res 2, [hl]                                      ; $76e5: $cb $96
	ld l, $0a                                        ; $76e7: $2e $0a
	inc [hl]                                         ; $76e9: $34
	ret                                              ; $76ea: $c9


	call Call_00b_7333                               ; $76eb: $cd $33 $73
	jr nz, jr_00b_7701                               ; $76ee: $20 $11

	ld [hl], $20                                     ; $76f0: $36 $20
	ld l, $01                                        ; $76f2: $2e $01
	res 1, [hl]                                      ; $76f4: $cb $8e
	ld l, $0a                                        ; $76f6: $2e $0a
	inc [hl]                                         ; $76f8: $34
	call Call_00b_72ef                               ; $76f9: $cd $ef $72
	ld a, $7c                                        ; $76fc: $3e $7c
	call z, $1e2e                                    ; $76fe: $cc $2e $1e

jr_00b_7701:
	jp nz, Jump_00b_72a0                             ; $7701: $c2 $a0 $72

	call Call_00b_787f                               ; $7704: $cd $7f $78
	call Call_00b_7939                               ; $7707: $cd $39 $79
	jr c, jr_00b_771c                                ; $770a: $38 $10

	call Call_00b_78ed                               ; $770c: $cd $ed $78
	call $3d25                                       ; $770f: $cd $25 $3d
	ld l, $07                                        ; $7712: $2e $07
	ld a, [hl]                                       ; $7714: $7e
	cp $48                                           ; $7715: $fe $48

Call_00b_7717:
	ret c                                            ; $7717: $d8

	ld l, $0a                                        ; $7718: $2e $0a
	inc [hl]                                         ; $771a: $34
	ret                                              ; $771b: $c9


jr_00b_771c:
	ld l, $0b                                        ; $771c: $2e $0b
	ld [hl], $18                                     ; $771e: $36 $18
	ld a, $02                                        ; $7720: $3e $02
	call $3d43                                       ; $7722: $cd $43 $3d
	jp $3d25                                         ; $7725: $c3 $25 $3d


	call Call_00b_787f                               ; $7728: $cd $7f $78
	call Call_00b_7939                               ; $772b: $cd $39 $79
	jr c, jr_00b_7760                                ; $772e: $38 $30

	call Call_00b_72ef                               ; $7730: $cd $ef $72
	jr nz, jr_00b_773a                               ; $7733: $20 $05

	call Call_00b_78ed                               ; $7735: $cd $ed $78
	jr jr_00b_773d                                   ; $7738: $18 $03

jr_00b_773a:
	call Call_00b_7917                               ; $773a: $cd $17 $79

jr_00b_773d:
	call Call_00b_7281                               ; $773d: $cd $81 $72
	call nz, Call_00b_72a0                           ; $7740: $c4 $a0 $72
	ld bc, $08c0                                     ; $7743: $01 $c0 $08
	call Call_00b_72ef                               ; $7746: $cd $ef $72
	jr z, jr_00b_7750                                ; $7749: $28 $05

	ld a, $50                                        ; $774b: $3e $50
	call $132c                                       ; $774d: $cd $2c $13

jr_00b_7750:
	call Call_00b_7298                               ; $7750: $cd $98 $72
	ret nc                                           ; $7753: $d0

	ld a, $02                                        ; $7754: $3e $02
	call $3d43                                       ; $7756: $cd $43 $3d
	call Call_00b_72ef                               ; $7759: $cd $ef $72
	jp nz, Jump_00b_7338                             ; $775c: $c2 $38 $73

	ret                                              ; $775f: $c9


jr_00b_7760:
	ld l, $0b                                        ; $7760: $2e $0b
	ld [hl], $18                                     ; $7762: $36 $18
	ld l, $0a                                        ; $7764: $2e $0a
	inc [hl]                                         ; $7766: $34
	call Call_00b_7281                               ; $7767: $cd $81 $72
	jp nz, Jump_00b_72a0                             ; $776a: $c2 $a0 $72

	call Call_00b_78ab                               ; $776d: $cd $ab $78
	ld l, $01                                        ; $7770: $2e $01
	set 2, [hl]                                      ; $7772: $cb $d6
	call Call_00b_7333                               ; $7774: $cd $33 $73
	jr nz, jr_00b_7787                               ; $7777: $20 $0e

	ld a, $fd                                        ; $7779: $3e $fd
	call $3d43                                       ; $777b: $cd $43 $3d
	ld l, $01                                        ; $777e: $2e $01
	ld a, [hl]                                       ; $7780: $7e
	and $c0                                          ; $7781: $e6 $c0
	ld [hl], a                                       ; $7783: $77
	call Call_00b_78c2                               ; $7784: $cd $c2 $78

jr_00b_7787:
	jp Jump_00b_72a0                                 ; $7787: $c3 $a0 $72


	call Call_00b_787f                               ; $778a: $cd $7f $78
	call Call_00b_7939                               ; $778d: $cd $39 $79
	jr c, jr_00b_77a9                                ; $7790: $38 $17

	call Call_00b_78ed                               ; $7792: $cd $ed $78
	call $3d25                                       ; $7795: $cd $25 $3d
	ld l, $07                                        ; $7798: $2e $07
	ld a, [hl]                                       ; $779a: $7e
	cp $68                                           ; $779b: $fe $68
	ret c                                            ; $779d: $d8

	ld l, $0a                                        ; $779e: $2e $0a
	inc [hl]                                         ; $77a0: $34
	ld a, $7b                                        ; $77a1: $3e $7b
	call $1e2e                                       ; $77a3: $cd $2e $1e
	jp Jump_00b_7338                                 ; $77a6: $c3 $38 $73


jr_00b_77a9:
	ld l, $0b                                        ; $77a9: $2e $0b
	ld [hl], $18                                     ; $77ab: $36 $18
	ld l, $0a                                        ; $77ad: $2e $0a
	dec [hl]                                         ; $77af: $35
	jp $3d25                                         ; $77b0: $c3 $25 $3d


	ld l, $01                                        ; $77b3: $2e $01
	set 2, [hl]                                      ; $77b5: $cb $d6
	call Call_00b_7269                               ; $77b7: $cd $69 $72
	ld a, d                                          ; $77ba: $7a
	or e                                             ; $77bb: $b3
	jr z, jr_00b_77c0                                ; $77bc: $28 $02

	jr jr_00b_77c3                                   ; $77be: $18 $03

jr_00b_77c0:
	ld l, $0a                                        ; $77c0: $2e $0a
	inc [hl]                                         ; $77c2: $34

jr_00b_77c3:
	call Call_00b_72a0                               ; $77c3: $cd $a0 $72
	call Call_00b_72ef                               ; $77c6: $cd $ef $72
	jp z, $3d25                                      ; $77c9: $ca $25 $3d

	jp Jump_00b_7281                                 ; $77cc: $c3 $81 $72


	ld a, [$c155]                                    ; $77cf: $fa $55 $c1
	bit 7, a                                         ; $77d2: $cb $7f
	ret nz                                           ; $77d4: $c0

	call Call_00b_734a                               ; $77d5: $cd $4a $73
	ld bc, $d58b                                     ; $77d8: $01 $8b $d5
	call Call_00b_72ef                               ; $77db: $cd $ef $72
	jp z, $3d3d                                      ; $77de: $ca $3d $3d

	ld bc, $d657                                     ; $77e1: $01 $57 $d6
	call $3d3d                                       ; $77e4: $cd $3d $3d
	jp Jump_00b_72a0                                 ; $77e7: $c3 $a0 $72


	rst JumpTable                                          ; $77ea: $c7
	ld sp, hl                                        ; $77eb: $f9
	ld [hl], a                                       ; $77ec: $77
	db $eb                                           ; $77ed: $eb
	halt                                             ; $77ee: $76
	dec c                                            ; $77ef: $0d
	ld a, b                                          ; $77f0: $78
	jr z, @+$79                                      ; $77f1: $28 $77

	ld l, l                                          ; $77f3: $6d
	ld [hl], a                                       ; $77f4: $77
	or e                                             ; $77f5: $b3
	ld [hl], a                                       ; $77f6: $77
	rst GetHLinHL                                          ; $77f7: $cf
	ld [hl], a                                       ; $77f8: $77
	ld bc, $44fd                                     ; $77f9: $01 $fd $44
	ld de, $4500                                     ; $77fc: $11 $00 $45
	call Call_00b_730b                               ; $77ff: $cd $0b $73
	call Call_00b_78c2                               ; $7802: $cd $c2 $78
	call Call_00b_7342                               ; $7805: $cd $42 $73
	ret nz                                           ; $7808: $c0

	ld l, $0a                                        ; $7809: $2e $0a
	inc [hl]                                         ; $780b: $34
	ret                                              ; $780c: $c9


	inc [hl]                                         ; $780d: $34
	ret                                              ; $780e: $c9


	rst JumpTable                                          ; $780f: $c7
	ld [de], a                                       ; $7810: $12
	ld a, b                                          ; $7811: $78
	ld de, $c301                                     ; $7812: $11 $01 $c3
	ld a, [de]                                       ; $7815: $1a
	ld b, a                                          ; $7816: $47
	ld e, $07                                        ; $7817: $1e $07
	ld a, [de]                                       ; $7819: $1a
	bit 2, b                                         ; $781a: $cb $50
	ld l, $01                                        ; $781c: $2e $01
	jr z, jr_00b_7823                                ; $781e: $28 $03

	set 7, [hl]                                      ; $7820: $cb $fe
	ret                                              ; $7822: $c9


jr_00b_7823:
	ld e, $98                                        ; $7823: $1e $98
	res 7, [hl]                                      ; $7825: $cb $be
	bit 1, b                                         ; $7827: $cb $48
	jr nz, jr_00b_7841                               ; $7829: $20 $16

	bit 0, b                                         ; $782b: $cb $40
	jr z, jr_00b_7838                                ; $782d: $28 $09

	ld bc, $d68f                                     ; $782f: $01 $8f $d6

jr_00b_7832:
	sub $f5                                          ; $7832: $d6 $f5
	ld d, a                                          ; $7834: $57
	jp $3bef                                         ; $7835: $c3 $ef $3b


jr_00b_7838:
	ld bc, $d683                                     ; $7838: $01 $83 $d6
	sub $0c                                          ; $783b: $d6 $0c
	ld d, a                                          ; $783d: $57
	jp $3bef                                         ; $783e: $c3 $ef $3b


jr_00b_7841:
	ld bc, $d677                                     ; $7841: $01 $77 $d6
	jr jr_00b_7832                                   ; $7844: $18 $ec

	rst JumpTable                                          ; $7846: $c7
	ld c, c                                          ; $7847: $49
	ld a, b                                          ; $7848: $78
	ld de, $c301                                     ; $7849: $11 $01 $c3
	ld a, [de]                                       ; $784c: $1a
	ld b, a                                          ; $784d: $47
	ld e, $07                                        ; $784e: $1e $07
	ld a, [de]                                       ; $7850: $1a
	bit 2, b                                         ; $7851: $cb $50
	ld l, $01                                        ; $7853: $2e $01
	jr z, jr_00b_785a                                ; $7855: $28 $03

	set 7, [hl]                                      ; $7857: $cb $fe
	ret                                              ; $7859: $c9


jr_00b_785a:
	res 7, [hl]                                      ; $785a: $cb $be
	ld l, $03                                        ; $785c: $2e $03
	bit 1, b                                         ; $785e: $cb $48
	jr nz, jr_00b_7866                               ; $7860: $20 $04

	bit 0, b                                         ; $7862: $cb $40
	jr z, jr_00b_786d                                ; $7864: $28 $07

jr_00b_7866:
	sub $f5                                          ; $7866: $d6 $f5
	ld d, a                                          ; $7868: $57
	res 5, [hl]                                      ; $7869: $cb $ae
	jr jr_00b_7872                                   ; $786b: $18 $05

jr_00b_786d:
	sub $0b                                          ; $786d: $d6 $0b
	ld d, a                                          ; $786f: $57
	set 5, [hl]                                      ; $7870: $cb $ee

jr_00b_7872:
	ld e, $98                                        ; $7872: $1e $98
	call $3bf4                                       ; $7874: $cd $f4 $3b
	ld l, $03                                        ; $7877: $2e $03
	ld bc, $d66b                                     ; $7879: $01 $6b $d6
	jp $3d3d                                         ; $787c: $c3 $3d $3d


Call_00b_787f:
	ld l, $0b                                        ; $787f: $2e $0b
	ld a, [hl]                                       ; $7881: $7e
	ld b, $00                                        ; $7882: $06 $00
	cp $10                                           ; $7884: $fe $10
	jr nc, jr_00b_788e                               ; $7886: $30 $06

	inc b                                            ; $7888: $04
	cp $08                                           ; $7889: $fe $08
	jr nc, jr_00b_788e                               ; $788b: $30 $01

	inc b                                            ; $788d: $04

jr_00b_788e:
	ld a, b                                          ; $788e: $78
	ld l, $01                                        ; $788f: $2e $01
	bit 0, [hl]                                      ; $7891: $cb $46
	jr z, jr_00b_7897                                ; $7893: $28 $02

	add $03                                          ; $7895: $c6 $03

jr_00b_7897:
	ld b, a                                          ; $7897: $47
	call Call_00b_72ef                               ; $7898: $cd $ef $72
	ld a, b                                          ; $789b: $78
	jr z, jr_00b_78a0                                ; $789c: $28 $02

	add $06                                          ; $789e: $c6 $06

jr_00b_78a0:
	push hl                                          ; $78a0: $e5
	ld hl, $44be                                     ; $78a1: $21 $be $44
	call $cfa0                                       ; $78a4: $cd $a0 $cf
	pop hl                                           ; $78a7: $e1
	jp $3d3d                                         ; $78a8: $c3 $3d $3d


Call_00b_78ab:
	ld l, $01                                        ; $78ab: $2e $01
	ld bc, $d577                                     ; $78ad: $01 $77 $d5
	call Call_00b_72ef                               ; $78b0: $cd $ef $72
	jr z, jr_00b_78b8                                ; $78b3: $28 $03

	ld bc, $d643                                     ; $78b5: $01 $43 $d6

jr_00b_78b8:
	bit 0, [hl]                                      ; $78b8: $cb $46
	jr z, jr_00b_78bf                                ; $78ba: $28 $03

	ld a, $14                                        ; $78bc: $3e $14
	rst SubAFromBC                                          ; $78be: $e7

jr_00b_78bf:
	jp $3d3d                                         ; $78bf: $c3 $3d $3d


Call_00b_78c2:
	ld l, $01                                        ; $78c2: $2e $01
	set 1, [hl]                                      ; $78c4: $cb $ce
	ld l, $0b                                        ; $78c6: $2e $0b
	ld [hl], $30                                     ; $78c8: $36 $30
	ld de, $0040                                     ; $78ca: $11 $40 $00
	call $3d32                                       ; $78cd: $cd $32 $3d
	ld bc, $d58b                                     ; $78d0: $01 $8b $d5
	call Call_00b_72ef                               ; $78d3: $cd $ef $72
	jp z, $3d3d                                      ; $78d6: $ca $3d $3d

	ld bc, $d657                                     ; $78d9: $01 $57 $d6
	jp $3d3d                                         ; $78dc: $c3 $3d $3d


Call_00b_78df:
	ld l, $13                                        ; $78df: $2e $13
	ld a, [hl+]                                      ; $78e1: $2a
	ld b, [hl]                                       ; $78e2: $46
	rlca                                             ; $78e3: $07
	rl b                                             ; $78e4: $cb $10
	ld a, $20                                        ; $78e6: $3e $20
	sub b                                            ; $78e8: $90
	ld l, $0b                                        ; $78e9: $2e $0b
	ld [hl], a                                       ; $78eb: $77
	ret                                              ; $78ec: $c9


Call_00b_78ed:
	ld a, [wButtonsPressed]                                    ; $78ed: $fa $25 $c1
	ld l, $01                                        ; $78f0: $2e $01
	bit 0, [hl]                                      ; $78f2: $cb $46
	jr nz, jr_00b_78ff                               ; $78f4: $20 $09

	bit 5, a                                         ; $78f6: $cb $6f
	jr nz, jr_00b_7909                               ; $78f8: $20 $0f

	bit 4, a                                         ; $78fa: $cb $67
	ret z                                            ; $78fc: $c8

	jr jr_00b_7906                                   ; $78fd: $18 $07

jr_00b_78ff:
	bit 4, a                                         ; $78ff: $cb $67
	jr nz, jr_00b_7909                               ; $7901: $20 $06

	bit 5, a                                         ; $7903: $cb $6f
	ret z                                            ; $7905: $c8

jr_00b_7906:
	set 4, [hl]                                      ; $7906: $cb $e6
	ret                                              ; $7908: $c9


jr_00b_7909:
	bit 3, [hl]                                      ; $7909: $cb $5e
	ret nz                                           ; $790b: $c0

	set 3, [hl]                                      ; $790c: $cb $de
	ld l, $15                                        ; $790e: $2e $15
	ld b, [hl]                                       ; $7910: $46
	call Call_00b_7250                               ; $7911: $cd $50 $72
	jp Jump_00b_7271                                 ; $7914: $c3 $71 $72


Call_00b_7917:
	ld l, $01                                        ; $7917: $2e $01
	bit 5, [hl]                                      ; $7919: $cb $6e
	ret nz                                           ; $791b: $c0

	set 5, [hl]                                      ; $791c: $cb $ee
	ld a, $80                                        ; $791e: $3e $80
	call Call_000_12fc                                       ; $7920: $cd $fc $12
	ld l, $14                                        ; $7923: $2e $14
	ld b, [hl]                                       ; $7925: $46
	cp b                                             ; $7926: $b8
	ld l, $01                                        ; $7927: $2e $01
	jr nc, jr_00b_792e                               ; $7929: $30 $03

	set 4, [hl]                                      ; $792b: $cb $e6
	ret                                              ; $792d: $c9


jr_00b_792e:
	set 3, [hl]                                      ; $792e: $cb $de
	ld l, $15                                        ; $7930: $2e $15
	ld b, [hl]                                       ; $7932: $46
	call Call_00b_7250                               ; $7933: $cd $50 $72
	jp Jump_00b_7271                                 ; $7936: $c3 $71 $72


Call_00b_7939:
	ld l, $01                                        ; $7939: $2e $01
	bit 4, [hl]                                      ; $793b: $cb $66
	jr nz, jr_00b_7964                               ; $793d: $20 $25

	call Call_00b_7333                               ; $793f: $cd $33 $73
	jr nz, jr_00b_7961                               ; $7942: $20 $1d

	ld l, $01                                        ; $7944: $2e $01
	bit 3, [hl]                                      ; $7946: $cb $5e
	jr z, jr_00b_7964                                ; $7948: $28 $1a

	ld a, [hl]                                       ; $794a: $7e
	ld b, a                                          ; $794b: $47
	res 0, b                                         ; $794c: $cb $80
	and $01                                          ; $794e: $e6 $01
	xor $01                                          ; $7950: $ee $01
	or b                                             ; $7952: $b0
	and $d7                                          ; $7953: $e6 $d7
	ld [hl], a                                       ; $7955: $77
	call Call_00b_78df                               ; $7956: $cd $df $78
	call Call_00b_72ef                               ; $7959: $cd $ef $72
	ld a, $7c                                        ; $795c: $3e $7c
	call z, $1e2e                                    ; $795e: $cc $2e $1e

jr_00b_7961:
	scf                                              ; $7961: $37
	ccf                                              ; $7962: $3f
	ret                                              ; $7963: $c9


jr_00b_7964:
	call Call_00b_72ef                               ; $7964: $cd $ef $72
	ld a, $79                                        ; $7967: $3e $79
	call z, $1e2e                                    ; $7969: $cc $2e $1e
	scf                                              ; $796c: $37
	ret                                              ; $796d: $c9


	ld a, [$c146]                                    ; $796e: $fa $46 $c1
	call wJumpTable                                       ; $7971: $cd $80 $cf
	add [hl]                                         ; $7974: $86
	ld a, c                                          ; $7975: $79
	db $eb                                           ; $7976: $eb
	ld b, [hl]                                       ; $7977: $46
	adc h                                            ; $7978: $8c
	ld a, c                                          ; $7979: $79
	ret nc                                           ; $797a: $d0

	ld [hl], e                                       ; $797b: $73
	db $d3                                           ; $797c: $d3
	ld [hl], e                                       ; $797d: $73
	sub $73                                          ; $797e: $d6 $73
	ld a, [$1646]                                    ; $7980: $fa $46 $16
	ld b, a                                          ; $7983: $47
	dec hl                                           ; $7984: $2b
	ld b, a                                          ; $7985: $47
	ld bc, $5604                                     ; $7986: $01 $04 $56
	jp Jump_00b_6fc0                                 ; $7989: $c3 $c0 $6f


	ld bc, $65b8                                     ; $798c: $01 $b8 $65
	ld hl, $4445                                     ; $798f: $21 $45 $44
	ld de, $4485                                     ; $7992: $11 $85 $44
	jp Jump_00b_7080                                 ; $7995: $c3 $80 $70


	rst JumpTable                                          ; $7998: $c7
	and l                                            ; $7999: $a5
	ld a, c                                          ; $799a: $79
	call nz, $de79                                   ; $799b: $c4 $79 $de
	ld a, c                                          ; $799e: $79
	ld c, $7a                                        ; $799f: $0e $7a
	jr nc, jr_00b_7a1d                               ; $79a1: $30 $7a

	ld h, b                                          ; $79a3: $60
	ld a, d                                          ; $79a4: $7a
	call Call_00b_6fad                               ; $79a5: $cd $ad $6f
	ld de, $4523                                     ; $79a8: $11 $23 $45
	call Call_00b_72f3                               ; $79ab: $cd $f3 $72
	ld bc, $d637                                     ; $79ae: $01 $37 $d6
	ld de, $1894                                     ; $79b1: $11 $94 $18
	call $3bef                                       ; $79b4: $cd $ef $3b
	call Call_00b_7342                               ; $79b7: $cd $42 $73
	ret nz                                           ; $79ba: $c0

	ld l, $0a                                        ; $79bb: $2e $0a
	inc [hl]                                         ; $79bd: $34
	ld bc, $000a                                     ; $79be: $01 $0a $00
	jp $3bfb                                         ; $79c1: $c3 $fb $3b


	call Call_00b_7ba4                               ; $79c4: $cd $a4 $7b
	jp nz, Jump_00b_7ba9                             ; $79c7: $c2 $a9 $7b

	call Call_00b_7c19                               ; $79ca: $cd $19 $7c
	call $3d25                                       ; $79cd: $cd $25 $3d
	ld l, $07                                        ; $79d0: $2e $07
	ld a, [hl]                                       ; $79d2: $7e
	cp $48                                           ; $79d3: $fe $48
	jp c, $16d0                                      ; $79d5: $da $d0 $16

	ld l, $0a                                        ; $79d8: $2e $0a
	inc [hl]                                         ; $79da: $34
	jp $16d0                                         ; $79db: $c3 $d0 $16


	call Call_00b_7ba4                               ; $79de: $cd $a4 $7b
	jp nz, Jump_00b_7ba9                             ; $79e1: $c2 $a9 $7b

	call Call_00b_7c19                               ; $79e4: $cd $19 $7c
	ld bc, $08c0                                     ; $79e7: $01 $c0 $08
	call Call_00b_72ef                               ; $79ea: $cd $ef $72
	jr z, jr_00b_79f4                                ; $79ed: $28 $05

	ld a, $50                                        ; $79ef: $3e $50
	call $132c                                       ; $79f1: $cd $2c $13

jr_00b_79f4:
	call Call_00b_7298                               ; $79f4: $cd $98 $72
	jr nc, jr_00b_7a05                               ; $79f7: $30 $0c

	ld l, $0a                                        ; $79f9: $2e $0a
	inc [hl]                                         ; $79fb: $34
	call Call_00b_72ef                               ; $79fc: $cd $ef $72
	call nz, Call_00b_7338                           ; $79ff: $c4 $38 $73
	jp $16d0                                         ; $7a02: $c3 $d0 $16


jr_00b_7a05:
	call Call_00b_7281                               ; $7a05: $cd $81 $72
	call Call_00b_72a0                               ; $7a08: $cd $a0 $72
	jp $16d0                                         ; $7a0b: $c3 $d0 $16


	call Call_00b_7ba4                               ; $7a0e: $cd $a4 $7b
	jp nz, Jump_00b_7ba9                             ; $7a11: $c2 $a9 $7b

	call Call_00b_7c19                               ; $7a14: $cd $19 $7c
	call $3d25                                       ; $7a17: $cd $25 $3d
	ld l, $07                                        ; $7a1a: $2e $07
	ld a, [hl]                                       ; $7a1c: $7e

jr_00b_7a1d:
	cp $68                                           ; $7a1d: $fe $68
	jp c, $16d0                                      ; $7a1f: $da $d0 $16

	ld l, $0a                                        ; $7a22: $2e $0a
	inc [hl]                                         ; $7a24: $34
	ld a, $7b                                        ; $7a25: $3e $7b
	call $1e2e                                       ; $7a27: $cd $2e $1e
	call Call_00b_7338                               ; $7a2a: $cd $38 $73
	jp $16d0                                         ; $7a2d: $c3 $d0 $16


	ld l, $01                                        ; $7a30: $2e $01
	set 3, [hl]                                      ; $7a32: $cb $de
	call Call_00b_7269                               ; $7a34: $cd $69 $72
	call Call_00b_7269                               ; $7a37: $cd $69 $72
	ld a, d                                          ; $7a3a: $7a
	or e                                             ; $7a3b: $b3
	jr z, jr_00b_7a40                                ; $7a3c: $28 $02

	jr jr_00b_7a4c                                   ; $7a3e: $18 $0c

jr_00b_7a40:
	ld l, $0a                                        ; $7a40: $2e $0a
	inc [hl]                                         ; $7a42: $34
	ld l, $01                                        ; $7a43: $2e $01
	ld a, [hl]                                       ; $7a45: $7e
	and $fc                                          ; $7a46: $e6 $fc
	ld [hl], a                                       ; $7a48: $77
	call Call_00b_7b6f                               ; $7a49: $cd $6f $7b

jr_00b_7a4c:
	call Call_00b_72a0                               ; $7a4c: $cd $a0 $72
	call Call_00b_72ef                               ; $7a4f: $cd $ef $72
	jr nz, jr_00b_7a5a                               ; $7a52: $20 $06

	call z, $3d25                                    ; $7a54: $cc $25 $3d
	jp $16d0                                         ; $7a57: $c3 $d0 $16


jr_00b_7a5a:
	jp Jump_00b_7281                                 ; $7a5a: $c3 $81 $72


	jp $16d0                                         ; $7a5d: $c3 $d0 $16


	ld a, [$c155]                                    ; $7a60: $fa $55 $c1
	bit 7, a                                         ; $7a63: $cb $7f
	ret nz                                           ; $7a65: $c0

	call Call_00b_734a                               ; $7a66: $cd $4a $73
	ld bc, $d637                                     ; $7a69: $01 $37 $d6
	call Call_00b_72ef                               ; $7a6c: $cd $ef $72
	jr z, jr_00b_7a74                                ; $7a6f: $28 $03

	ld bc, $56b9                                     ; $7a71: $01 $b9 $56

jr_00b_7a74:
	call $3d3d                                       ; $7a74: $cd $3d $3d
	ld l, $01                                        ; $7a77: $2e $01
	res 0, [hl]                                      ; $7a79: $cb $86
	res 1, [hl]                                      ; $7a7b: $cb $8e
	jp Jump_00b_72a0                                 ; $7a7d: $c3 $a0 $72


	rst JumpTable                                          ; $7a80: $c7
	adc c                                            ; $7a81: $89
	ld a, d                                          ; $7a82: $7a
	sbc $79                                          ; $7a83: $de $79
	jr nc, @+$7c                                     ; $7a85: $30 $7a

	ld h, b                                          ; $7a87: $60
	ld a, d                                          ; $7a88: $7a
	ld bc, $451a                                     ; $7a89: $01 $1a $45
	ld de, $451d                                     ; $7a8c: $11 $1d $45
	call Call_00b_730b                               ; $7a8f: $cd $0b $73
	ld bc, $56b9                                     ; $7a92: $01 $b9 $56
	call $3d3d                                       ; $7a95: $cd $3d $3d
	call Call_00b_7342                               ; $7a98: $cd $42 $73
	ret nz                                           ; $7a9b: $c0

	ld l, $0a                                        ; $7a9c: $2e $0a
	inc [hl]                                         ; $7a9e: $34
	ld l, $0b                                        ; $7a9f: $2e $0b
	ld [hl], $32                                     ; $7aa1: $36 $32
	ld bc, $000d                                     ; $7aa3: $01 $0d $00
	jp $3bfb                                         ; $7aa6: $c3 $fb $3b


	rst JumpTable                                          ; $7aa9: $c7
	or h                                             ; $7aaa: $b4
	ld a, d                                          ; $7aab: $7a
	pop hl                                           ; $7aac: $e1
	ld a, d                                          ; $7aad: $7a
	inc sp                                           ; $7aae: $33
	ld a, e                                          ; $7aaf: $7b
	ld e, d                                          ; $7ab0: $5a
	ld a, e                                          ; $7ab1: $7b
	ld l, h                                          ; $7ab2: $6c
	ld a, e                                          ; $7ab3: $7b
	call Call_00b_7c3a                               ; $7ab4: $cd $3a $7c
	call Call_000_1309                                       ; $7ab7: $cd $09 $13
	bit 7, a                                         ; $7aba: $cb $7f
	jr z, jr_00b_7ac2                                ; $7abc: $28 $04

	ld a, $01                                        ; $7abe: $3e $01
	jr jr_00b_7ac4                                   ; $7ac0: $18 $02

jr_00b_7ac2:
	ld a, $ff                                        ; $7ac2: $3e $ff

jr_00b_7ac4:
	ld l, $15                                        ; $7ac4: $2e $15
	ld [hl], a                                       ; $7ac6: $77
	xor a                                            ; $7ac7: $af
	ld l, $30                                        ; $7ac8: $2e $30
	ld [hl+], a                                      ; $7aca: $22
	ld [hl], a                                       ; $7acb: $77
	ld l, $13                                        ; $7acc: $2e $13
	ld [hl+], a                                      ; $7ace: $22
	ld [hl], a                                       ; $7acf: $77
	ld bc, $d64f                                     ; $7ad0: $01 $4f $d6
	call $3d3d                                       ; $7ad3: $cd $3d $3d
	call Call_00b_7c6d                               ; $7ad6: $cd $6d $7c
	call Call_00b_7342                               ; $7ad9: $cd $42 $73
	ret nz                                           ; $7adc: $c0

	ld l, $0a                                        ; $7add: $2e $0a
	inc [hl]                                         ; $7adf: $34
	ret                                              ; $7ae0: $c9


	inc h                                            ; $7ae1: $24
	ld l, $01                                        ; $7ae2: $2e $01
	bit 3, [hl]                                      ; $7ae4: $cb $5e
	jr z, jr_00b_7aee                                ; $7ae6: $28 $06

	dec h                                            ; $7ae8: $25
	ld a, $03                                        ; $7ae9: $3e $03
	jp $3d43                                         ; $7aeb: $c3 $43 $3d


jr_00b_7aee:
	dec h                                            ; $7aee: $25
	call Call_00b_7c3a                               ; $7aef: $cd $3a $7c
	ld l, $01                                        ; $7af2: $2e $01
	inc h                                            ; $7af4: $24
	ld a, [hl]                                       ; $7af5: $7e
	dec h                                            ; $7af6: $25
	and $03                                          ; $7af7: $e6 $03
	jr nz, jr_00b_7b00                               ; $7af9: $20 $05

	ld l, $15                                        ; $7afb: $2e $15
	ld b, [hl]                                       ; $7afd: $46
	jr jr_00b_7b0b                                   ; $7afe: $18 $0b

jr_00b_7b00:
	ld bc, $4537                                     ; $7b00: $01 $37 $45
	call $132c                                       ; $7b03: $cd $2c $13
	ld a, [bc]                                       ; $7b06: $0a
	ld l, $15                                        ; $7b07: $2e $15
	ld [hl], a                                       ; $7b09: $77
	ld b, a                                          ; $7b0a: $47

jr_00b_7b0b:
	call Call_00b_7c28                               ; $7b0b: $cd $28 $7c
	call $3d32                                       ; $7b0e: $cd $32 $3d
	call Call_00b_7281                               ; $7b11: $cd $81 $72
	ld l, $31                                        ; $7b14: $2e $31
	ld a, [hl]                                       ; $7b16: $7e
	bit 7, a                                         ; $7b17: $cb $7f
	jr z, jr_00b_7b1d                                ; $7b19: $28 $02

	cpl                                              ; $7b1b: $2f
	inc a                                            ; $7b1c: $3c

jr_00b_7b1d:
	cp $0a                                           ; $7b1d: $fe $0a
	jp c, Jump_00b_7c6d                              ; $7b1f: $da $6d $7c

	inc h                                            ; $7b22: $24
	ld l, $01                                        ; $7b23: $2e $01
	set 2, [hl]                                      ; $7b25: $cb $d6
	dec h                                            ; $7b27: $25
	ld l, $0a                                        ; $7b28: $2e $0a
	inc [hl]                                         ; $7b2a: $34
	ld a, $7d                                        ; $7b2b: $3e $7d
	call $1e2e                                       ; $7b2d: $cd $2e $1e
	jp Jump_00b_7c6d                                 ; $7b30: $c3 $6d $7c


	call Call_00b_7c3a                               ; $7b33: $cd $3a $7c
	call Call_00b_7c57                               ; $7b36: $cd $57 $7c
	ld a, h                                          ; $7b39: $7c
	cp $c2                                           ; $7b3a: $fe $c2
	jr nz, jr_00b_7b41                               ; $7b3c: $20 $03

	xor a                                            ; $7b3e: $af
	jr jr_00b_7b44                                   ; $7b3f: $18 $03

jr_00b_7b41:
	sub $c4                                          ; $7b41: $d6 $c4
	rrca                                             ; $7b43: $0f

jr_00b_7b44:
	ld de, $4546                                     ; $7b44: $11 $46 $45
	call $1327                                       ; $7b47: $cd $27 $13
	ld a, [de]                                       ; $7b4a: $1a
	ld b, a                                          ; $7b4b: $47
	ld l, $05                                        ; $7b4c: $2e $05
	inc [hl]                                         ; $7b4e: $34
	ld a, [hl]                                       ; $7b4f: $7e
	cp b                                             ; $7b50: $b8
	ret nz                                           ; $7b51: $c0

	ld l, $0a                                        ; $7b52: $2e $0a
	inc [hl]                                         ; $7b54: $34
	ld l, $0b                                        ; $7b55: $2e $0b
	ld [hl], $10                                     ; $7b57: $36 $10
	ret                                              ; $7b59: $c9


	call Call_00b_7c57                               ; $7b5a: $cd $57 $7c
	call Call_00b_7333                               ; $7b5d: $cd $33 $73
	ret nz                                           ; $7b60: $c0

	inc h                                            ; $7b61: $24
	ld l, $01                                        ; $7b62: $2e $01
	res 2, [hl]                                      ; $7b64: $cb $96
	dec h                                            ; $7b66: $25
	ld a, $fd                                        ; $7b67: $3e $fd
	jp $3d43                                         ; $7b69: $c3 $43 $3d


	jp Jump_00b_7c6d                                 ; $7b6c: $c3 $6d $7c


Call_00b_7b6f:
	ld bc, $000a                                     ; $7b6f: $01 $0a $00
	call Call_00b_72ef                               ; $7b72: $cd $ef $72
	jr z, jr_00b_7b7a                                ; $7b75: $28 $03

	ld bc, $000d                                     ; $7b77: $01 $0d $00

jr_00b_7b7a:
	ld l, $01                                        ; $7b7a: $2e $01
	ld a, [hl]                                       ; $7b7c: $7e
	inc a                                            ; $7b7d: $3c
	and $03                                          ; $7b7e: $e6 $03
	sub $02                                          ; $7b80: $d6 $02
	jr c, jr_00b_7b89                                ; $7b82: $38 $05

	inc bc                                           ; $7b84: $03
	dec a                                            ; $7b85: $3d
	jr z, jr_00b_7b89                                ; $7b86: $28 $01

	inc bc                                           ; $7b88: $03

jr_00b_7b89:
	ld l, $0d                                        ; $7b89: $2e $0d
	ld a, [hl+]                                      ; $7b8b: $2a
	ld d, [hl]                                       ; $7b8c: $56
	ld e, a                                          ; $7b8d: $5f
	call wCpBCtoDE                                       ; $7b8e: $cd $8c $ce
	ret z                                            ; $7b91: $c8

	call $3bfb                                       ; $7b92: $cd $fb $3b
	call Call_00b_72ef                               ; $7b95: $cd $ef $72
	ret nz                                           ; $7b98: $c0

	ld l, $01                                        ; $7b99: $2e $01
	ld a, [hl]                                       ; $7b9b: $7e
	and $03                                          ; $7b9c: $e6 $03
	ret z                                            ; $7b9e: $c8

	ld a, $7e                                        ; $7b9f: $3e $7e
	jp $1e2e                                         ; $7ba1: $c3 $2e $1e


Call_00b_7ba4:
	ld l, $01                                        ; $7ba4: $2e $01
	bit 2, [hl]                                      ; $7ba6: $cb $56
	ret                                              ; $7ba8: $c9


Jump_00b_7ba9:
	xor a                                            ; $7ba9: $af
	ld l, $13                                        ; $7baa: $2e $13
	ld [hl+], a                                      ; $7bac: $22
	ld [hl], a                                       ; $7bad: $77
	call Call_00b_72a0                               ; $7bae: $cd $a0 $72
	ld bc, $d603                                     ; $7bb1: $01 $03 $d6
	call Call_00b_72ef                               ; $7bb4: $cd $ef $72
	jr z, jr_00b_7bbc                                ; $7bb7: $28 $03

	ld bc, $5685                                     ; $7bb9: $01 $85 $56

jr_00b_7bbc:
	dec h                                            ; $7bbc: $25
	ld l, $31                                        ; $7bbd: $2e $31
	ld a, [hl]                                       ; $7bbf: $7e
	inc h                                            ; $7bc0: $24
	ld l, $01                                        ; $7bc1: $2e $01
	res 0, [hl]                                      ; $7bc3: $cb $86
	res 1, [hl]                                      ; $7bc5: $cb $8e
	bit 7, a                                         ; $7bc7: $cb $7f
	jp nz, $3d3d                                     ; $7bc9: $c2 $3d $3d

	set 0, [hl]                                      ; $7bcc: $cb $c6
	ld a, $18                                        ; $7bce: $3e $18
	call $132c                                       ; $7bd0: $cd $2c $13
	jp $3d3d                                         ; $7bd3: $c3 $3d $3d


Call_00b_7bd6:
	ld l, $01                                        ; $7bd6: $2e $01
	res 0, [hl]                                      ; $7bd8: $cb $86
	res 1, [hl]                                      ; $7bda: $cb $8e
	call Call_00b_72ef                               ; $7bdc: $cd $ef $72
	jr nz, jr_00b_7bf4                               ; $7bdf: $20 $13

	ld l, $01                                        ; $7be1: $2e $01
	ld a, [wButtonsHeld]                                    ; $7be3: $fa $23 $c1
	swap a                                           ; $7be6: $cb $37
	and $03                                          ; $7be8: $e6 $03
	cp $03                                           ; $7bea: $fe $03
	ret z                                            ; $7bec: $c8

	ld b, a                                          ; $7bed: $47
	ld a, $fc                                        ; $7bee: $3e $fc
	and [hl]                                         ; $7bf0: $a6
	or b                                             ; $7bf1: $b0
	ld [hl], a                                       ; $7bf2: $77
	ret                                              ; $7bf3: $c9


jr_00b_7bf4:
	dec h                                            ; $7bf4: $25
	ld l, $14                                        ; $7bf5: $2e $14
	ld a, [hl]                                       ; $7bf7: $7e
	and $80                                          ; $7bf8: $e6 $80
	ld c, a                                          ; $7bfa: $4f
	ld l, $31                                        ; $7bfb: $2e $31
	ld a, [hl]                                       ; $7bfd: $7e
	ld b, a                                          ; $7bfe: $47
	inc h                                            ; $7bff: $24
	bit 7, a                                         ; $7c00: $cb $7f
	jr z, jr_00b_7c06                                ; $7c02: $28 $02

	cpl                                              ; $7c04: $2f
	inc a                                            ; $7c05: $3c

jr_00b_7c06:
	cp $01                                           ; $7c06: $fe $01
	ret c                                            ; $7c08: $d8

	ld a, b                                          ; $7c09: $78
	and $80                                          ; $7c0a: $e6 $80
	cp c                                             ; $7c0c: $b9
	ret nz                                           ; $7c0d: $c0

	ld l, $01                                        ; $7c0e: $2e $01
	set 0, [hl]                                      ; $7c10: $cb $c6
	or a                                             ; $7c12: $b7
	ret z                                            ; $7c13: $c8

	res 0, [hl]                                      ; $7c14: $cb $86
	set 1, [hl]                                      ; $7c16: $cb $ce
	ret                                              ; $7c18: $c9


Call_00b_7c19:
	call Call_00b_7bd6                               ; $7c19: $cd $d6 $7b
	call Call_00b_7b6f                               ; $7c1c: $cd $6f $7b
	ld l, $15                                        ; $7c1f: $2e $15
	ld b, [hl]                                       ; $7c21: $46
	call Call_00b_7250                               ; $7c22: $cd $50 $72
	jp Jump_00b_7271                                 ; $7c25: $c3 $71 $72


Call_00b_7c28:
	ld l, $13                                        ; $7c28: $2e $13
	ld a, [hl+]                                      ; $7c2a: $2a
	ld e, a                                          ; $7c2b: $5f
	ld d, [hl]                                       ; $7c2c: $56
	ld a, b                                          ; $7c2d: $78
	bit 7, a                                         ; $7c2e: $cb $7f
	jr nz, jr_00b_7c36                               ; $7c30: $20 $04

	call $1327                                       ; $7c32: $cd $27 $13
	ret                                              ; $7c35: $c9


jr_00b_7c36:
	cpl                                              ; $7c36: $2f
	inc a                                            ; $7c37: $3c
	rst SubAFromDE                                          ; $7c38: $df
	ret                                              ; $7c39: $c9


Call_00b_7c3a:
	inc h                                            ; $7c3a: $24
	ld l, $01                                        ; $7c3b: $2e $01
	ld a, [hl]                                       ; $7c3d: $7e
	and $80                                          ; $7c3e: $e6 $80
	dec h                                            ; $7c40: $25
	ld b, a                                          ; $7c41: $47
	ld a, [hl]                                       ; $7c42: $7e
	and $7f                                          ; $7c43: $e6 $7f
	or b                                             ; $7c45: $b0
	ld [hl], a                                       ; $7c46: $77
	ret                                              ; $7c47: $c9


Call_00b_7c48:
	ld l, $30                                        ; $7c48: $2e $30
	ld a, [hl+]                                      ; $7c4a: $2a
	ld c, a                                          ; $7c4b: $4f
	ld b, [hl]                                       ; $7c4c: $46
	ld l, $06                                        ; $7c4d: $2e $06
	inc h                                            ; $7c4f: $24
	ld a, [hl+]                                      ; $7c50: $2a
	ld e, a                                          ; $7c51: $5f
	ld d, [hl]                                       ; $7c52: $56
	dec h                                            ; $7c53: $25
	jp wAddBContoDE                                         ; $7c54: $c3 $92 $ce


Call_00b_7c57:
	call Call_00b_7c48                               ; $7c57: $cd $48 $7c
	inc h                                            ; $7c5a: $24
	ld l, $01                                        ; $7c5b: $2e $01
	ld a, [hl]                                       ; $7c5d: $7e
	and $03                                          ; $7c5e: $e6 $03
	ld bc, $4540                                     ; $7c60: $01 $40 $45
	call $132c                                       ; $7c63: $cd $2c $13
	ld a, [bc]                                       ; $7c66: $0a
	add d                                            ; $7c67: $82
	dec h                                            ; $7c68: $25
	ld l, $07                                        ; $7c69: $2e $07
	ld [hl], a                                       ; $7c6b: $77
	ret                                              ; $7c6c: $c9


Call_00b_7c6d:
Jump_00b_7c6d:
	call Call_00b_7c48                               ; $7c6d: $cd $48 $7c
	inc h                                            ; $7c70: $24
	ld l, $05                                        ; $7c71: $2e $05
	ld a, [hl]                                       ; $7c73: $7e
	ld e, a                                          ; $7c74: $5f
	ld l, $01                                        ; $7c75: $2e $01
	ld a, [hl]                                       ; $7c77: $7e
	and $03                                          ; $7c78: $e6 $03
	rlca                                             ; $7c7a: $07
	ld bc, $453a                                     ; $7c7b: $01 $3a $45
	call $132c                                       ; $7c7e: $cd $2c $13
	ld a, [bc]                                       ; $7c81: $0a
	inc bc                                           ; $7c82: $03
	add d                                            ; $7c83: $82
	ld d, a                                          ; $7c84: $57
	ld a, [bc]                                       ; $7c85: $0a
	inc bc                                           ; $7c86: $03
	add e                                            ; $7c87: $83
	ld e, a                                          ; $7c88: $5f
	dec h                                            ; $7c89: $25
	jp $3bf4                                         ; $7c8a: $c3 $f4 $3b


	ld a, [$c146]                                    ; $7c8d: $fa $46 $c1
	call wJumpTable                                       ; $7c90: $cd $80 $cf
	and l                                            ; $7c93: $a5
	ld a, h                                          ; $7c94: $7c
	db $eb                                           ; $7c95: $eb
	ld b, [hl]                                       ; $7c96: $46
	xor e                                            ; $7c97: $ab
	ld a, h                                          ; $7c98: $7c
	ld hl, sp+$7c                                    ; $7c99: $f8 $7c
	ld [$317d], sp                                   ; $7c9b: $08 $7d $31
	ld a, l                                          ; $7c9e: $7d
	ld a, [$1646]                                    ; $7c9f: $fa $46 $16
	ld b, a                                          ; $7ca2: $47
	dec hl                                           ; $7ca3: $2b
	ld b, a                                          ; $7ca4: $47
	ld bc, $5a05                                     ; $7ca5: $01 $05 $5a
	jp Jump_00b_6fc0                                 ; $7ca8: $c3 $c0 $6f


	ld a, [wButtonsPressed]                                    ; $7cab: $fa $25 $c1
	and $90                                          ; $7cae: $e6 $90
	jp z, $2e21                                      ; $7cb0: $ca $21 $2e

	ld hl, $457f                                     ; $7cb3: $21 $7f $45
	ld bc, $65c0                                     ; $7cb6: $01 $c0 $65
	call Call_00b_45e9                               ; $7cb9: $cd $e9 $45
	call Call_00b_4784                               ; $7cbc: $cd $84 $47
	ld hl, $45a5                                     ; $7cbf: $21 $a5 $45
	call $0ab5                                       ; $7cc2: $cd $b5 $0a
	ld b, $17                                        ; $7cc5: $06 $17
	call Call_00b_47d8                               ; $7cc7: $cd $d8 $47
	ld de, $9c00                                     ; $7cca: $11 $00 $9c
	call Call_00b_4787                               ; $7ccd: $cd $87 $47
	call Call_00b_7d68                               ; $7cd0: $cd $68 $7d
	call Call_00b_7d6f                               ; $7cd3: $cd $6f $7d
	ld a, $09                                        ; $7cd6: $3e $09
	call $068e                                       ; $7cd8: $cd $8e $06
	call Call_00b_6fad                               ; $7cdb: $cd $ad $6f
	call Call_00b_7d76                               ; $7cde: $cd $76 $7d
	call $096e                                       ; $7ce1: $cd $6e $09
	ld bc, $45b6                                     ; $7ce4: $01 $b6 $45
	call Call_00b_4608                               ; $7ce7: $cd $08 $46
	ld a, $20                                        ; $7cea: $3e $20
	ld [$c188], a                                    ; $7cec: $ea $88 $c1
	call $2e21                                       ; $7cef: $cd $21 $2e
	ld bc, $681a                                     ; $7cf2: $01 $1a $68
	jp $18b7                                         ; $7cf5: $c3 $b7 $18


	call $2e21                                       ; $7cf8: $cd $21 $2e
	ld hl, $c188                                     ; $7cfb: $21 $88 $c1
	dec [hl]                                         ; $7cfe: $35
	ret nz                                           ; $7cff: $c0

	ld a, $7b                                        ; $7d00: $3e $7b
	call $1e2e                                       ; $7d02: $cd $2e $1e
	jp Jump_00b_4614                                 ; $7d05: $c3 $14 $46


	call $2e21                                       ; $7d08: $cd $21 $2e
	ld hl, $c15c                                     ; $7d0b: $21 $5c $c1
	inc [hl]                                         ; $7d0e: $34
	call Call_00b_7d92                               ; $7d0f: $cd $92 $7d
	call Call_00b_7df6                               ; $7d12: $cd $f6 $7d
	ld hl, $c188                                     ; $7d15: $21 $88 $c1
	ld a, [hl]                                       ; $7d18: $7e
	or a                                             ; $7d19: $b7
	jr nz, jr_00b_7d21                               ; $7d1a: $20 $05

	call Call_00b_7d85                               ; $7d1c: $cd $85 $7d
	jr jr_00b_7d22                                   ; $7d1f: $18 $01

jr_00b_7d21:
	dec [hl]                                         ; $7d21: $35

jr_00b_7d22:
	call Call_00b_7e53                               ; $7d22: $cd $53 $7e
	call Call_00b_7e9e                               ; $7d25: $cd $9e $7e
	call Call_00b_7eab                               ; $7d28: $cd $ab $7e
	call Call_00b_7ed6                               ; $7d2b: $cd $d6 $7e
	jp Jump_00b_7f08                                 ; $7d2e: $c3 $08 $7f


	call $2e21                                       ; $7d31: $cd $21 $2e
	ld hl, $c188                                     ; $7d34: $21 $88 $c1
	ld a, [hl]                                       ; $7d37: $7e
	or a                                             ; $7d38: $b7
	jr z, jr_00b_7d3d                                ; $7d39: $28 $02

	dec [hl]                                         ; $7d3b: $35
	ret                                              ; $7d3c: $c9


jr_00b_7d3d:
	call Call_00b_4736                               ; $7d3d: $cd $36 $47
	ld hl, wButtonsPressed                                     ; $7d40: $21 $25 $c1
	bit 4, [hl]                                      ; $7d43: $cb $66
	ret z                                            ; $7d45: $c8

	ld a, [$c153]                                    ; $7d46: $fa $53 $c1
	bit 0, a                                         ; $7d49: $cb $47
	jr nz, jr_00b_7d59                               ; $7d4b: $20 $0c

	ld a, $20                                        ; $7d4d: $3e $20
	ld [$c188], a                                    ; $7d4f: $ea $88 $c1
	ld a, $03                                        ; $7d52: $3e $03
	ld [$c146], a                                    ; $7d54: $ea $46 $c1
	jr jr_00b_7d68                                   ; $7d57: $18 $0f

jr_00b_7d59:
	ld a, [$c15e]                                    ; $7d59: $fa $5e $c1
	swap a                                           ; $7d5c: $cb $37
	ld hl, wMenuOptionSelected                                     ; $7d5e: $21 $5f $c1
	or [hl]                                          ; $7d61: $b6
	ld [$c150], a                                    ; $7d62: $ea $50 $c1
	jp Jump_00b_4614                                 ; $7d65: $c3 $14 $46


Call_00b_7d68:
jr_00b_7d68:
	xor a                                            ; $7d68: $af
	ld hl, $c153                                     ; $7d69: $21 $53 $c1
	jp $cbe9                                         ; $7d6c: $c3 $e9 $cb


Call_00b_7d6f:
	xor a                                            ; $7d6f: $af
	ld hl, $c15d                                     ; $7d70: $21 $5d $c1
	jp $cbee                                         ; $7d73: $c3 $ee $cb


Call_00b_7d76:
	ld hl, $45bd                                     ; $7d76: $21 $bd $45

jr_00b_7d79:
	cp [hl]                                          ; $7d79: $be
	inc hl                                           ; $7d7a: $23
	jr c, jr_00b_7d80                                ; $7d7b: $38 $03

	inc hl                                           ; $7d7d: $23
	jr jr_00b_7d79                                   ; $7d7e: $18 $f9

jr_00b_7d80:
	ld a, [hl]                                       ; $7d80: $7e
	ld [$c15b], a                                    ; $7d81: $ea $5b $c1
	ret                                              ; $7d84: $c9


Call_00b_7d85:
	ld hl, $c153                                     ; $7d85: $21 $53 $c1
	res 2, [hl]                                      ; $7d88: $cb $96
	res 3, [hl]                                      ; $7d8a: $cb $9e
	ld hl, $c158                                     ; $7d8c: $21 $58 $c1
	ld [hl], $00                                     ; $7d8f: $36 $00
	ret                                              ; $7d91: $c9


Call_00b_7d92:
	ld hl, $c15a                                     ; $7d92: $21 $5a $c1
	ld a, [hl]                                       ; $7d95: $7e
	or a                                             ; $7d96: $b7
	jr z, jr_00b_7d9b                                ; $7d97: $28 $02

	dec [hl]                                         ; $7d99: $35
	ret                                              ; $7d9a: $c9


jr_00b_7d9b:
	ld [hl], $20                                     ; $7d9b: $36 $20
	ld hl, $c153                                     ; $7d9d: $21 $53 $c1
	res 5, [hl]                                      ; $7da0: $cb $ae
	ld a, [hl]                                       ; $7da2: $7e
	and $0c                                          ; $7da3: $e6 $0c
	jr z, jr_00b_7dbd                                ; $7da5: $28 $16

	ld b, $01                                        ; $7da7: $06 $01
	ld a, [$c15e]                                    ; $7da9: $fa $5e $c1
	or a                                             ; $7dac: $b7
	jr nz, jr_00b_7db7                               ; $7dad: $20 $08

	ld a, [wMenuOptionSelected]                                    ; $7daf: $fa $5f $c1
	or a                                             ; $7db2: $b7
	jr z, jr_00b_7db7                                ; $7db3: $28 $02

	ld b, $03                                        ; $7db5: $06 $03

jr_00b_7db7:
	call Call_000_1309                                       ; $7db7: $cd $09 $13
	and b                                            ; $7dba: $a0
	jr nz, jr_00b_7dbf                               ; $7dbb: $20 $02

jr_00b_7dbd:
	set 5, [hl]                                      ; $7dbd: $cb $ee

jr_00b_7dbf:
	ld a, $0c                                        ; $7dbf: $3e $0c
	call Call_000_12fc                                       ; $7dc1: $cd $fc $12
	add $0c                                          ; $7dc4: $c6 $0c
	ld [$c159], a                                    ; $7dc6: $ea $59 $c1
	ret                                              ; $7dc9: $c9


Call_00b_7dca:
	ld hl, $c157                                     ; $7dca: $21 $57 $c1
	ld a, [hl+]                                      ; $7dcd: $2a
	cp $0d                                           ; $7dce: $fe $0d
	jr c, jr_00b_7ddb                                ; $7dd0: $38 $09

	call Call_00b_7de8                               ; $7dd2: $cd $e8 $7d
	ld hl, $c153                                     ; $7dd5: $21 $53 $c1
	set 2, [hl]                                      ; $7dd8: $cb $d6
	ret                                              ; $7dda: $c9


jr_00b_7ddb:
	ld b, a                                          ; $7ddb: $47
	ld a, $18                                        ; $7ddc: $3e $18
	sub b                                            ; $7dde: $90
	call Call_00b_7de8                               ; $7ddf: $cd $e8 $7d
	ld hl, $c153                                     ; $7de2: $21 $53 $c1
	set 3, [hl]                                      ; $7de5: $cb $de
	ret                                              ; $7de7: $c9


Call_00b_7de8:
	ld b, a                                          ; $7de8: $47
	ld a, [$c15b]                                    ; $7de9: $fa $5b $c1
	ld c, a                                          ; $7dec: $4f
	call BCequBtimesC                                       ; $7ded: $cd $5f $12
	call $cee3                                       ; $7df0: $cd $e3 $ce
	ld a, b                                          ; $7df3: $78
	ld [hl], a                                       ; $7df4: $77
	ret                                              ; $7df5: $c9


Call_00b_7df6:
	ld a, [wButtonsPressed]                                    ; $7df6: $fa $25 $c1
	bit 4, a                                         ; $7df9: $cb $67
	jr z, jr_00b_7e11                                ; $7dfb: $28 $14

	ld hl, $c153                                     ; $7dfd: $21 $53 $c1
	res 2, [hl]                                      ; $7e00: $cb $96
	res 3, [hl]                                      ; $7e02: $cb $9e
	call Call_00b_7dca                               ; $7e04: $cd $ca $7d
	ld a, $20                                        ; $7e07: $3e $20
	ld [$c188], a                                    ; $7e09: $ea $88 $c1
	ld hl, $c157                                     ; $7e0c: $21 $57 $c1
	jr jr_00b_7e1b                                   ; $7e0f: $18 $0a

jr_00b_7e11:
	ld hl, $c157                                     ; $7e11: $21 $57 $c1
	inc [hl]                                         ; $7e14: $34
	ld a, [hl]                                       ; $7e15: $7e
	cp $19                                           ; $7e16: $fe $19
	jp c, Jump_00b_7e20                              ; $7e18: $da $20 $7e

jr_00b_7e1b:
	xor a                                            ; $7e1b: $af
	ld [hl], a                                       ; $7e1c: $77
	jp Jump_00b_7e20                                 ; $7e1d: $c3 $20 $7e


Jump_00b_7e20:
	ld a, $06                                        ; $7e20: $3e $06
	ld e, $fa                                        ; $7e22: $1e $fa
	ld hl, $9881                                     ; $7e24: $21 $81 $98
	call $165f                                       ; $7e27: $cd $5f $16
	ld a, [$c157]                                    ; $7e2a: $fa $57 $c1
	or a                                             ; $7e2d: $b7
	ret z                                            ; $7e2e: $c8

	ld b, $04                                        ; $7e2f: $06 $04
	call $12b5                                       ; $7e31: $cd $b5 $12
	ld c, a                                          ; $7e34: $4f
	or a                                             ; $7e35: $b7
	jr z, jr_00b_7e42                                ; $7e36: $28 $0a

	push bc                                          ; $7e38: $c5
	ld e, $fe                                        ; $7e39: $1e $fe
	ld hl, $9881                                     ; $7e3b: $21 $81 $98
	call $165f                                       ; $7e3e: $cd $5f $16
	pop bc                                           ; $7e41: $c1

jr_00b_7e42:
	ld a, $fa                                        ; $7e42: $3e $fa
	add b                                            ; $7e44: $80
	cp $fa                                           ; $7e45: $fe $fa
	ret z                                            ; $7e47: $c8

	ld e, a                                          ; $7e48: $5f
	ld a, c                                          ; $7e49: $79
	ld hl, $9881                                     ; $7e4a: $21 $81 $98
	rst AddAOntoHL                                          ; $7e4d: $ef
	ld a, $01                                        ; $7e4e: $3e $01
	jp $165f                                         ; $7e50: $c3 $5f $16


Call_00b_7e53:
	ld hl, $c158                                     ; $7e53: $21 $58 $c1
	ld a, [hl+]                                      ; $7e56: $2a
	ld b, a                                          ; $7e57: $47
	ld c, [hl]                                       ; $7e58: $4e
	call Call_00b_7ef5                               ; $7e59: $cd $f5 $7e
	ld de, $7e67                                     ; $7e5c: $11 $67 $7e
	push de                                          ; $7e5f: $d5
	ld hl, $45cf                                     ; $7e60: $21 $cf $45
	call $cf8a                                       ; $7e63: $cd $8a $cf
	jp hl                                            ; $7e66: $e9


	ld hl, $c153                                     ; $7e67: $21 $53 $c1
	res 6, [hl]                                      ; $7e6a: $cb $b6
	res 7, [hl]                                      ; $7e6c: $cb $be
	ld a, b                                          ; $7e6e: $78
	and $80                                          ; $7e6f: $e6 $80
	or [hl]                                          ; $7e71: $b6
	ld [hl], a                                       ; $7e72: $77
	ret                                              ; $7e73: $c9


jr_00b_7e74:
	ld bc, $0000                                     ; $7e74: $01 $00 $00
	ld hl, $c153                                     ; $7e77: $21 $53 $c1
	set 6, [hl]                                      ; $7e7a: $cb $f6
	pop de                                           ; $7e7c: $d1
	ret                                              ; $7e7d: $c9


	ld a, c                                          ; $7e7e: $79
	cp b                                             ; $7e7f: $b8
	jr nc, jr_00b_7e74                               ; $7e80: $30 $f2

	ld c, b                                          ; $7e82: $48
	ld b, a                                          ; $7e83: $47
	jr jr_00b_7e94                                   ; $7e84: $18 $0e

	ld a, b                                          ; $7e86: $78
	cp c                                             ; $7e87: $b9
	jr nc, jr_00b_7e74                               ; $7e88: $30 $ea

jr_00b_7e8a:
	call Call_00b_7e94                               ; $7e8a: $cd $94 $7e
	jp $cec0                                         ; $7e8d: $c3 $c0 $ce


	ld b, $00                                        ; $7e90: $06 $00
	jr jr_00b_7e8a                                   ; $7e92: $18 $f6

Call_00b_7e94:
jr_00b_7e94:
	ld a, c                                          ; $7e94: $79
	sub b                                            ; $7e95: $90
	ld c, a                                          ; $7e96: $4f
	ld b, $00                                        ; $7e97: $06 $00
	sla c                                            ; $7e99: $cb $21
	rl b                                             ; $7e9b: $cb $10
	ret                                              ; $7e9d: $c9


Call_00b_7e9e:
	ld hl, $c154                                     ; $7e9e: $21 $54 $c1
	ld a, [hl+]                                      ; $7ea1: $2a
	ld d, [hl]                                       ; $7ea2: $56
	ld e, a                                          ; $7ea3: $5f
	call wAddBContoDE                                       ; $7ea4: $cd $92 $ce
	ld a, d                                          ; $7ea7: $7a
	ld [hl-], a                                      ; $7ea8: $32
	ld [hl], e                                       ; $7ea9: $73
	ret                                              ; $7eaa: $c9


Call_00b_7eab:
	ld hl, $c153                                     ; $7eab: $21 $53 $c1
	bit 6, [hl]                                      ; $7eae: $cb $76
	jr z, jr_00b_7eb9                                ; $7eb0: $28 $07

	res 1, [hl]                                      ; $7eb2: $cb $8e
	xor a                                            ; $7eb4: $af
	ld [$c156], a                                    ; $7eb5: $ea $56 $c1
	ret                                              ; $7eb8: $c9


jr_00b_7eb9:
	set 1, [hl]                                      ; $7eb9: $cb $ce
	ld a, [hl]                                       ; $7ebb: $7e
	and $80                                          ; $7ebc: $e6 $80
	rlca                                             ; $7ebe: $07
	rlca                                             ; $7ebf: $07
	ld b, a                                          ; $7ec0: $47
	ld a, [$c15c]                                    ; $7ec1: $fa $5c $c1
	and $10                                          ; $7ec4: $e6 $10
	swap a                                           ; $7ec6: $cb $37
	or b                                             ; $7ec8: $b0
	ld b, a                                          ; $7ec9: $47
	ld c, $20                                        ; $7eca: $0e $20
	call BCequBtimesC                                       ; $7ecc: $cd $5f $12
	ld a, c                                          ; $7ecf: $79
	add $b0                                          ; $7ed0: $c6 $b0
	ld [$c156], a                                    ; $7ed2: $ea $56 $c1
	ret                                              ; $7ed5: $c9


Call_00b_7ed6:
	ld hl, $c153                                     ; $7ed6: $21 $53 $c1
	bit 6, [hl]                                      ; $7ed9: $cb $76
	jr nz, jr_00b_7ef0                               ; $7edb: $20 $13

	ld a, [$c155]                                    ; $7edd: $fa $55 $c1
	and $03                                          ; $7ee0: $e6 $03
	jr nz, jr_00b_7ef0                               ; $7ee2: $20 $0c

	ld hl, $c160                                     ; $7ee4: $21 $60 $c1
	ld a, [hl]                                       ; $7ee7: $7e
	or a                                             ; $7ee8: $b7
	ret nz                                           ; $7ee9: $c0

	inc [hl]                                         ; $7eea: $34
	ld a, $78                                        ; $7eeb: $3e $78
	jp $1e2e                                         ; $7eed: $c3 $2e $1e


jr_00b_7ef0:
	xor a                                            ; $7ef0: $af
	ld [$c160], a                                    ; $7ef1: $ea $60 $c1
	ret                                              ; $7ef4: $c9


Call_00b_7ef5:
	ld a, [$c153]                                    ; $7ef5: $fa $53 $c1
	and $2c                                          ; $7ef8: $e6 $2c
	ld d, $00                                        ; $7efa: $16 $00
	ld hl, $45c9                                     ; $7efc: $21 $c9 $45

jr_00b_7eff:
	cp [hl]                                          ; $7eff: $be
	inc hl                                           ; $7f00: $23
	jr z, jr_00b_7f06                                ; $7f01: $28 $03

	inc d                                            ; $7f03: $14
	jr jr_00b_7eff                                   ; $7f04: $18 $f9

jr_00b_7f06:
	ld a, d                                          ; $7f06: $7a
	ret                                              ; $7f07: $c9


Jump_00b_7f08:
	ld a, [$c155]                                    ; $7f08: $fa $55 $c1
	bit 7, a                                         ; $7f0b: $cb $7f
	jr z, jr_00b_7f11                                ; $7f0d: $28 $02

	cpl                                              ; $7f0f: $2f
	inc a                                            ; $7f10: $3c

jr_00b_7f11:
	cp $20                                           ; $7f11: $fe $20
	ret c                                            ; $7f13: $d8

	ld hl, $c15d                                     ; $7f14: $21 $5d $c1
	inc [hl]                                         ; $7f17: $34
	ld hl, $c15e                                     ; $7f18: $21 $5e $c1
	ld a, [$c155]                                    ; $7f1b: $fa $55 $c1
	bit 7, a                                         ; $7f1e: $cb $7f
	jr z, jr_00b_7f2a                                ; $7f20: $28 $08

	ld hl, $c153                                     ; $7f22: $21 $53 $c1
	set 4, [hl]                                      ; $7f25: $cb $e6
	ld hl, wMenuOptionSelected                                     ; $7f27: $21 $5f $c1

jr_00b_7f2a:
	inc [hl]                                         ; $7f2a: $34
	bit 1, [hl]                                      ; $7f2b: $cb $4e
	ld a, $7b                                        ; $7f2d: $3e $7b
	jr z, jr_00b_7f59                                ; $7f2f: $28 $28

	ld hl, $c153                                     ; $7f31: $21 $53 $c1
	set 0, [hl]                                      ; $7f34: $cb $c6
	ld hl, $c2ca                                     ; $7f36: $21 $ca $c2
	inc [hl]                                         ; $7f39: $34
	ld a, [$c15e]                                    ; $7f3a: $fa $5e $c1
	cp $02                                           ; $7f3d: $fe $02
	ld a, $74                                        ; $7f3f: $3e $74
	ld b, $aa                                        ; $7f41: $06 $aa
	jr z, jr_00b_7f49                                ; $7f43: $28 $04

	ld a, $76                                        ; $7f45: $3e $76
	ld b, $4a                                        ; $7f47: $06 $4a

jr_00b_7f49:
	push af                                          ; $7f49: $f5
	ld a, $00                                        ; $7f4a: $3e $00
	call $1e2e                                       ; $7f4c: $cd $2e $1e
	pop af                                           ; $7f4f: $f1
	call $1e27                                       ; $7f50: $cd $27 $1e
	ld a, b                                          ; $7f53: $78
	ld [$c161], a                                    ; $7f54: $ea $61 $c1
	jr jr_00b_7f60                                   ; $7f57: $18 $07

jr_00b_7f59:
	call $1e2e                                       ; $7f59: $cd $2e $1e
	xor a                                            ; $7f5c: $af
	ld [$c161], a                                    ; $7f5d: $ea $61 $c1

jr_00b_7f60:
	ld a, $20                                        ; $7f60: $3e $20
	ld [$c188], a                                    ; $7f62: $ea $88 $c1
	jp Jump_00b_4614                                 ; $7f65: $c3 $14 $46


	ld de, $5044                                     ; $7f68: $11 $44 $50
	ld l, $01                                        ; $7f6b: $2e $01
	res 7, [hl]                                      ; $7f6d: $cb $be
	ld a, [$c146]                                    ; $7f6f: $fa $46 $c1
	cp $03                                           ; $7f72: $fe $03
	jr z, jr_00b_7f7c                                ; $7f74: $28 $06

	cp $05                                           ; $7f76: $fe $05
	jr z, jr_00b_7f8a                                ; $7f78: $28 $10

	set 7, [hl]                                      ; $7f7a: $cb $fe

jr_00b_7f7c:
	ld a, [$c15d]                                    ; $7f7c: $fa $5d $c1
	push hl                                          ; $7f7f: $e5
	ld hl, $45db                                     ; $7f80: $21 $db $45
	call $cfa0                                       ; $7f83: $cd $a0 $cf
	pop hl                                           ; $7f86: $e1
	jp $3bef                                         ; $7f87: $c3 $ef $3b


jr_00b_7f8a:
	ld a, [$c153]                                    ; $7f8a: $fa $53 $c1
	ld b, a                                          ; $7f8d: $47
	and $10                                          ; $7f8e: $e6 $10
	swap a                                           ; $7f90: $cb $37
	rlca                                             ; $7f92: $07
	ld c, a                                          ; $7f93: $4f
	ld a, b                                          ; $7f94: $78
	and $01                                          ; $7f95: $e6 $01
	or c                                             ; $7f97: $b1
	push hl                                          ; $7f98: $e5
	ld hl, $45e1                                     ; $7f99: $21 $e1 $45
	call $cfa0                                       ; $7f9c: $cd $a0 $cf
	pop hl                                           ; $7f9f: $e1
	jp $3bef                                         ; $7fa0: $c3 $ef $3b


	ld a, [$c15e]                                    ; $7fa3: $fa $5e $c1
	or a                                             ; $7fa6: $b7
	ret z                                            ; $7fa7: $c8

	ld bc, $d5cb                                     ; $7fa8: $01 $cb $d5
	ld de, $3028                                     ; $7fab: $11 $28 $30
	jp $3bef                                         ; $7fae: $c3 $ef $3b


	ld a, [wMenuOptionSelected]                                    ; $7fb1: $fa $5f $c1
	or a                                             ; $7fb4: $b7
	ret z                                            ; $7fb5: $c8

	ld bc, $d5db                                     ; $7fb6: $01 $db $d5
	ld de, $7028                                     ; $7fb9: $11 $28 $70
	jp $3bef                                         ; $7fbc: $c3 $ef $3b


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
