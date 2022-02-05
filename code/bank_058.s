; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $058", ROMX[$4000], BANK[$58]

	or $d4                                           ; $4000: $f6 $d4
	or h                                             ; $4002: $b4
	xor b                                            ; $4003: $a8
	ld h, b                                          ; $4004: $60
	ret nz                                           ; $4005: $c0

	dec b                                            ; $4006: $05
	ld a, d                                          ; $4007: $7a
	ld c, l                                          ; $4008: $4d
	sbc e                                            ; $4009: $9b
	add c                                            ; $400a: $81
	sbc [hl]                                         ; $400b: $9e
	add b                                            ; $400c: $80
	ld hl, $9478                                     ; $400d: $21 $78 $94
	add b                                            ; $4010: $80
	db $fc                                           ; $4011: $fc
	ld h, b                                          ; $4012: $60
	ld h, c                                          ; $4013: $61
	ld a, [hl]                                       ; $4014: $7e
	ret nz                                           ; $4015: $c0

	nop                                              ; $4016: $00
	nop                                              ; $4017: $00
	db $10                                           ; $4018: $10
	rrca                                             ; $4019: $0f
	db $fc                                           ; $401a: $fc
	nop                                              ; $401b: $00
	inc bc                                           ; $401c: $03
	ldh a, [rIE]                                     ; $401d: $f0 $ff
	rst $38                                          ; $401f: $ff
	ldh [rP1], a                                     ; $4020: $e0 $00
	inc bc                                           ; $4022: $03
	db $fc                                           ; $4023: $fc
	nop                                              ; $4024: $00
	rrca                                             ; $4025: $0f
	inc b                                            ; $4026: $04
	add e                                            ; $4027: $83
	ld a, a                                          ; $4028: $7f
	ldh a, [rP1]                                     ; $4029: $f0 $00
	inc b                                            ; $402b: $04
	add b                                            ; $402c: $80
	nop                                              ; $402d: $00
	ld hl, sp+$00                                    ; $402e: $f8 $00
	ld a, a                                          ; $4030: $7f
	db $f4                                           ; $4031: $f4
	add b                                            ; $4032: $80
	ld hl, sp+$03                                    ; $4033: $f8 $03
	ld a, a                                          ; $4035: $7f
	cp $f4                                           ; $4036: $fe $f4
	or $f7                                           ; $4038: $f6 $f7
	rst SubAFromDE                                          ; $403a: $df
	rst SubAFromDE                                          ; $403b: $df
	push de                                          ; $403c: $d5
	ld d, d                                          ; $403d: $52
	add hl, hl                                       ; $403e: $29
	call c, $dedc                                    ; $403f: $dc $dc $de
	rst SubAFromHL                                          ; $4042: $d7
	rst SubAFromHL                                          ; $4043: $d7
	db $d3                                           ; $4044: $d3
	ld [hl], c                                       ; $4045: $71
	jr c, jr_058_404e                                ; $4046: $38 $06

	ld b, $17                                        ; $4048: $06 $17
	rst JumpTable                                          ; $404a: $c7
	sbc e                                            ; $404b: $9b
	cp l                                             ; $404c: $bd
	db $dd                                           ; $404d: $dd

jr_058_404e:
	ld l, l                                          ; $404e: $6d
	inc b                                            ; $404f: $04
	inc b                                            ; $4050: $04
	inc c                                            ; $4051: $0c

jr_058_4052:
	adc d                                            ; $4052: $8a
	inc a                                            ; $4053: $3c
	rst SubAFromBC                                          ; $4054: $e7
	jp nz, $f2e2                                     ; $4055: $c2 $e2 $f2

	rst SubAFromDE                                          ; $4058: $df
	ld c, a                                          ; $4059: $4f
	and e                                            ; $405a: $a3
	db $fd                                           ; $405b: $fd
	add $fb                                          ; $405c: $c6 $fb
	db $dd                                           ; $405e: $dd
	db $fd                                           ; $405f: $fd
	jr nz, jr_058_4052                               ; $4060: $20 $f0

	ld a, h                                          ; $4062: $7c
	jp nz, Jump_058_7c39                             ; $4063: $c2 $39 $7c

	cp [hl]                                          ; $4066: $be
	cp $de                                           ; $4067: $fe $de
	ret nz                                           ; $4069: $c0

	sbc d                                            ; $406a: $9a
	ldh a, [$e0]                                     ; $406b: $f0 $e0
	ld h, b                                          ; $406d: $60
	ld h, c                                          ; $406e: $61
	pop af                                           ; $406f: $f1
	sbc $20                                          ; $4070: $de $20
	ld a, a                                          ; $4072: $7f
	and [hl]                                         ; $4073: $a6
	rst SubAFromDE                                          ; $4074: $df
	sub b                                            ; $4075: $90

jr_058_4076:
	adc [hl]                                         ; $4076: $8e
	ld bc, $6c70                                     ; $4077: $01 $70 $6c
	ld a, d                                          ; $407a: $7a
	ld a, c                                          ; $407b: $79
	pop af                                           ; $407c: $f1
	pop af                                           ; $407d: $f1
	pop hl                                           ; $407e: $e1
	pop bc                                           ; $407f: $c1
	jr c, jr_058_40be                                ; $4080: $38 $3c

	ld a, [hl+]                                      ; $4082: $2a
	ld c, c                                          ; $4083: $49
	ld d, c                                          ; $4084: $51
	sub c                                            ; $4085: $91
	and c                                            ; $4086: $a1
	ld b, c                                          ; $4087: $41
	cp $7c                                           ; $4088: $fe $7c
	push af                                          ; $408a: $f5
	sbc h                                            ; $408b: $9c
	ld hl, sp-$01                                    ; $408c: $f8 $ff
	rst $38                                          ; $408e: $ff
	ld [hl], a                                       ; $408f: $77
	ld hl, sp-$65                                    ; $4090: $f8 $9b
	jr nz, jr_058_40ac                               ; $4092: $20 $18

	rrca                                             ; $4094: $0f

Jump_058_4095:
	ld [$0cda], sp                                   ; $4095: $08 $da $0c
	ld a, a                                          ; $4098: $7f
	jr jr_058_4076                                   ; $4099: $18 $db

	ld [hl+], a                                      ; $409b: $22
	sbc [hl]                                         ; $409c: $9e
	rst $38                                          ; $409d: $ff
	call c, $9c0a                                    ; $409e: $dc $0a $9c
	ld [bc], a                                       ; $40a1: $02
	ld a, [bc]                                       ; $40a2: $0a
	ld a, [bc]                                       ; $40a3: $0a
	call c, $9cf5                                    ; $40a4: $dc $f5 $9c
	db $fd                                           ; $40a7: $fd
	push af                                          ; $40a8: $f5
	push af                                          ; $40a9: $f5
	sbc $a9                                          ; $40aa: $de $a9

jr_058_40ac:
	rst SubAFromDE                                          ; $40ac: $df
	add c                                            ; $40ad: $81
	sbc $b9                                          ; $40ae: $de $b9
	sbc $46                                          ; $40b0: $de $46
	rst SubAFromDE                                          ; $40b2: $df
	ld a, [hl]                                       ; $40b3: $7e
	sbc $46                                          ; $40b4: $de $46
	add [hl]                                         ; $40b6: $86
	or a                                             ; $40b7: $b7
	add a                                            ; $40b8: $87
	or l                                             ; $40b9: $b5
	add a                                            ; $40ba: $87

Jump_058_40bb:
	add l                                            ; $40bb: $85
	add l                                            ; $40bc: $85
	and l                                            ; $40bd: $a5

jr_058_40be:
	or l                                             ; $40be: $b5
	ld c, b                                          ; $40bf: $48
	ld c, b                                          ; $40c0: $48
	ld c, d                                          ; $40c1: $4a
	ld a, b                                          ; $40c2: $78
	ld a, d                                          ; $40c3: $7a
	ld a, d                                          ; $40c4: $7a
	ld e, d                                          ; $40c5: $5a
	ld c, d                                          ; $40c6: $4a
	ld [$3a22], a                                    ; $40c7: $ea $22 $3a
	ld a, [hl+]                                      ; $40ca: $2a
	ld a, [hl+]                                      ; $40cb: $2a
	ld l, $2f                                        ; $40cc: $2e $2f
	cpl                                              ; $40ce: $2f
	dec bc                                           ; $40cf: $0b
	jp c, Jump_058_7a03                              ; $40d0: $da $03 $7a

	pop hl                                           ; $40d3: $e1
	sbc d                                            ; $40d4: $9a
	sub d                                            ; $40d5: $92
	and h                                            ; $40d6: $a4
	and h                                            ; $40d7: $a4
	ret z                                            ; $40d8: $c8

	sbc a                                            ; $40d9: $9f
	reti                                             ; $40da: $d9


	rst $38                                          ; $40db: $ff
	ld a, [hl]                                       ; $40dc: $7e
	and b                                            ; $40dd: $a0
	sbc e                                            ; $40de: $9b
	adc d                                            ; $40df: $8a
	dec d                                            ; $40e0: $15
	dec sp                                           ; $40e1: $3b
	ld h, a                                          ; $40e2: $67
	ld l, e                                          ; $40e3: $6b
	pop af                                           ; $40e4: $f1
	ld a, l                                          ; $40e5: $7d
	ld sp, hl                                        ; $40e6: $f9
	adc e                                            ; $40e7: $8b
	ld sp, hl                                        ; $40e8: $f9
	ret c                                            ; $40e9: $d8

	ld e, e                                          ; $40ea: $5b
	db $eb                                           ; $40eb: $eb
	rst FarCall                                          ; $40ec: $f7
	or a                                             ; $40ed: $b7
	rst AddAOntoHL                                          ; $40ee: $ef
	rst AddAOntoHL                                          ; $40ef: $ef
	ccf                                              ; $40f0: $3f
	rst AddAOntoHL                                          ; $40f1: $ef
	db $ed                                           ; $40f2: $ed
	db $dd                                           ; $40f3: $dd
	jp c, $b4da                                      ; $40f4: $da $da $b4

	or h                                             ; $40f7: $b4
	add sp, -$03                                     ; $40f8: $e8 $fd
	db $fd                                           ; $40fa: $fd
	cp $78                                           ; $40fb: $fe $78
	jp z, $f89b                                      ; $40fd: $ca $9b $f8

	ldh a, [hDisp0_BGP]                                     ; $4100: $f0 $85
	ld bc, $90fb                                     ; $4102: $01 $fb $90
	db $10                                           ; $4105: $10
	sbc b                                            ; $4106: $98
	jr c, @+$40                                      ; $4107: $38 $3e

	ld d, $0e                                        ; $4109: $16 $0e
	cp $de                                           ; $410b: $fe $de
	sub b                                            ; $410d: $90
	adc b                                            ; $410e: $88
	ld [$0c04], sp                                   ; $410f: $08 $04 $0c
	ld [$7af8], sp                                   ; $4112: $08 $f8 $7a
	ld d, h                                          ; $4115: $54
	sbc [hl]                                         ; $4116: $9e
	ld [bc], a                                       ; $4117: $02
	call c, $df62                                    ; $4118: $dc $62 $df
	rst SubAFromBC                                          ; $411b: $e7
	sbc [hl]                                         ; $411c: $9e
	push af                                          ; $411d: $f5
	call c, $9a9d                                    ; $411e: $dc $9d $9a
	ld a, [hl]                                       ; $4121: $7e
	jr nc, jr_058_4124                               ; $4122: $30 $00

jr_058_4124:
	or $f0                                           ; $4124: $f6 $f0
	sbc $f2                                          ; $4126: $de $f2
	sbc d                                            ; $4128: $9a
	add c                                            ; $4129: $81
	rst GetHLinHL                                          ; $412a: $cf
	rst $38                                          ; $412b: $ff
	add hl, bc                                       ; $412c: $09
	rrca                                             ; $412d: $0f
	sbc $0d                                          ; $412e: $de $0d
	add b                                            ; $4130: $80
	nop                                              ; $4131: $00
	ld [rRAMG], sp                                   ; $4132: $08 $00 $00
	ccf                                              ; $4135: $3f
	inc b                                            ; $4136: $04
	ccf                                              ; $4137: $3f
	jr nz, @+$01                                     ; $4138: $20 $ff

	ldh a, [$80]                                     ; $413a: $f0 $80
	rst $38                                          ; $413c: $ff
	ret nz                                           ; $413d: $c0

	ei                                               ; $413e: $fb
	ret nz                                           ; $413f: $c0

	rst SubAFromDE                                          ; $4140: $df
	nop                                              ; $4141: $00
	ld [bc], a                                       ; $4142: $02
	nop                                              ; $4143: $00
	ld [bc], a                                       ; $4144: $02
	and h                                            ; $4145: $a4
	ld h, $a2                                        ; $4146: $26 $a2
	and d                                            ; $4148: $a2
	ret nz                                           ; $4149: $c0

	ld bc, $f11f                                     ; $414a: $01 $1f $f1
	ld e, e                                          ; $414d: $5b
	pop de                                           ; $414e: $d1
	ld d, l                                          ; $414f: $55
	add b                                            ; $4150: $80
	ld d, l                                          ; $4151: $55
	inc a                                            ; $4152: $3c
	ld b, $95                                        ; $4153: $06 $95
	ld b, $f6                                        ; $4155: $06 $f6
	push af                                          ; $4157: $f5
	or $0c                                           ; $4158: $f6 $0c
	inc e                                            ; $415a: $1c
	cp $0b                                           ; $415b: $fe $0b
	ld sp, hl                                        ; $415d: $f9
	add hl, bc                                       ; $415e: $09
	dec bc                                           ; $415f: $0b
	rrca                                             ; $4160: $0f
	rst $38                                          ; $4161: $ff
	sub $eb                                          ; $4162: $d6 $eb
	ld [hl], l                                       ; $4164: $75
	cp d                                             ; $4165: $ba
	db $dd                                           ; $4166: $dd
	db $ec                                           ; $4167: $ec
	cp [hl]                                          ; $4168: $be
	rst AddAOntoHL                                          ; $4169: $ef
	add hl, sp                                       ; $416a: $39
	inc e                                            ; $416b: $1c
	ld c, $87                                        ; $416c: $0e $87
	add e                                            ; $416e: $83

jr_058_416f:
	jp Jump_058_6180                                 ; $416f: $c3 $80 $61


	jr nc, jr_058_416f                               ; $4172: $30 $fb

	ld l, a                                          ; $4174: $6f
	ld sp, hl                                        ; $4175: $f9
	rst $38                                          ; $4176: $ff
	ld a, [hl]                                       ; $4177: $7e
	cp h                                             ; $4178: $bc
	ld l, [hl]                                       ; $4179: $6e
	ccf                                              ; $417a: $3f
	ld a, h                                          ; $417b: $7c
	or b                                             ; $417c: $b0
	ld b, $00                                        ; $417d: $06 $00
	add b                                            ; $417f: $80
	ret nz                                           ; $4180: $c0

	pop af                                           ; $4181: $f1
	rst $38                                          ; $4182: $ff
	rst FarCall                                          ; $4183: $f7
	cp $f9                                           ; $4184: $fe $f9
	ld [$b8d4], a                                    ; $4186: $ea $d4 $b8
	ldh a, [$e0]                                     ; $4189: $f0 $e0
	ld [bc], a                                       ; $418b: $02
	dec b                                            ; $418c: $05
	rrca                                             ; $418d: $0f
	ld e, $3c                                        ; $418e: $1e $3c
	ld a, [hl]                                       ; $4190: $7e
	inc sp                                           ; $4191: $33
	sbc h                                            ; $4192: $9c
	ldh [rSTAT], a                                   ; $4193: $e0 $41
	add c                                            ; $4195: $81
	sbc $01                                          ; $4196: $de $01
	sbc $02                                          ; $4198: $de $02
	sbc [hl]                                         ; $419a: $9e
	pop bc                                           ; $419b: $c1
	ld [hl], a                                       ; $419c: $77
	ld hl, sp-$22                                    ; $419d: $f8 $de
	inc bc                                           ; $419f: $03
	adc a                                            ; $41a0: $8f
	ld a, a                                          ; $41a1: $7f
	xor e                                            ; $41a2: $ab
	ld e, e                                          ; $41a3: $5b
	inc h                                            ; $41a4: $24
	ld d, h                                          ; $41a5: $54
	xor h                                            ; $41a6: $ac
	ld d, h                                          ; $41a7: $54
	xor h                                            ; $41a8: $ac
	adc b                                            ; $41a9: $88
	ld e, h                                          ; $41aa: $5c
	xor h                                            ; $41ab: $ac
	rst SubAFromDE                                          ; $41ac: $df
	xor a                                            ; $41ad: $af
	ld d, a                                          ; $41ae: $57
	xor a                                            ; $41af: $af
	ld d, a                                          ; $41b0: $57
	ld [hl], c                                       ; $41b1: $71
	add hl, hl                                       ; $41b2: $29
	sbc e                                            ; $41b3: $9b
	rra                                              ; $41b4: $1f
	rlca                                             ; $41b5: $07
	nop                                              ; $41b6: $00
	rlca                                             ; $41b7: $07
	ld [hl], l                                       ; $41b8: $75
	or b                                             ; $41b9: $b0
	ld a, d                                          ; $41ba: $7a
	and a                                            ; $41bb: $a7
	rst SubAFromDE                                          ; $41bc: $df
	ld [bc], a                                       ; $41bd: $02
	ld a, [hl]                                       ; $41be: $7e
	jp nz, $02dd                                     ; $41bf: $c2 $dd $02

	rst SubAFromDE                                          ; $41c2: $df
	db $fd                                           ; $41c3: $fd
	ld a, [hl]                                       ; $41c4: $7e
	jp nz, $fddd                                     ; $41c5: $c2 $dd $fd

	reti                                             ; $41c8: $d9


	cp c                                             ; $41c9: $b9
	reti                                             ; $41ca: $d9


	ld b, [hl]                                       ; $41cb: $46
	reti                                             ; $41cc: $d9


	or l                                             ; $41cd: $b5
	jp c, $864a                                      ; $41ce: $da $4a $86

	ld c, e                                          ; $41d1: $4b
	dec l                                            ; $41d2: $2d
	ld l, $2c                                        ; $41d3: $2e $2c
	scf                                              ; $41d5: $37
	inc l                                            ; $41d6: $2c
	ld e, b                                          ; $41d7: $58
	or c                                             ; $41d8: $b1
	ld h, c                                          ; $41d9: $61
	rlca                                             ; $41da: $07
	rlca                                             ; $41db: $07
	rrca                                             ; $41dc: $0f
	dec de                                           ; $41dd: $1b
	scf                                              ; $41de: $37
	ld l, a                                          ; $41df: $6f
	rst SubAFromDE                                          ; $41e0: $df
	cp a                                             ; $41e1: $bf
	di                                               ; $41e2: $f3
	rrca                                             ; $41e3: $0f
	ldh a, [$61]                                     ; $41e4: $f0 $61
	or [hl]                                          ; $41e6: $b6
	db $db                                           ; $41e7: $db
	ld l, h                                          ; $41e8: $6c
	or b                                             ; $41e9: $b0
	ld [hl], h                                       ; $41ea: $74
	rst GetHLinHL                                          ; $41eb: $cf
	adc e                                            ; $41ec: $8b
	rst GetHLinHL                                          ; $41ed: $cf
	cp h                                             ; $41ee: $bc
	di                                               ; $41ef: $f3
	rst GetHLinHL                                          ; $41f0: $cf
	rst FarCall                                          ; $41f1: $f7
	ei                                               ; $41f2: $fb
	dec b                                            ; $41f3: $05
	db $db                                           ; $41f4: $db
	dec [hl]                                         ; $41f5: $35
	ld c, $03                                        ; $41f6: $0e $03
	dec b                                            ; $41f8: $05
	rrca                                             ; $41f9: $0f
	rst $38                                          ; $41fa: $ff
	rst $38                                          ; $41fb: $ff
	rst SubAFromBC                                          ; $41fc: $e7
	ei                                               ; $41fd: $fb
	db $fd                                           ; $41fe: $fd
	cp $fb                                           ; $41ff: $fe $fb
	db $dd                                           ; $4201: $dd
	rst $38                                          ; $4202: $ff
	sub e                                            ; $4203: $93
	db $fd                                           ; $4204: $fd
	ld sp, hl                                        ; $4205: $f9
	pop af                                           ; $4206: $f1
	ld h, c                                          ; $4207: $61
	ld c, b                                          ; $4208: $48
	ld e, h                                          ; $4209: $5c
	rst SubAFromHL                                          ; $420a: $d7
	or e                                             ; $420b: $b3
	and a                                            ; $420c: $a7
	xor e                                            ; $420d: $ab
	ei                                               ; $420e: $fb
	ld a, e                                          ; $420f: $7b
	sbc $f0                                          ; $4210: $de $f0
	sbc d                                            ; $4212: $9a
	ld sp, hl                                        ; $4213: $f9
	dec sp                                           ; $4214: $3b
	ld a, a                                          ; $4215: $7f
	ei                                               ; $4216: $fb
	ld a, e                                          ; $4217: $7b
	cp $99                                           ; $4218: $fe $99
	pop bc                                           ; $421a: $c1
	ldh a, [c]                                       ; $421b: $f2
	db $ec                                           ; $421c: $ec
	ld h, b                                          ; $421d: $60
	ld h, b                                          ; $421e: $60
	ld e, [hl]                                       ; $421f: $5e
	sbc $de                                          ; $4220: $de $de
	db $dd                                           ; $4222: $dd
	ld e, [hl]                                       ; $4223: $5e
	sbc l                                            ; $4224: $9d
	ret nz                                           ; $4225: $c0

	ld b, b                                          ; $4226: $40
	ld a, d                                          ; $4227: $7a
	push bc                                          ; $4228: $c5
	cp $dd                                           ; $4229: $fe $dd
	ld h, d                                          ; $422b: $62
	rst SubAFromDE                                          ; $422c: $df
	ld [bc], a                                       ; $422d: $02
	rst SubAFromDE                                          ; $422e: $df
	ld b, d                                          ; $422f: $42
	db $dd                                           ; $4230: $dd
	sbc l                                            ; $4231: $9d
	rst SubAFromDE                                          ; $4232: $df
	db $fd                                           ; $4233: $fd
	rst SubAFromDE                                          ; $4234: $df
	sbc l                                            ; $4235: $9d
	call c, $9cf6                                    ; $4236: $dc $f6 $9c
	sub l                                            ; $4239: $95
	and l                                            ; $423a: $a5
	add l                                            ; $423b: $85
	call c, $9c09                                    ; $423c: $dc $09 $9c
	ld l, d                                          ; $423f: $6a
	ld e, d                                          ; $4240: $5a
	ld e, d                                          ; $4241: $5a
	reti                                             ; $4242: $d9


	ld l, $d9                                        ; $4243: $2e $d9
	pop de                                           ; $4245: $d1
	sub [hl]                                         ; $4246: $96
	and [hl]                                         ; $4247: $a6
	and d                                            ; $4248: $a2
	and d                                            ; $4249: $a2
	xor d                                            ; $424a: $aa
	xor [hl]                                         ; $424b: $ae
	xor [hl]                                         ; $424c: $ae
	xor d                                            ; $424d: $aa
	xor d                                            ; $424e: $aa
	ld d, c                                          ; $424f: $51
	sbc $55                                          ; $4250: $de $55
	rst SubAFromDE                                          ; $4252: $df
	ld d, c                                          ; $4253: $51
	rst SubAFromDE                                          ; $4254: $df
	ld d, l                                          ; $4255: $55
	add [hl]                                         ; $4256: $86
	ld a, [$fcec]                                    ; $4257: $fa $ec $fc
	jp nc, $f1b2                                     ; $425a: $d2 $b2 $f1

	pop de                                           ; $425d: $d1
	or b                                             ; $425e: $b0
	dec e                                            ; $425f: $1d
	scf                                              ; $4260: $37
	ld h, a                                          ; $4261: $67
	rst AddAOntoHL                                          ; $4262: $ef
	rst GetHLinHL                                          ; $4263: $cf
	rst GetHLinHL                                          ; $4264: $cf
	rst AddAOntoHL                                          ; $4265: $ef
	rst AddAOntoHL                                          ; $4266: $ef
	rra                                              ; $4267: $1f
	rla                                              ; $4268: $17
	rra                                              ; $4269: $1f
	rla                                              ; $426a: $17
	ccf                                              ; $426b: $3f
	ld e, a                                          ; $426c: $5f
	jp z, $f086                                      ; $426d: $ca $86 $f0

	sbc $f8                                          ; $4270: $de $f8
	adc [hl]                                         ; $4272: $8e
	ldh a, [$d0]                                     ; $4273: $f0 $d0
	call $3387                                       ; $4275: $cd $87 $33
	inc sp                                           ; $4278: $33
	ld [hl+], a                                      ; $4279: $22
	ld b, $07                                        ; $427a: $06 $07
	dec c                                            ; $427c: $0d
	dec c                                            ; $427d: $0d
	add hl, bc                                       ; $427e: $09
	rst $38                                          ; $427f: $ff
	cp $fe                                           ; $4280: $fe $fe
	db $fc                                           ; $4282: $fc
	db $fd                                           ; $4283: $fd
	sbc $f9                                          ; $4284: $de $f9
	sub a                                            ; $4286: $97
	ret nz                                           ; $4287: $c0

	ld h, b                                          ; $4288: $60
	ldh a, [hDisp1_SCY]                                     ; $4289: $f0 $90
	ld [$1a1c], sp                                   ; $428b: $08 $1c $1a
	cp c                                             ; $428e: $b9
	ld a, e                                          ; $428f: $7b
	ld hl, sp+$7f                                    ; $4290: $f8 $7f
	db $dd                                           ; $4292: $dd
	sbc h                                            ; $4293: $9c
	db $ec                                           ; $4294: $ec

Jump_058_4295:
	ld [$de49], a                                    ; $4295: $ea $49 $de
	inc b                                            ; $4298: $04
	sbc l                                            ; $4299: $9d
	inc c                                            ; $429a: $0c
	inc d                                            ; $429b: $14
	ld a, b                                          ; $429c: $78
	xor l                                            ; $429d: $ad
	sbc $07                                          ; $429e: $de $07
	adc d                                            ; $42a0: $8a
	rrca                                             ; $42a1: $0f
	rla                                              ; $42a2: $17
	rla                                              ; $42a3: $17
	daa                                              ; $42a4: $27
	daa                                              ; $42a5: $27
	ld d, [hl]                                       ; $42a6: $56
	ld a, [hl+]                                      ; $42a7: $2a
	ld d, [hl]                                       ; $42a8: $56
	dec hl                                           ; $42a9: $2b
	ld d, l                                          ; $42aa: $55
	ld a, [hl+]                                      ; $42ab: $2a
	dec d                                            ; $42ac: $15
	dec bc                                           ; $42ad: $0b
	xor e                                            ; $42ae: $ab
	rst SubAFromHL                                          ; $42af: $d7
	xor e                                            ; $42b0: $ab
	push de                                          ; $42b1: $d5
	xor e                                            ; $42b2: $ab
	push de                                          ; $42b3: $d5
	ld [$fcf5], a                                    ; $42b4: $ea $f5 $fc
	rst SubAFromDE                                          ; $42b7: $df
	add b                                            ; $42b8: $80
	sbc [hl]                                         ; $42b9: $9e
	nop                                              ; $42ba: $00
	reti                                             ; $42bb: $d9


	rst $38                                          ; $42bc: $ff
	jp c, $9e02                                      ; $42bd: $da $02 $9e

	ccf                                              ; $42c0: $3f
	jp c, $9efd                                      ; $42c1: $da $fd $9e

	rst $38                                          ; $42c4: $ff
	jp c, $9eb9                                      ; $42c5: $da $b9 $9e

	ld sp, hl                                        ; $42c8: $f9
	jp c, $8b46                                      ; $42c9: $da $46 $8b

	cp $b6                                           ; $42cc: $fe $b6
	cp l                                             ; $42ce: $bd
	cp c                                             ; $42cf: $b9
	di                                               ; $42d0: $f3
	push hl                                          ; $42d1: $e5
	add $ca                                          ; $42d2: $c6 $ca
	adc d                                            ; $42d4: $8a
	ld c, e                                          ; $42d5: $4b
	ld b, [hl]                                       ; $42d6: $46
	ld c, [hl]                                       ; $42d7: $4e
	dec e                                            ; $42d8: $1d
	dec sp                                           ; $42d9: $3b
	ld a, e                                          ; $42da: $7b
	ld [hl], a                                       ; $42db: $77
	rst FarCall                                          ; $42dc: $f7
	jp nz, $8583                                     ; $42dd: $c2 $83 $85

	db $dd                                           ; $42e0: $dd
	rlca                                             ; $42e1: $07
	sbc l                                            ; $42e2: $9d
	dec b                                            ; $42e3: $05
	ld a, a                                          ; $42e4: $7f
	ld a, e                                          ; $42e5: $7b
	add b                                            ; $42e6: $80
	sbc $fc                                          ; $42e7: $de $fc
	sub e                                            ; $42e9: $93
	cp $e4                                           ; $42ea: $fe $e4
	call nz, $0c84                                   ; $42ec: $c4 $84 $0c
	inc c                                            ; $42ef: $0c
	inc e                                            ; $42f0: $1c
	jr jr_058_430c                                   ; $42f1: $18 $19

	dec de                                           ; $42f3: $1b
	dec sp                                           ; $42f4: $3b
	ld a, e                                          ; $42f5: $7b
	sbc $f3                                          ; $42f6: $de $f3
	rst SubAFromDE                                          ; $42f8: $df
	rst FarCall                                          ; $42f9: $f7
	sub h                                            ; $42fa: $94
	ld [bc], a                                       ; $42fb: $02
	ld bc, $0001                                     ; $42fc: $01 $01 $00
	ld bc, $8102                                     ; $42ff: $01 $02 $81
	ld b, b                                          ; $4302: $40
	db $fd                                           ; $4303: $fd
	cp $fe                                           ; $4304: $fe $fe
	call c, $8bff                                    ; $4306: $dc $ff $8b
	push hl                                          ; $4309: $e5
	ld [hl], l                                       ; $430a: $75
	cp l                                             ; $430b: $bd

jr_058_430c:
	cp l                                             ; $430c: $bd
	dec a                                            ; $430d: $3d
	cp l                                             ; $430e: $bd
	ld l, l                                          ; $430f: $6d
	db $d3                                           ; $4310: $d3
	cp e                                             ; $4311: $bb
	db $db                                           ; $4312: $db
	ld l, e                                          ; $4313: $6b
	ld l, e                                          ; $4314: $6b
	db $eb                                           ; $4315: $eb
	db $eb                                           ; $4316: $eb
	ei                                               ; $4317: $fb
	rst $38                                          ; $4318: $ff
	ld a, e                                          ; $4319: $7b
	ei                                               ; $431a: $fb
	ei                                               ; $431b: $fb
	ld a, e                                          ; $431c: $7b
	ld a, e                                          ; $431d: $7b
	db $fc                                           ; $431e: $fc
	sbc [hl]                                         ; $431f: $9e
	ei                                               ; $4320: $fb
	sbc $40                                          ; $4321: $de $40
	rst SubAFromDE                                          ; $4323: $df
	ret nz                                           ; $4324: $c0

	ld a, e                                          ; $4325: $7b
	ld a, b                                          ; $4326: $78
	reti                                             ; $4327: $d9


	ld d, $d9                                        ; $4328: $16 $d9
	ld c, b                                          ; $432a: $48
	sbc $40                                          ; $432b: $de $40
	sbc d                                            ; $432d: $9a
	nop                                              ; $432e: $00
	ld b, d                                          ; $432f: $42
	ld b, d                                          ; $4330: $42
	ld [bc], a                                       ; $4331: $02
	ld b, d                                          ; $4332: $42
	sbc $9f                                          ; $4333: $de $9f
	adc d                                            ; $4335: $8a
	rst SubAFromDE                                          ; $4336: $df
	sbc l                                            ; $4337: $9d
	sbc l                                            ; $4338: $9d
	db $dd                                           ; $4339: $dd
	sbc l                                            ; $433a: $9d
	adc d                                            ; $433b: $8a
	add d                                            ; $433c: $82
	ld [bc], a                                       ; $433d: $02
	dec b                                            ; $433e: $05
	dec b                                            ; $433f: $05
	add b                                            ; $4340: $80
	add d                                            ; $4341: $82
	add c                                            ; $4342: $81
	ld d, l                                          ; $4343: $55
	ld d, l                                          ; $4344: $55
	push de                                          ; $4345: $d5
	jp nc, $57d2                                     ; $4346: $d2 $d2 $57

	ld d, l                                          ; $4349: $55
	ld d, h                                          ; $434a: $54
	db $dd                                           ; $434b: $dd
	ld l, $9b                                        ; $434c: $2e $9b
	jr nz, jr_058_438f                               ; $434e: $20 $3f

	cp a                                             ; $4350: $bf
	cp a                                             ; $4351: $bf
	db $dd                                           ; $4352: $dd
	pop de                                           ; $4353: $d1
	sbc e                                            ; $4354: $9b
	rst SubAFromDE                                          ; $4355: $df
	ret nz                                           ; $4356: $c0

	ld b, b                                          ; $4357: $40
	ld b, b                                          ; $4358: $40
	sbc $aa                                          ; $4359: $de $aa
	call c, Call_058_72ae                            ; $435b: $dc $ae $72
	pop bc                                           ; $435e: $c1
	sbc $51                                          ; $435f: $de $51
	sub a                                            ; $4361: $97
	and c                                            ; $4362: $a1
	sub $5d                                          ; $4363: $d6 $5d
	ld h, l                                          ; $4365: $65
	ld a, a                                          ; $4366: $7f
	db $ed                                           ; $4367: $ed
	sbc $9a                                          ; $4368: $de $9a
	ld a, c                                          ; $436a: $79
	inc bc                                           ; $436b: $03
	sub d                                            ; $436c: $92
	cp $ca                                           ; $436d: $fe $ca
	sbc [hl]                                         ; $436f: $9e
	or l                                             ; $4370: $b5
	db $fd                                           ; $4371: $fd
	add c                                            ; $4372: $81
	add b                                            ; $4373: $80
	add d                                            ; $4374: $82
	ld b, l                                          ; $4375: $45
	and d                                            ; $4376: $a2
	ret c                                            ; $4377: $d8

	call nc, Call_058_7bea                           ; $4378: $d4 $ea $7b
	ld hl, sp-$80                                    ; $437b: $f8 $80
	push bc                                          ; $437d: $c5
	ld h, d                                          ; $437e: $62
	jr c, jr_058_43ad                                ; $437f: $38 $2c

	ld d, $99                                        ; $4381: $16 $99
	db $eb                                           ; $4383: $eb
	adc e                                            ; $4384: $8b
	adc [hl]                                         ; $4385: $8e
	adc [hl]                                         ; $4386: $8e
	sbc h                                            ; $4387: $9c
	cp h                                             ; $4388: $bc
	ld hl, sp-$07                                    ; $4389: $f8 $f9
	ld [$8c8a], a                                    ; $438b: $ea $8a $8c
	adc b                                            ; $438e: $88

jr_058_438f:
	adc b                                            ; $438f: $88
	sbc b                                            ; $4390: $98
	ld hl, sp+$28                                    ; $4391: $f8 $28
	sbc b                                            ; $4393: $98
	ld h, h                                          ; $4394: $64
	ld l, d                                          ; $4395: $6a
	ld l, [hl]                                       ; $4396: $6e
	xor a                                            ; $4397: $af
	xor a                                            ; $4398: $af
	adc a                                            ; $4399: $8f
	ret c                                            ; $439a: $d8

	ld hl, sp-$64                                    ; $439b: $f8 $9c
	ld a, h                                          ; $439d: $7c
	halt                                             ; $439e: $76
	ld [hl], d                                       ; $439f: $72
	sbc $f1                                          ; $43a0: $de $f1
	sbc [hl]                                         ; $43a2: $9e
	call nz, $c07a                                   ; $43a3: $c4 $7a $c0
	db $dd                                           ; $43a6: $dd
	ld [$c79e], sp                                   ; $43a7: $08 $9e $c7
	ld a, d                                          ; $43aa: $7a
	ret nz                                           ; $43ab: $c0

	db $dd                                           ; $43ac: $dd

jr_058_43ad:
	rrca                                             ; $43ad: $0f
	sub [hl]                                         ; $43ae: $96
	ld d, $04                                        ; $43af: $16 $04
	ld [bc], a                                       ; $43b1: $02
	ld bc, $0810                                     ; $43b2: $01 $10 $08
	inc b                                            ; $43b5: $04
	nop                                              ; $43b6: $00
	db $eb                                           ; $43b7: $eb
	jp c, rIE                                      ; $43b8: $da $ff $ff

	rst SubAFromDE                                          ; $43bb: $df
	ld bc, $819b                                     ; $43bc: $01 $9b $81
	ld b, c                                          ; $43bf: $41
	add c                                            ; $43c0: $81
	add c                                            ; $43c1: $81
	reti                                             ; $43c2: $d9


	rst $38                                          ; $43c3: $ff
	sub e                                            ; $43c4: $93
	db $ec                                           ; $43c5: $ec
	sbc c                                            ; $43c6: $99
	ld [hl-], a                                      ; $43c7: $32
	ld l, b                                          ; $43c8: $68
	or b                                             ; $43c9: $b0
	pop de                                           ; $43ca: $d1
	jp nc, $c771                                     ; $43cb: $d2 $71 $c7

	adc [hl]                                         ; $43ce: $8e
	dec e                                            ; $43cf: $1d
	scf                                              ; $43d0: $37
	sbc $6f                                          ; $43d1: $de $6f
	sub e                                            ; $43d3: $93
	rst GetHLinHL                                          ; $43d4: $cf
	rrca                                             ; $43d5: $0f
	ld d, c                                          ; $43d6: $51
	add c                                            ; $43d7: $81
	dec d                                            ; $43d8: $15
	xor d                                            ; $43d9: $aa
	ld d, a                                          ; $43da: $57

Jump_058_43db:
	cp a                                             ; $43db: $bf
	ld a, a                                          ; $43dc: $7f
	rst $38                                          ; $43dd: $ff
	xor a                                            ; $43de: $af
	ld a, a                                          ; $43df: $7f
	call c, $96ff                                    ; $43e0: $dc $ff $96
	sub h                                            ; $43e3: $94
	db $f4                                           ; $43e4: $f4
	inc b                                            ; $43e5: $04
	db $fc                                           ; $43e6: $fc
	ld b, b                                          ; $43e7: $40
	ld a, b                                          ; $43e8: $78
	cp h                                             ; $43e9: $bc
	ld hl, sp-$11                                    ; $43ea: $f8 $ef
	ld a, c                                          ; $43ec: $79
	xor a                                            ; $43ed: $af
	sub e                                            ; $43ee: $93
	rst $38                                          ; $43ef: $ff
	rst JumpTable                                          ; $43f0: $c7
	jp $0487                                         ; $43f1: $c3 $87 $04


	ld [bc], a                                       ; $43f4: $02
	ld [bc], a                                       ; $43f5: $02
	ld b, $02                                        ; $43f6: $06 $02
	dec b                                            ; $43f8: $05
	inc bc                                           ; $43f9: $03
	dec b                                            ; $43fa: $05
	reti                                             ; $43fb: $d9


	rst $38                                          ; $43fc: $ff
	sbc e                                            ; $43fd: $9b
	jr c, jr_058_4439                                ; $43fe: $38 $39

	jr nc, @+$33                                     ; $4400: $30 $31

	sbc $70                                          ; $4402: $de $70
	sbc e                                            ; $4404: $9b
	or b                                             ; $4405: $b0
	rst SubAFromBC                                          ; $4406: $e7
	rst SubAFromBC                                          ; $4407: $e7
	rst AddAOntoHL                                          ; $4408: $ef
	ld a, d                                          ; $4409: $7a
	db $10                                           ; $440a: $10
	rst SubAFromDE                                          ; $440b: $df
	rst GetHLinHL                                          ; $440c: $cf
	ld a, a                                          ; $440d: $7f
	and h                                            ; $440e: $a4
	sbc c                                            ; $440f: $99
	and b                                            ; $4410: $a0
	ld d, b                                          ; $4411: $50
	xor b                                            ; $4412: $a8
	nop                                              ; $4413: $00
	ld b, b                                          ; $4414: $40
	jr z, @+$6c                                      ; $4415: $28 $6a

	pop bc                                           ; $4417: $c1
	add b                                            ; $4418: $80
	rst $38                                          ; $4419: $ff
	ld d, l                                          ; $441a: $55
	push hl                                          ; $441b: $e5
	xor l                                            ; $441c: $ad
	rst SubAFromDE                                          ; $441d: $df
	ld a, c                                          ; $441e: $79
	dec [hl]                                         ; $441f: $35
	add hl, de                                       ; $4420: $19
	ld hl, $7fff                                     ; $4421: $21 $ff $7f
	ld a, a                                          ; $4424: $7f
	ccf                                              ; $4425: $3f
	sbc c                                            ; $4426: $99
	push de                                          ; $4427: $d5
	ld sp, hl                                        ; $4428: $f9
	pop hl                                           ; $4429: $e1
	db $d3                                           ; $442a: $d3
	sub e                                            ; $442b: $93
	sub e                                            ; $442c: $93
	inc de                                           ; $442d: $13
	sub a                                            ; $442e: $97
	rst SubAFromHL                                          ; $442f: $d7
	ld d, a                                          ; $4430: $57
	nop                                              ; $4431: $00
	jr z, @+$6a                                      ; $4432: $28 $68

	ld l, b                                          ; $4434: $68
	add sp, -$18                                     ; $4435: $e8 $e8
	xor b                                            ; $4437: $a8
	sbc l                                            ; $4438: $9d

jr_058_4439:
	xor b                                            ; $4439: $a8
	rst $38                                          ; $443a: $ff
	jp c, $9e17                                      ; $443b: $da $17 $9e

	nop                                              ; $443e: $00
	jp c, Jump_058_7f48                              ; $443f: $da $48 $7f

	ld h, b                                          ; $4442: $60
	call c, $9c46                                    ; $4443: $dc $46 $9c
	ld h, [hl]                                       ; $4446: $66
	nop                                              ; $4447: $00
	rst SubAFromDE                                          ; $4448: $df
	db $db                                           ; $4449: $db
	sbc c                                            ; $444a: $99
	ld a, a                                          ; $444b: $7f
	ldh a, [hDisp1_OBP1]                                     ; $444c: $f0 $94
	add [hl]                                         ; $444e: $86
	ld a, [$caf4]                                    ; $444f: $fa $f4 $ca
	call nz, $c4ca                                   ; $4452: $c4 $ca $c4
	rst SubAFromHL                                          ; $4455: $d7
	ld a, c                                          ; $4456: $79
	dec b                                            ; $4457: $05
	add hl, bc                                       ; $4458: $09
	db $dd                                           ; $4459: $dd
	ld bc, $bfde                                     ; $445a: $01 $de $bf
	rst SubAFromDE                                          ; $445d: $df
	add b                                            ; $445e: $80
	ld a, e                                          ; $445f: $7b
	db $fc                                           ; $4460: $fc
	sbc $40                                          ; $4461: $de $40
	rst SubAFromDE                                          ; $4463: $df
	ld a, a                                          ; $4464: $7f
	ld a, e                                          ; $4465: $7b
	db $fc                                           ; $4466: $fc
	add b                                            ; $4467: $80
	xor [hl]                                         ; $4468: $ae
	xor l                                            ; $4469: $ad
	xor [hl]                                         ; $446a: $ae
	ld [hl+], a                                      ; $446b: $22
	inc l                                            ; $446c: $2c
	xor l                                            ; $446d: $ad
	cp d                                             ; $446e: $ba
	ld d, $51                                        ; $446f: $16 $51
	ld d, e                                          ; $4471: $53
	ld d, e                                          ; $4472: $53
	rst SubAFromDE                                          ; $4473: $df
	rst SubAFromHL                                          ; $4474: $d7
	ld d, a                                          ; $4475: $57
	ld e, a                                          ; $4476: $5f
	rst $38                                          ; $4477: $ff
	and l                                            ; $4478: $a5
	ld e, [hl]                                       ; $4479: $5e
	ld a, l                                          ; $447a: $7d
	cp d                                             ; $447b: $ba
	push af                                          ; $447c: $f5

jr_058_447d:
	ld l, d                                          ; $447d: $6a
	push af                                          ; $447e: $f5
	ld [$e1fa], a                                    ; $447f: $ea $fa $e1
	jp nz, $8ac5                                     ; $4482: $c2 $c5 $8a

	sub l                                            ; $4485: $95
	ld a, [bc]                                       ; $4486: $0a
	sub h                                            ; $4487: $94
	dec d                                            ; $4488: $15
	push de                                          ; $4489: $d5
	add sp, $50                                      ; $448a: $e8 $50
	xor b                                            ; $448c: $a8
	ld d, b                                          ; $448d: $50
	and b                                            ; $448e: $a0
	ld b, b                                          ; $448f: $40
	add b                                            ; $4490: $80
	dec hl                                           ; $4491: $2b
	rla                                              ; $4492: $17
	ld a, b                                          ; $4493: $78
	add d                                            ; $4494: $82
	sub e                                            ; $4495: $93
	ld e, a                                          ; $4496: $5f
	cp a                                             ; $4497: $bf
	ld a, a                                          ; $4498: $7f
	ld l, b                                          ; $4499: $68
	ret z                                            ; $449a: $c8

	ld [$1808], sp                                   ; $449b: $08 $08 $18
	jr z, jr_058_450c                                ; $449e: $28 $6c

	xor h                                            ; $44a0: $ac
	jr c, jr_058_447d                                ; $44a1: $38 $da

Call_058_44a3:
	ld hl, sp-$72                                    ; $44a3: $f8 $8e
	adc a                                            ; $44a5: $8f
	add l                                            ; $44a6: $85
	adc [hl]                                         ; $44a7: $8e
	add l                                            ; $44a8: $85
	add d                                            ; $44a9: $82
	add l                                            ; $44aa: $85
	add d                                            ; $44ab: $82
	ld b, b                                          ; $44ac: $40
	pop af                                           ; $44ad: $f1
	ld a, [$faf1]                                    ; $44ae: $fa $f1 $fa
	db $fd                                           ; $44b1: $fd
	ld a, [$7ffd]                                    ; $44b2: $fa $fd $7f
	ld [$88dd], sp                                   ; $44b5: $08 $dd $88
	sbc $48                                          ; $44b8: $de $48
	sbc [hl]                                         ; $44ba: $9e
	rrca                                             ; $44bb: $0f
	db $dd                                           ; $44bc: $dd
	adc a                                            ; $44bd: $8f
	sbc $cf                                          ; $44be: $de $cf
	ld [hl], h                                       ; $44c0: $74
	inc sp                                           ; $44c1: $33
	sbc $04                                          ; $44c2: $de $04
	ld [hl], a                                       ; $44c4: $77
	ld [bc], a                                       ; $44c5: $02
	ld e, l                                          ; $44c6: $5d
	sub b                                            ; $44c7: $90
	sbc h                                            ; $44c8: $9c
	ld e, $e2                                        ; $44c9: $1e $e2
	ld [bc], a                                       ; $44cb: $02
	reti                                             ; $44cc: $d9


	rst $38                                          ; $44cd: $ff
	sub h                                            ; $44ce: $94
	ld [hl], d                                       ; $44cf: $72
	ld [hl], c                                       ; $44d0: $71
	ld a, d                                          ; $44d1: $7a
	ld [hl], c                                       ; $44d2: $71
	cp e                                             ; $44d3: $bb
	or c                                             ; $44d4: $b1
	cp e                                             ; $44d5: $bb
	ld sp, hl                                        ; $44d6: $f9
	rst GetHLinHL                                          ; $44d7: $cf
	rst GetHLinHL                                          ; $44d8: $cf
	rst JumpTable                                          ; $44d9: $c7
	ld [hl], a                                       ; $44da: $77
	cp $9e                                           ; $44db: $fe $9e
	add a                                            ; $44dd: $87
	sbc $ff                                          ; $44de: $de $ff
	ld a, a                                          ; $44e0: $7f
	ld b, $7d                                        ; $44e1: $06 $7d
	ld a, c                                          ; $44e3: $79
	call c, Call_058_75ff                            ; $44e4: $dc $ff $75
	sbc l                                            ; $44e7: $9d
	sub l                                            ; $44e8: $95
	ldh a, [$60]                                     ; $44e9: $f0 $60
	ret z                                            ; $44eb: $c8

	ret nz                                           ; $44ec: $c0

	call nz, $8282                                   ; $44ed: $c4 $82 $82
	add c                                            ; $44f0: $81
	adc a                                            ; $44f1: $8f
	sbc a                                            ; $44f2: $9f
	sbc $3f                                          ; $44f3: $de $3f
	sbc $7f                                          ; $44f5: $de $7f
	ld a, [hl]                                       ; $44f7: $7e
	add $99                                          ; $44f8: $c6 $99
	inc bc                                           ; $44fa: $03
	rlca                                             ; $44fb: $07
	ld [bc], a                                       ; $44fc: $02
	inc bc                                           ; $44fd: $03
	add e                                            ; $44fe: $83
	ld b, e                                          ; $44ff: $43
	ld l, e                                          ; $4500: $6b
	rst SubAFromDE                                          ; $4501: $df
	sub [hl]                                         ; $4502: $96
	cp $f0                                           ; $4503: $fe $f0
	ldh a, [rSVBK]                                   ; $4505: $f0 $70
	ldh a, [$f0]                                     ; $4507: $f0 $f0
	ldh [$80], a                                     ; $4509: $e0 $80
	inc bc                                           ; $450b: $03

jr_058_450c:
	sbc $8f                                          ; $450c: $de $8f
	rst SubAFromDE                                          ; $450e: $df
	rrca                                             ; $450f: $0f
	add b                                            ; $4510: $80
	rra                                              ; $4511: $1f
	ld a, a                                          ; $4512: $7f
	rst $38                                          ; $4513: $ff
	dec d                                            ; $4514: $15
	ld a, [bc]                                       ; $4515: $0a
	dec d                                            ; $4516: $15
	ld a, [bc]                                       ; $4517: $0a
	dec b                                            ; $4518: $05
	ld b, $c3                                        ; $4519: $06 $c3
	ld sp, hl                                        ; $451b: $f9
	rst $38                                          ; $451c: $ff
	rst $38                                          ; $451d: $ff
	rst AddAOntoHL                                          ; $451e: $ef
	rst FarCall                                          ; $451f: $f7
	ei                                               ; $4520: $fb
	ld sp, hl                                        ; $4521: $f9
	db $fc                                           ; $4522: $fc
	cp $61                                           ; $4523: $fe $61
	db $d3                                           ; $4525: $d3
	ld e, a                                          ; $4526: $5f
	and a                                            ; $4527: $a7
	db $e3                                           ; $4528: $e3
	jp $a743                                         ; $4529: $c3 $43 $a7


	pop hl                                           ; $452c: $e1
	jp nc, $a6dc                                     ; $452d: $d2 $dc $a6

	adc [hl]                                         ; $4530: $8e
	ldh [c], a                                       ; $4531: $e2
	jp nz, Jump_058_65c3                             ; $4532: $c2 $c3 $65

	nop                                              ; $4535: $00
	ldh a, [c]                                       ; $4536: $f2
	ldh [$ca], a                                     ; $4537: $e0 $ca
	sub l                                            ; $4539: $95
	nop                                              ; $453a: $00
	rst $38                                          ; $453b: $ff
	nop                                              ; $453c: $00
	rst $38                                          ; $453d: $ff
	dec c                                            ; $453e: $0d
	rra                                              ; $453f: $1f
	dec [hl]                                         ; $4540: $35
	ld l, d                                          ; $4541: $6a
	ld a, e                                          ; $4542: $7b

Jump_058_4543:
	ld sp, hl                                        ; $4543: $f9
	sbc d                                            ; $4544: $9a
	nop                                              ; $4545: $00
	xor d                                            ; $4546: $aa
	ld bc, $55aa                                     ; $4547: $01 $aa $55
	ld [hl], a                                       ; $454a: $77
	ldh a, [$9b]                                     ; $454b: $f0 $9b
	ld d, l                                          ; $454d: $55
	cp $55                                           ; $454e: $fe $55
	xor d                                            ; $4550: $aa
	ld [hl], e                                       ; $4551: $73
	ldh a, [$8a]                                     ; $4552: $f0 $8a
	ld d, h                                          ; $4554: $54
	xor b                                            ; $4555: $a8
	ld d, d                                          ; $4556: $52
	ld h, $ce                                        ; $4557: $26 $ce
	rra                                              ; $4559: $1f
	rst $38                                          ; $455a: $ff
	ld d, l                                          ; $455b: $55
	xor e                                            ; $455c: $ab
	ld d, a                                          ; $455d: $57
	xor l                                            ; $455e: $ad
	reti                                             ; $455f: $d9


	ld sp, $cae0                                     ; $4560: $31 $e0 $ca
	call nz, $faf4                                   ; $4563: $c4 $f4 $fa
	db $f4                                           ; $4566: $f4
	ld a, [$7a74]                                    ; $4567: $fa $74 $7a
	ld a, [bc]                                       ; $456a: $0a
	sub c                                            ; $456b: $91
	dec bc                                           ; $456c: $0b
	dec b                                            ; $456d: $05
	dec bc                                           ; $456e: $0b
	dec b                                            ; $456f: $05
	adc e                                            ; $4570: $8b

jr_058_4571:
	rst $38                                          ; $4571: $ff
	ldh [$80], a                                     ; $4572: $e0 $80
	nop                                              ; $4574: $00
	ld a, a                                          ; $4575: $7f
	ld a, h                                          ; $4576: $7c
	ld [$f878], sp                                   ; $4577: $08 $78 $f8
	ld a, e                                          ; $457a: $7b
	sub l                                            ; $457b: $95
	add a                                            ; $457c: $87
	add e                                            ; $457d: $83
	add a                                            ; $457e: $87
	rst $38                                          ; $457f: $ff
	adc a                                            ; $4580: $8f
	rrca                                             ; $4581: $0f
	dec a                                            ; $4582: $3d
	ld e, e                                          ; $4583: $5b
	ld l, a                                          ; $4584: $6f
	rst FarCall                                          ; $4585: $f7
	rst AddAOntoHL                                          ; $4586: $ef
	ld a, [hl]                                       ; $4587: $7e
	db $dd                                           ; $4588: $dd
	cp d                                             ; $4589: $ba
	and $ec                                          ; $458a: $e6 $ec
	ret c                                            ; $458c: $d8

	sbc b                                            ; $458d: $98
	jr nc, jr_058_4571                               ; $458e: $30 $e1

	ldh [c], a                                       ; $4590: $e2
	push bc                                          ; $4591: $c5
	push de                                          ; $4592: $d5
	xor d                                            ; $4593: $aa
	ld d, h                                          ; $4594: $54
	ld a, e                                          ; $4595: $7b
	cp [hl]                                          ; $4596: $be
	ld a, [hl]                                       ; $4597: $7e
	adc $9c                                          ; $4598: $ce $9c
	ld a, [hl+]                                      ; $459a: $2a
	ld d, l                                          ; $459b: $55
	xor e                                            ; $459c: $ab
	ld a, e                                          ; $459d: $7b
	cp [hl]                                          ; $459e: $be
	ld a, [hl]                                       ; $459f: $7e
	adc $7f                                          ; $45a0: $ce $7f
	ld bc, $0499                                     ; $45a2: $01 $99 $04
	ld [$2010], sp                                   ; $45a5: $08 $10 $20
	ld b, b                                          ; $45a8: $40
	add b                                            ; $45a9: $80
	reti                                             ; $45aa: $d9


	rst $38                                          ; $45ab: $ff
	sub [hl]                                         ; $45ac: $96
	inc l                                            ; $45ad: $2c
	inc h                                            ; $45ae: $24
	ld b, h                                          ; $45af: $44
	ld b, h                                          ; $45b0: $44
	ld b, [hl]                                       ; $45b1: $46
	add [hl]                                         ; $45b2: $86
	add [hl]                                         ; $45b3: $86
	add d                                            ; $45b4: $82
	ld hl, sp-$25                                    ; $45b5: $f8 $db
	db $fc                                           ; $45b7: $fc
	sbc [hl]                                         ; $45b8: $9e
	cp $de                                           ; $45b9: $fe $de
	ld b, b                                          ; $45bb: $40
	sbc $20                                          ; $45bc: $de $20
	sbc l                                            ; $45be: $9d
	daa                                              ; $45bf: $27
	dec hl                                           ; $45c0: $2b
	sbc $7f                                          ; $45c1: $de $7f
	db $dd                                           ; $45c3: $dd
	ccf                                              ; $45c4: $3f
	add [hl]                                         ; $45c5: $86
	inc a                                            ; $45c6: $3c
	ld c, b                                          ; $45c7: $48
	ld c, b                                          ; $45c8: $48
	jr z, jr_058_45ef                                ; $45c9: $28 $24

	inc h                                            ; $45cb: $24
	inc d                                            ; $45cc: $14
	rst $38                                          ; $45cd: $ff
	rst $38                                          ; $45ce: $ff
	rst GetHLinHL                                          ; $45cf: $cf
	rst GetHLinHL                                          ; $45d0: $cf
	rst AddAOntoHL                                          ; $45d1: $ef
	rst SubAFromBC                                          ; $45d2: $e7
	rst SubAFromBC                                          ; $45d3: $e7
	rst FarCall                                          ; $45d4: $f7
	rst $38                                          ; $45d5: $ff

jr_058_45d6:
	nop                                              ; $45d6: $00
	ld [$1f10], sp                                   ; $45d7: $08 $10 $1f
	jr nc, jr_058_45fc                               ; $45da: $30 $20

	jr nz, @+$01                                     ; $45dc: $20 $ff

	ei                                               ; $45de: $fb
	jp c, $9eff                                      ; $45df: $da $ff $9e

	rlca                                             ; $45e2: $07
	ld a, d                                          ; $45e3: $7a
	push bc                                          ; $45e4: $c5
	sbc d                                            ; $45e5: $9a
	ld [hl-], a                                      ; $45e6: $32
	ld c, d                                          ; $45e7: $4a
	ld c, d                                          ; $45e8: $4a
	rst $38                                          ; $45e9: $ff
	call nz, $ffda                                   ; $45ea: $c4 $da $ff
	sbc h                                            ; $45ed: $9c
	rst JumpTable                                          ; $45ee: $c7

jr_058_45ef:
	cp e                                             ; $45ef: $bb
	ld sp, hl                                        ; $45f0: $f9
	ld a, d                                          ; $45f1: $7a
	add a                                            ; $45f2: $87
	sub a                                            ; $45f3: $97
	pop af                                           ; $45f4: $f1
	ldh a, [c]                                       ; $45f5: $f2
	pop af                                           ; $45f6: $f1
	rst JumpTable                                          ; $45f7: $c7
	add a                                            ; $45f8: $87
	add a                                            ; $45f9: $87
	adc a                                            ; $45fa: $8f
	add a                                            ; $45fb: $87

jr_058_45fc:
	sbc $8f                                          ; $45fc: $de $8f
	ld a, e                                          ; $45fe: $7b
	rst SubAFromHL                                          ; $45ff: $d7
	ld a, a                                          ; $4600: $7f
	jp z, $fc7b                                      ; $4601: $ca $7b $fc

	sbc [hl]                                         ; $4604: $9e
	db $fc                                           ; $4605: $fc
	sbc $f8                                          ; $4606: $de $f8
	sbc $f0                                          ; $4608: $de $f0
	sbc h                                            ; $460a: $9c
	ld hl, sp-$80                                    ; $460b: $f8 $80
	add b                                            ; $460d: $80
	sbc $82                                          ; $460e: $de $82
	rst SubAFromDE                                          ; $4610: $df
	add e                                            ; $4611: $83
	sbc h                                            ; $4612: $9c
	add c                                            ; $4613: $81
	ld a, a                                          ; $4614: $7f
	ld a, a                                          ; $4615: $7f
	sbc $7d                                          ; $4616: $de $7d
	rst SubAFromDE                                          ; $4618: $df
	ld a, h                                          ; $4619: $7c
	sub [hl]                                         ; $461a: $96
	ld a, [hl]                                       ; $461b: $7e
	xor e                                            ; $461c: $ab
	ld d, a                                          ; $461d: $57
	dec hl                                           ; $461e: $2b
	dec d                                            ; $461f: $15
	rrca                                             ; $4620: $0f
	rlca                                             ; $4621: $07
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	ld h, l                                          ; $4624: $65
	and b                                            ; $4625: $a0
	add a                                            ; $4626: $87
	ld b, $8d                                        ; $4627: $06 $8d
	jp c, Jump_058_7ff0                              ; $4629: $da $f0 $7f

	pop hl                                           ; $462c: $e1
	ldh a, [$f8]                                     ; $462d: $f0 $f8
	rst $38                                          ; $462f: $ff
	ld a, a                                          ; $4630: $7f
	ccf                                              ; $4631: $3f
	rra                                              ; $4632: $1f
	add b                                            ; $4633: $80
	sbc [hl]                                         ; $4634: $9e
	adc a                                            ; $4635: $8f
	add a                                            ; $4636: $87
	xor [hl]                                         ; $4637: $ae
	ld d, l                                          ; $4638: $55
	xor d                                            ; $4639: $aa
	dec d                                            ; $463a: $15
	dec bc                                           ; $463b: $0b
	ld a, [$3904]                                    ; $463c: $fa $04 $39
	ld l, a                                          ; $463f: $6f
	db $e3                                           ; $4640: $e3
	adc l                                            ; $4641: $8d
	db $fc                                           ; $4642: $fc
	ld sp, hl                                        ; $4643: $f9
	jr jr_058_45d6                                   ; $4644: $18 $90

	ei                                               ; $4646: $fb
	add h                                            ; $4647: $84
	ccf                                              ; $4648: $3f
	ld h, d                                          ; $4649: $62
	adc a                                            ; $464a: $8f
	add hl, sp                                       ; $464b: $39
	cp h                                             ; $464c: $bc
	cp $ff                                           ; $464d: $fe $ff
	add a                                            ; $464f: $87
	rra                                              ; $4650: $1f
	ld h, e                                          ; $4651: $63
	add a                                            ; $4652: $87
	add hl, de                                       ; $4653: $19
	reti                                             ; $4654: $d9


	rst $38                                          ; $4655: $ff
	sbc $80                                          ; $4656: $de $80
	ld a, a                                          ; $4658: $7f
	ld b, a                                          ; $4659: $47
	sbc h                                            ; $465a: $9c
	sub b                                            ; $465b: $90
	ld c, b                                          ; $465c: $48
	and h                                            ; $465d: $a4
	reti                                             ; $465e: $d9


	rst $38                                          ; $465f: $ff
	ld sp, hl                                        ; $4660: $f9
	ld b, a                                          ; $4661: $47
	ldh a, [$64]                                     ; $4662: $f0 $64
	rst SubAFromHL                                          ; $4664: $d7
	sbc [hl]                                         ; $4665: $9e
	ld a, [hl]                                       ; $4666: $7e
	ld a, [$517f]                                    ; $4667: $fa $7f $51
	db $dd                                           ; $466a: $dd
	ld hl, sp-$21                                    ; $466b: $f8 $df
	db $fc                                           ; $466d: $fc
	db $db                                           ; $466e: $db
	rrca                                             ; $466f: $0f
	rst SubAFromDE                                          ; $4670: $df
	rlca                                             ; $4671: $07
	adc h                                            ; $4672: $8c
	ld a, l                                          ; $4673: $7d
	ld a, d                                          ; $4674: $7a
	push af                                          ; $4675: $f5
	ld [$e8d4], a                                    ; $4676: $ea $d4 $e8
	ret nc                                           ; $4679: $d0

	ld h, b                                          ; $467a: $60
	add d                                            ; $467b: $82
	add l                                            ; $467c: $85
	ld a, [bc]                                       ; $467d: $0a
	dec d                                            ; $467e: $15
	dec hl                                           ; $467f: $2b
	rla                                              ; $4680: $17
	cpl                                              ; $4681: $2f
	sbc a                                            ; $4682: $9f
	ld b, c                                          ; $4683: $41
	add d                                            ; $4684: $82
	inc b                                            ; $4685: $04
	ld a, d                                          ; $4686: $7a
	rst GetHLinHL                                          ; $4687: $cf
	ld a, [hl]                                       ; $4688: $7e
	adc $78                                          ; $4689: $ce $78
	cp [hl]                                          ; $468b: $be
	call c, $deff                                    ; $468c: $dc $ff $de
	ld bc, $039a                                     ; $468f: $01 $9a $03
	inc b                                            ; $4692: $04
	add hl, bc                                       ; $4693: $09
	db $10                                           ; $4694: $10
	ld [hl], b                                       ; $4695: $70
	ld e, l                                          ; $4696: $5d
	ret nz                                           ; $4697: $c0

	sbc c                                            ; $4698: $99
	add d                                            ; $4699: $82
	ld b, d                                          ; $469a: $42
	and c                                            ; $469b: $a1
	ld d, c                                          ; $469c: $51
	xor c                                            ; $469d: $a9
	ld d, [hl]                                       ; $469e: $56
	db $dd                                           ; $469f: $dd
	cp $dd                                           ; $46a0: $fe $dd
	rst $38                                          ; $46a2: $ff
	add b                                            ; $46a3: $80
	dec [hl]                                         ; $46a4: $35
	cpl                                              ; $46a5: $2f
	dec a                                            ; $46a6: $3d
	ld a, d                                          ; $46a7: $7a
	rst AddAOntoHL                                          ; $46a8: $ef
	db $dd                                           ; $46a9: $dd
	or a                                             ; $46aa: $b7
	ei                                               ; $46ab: $fb
	dec sp                                           ; $46ac: $3b
	ld [hl-], a                                      ; $46ad: $32
	ld h, [hl]                                       ; $46ae: $66
	ld c, l                                          ; $46af: $4d
	sbc c                                            ; $46b0: $99
	inc sp                                           ; $46b1: $33
	ld a, d                                          ; $46b2: $7a
	ld a, [hl]                                       ; $46b3: $7e
	rst $38                                          ; $46b4: $ff
	rst $38                                          ; $46b5: $ff
	ccf                                              ; $46b6: $3f
	ld h, a                                          ; $46b7: $67
	rst GetHLinHL                                          ; $46b8: $cf
	cp c                                             ; $46b9: $b9
	call nc, $00ee                                   ; $46ba: $d4 $ee $00
	nop                                              ; $46bd: $00
	ret nz                                           ; $46be: $c0

	sbc b                                            ; $46bf: $98
	jr nc, jr_058_4728                               ; $46c0: $30 $66

	ld l, a                                          ; $46c2: $6f
	ld a, l                                          ; $46c3: $7d
	cpl                                              ; $46c4: $2f
	sbc $ff                                          ; $46c5: $de $ff
	sbc e                                            ; $46c7: $9b
	db $fc                                           ; $46c8: $fc
	ldh [rP1], a                                     ; $46c9: $e0 $00
	ld bc, $9bfd                                     ; $46cb: $01 $fd $9b
	inc bc                                           ; $46ce: $03
	rra                                              ; $46cf: $1f
	rst $38                                          ; $46d0: $ff
	rst $38                                          ; $46d1: $ff
	ld [hl], d                                       ; $46d2: $72
	di                                               ; $46d3: $f3
	rst SubAFromDE                                          ; $46d4: $df
	add c                                            ; $46d5: $81
	sbc [hl]                                         ; $46d6: $9e
	ld bc, $83dd                                     ; $46d7: $01 $dd $83
	ld [hl], a                                       ; $46da: $77
	ld hl, sp-$69                                    ; $46db: $f8 $97

Jump_058_46dd:
	di                                               ; $46dd: $f3
	or c                                             ; $46de: $b1
	or e                                             ; $46df: $b3
	reti                                             ; $46e0: $d9


	ret c                                            ; $46e1: $d8

	xor $78                                          ; $46e2: $ee $78
	ccf                                              ; $46e4: $3f
	ld a, c                                          ; $46e5: $79
	ld d, h                                          ; $46e6: $54
	rst SubAFromDE                                          ; $46e7: $df
	ld h, a                                          ; $46e8: $67
	add a                                            ; $46e9: $87
	or c                                             ; $46ea: $b1
	rst SubAFromDE                                          ; $46eb: $df
	rst SubAFromBC                                          ; $46ec: $e7
	ld sp, hl                                        ; $46ed: $f9
	or $f9                                           ; $46ee: $f6 $f9
	db $ec                                           ; $46f0: $ec
	db $fc                                           ; $46f1: $fc
	db $fc                                           ; $46f2: $fc
	call z, $fef4                                    ; $46f3: $cc $f4 $fe
	rst $38                                          ; $46f6: $ff
	rst FarCall                                          ; $46f7: $f7
	di                                               ; $46f8: $f3
	db $e3                                           ; $46f9: $e3
	db $e3                                           ; $46fa: $e3
	di                                               ; $46fb: $f3
	ei                                               ; $46fc: $fb
	ld bc, $c101                                     ; $46fd: $01 $01 $c1
	dec a                                            ; $4700: $3d
	inc bc                                           ; $4701: $03
	sbc $01                                          ; $4702: $de $01
	ld [hl], e                                       ; $4704: $73
	sub b                                            ; $4705: $90
	sbc $fe                                          ; $4706: $de $fe
	sbc $80                                          ; $4708: $de $80
	sbc $c0                                          ; $470a: $de $c0
	sbc l                                            ; $470c: $9d
	ldh a, [$c8]                                     ; $470d: $f0 $c8
	ld [hl], d                                       ; $470f: $72

Call_058_4710:
	ld d, b                                          ; $4710: $50
	ld a, a                                          ; $4711: $7f
	sub h                                            ; $4712: $94
	sub h                                            ; $4713: $94
	ccf                                              ; $4714: $3f
	cp b                                             ; $4715: $b8
	ld a, h                                          ; $4716: $7c
	ld e, h                                          ; $4717: $5c
	inc a                                            ; $4718: $3c
	inc l                                            ; $4719: $2c
	inc e                                            ; $471a: $1c
	inc d                                            ; $471b: $14
	ld a, [bc]                                       ; $471c: $0a
	rst JumpTable                                          ; $471d: $c7
	jp $d27b                                         ; $471e: $c3 $7b $d2


	ld a, a                                          ; $4721: $7f
	pop de                                           ; $4722: $d1
	sub h                                            ; $4723: $94
	db $fd                                           ; $4724: $fd
	rst SubAFromDE                                          ; $4725: $df
	ld l, $5f                                        ; $4726: $2e $5f

jr_058_4728:
	or e                                             ; $4728: $b3
	ld b, e                                          ; $4729: $43
	adc [hl]                                         ; $472a: $8e
	nop                                              ; $472b: $00
	nop                                              ; $472c: $00
	ld a, [$6efa]                                    ; $472d: $fa $fa $6e
	sbc a                                            ; $4730: $9f
	sub d                                            ; $4731: $92
	ld h, e                                          ; $4732: $63
	rst GetHLinHL                                          ; $4733: $cf
	rst SubAFromDE                                          ; $4734: $df
	cp a                                             ; $4735: $bf
	rst $38                                          ; $4736: $ff
	ld a, $03                                        ; $4737: $3e $03
	ld bc, $4320                                     ; $4739: $01 $20 $43
	adc [hl]                                         ; $473c: $8e
	add hl, de                                       ; $473d: $19
	rst SubAFromBC                                          ; $473e: $e7
	call c, $91ff                                    ; $473f: $dc $ff $91
	db $eb                                           ; $4742: $eb
	db $e3                                           ; $4743: $e3
	rst SubAFromBC                                          ; $4744: $e7
	rst GetHLinHL                                          ; $4745: $cf
	rst SubAFromHL                                          ; $4746: $d7
	ld [hl], a                                       ; $4747: $77
	and d                                            ; $4748: $a2
	and d                                            ; $4749: $a2
	or [hl]                                          ; $474a: $b6
	cp [hl]                                          ; $474b: $be
	cp h                                             ; $474c: $bc
	ld a, h                                          ; $474d: $7c
	db $fc                                           ; $474e: $fc
	db $fc                                           ; $474f: $fc
	ld b, $c0                                        ; $4750: $06 $c0
	ld b, a                                          ; $4752: $47
	ldh a, [$66]                                     ; $4753: $f0 $66
	ld c, b                                          ; $4755: $48
	rst SubAFromDE                                          ; $4756: $df
	inc bc                                           ; $4757: $03
	rst SubAFromDE                                          ; $4758: $df
	ld bc, $2a7f                                     ; $4759: $01 $7f $2a
	sub h                                            ; $475c: $94
	rlca                                             ; $475d: $07
	rrca                                             ; $475e: $0f
	ld b, b                                          ; $475f: $40
	nop                                              ; $4760: $00
	nop                                              ; $4761: $00
	ld bc, $c482                                     ; $4762: $01 $82 $c4
	db $e3                                           ; $4765: $e3
	rst $38                                          ; $4766: $ff
	cp a                                             ; $4767: $bf
	jp c, $99ff                                      ; $4768: $da $ff $99

	ld b, c                                          ; $476b: $41
	ld b, [hl]                                       ; $476c: $46
	add b                                            ; $476d: $80
	nop                                              ; $476e: $00
	ld bc, $da03                                     ; $476f: $01 $03 $da
	rst $38                                          ; $4772: $ff
	ld a, e                                          ; $4773: $7b
	call nc, $9098                                   ; $4774: $d4 $98 $90
	jr nc, jr_058_47e9                               ; $4777: $30 $70

	ld hl, sp-$08                                    ; $4779: $f8 $f8
	db $fd                                           ; $477b: $fd
	db $fc                                           ; $477c: $fc
	ld a, b                                          ; $477d: $78
	xor [hl]                                         ; $477e: $ae
	sbc [hl]                                         ; $477f: $9e
	rst SubAFromDE                                          ; $4780: $df
	ld a, b                                          ; $4781: $78

Jump_058_4782:
	rst SubAFromDE                                          ; $4782: $df
	rst SubAFromDE                                          ; $4783: $df
	rst $38                                          ; $4784: $ff
	ld a, l                                          ; $4785: $7d
	ld l, d                                          ; $4786: $6a
	sbc c                                            ; $4787: $99
	dec hl                                           ; $4788: $2b
	ld d, l                                          ; $4789: $55
	ld a, [hl+]                                      ; $478a: $2a
	ld d, l                                          ; $478b: $55
	xor d                                            ; $478c: $aa
	ld d, l                                          ; $478d: $55
	ld l, e                                          ; $478e: $6b
	cp c                                             ; $478f: $b9
	ld a, [hl]                                       ; $4790: $7e
	ld l, b                                          ; $4791: $68
	sbc [hl]                                         ; $4792: $9e
	ld sp, hl                                        ; $4793: $f9
	sbc $b8                                          ; $4794: $de $b8
	ld a, a                                          ; $4796: $7f
	inc a                                            ; $4797: $3c
	sbc l                                            ; $4798: $9d
	ld e, h                                          ; $4799: $5c
	rst SubAFromDE                                          ; $479a: $df
	db $dd                                           ; $479b: $dd
	rst GetHLinHL                                          ; $479c: $cf
	sbc b                                            ; $479d: $98
	rst JumpTable                                          ; $479e: $c7
	rst SubAFromBC                                          ; $479f: $e7
	rst SubAFromBC                                          ; $47a0: $e7
	push af                                          ; $47a1: $f5
	ld b, l                                          ; $47a2: $45
	db $fc                                           ; $47a3: $fc
	dec b                                            ; $47a4: $05
	sbc $02                                          ; $47a5: $de $02
	sbc [hl]                                         ; $47a7: $9e
	inc bc                                           ; $47a8: $03
	ld [hl], d                                       ; $47a9: $72
	rst JumpTable                                          ; $47aa: $c7
	db $dd                                           ; $47ab: $dd
	rst $38                                          ; $47ac: $ff
	ld a, [hl]                                       ; $47ad: $7e
	sub h                                            ; $47ae: $94
	sbc l                                            ; $47af: $9d
	ld d, l                                          ; $47b0: $55
	xor b                                            ; $47b1: $a8
	ld a, c                                          ; $47b2: $79
	dec l                                            ; $47b3: $2d
	reti                                             ; $47b4: $d9


	rst $38                                          ; $47b5: $ff
	ld a, d                                          ; $47b6: $7a
	ld [hl], c                                       ; $47b7: $71
	rst SubAFromDE                                          ; $47b8: $df
	cp $df                                           ; $47b9: $fe $df
	inc a                                            ; $47bb: $3c
	sbc [hl]                                         ; $47bc: $9e
	jr c, @+$78                                      ; $47bd: $38 $76

	ld l, b                                          ; $47bf: $68
	db $dd                                           ; $47c0: $dd
	rst $38                                          ; $47c1: $ff
	ld h, d                                          ; $47c2: $62
	nop                                              ; $47c3: $00
	sbc c                                            ; $47c4: $99
	daa                                              ; $47c5: $27
	ld [hl], a                                       ; $47c6: $77
	ld [hl], l                                       ; $47c7: $75
	ld d, l                                          ; $47c8: $55
	ld d, d                                          ; $47c9: $52
	daa                                              ; $47ca: $27
	db $dd                                           ; $47cb: $dd
	ld [hl], a                                       ; $47cc: $77
	ld a, a                                          ; $47cd: $7f
	ei                                               ; $47ce: $fb
	sbc $55                                          ; $47cf: $de $55
	ld a, a                                          ; $47d1: $7f
	ei                                               ; $47d2: $fb
	rst SubAFromDE                                          ; $47d3: $df
	ld [hl+], a                                      ; $47d4: $22
	ld a, a                                          ; $47d5: $7f
	or $7f                                           ; $47d6: $f6 $7f
	db $ed                                           ; $47d8: $ed
	rst SubAFromDE                                          ; $47d9: $df
	ld d, l                                          ; $47da: $55
	rst SubAFromDE                                          ; $47db: $df
	ld [hl], a                                       ; $47dc: $77
	sbc [hl]                                         ; $47dd: $9e
	ld [hl+], a                                      ; $47de: $22
	ld a, e                                          ; $47df: $7b
	jp hl                                            ; $47e0: $e9


	ld [hl], e                                       ; $47e1: $73
	or $9d                                           ; $47e2: $f6 $9d
	ld [hl], d                                       ; $47e4: $72
	ld [hl+], a                                      ; $47e5: $22
	ld a, e                                          ; $47e6: $7b
	push af                                          ; $47e7: $f5
	ld a, e                                          ; $47e8: $7b

jr_058_47e9:
	or $9e                                           ; $47e9: $f6 $9e
	ld d, a                                          ; $47eb: $57
	ld a, e                                          ; $47ec: $7b
	db $ec                                           ; $47ed: $ec
	ld a, e                                          ; $47ee: $7b
	pop hl                                           ; $47ef: $e1
	sbc b                                            ; $47f0: $98
	halt                                             ; $47f1: $76
	ld h, [hl]                                       ; $47f2: $66
	dec [hl]                                         ; $47f3: $35
	ld d, a                                          ; $47f4: $57
	ld [hl], a                                       ; $47f5: $77
	ld [hl], d                                       ; $47f6: $72
	inc h                                            ; $47f7: $24
	ld a, e                                          ; $47f8: $7b
	or $df                                           ; $47f9: $f6 $df
	ld h, [hl]                                       ; $47fb: $66
	sbc l                                            ; $47fc: $9d
	ld h, l                                          ; $47fd: $65
	daa                                              ; $47fe: $27
	ld [hl], e                                       ; $47ff: $73
	or $98                                           ; $4800: $f6 $98
	ld [hl+], a                                      ; $4802: $22
	ld h, [hl]                                       ; $4803: $66
	ld h, [hl]                                       ; $4804: $66
	ld h, d                                          ; $4805: $62
	daa                                              ; $4806: $27
	daa                                              ; $4807: $27
	ld b, d                                          ; $4808: $42
	ld a, e                                          ; $4809: $7b
	or $98                                           ; $480a: $f6 $98
	ld h, $66                                        ; $480c: $26 $66
	ld h, [hl]                                       ; $480e: $66

Call_058_480f:
	ld h, a                                          ; $480f: $67
	ld [hl], a                                       ; $4810: $77
	inc h                                            ; $4811: $24
	ld [hl+], a                                      ; $4812: $22
	ld l, a                                          ; $4813: $6f
	or $9c                                           ; $4814: $f6 $9c
	ld [hl], $77                                     ; $4816: $36 $77
	ld [hl], h                                       ; $4818: $74
	ld l, a                                          ; $4819: $6f
	or $9e                                           ; $481a: $f6 $9e
	ld h, e                                          ; $481c: $63
	ld a, e                                          ; $481d: $7b
	or $9b                                           ; $481e: $f6 $9b
	inc h                                            ; $4820: $24
	ld b, d                                          ; $4821: $42
	ld b, d                                          ; $4822: $42
	inc h                                            ; $4823: $24
	pop bc                                           ; $4824: $c1
	adc d                                            ; $4825: $8a
	db $dd                                           ; $4826: $dd
	ld a, [hl+]                                      ; $4827: $2a
	sbc e                                            ; $4828: $9b
	ld a, [hl-]                                      ; $4829: $3a
	ld l, $2a                                        ; $482a: $2e $2a
	dec hl                                           ; $482c: $2b
	db $dd                                           ; $482d: $dd
	push de                                          ; $482e: $d5
	sub a                                            ; $482f: $97
	push bc                                          ; $4830: $c5
	pop de                                           ; $4831: $d1
	push de                                          ; $4832: $d5
	call nc, $3033                                   ; $4833: $d4 $33 $30
	ld sp, $dd30                                     ; $4836: $31 $30 $dd
	or b                                             ; $4839: $b0
	sbc e                                            ; $483a: $9b
	call z, $cecf                                    ; $483b: $cc $cf $ce
	rst GetHLinHL                                          ; $483e: $cf
	db $dd                                           ; $483f: $dd
	ld c, a                                          ; $4840: $4f
	add b                                            ; $4841: $80
	rst $38                                          ; $4842: $ff
	nop                                              ; $4843: $00
	ld sp, hl                                        ; $4844: $f9
	nop                                              ; $4845: $00
	rra                                              ; $4846: $1f
	jr nz, @+$77                                     ; $4847: $20 $75

	rst SubAFromDE                                          ; $4849: $df
	nop                                              ; $484a: $00
	rst $38                                          ; $484b: $ff
	ld b, $ff                                        ; $484c: $06 $ff
	ldh [$df], a                                     ; $484e: $e0 $df
	adc d                                            ; $4850: $8a

jr_058_4851:
	jr nz, jr_058_4851                               ; $4851: $20 $fe

	ld b, $f6                                        ; $4853: $06 $f6
	ld b, $06                                        ; $4855: $06 $06
	add [hl]                                         ; $4857: $86
	add $66                                          ; $4858: $c6 $66
	ld bc, $09f9                                     ; $485a: $01 $f9 $09
	ld sp, hl                                        ; $485d: $f9
	ld sp, hl                                        ; $485e: $f9
	ld a, c                                          ; $485f: $79
	add hl, sp                                       ; $4860: $39
	sbc [hl]                                         ; $4861: $9e
	sbc c                                            ; $4862: $99
	db $dd                                           ; $4863: $dd
	rst $38                                          ; $4864: $ff
	sbc e                                            ; $4865: $9b
	cp $fc                                           ; $4866: $fe $fc
	ld sp, hl                                        ; $4868: $f9
	ldh a, [c]                                       ; $4869: $f2
	sbc $ff                                          ; $486a: $de $ff
	sbc l                                            ; $486c: $9d
	rrca                                             ; $486d: $0f
	rst $38                                          ; $486e: $ff
	sbc $3f                                          ; $486f: $de $3f
	sub a                                            ; $4871: $97
	pop af                                           ; $4872: $f1
	jp nz, $2b85                                     ; $4873: $c2 $85 $2b

	ld d, a                                          ; $4876: $57
	and a                                            ; $4877: $a7
	ld c, l                                          ; $4878: $4d
	sbc d                                            ; $4879: $9a
	ld [hl], e                                       ; $487a: $73
	ld [$fa80], a                                    ; $487b: $ea $80 $fa
	or $ed                                           ; $487e: $f6 $ed
	ret nz                                           ; $4880: $c0

	call c, Call_058_55af                            ; $4881: $dc $af $55
	xor b                                            ; $4884: $a8
	ret nc                                           ; $4885: $d0

	ld d, c                                          ; $4886: $51
	ld c, d                                          ; $4887: $4a
	rst $38                                          ; $4888: $ff
	inc hl                                           ; $4889: $23
	ld e, a                                          ; $488a: $5f
	cp b                                             ; $488b: $b8
	ld [hl], c                                       ; $488c: $71
	ld h, e                                          ; $488d: $63
	rst SubAFromBC                                          ; $488e: $e7
	and $ff                                          ; $488f: $e6 $ff
	ld e, a                                          ; $4891: $5f
	rla                                              ; $4892: $17
	xor h                                            ; $4893: $ac
	pop de                                           ; $4894: $d1
	ld h, $8a                                        ; $4895: $26 $8a
	ld [hl], h                                       ; $4897: $74
	rst $38                                          ; $4898: $ff
	cp a                                             ; $4899: $bf
	rst AddAOntoHL                                          ; $489a: $ef
	rst SubAFromDE                                          ; $489b: $df
	sbc e                                            ; $489c: $9b
	ld a, [hl]                                       ; $489d: $7e
	ld sp, hl                                        ; $489e: $f9
	db $f4                                           ; $489f: $f4
	ld e, d                                          ; $48a0: $5a
	jp c, $9eff                                      ; $48a1: $da $ff $9e

	rst SubAFromDE                                          ; $48a4: $df
	db $dd                                           ; $48a5: $dd
	rst $38                                          ; $48a6: $ff
	sbc e                                            ; $48a7: $9b
	ld a, a                                          ; $48a8: $7f
	ccf                                              ; $48a9: $3f
	rra                                              ; $48aa: $1f
	rra                                              ; $48ab: $1f
	call z, $9eff                                    ; $48ac: $cc $ff $9e
	db $fd                                           ; $48af: $fd
	sub $ff                                          ; $48b0: $d6 $ff
	sbc b                                            ; $48b2: $98
	push de                                          ; $48b3: $d5
	rst $38                                          ; $48b4: $ff
	ld d, l                                          ; $48b5: $55
	cp $d5                                           ; $48b6: $fe $d5
	ld [$d955], a                                    ; $48b8: $ea $55 $d9
	rst $38                                          ; $48bb: $ff
	sub a                                            ; $48bc: $97
	ld a, [$aa55]                                    ; $48bd: $fa $55 $aa
	dec h                                            ; $48c0: $25
	and d                                            ; $48c1: $a2
	ld [hl], c                                       ; $48c2: $71
	ld [hl], d                                       ; $48c3: $72
	ld [hl], c                                       ; $48c4: $71
	ret c                                            ; $48c5: $d8

	rst $38                                          ; $48c6: $ff
	ld a, a                                          ; $48c7: $7f
	and $9a                                          ; $48c8: $e6 $9a
	ld d, l                                          ; $48ca: $55
	xor a                                            ; $48cb: $af

Call_058_48cc:
	ld d, l                                          ; $48cc: $55
	xor a                                            ; $48cd: $af

jr_058_48ce:
	dec d                                            ; $48ce: $15
	ret c                                            ; $48cf: $d8

	rst $38                                          ; $48d0: $ff
	sbc h                                            ; $48d1: $9c
	ld e, a                                          ; $48d2: $5f
	rst $38                                          ; $48d3: $ff
	ld [hl], a                                       ; $48d4: $77
	ld a, e                                          ; $48d5: $7b
	db $fc                                           ; $48d6: $fc
	sbc [hl]                                         ; $48d7: $9e
	ld e, l                                          ; $48d8: $5d
	jp nc, $9eff                                     ; $48d9: $d2 $ff $9e

	ld a, a                                          ; $48dc: $7f
	pop bc                                           ; $48dd: $c1
	rst $38                                          ; $48de: $ff
	inc bc                                           ; $48df: $03
	rst $38                                          ; $48e0: $ff
	jp c, $dcff                                      ; $48e1: $da $ff $dc

	ld a, [hl+]                                      ; $48e4: $2a
	ld a, [hl]                                       ; $48e5: $7e
	cp a                                             ; $48e6: $bf
	ld [hl], d                                       ; $48e7: $72
	ret nz                                           ; $48e8: $c0

	ld a, d                                          ; $48e9: $7a
	cp a                                             ; $48ea: $bf
	sbc l                                            ; $48eb: $9d
	call nc, $dab0                                   ; $48ec: $d4 $b0 $da
	or e                                             ; $48ef: $b3
	reti                                             ; $48f0: $d9


	ld c, h                                          ; $48f1: $4c
	sbc l                                            ; $48f2: $9d
	sub l                                            ; $48f3: $95
	rst $38                                          ; $48f4: $ff
	db $db                                           ; $48f5: $db
	push de                                          ; $48f6: $d5
	sbc l                                            ; $48f7: $9d
	ld l, d                                          ; $48f8: $6a
	nop                                              ; $48f9: $00
	db $db                                           ; $48fa: $db
	ld a, [hl+]                                      ; $48fb: $2a
	sbc e                                            ; $48fc: $9b
	ld h, $fe                                        ; $48fd: $26 $fe
	ld l, [hl]                                       ; $48ff: $6e
	ld l, [hl]                                       ; $4900: $6e
	sbc $6f                                          ; $4901: $de $6f
	sbc h                                            ; $4903: $9c
	ld l, [hl]                                       ; $4904: $6e
	pop bc                                           ; $4905: $c1
	ld bc, $81de                                     ; $4906: $01 $de $81
	sub d                                            ; $4909: $92
	add d                                            ; $490a: $82
	add e                                            ; $490b: $83
	add a                                            ; $490c: $87
	db $e4                                           ; $490d: $e4
	ret                                              ; $490e: $c9


	sub c                                            ; $490f: $91
	and d                                            ; $4910: $a2
	ld b, d                                          ; $4911: $42
	call nc, $a595                                   ; $4912: $d4 $95 $a5
	ccf                                              ; $4915: $3f
	ld a, a                                          ; $4916: $7f
	ld l, a                                          ; $4917: $6f
	ld l, h                                          ; $4918: $6c
	sub l                                            ; $4919: $95
	sub d                                            ; $491a: $92
	inc h                                            ; $491b: $24
	ld b, c                                          ; $491c: $41
	ld b, c                                          ; $491d: $41
	sub d                                            ; $491e: $92
	and h                                            ; $491f: $a4
	jr z, @+$55                                      ; $4920: $28 $53

	db $fd                                           ; $4922: $fd
	ei                                               ; $4923: $fb
	db $db                                           ; $4924: $db
	rst $38                                          ; $4925: $ff
	add b                                            ; $4926: $80
	or h                                             ; $4927: $b4
	cp l                                             ; $4928: $bd
	ld [hl-], a                                      ; $4929: $32
	ld de, $6b2d                                     ; $492a: $11 $2d $6b
	or a                                             ; $492d: $b7
	ld c, a                                          ; $492e: $4f
	call z, $d9c8                                    ; $492f: $cc $c8 $d9
	ei                                               ; $4932: $fb
	di                                               ; $4933: $f3
	or $ec                                           ; $4934: $f6 $ec
	ld hl, sp-$17                                    ; $4936: $f8 $e9
	jr z, jr_058_48ce                                ; $4938: $28 $94

	sub $95                                          ; $493a: $d6 $95
	push bc                                          ; $493c: $c5
	add l                                            ; $493d: $85
	or l                                             ; $493e: $b5
	ld e, d                                          ; $493f: $5a
	db $dd                                           ; $4940: $dd
	db $ed                                           ; $4941: $ed
	xor l                                            ; $4942: $ad
	xor [hl]                                         ; $4943: $ae
	xor [hl]                                         ; $4944: $ae
	xor $99                                          ; $4945: $ee $99
	xor $6f                                          ; $4947: $ee $6f
	ld l, a                                          ; $4949: $6f
	xor a                                            ; $494a: $af
	xor a                                            ; $494b: $af
	cp a                                             ; $494c: $bf
	halt                                             ; $494d: $76
	add e                                            ; $494e: $83
	sbc $0f                                          ; $494f: $de $0f
	sbc e                                            ; $4951: $9b
	cpl                                              ; $4952: $2f
	daa                                              ; $4953: $27
	and a                                            ; $4954: $a7
	and a                                            ; $4955: $a7
	ld [hl-], a                                      ; $4956: $32
	jp nz, $f59c                                     ; $4957: $c2 $9c $f5

	cp $d5                                           ; $495a: $fe $d5
	reti                                             ; $495c: $d9


	rst $38                                          ; $495d: $ff
	sub a                                            ; $495e: $97
	xor d                                            ; $495f: $aa
	ld d, h                                          ; $4960: $54
	xor d                                            ; $4961: $aa
	ld d, l                                          ; $4962: $55
	xor b                                            ; $4963: $a8
	ld d, h                                          ; $4964: $54
	xor b                                            ; $4965: $a8
	ld d, h                                          ; $4966: $54
	db $db                                           ; $4967: $db
	rst $38                                          ; $4968: $ff
	rst SubAFromDE                                          ; $4969: $df
	cp $97                                           ; $496a: $fe $97
	ld a, [$bab9]                                    ; $496c: $fa $b9 $ba
	inc a                                            ; $496f: $3c
	db $fc                                           ; $4970: $fc
	dec d                                            ; $4971: $15
	add h                                            ; $4972: $84
	inc b                                            ; $4973: $04
	call c, $94ff                                    ; $4974: $dc $ff $94
	rrca                                             ; $4977: $0f
	ld a, [hl]                                       ; $4978: $7e
	ld e, $0b                                        ; $4979: $1e $0b
	ld d, l                                          ; $497b: $55
	ld c, d                                          ; $497c: $4a
	push hl                                          ; $497d: $e5
	ld [$30f5], a                                    ; $497e: $ea $f5 $30
	ld d, b                                          ; $4981: $50
	db $db                                           ; $4982: $db
	rst $38                                          ; $4983: $ff
	sub l                                            ; $4984: $95
	rra                                              ; $4985: $1f
	inc a                                            ; $4986: $3c
	xor e                                            ; $4987: $ab
	ld d, l                                          ; $4988: $55
	xor e                                            ; $4989: $ab
	ld d, l                                          ; $498a: $55
	xor d                                            ; $498b: $aa
	ld b, c                                          ; $498c: $41
	ld [$6289], sp                                   ; $498d: $08 $89 $62
	ret z                                            ; $4990: $c8

	ld a, e                                          ; $4991: $7b
	cp $9b                                           ; $4992: $fe $9b
	cp $5e                                           ; $4994: $fe $5e
	db $fc                                           ; $4996: $fc
	ld e, c                                          ; $4997: $59
	ld l, e                                          ; $4998: $6b
	ret nz                                           ; $4999: $c0

	sbc [hl]                                         ; $499a: $9e
	db $fc                                           ; $499b: $fc
	ld [hl], a                                       ; $499c: $77
	db $ec                                           ; $499d: $ec
	sbc e                                            ; $499e: $9b
	jr c, jr_058_49a1                                ; $499f: $38 $00

jr_058_49a1:
	add [hl]                                         ; $49a1: $86
	sbc [hl]                                         ; $49a2: $9e
	ld [hl], e                                       ; $49a3: $73
	db $e3                                           ; $49a4: $e3
	sbc h                                            ; $49a5: $9c
	ld a, b                                          ; $49a6: $78
	jr nz, jr_058_49a9                               ; $49a7: $20 $00

jr_058_49a9:
	ld [hl], e                                       ; $49a9: $73
	ld hl, sp-$64                                    ; $49aa: $f8 $9c
	ld a, e                                          ; $49ac: $7b
	ld [hl], c                                       ; $49ad: $71
	ld b, c                                          ; $49ae: $41
	db $db                                           ; $49af: $db
	rst $38                                          ; $49b0: $ff
	ld a, a                                          ; $49b1: $7f
	ld c, l                                          ; $49b2: $4d
	ld [bc], a                                       ; $49b3: $02
	ret nz                                           ; $49b4: $c0

	sbc $6a                                          ; $49b5: $de $6a
	db $dd                                           ; $49b7: $dd
	ld [$d59e], a                                    ; $49b8: $ea $9e $d5
	sbc $95                                          ; $49bb: $de $95
	db $dd                                           ; $49bd: $dd
	dec d                                            ; $49be: $15
	call c, $deb3                                    ; $49bf: $dc $b3 $de
	or c                                             ; $49c2: $b1
	reti                                             ; $49c3: $d9


	ld c, h                                          ; $49c4: $4c
	halt                                             ; $49c5: $76
	pop bc                                           ; $49c6: $c1
	sbc [hl]                                         ; $49c7: $9e
	pop bc                                           ; $49c8: $c1
	sbc $80                                          ; $49c9: $de $80
	ld l, d                                          ; $49cb: $6a
	pop bc                                           ; $49cc: $c1
	sbc [hl]                                         ; $49cd: $9e
	ld a, [hl+]                                      ; $49ce: $2a
	sbc $ef                                          ; $49cf: $de $ef
	sbc $ee                                          ; $49d1: $de $ee
	rst SubAFromDE                                          ; $49d3: $df
	xor [hl]                                         ; $49d4: $ae
	rst SubAFromDE                                          ; $49d5: $df
	dec b                                            ; $49d6: $05
	sbc [hl]                                         ; $49d7: $9e
	ld bc, $03dc                                     ; $49d8: $01 $dc $03
	sbc e                                            ; $49db: $9b
	add hl, hl                                       ; $49dc: $29
	ld c, c                                          ; $49dd: $49
	ld c, c                                          ; $49de: $49
	ld d, d                                          ; $49df: $52
	db $dd                                           ; $49e0: $dd
	jp nc, $2762                                     ; $49e1: $d2 $62 $27

	add b                                            ; $49e4: $80
	ld l, e                                          ; $49e5: $6b
	ld a, e                                          ; $49e6: $7b
	xor e                                            ; $49e7: $ab
	and a                                            ; $49e8: $a7
	or e                                             ; $49e9: $b3
	and e                                            ; $49ea: $a3
	and a                                            ; $49eb: $a7
	rst $38                                          ; $49ec: $ff
	cp $ee                                           ; $49ed: $fe $ee
	xor $eb                                          ; $49ef: $ee $eb
	ld [$fafa], a                                    ; $49f1: $ea $fa $fa
	db $d3                                           ; $49f4: $d3
	cp a                                             ; $49f5: $bf
	rst $38                                          ; $49f6: $ff
	cp e                                             ; $49f7: $bb
	rst SubAFromDE                                          ; $49f8: $df
	rst SubAFromBC                                          ; $49f9: $e7
	db $d3                                           ; $49fa: $d3
	ldh [$7c], a                                     ; $49fb: $e0 $7c
	cp $c0                                           ; $49fd: $fe $c0
	ld a, h                                          ; $49ff: $7c
	call c, $e0f4                                    ; $4a00: $dc $f4 $e0
	ld h, b                                          ; $4a03: $60
	adc a                                            ; $4a04: $8f
	xor l                                            ; $4a05: $ad
	xor $d6                                          ; $4a06: $ee $d6
	rst $38                                          ; $4a08: $ff
	rst AddAOntoHL                                          ; $4a09: $ef
	cp $ef                                           ; $4a0a: $fe $ef
	ld a, e                                          ; $4a0c: $7b
	cp $7f                                           ; $4a0d: $fe $7f
	ld a, e                                          ; $4a0f: $7b
	cp l                                             ; $4a10: $bd
	ld [hl-], a                                      ; $4a11: $32
	ld e, l                                          ; $4a12: $5d
	dec hl                                           ; $4a13: $2b
	add hl, sp                                       ; $4a14: $39
	reti                                             ; $4a15: $d9


	rst $38                                          ; $4a16: $ff
	sbc e                                            ; $4a17: $9b
	or a                                             ; $4a18: $b7
	sub a                                            ; $4a19: $97
	ld e, e                                          ; $4a1a: $5b
	ld l, a                                          ; $4a1b: $6f
	halt                                             ; $4a1c: $76
	cp b                                             ; $4a1d: $b8
	ld b, l                                          ; $4a1e: $45
	adc [hl]                                         ; $4a1f: $8e
	sub a                                            ; $4a20: $97
	ld a, [$faf5]                                    ; $4a21: $fa $f5 $fa
	push af                                          ; $4a24: $f5
	ld [$a854], a                                    ; $4a25: $ea $54 $a8
	ld d, c                                          ; $4a28: $51
	reti                                             ; $4a29: $d9


	rst $38                                          ; $4a2a: $ff
	sub a                                            ; $4a2b: $97
	adc b                                            ; $4a2c: $88
	inc h                                            ; $4a2d: $24
	and b                                            ; $4a2e: $a0
	ld [hl], b                                       ; $4a2f: $70
	halt                                             ; $4a30: $76
	cp [hl]                                          ; $4a31: $be
	cp d                                             ; $4a32: $ba
	ld a, [$feda]                                    ; $4a33: $fa $da $fe
	sub h                                            ; $4a36: $94
	ld a, [$0444]                                    ; $4a37: $fa $44 $04
	ld b, h                                          ; $4a3a: $44
	inc b                                            ; $4a3b: $04
	inc b                                            ; $4a3c: $04
	ld d, $f6                                        ; $4a3d: $16 $f6
	rst FarCall                                          ; $4a3f: $f7
	ld a, $1e                                        ; $4a40: $3e $1e
	ld a, e                                          ; $4a42: $7b
	cp $93                                           ; $4a43: $fe $93
	cp $1e                                           ; $4a45: $fe $1e
	rra                                              ; $4a47: $1f
	or c                                             ; $4a48: $b1
	sub d                                            ; $4a49: $92
	sub e                                            ; $4a4a: $93
	sub d                                            ; $4a4b: $92
	inc de                                           ; $4a4c: $13
	sub d                                            ; $4a4d: $92
	ld [de], a                                       ; $4a4e: $12
	ld d, $f8                                        ; $4a4f: $16 $f8
	sbc $79                                          ; $4a51: $de $79
	ld a, h                                          ; $4a53: $7c
	ldh [$df], a                                     ; $4a54: $e0 $df
	pop af                                           ; $4a56: $f1
	rst SubAFromDE                                          ; $4a57: $df
	ld e, h                                          ; $4a58: $5c
	rst SubAFromDE                                          ; $4a59: $df
	ld a, [hl]                                       ; $4a5a: $7e
	rst SubAFromDE                                          ; $4a5b: $df
	ld h, d                                          ; $4a5c: $62
	sbc l                                            ; $4a5d: $9d
	ld l, d                                          ; $4a5e: $6a
	ld h, d                                          ; $4a5f: $62
	db $dd                                           ; $4a60: $dd
	rst $38                                          ; $4a61: $ff
	sbc [hl]                                         ; $4a62: $9e
	rst SubAFromBC                                          ; $4a63: $e7
	sbc $ef                                          ; $4a64: $de $ef
	sub [hl]                                         ; $4a66: $96
	xor c                                            ; $4a67: $a9
	ld d, e                                          ; $4a68: $53
	and d                                            ; $4a69: $a2
	ld b, d                                          ; $4a6a: $42
	add e                                            ; $4a6b: $83
	ld b, $0b                                        ; $4a6c: $06 $0b
	rla                                              ; $4a6e: $17
	db $fc                                           ; $4a6f: $fc
	db $dd                                           ; $4a70: $dd
	ld hl, sp-$6e                                    ; $4a71: $f8 $92
	ldh a, [$e0]                                     ; $4a73: $f0 $e0
	ret nz                                           ; $4a75: $c0

	cp h                                             ; $4a76: $bc
	db $ec                                           ; $4a77: $ec
	ret c                                            ; $4a78: $d8

	rst SubAFromDE                                          ; $4a79: $df
	ld sp, $3c1f                                     ; $4a7a: $31 $1f $3c
	adc $01                                          ; $4a7d: $ce $01
	ld bc, $dffb                                     ; $4a7f: $01 $fb $df
	call z, $18df                                    ; $4a82: $cc $df $18
	sub a                                            ; $4a85: $97
	cp e                                             ; $4a86: $bb
	ld a, a                                          ; $4a87: $7f
	or $c3                                           ; $4a88: $f6 $c3
	pop hl                                           ; $4a8a: $e1
	pop hl                                           ; $4a8b: $e1
	pop bc                                           ; $4a8c: $c1
	ld b, c                                          ; $4a8d: $41
	db $fd                                           ; $4a8e: $fd
	sub d                                            ; $4a8f: $92
	rst AddAOntoHL                                          ; $4a90: $ef
	rst JumpTable                                          ; $4a91: $c7
	sub e                                            ; $4a92: $93
	add hl, sp                                       ; $4a93: $39
	add hl, hl                                       ; $4a94: $29
	ld l, h                                          ; $4a95: $6c
	ld a, h                                          ; $4a96: $7c
	ld l, l                                          ; $4a97: $6d
	rst $38                                          ; $4a98: $ff
	rst AddAOntoHL                                          ; $4a99: $ef
	rst JumpTable                                          ; $4a9a: $c7
	add e                                            ; $4a9b: $83
	add e                                            ; $4a9c: $83
	ld a, e                                          ; $4a9d: $7b
	call c, $1b6f                                    ; $4a9e: $dc $6f $1b
	sbc l                                            ; $4aa1: $9d
	rrca                                             ; $4aa2: $0f
	rst JumpTable                                          ; $4aa3: $c7
	db $db                                           ; $4aa4: $db
	rst $38                                          ; $4aa5: $ff
	sbc l                                            ; $4aa6: $9d
	ccf                                              ; $4aa7: $3f
	rrca                                             ; $4aa8: $0f
	ld [hl], d                                       ; $4aa9: $72
	dec sp                                           ; $4aaa: $3b
	ld a, e                                          ; $4aab: $7b
	ld d, b                                          ; $4aac: $50
	adc h                                            ; $4aad: $8c
	inc b                                            ; $4aae: $04
	rla                                              ; $4aaf: $17
	rla                                              ; $4ab0: $17
	ld e, a                                          ; $4ab1: $5f
	ld e, a                                          ; $4ab2: $5f
	ld a, a                                          ; $4ab3: $7f
	ld a, a                                          ; $4ab4: $7f
	rst $38                                          ; $4ab5: $ff
	and l                                            ; $4ab6: $a5
	db $ed                                           ; $4ab7: $ed
	call $ffcf                                       ; $4ab8: $cd $cf $ff
	rst SubAFromDE                                          ; $4abb: $df
	sbc a                                            ; $4abc: $9f
	sub a                                            ; $4abd: $97
	call c, $fcdc                                    ; $4abe: $dc $dc $fc
	sbc $fd                                          ; $4ac1: $de $fd
	rst SubAFromDE                                          ; $4ac3: $df
	rst $38                                          ; $4ac4: $ff
	sub [hl]                                         ; $4ac5: $96
	xor e                                            ; $4ac6: $ab
	cp [hl]                                          ; $4ac7: $be
	cp [hl]                                          ; $4ac8: $be
	cp a                                             ; $4ac9: $bf
	db $db                                           ; $4aca: $db
	db $db                                           ; $4acb: $db
	sub e                                            ; $4acc: $93
	sub c                                            ; $4acd: $91
	ld a, [hl]                                       ; $4ace: $7e
	ld a, e                                          ; $4acf: $7b
	db $e4                                           ; $4ad0: $e4
	db $dd                                           ; $4ad1: $dd
	rst $38                                          ; $4ad2: $ff
	sub [hl]                                         ; $4ad3: $96
	xor $ff                                          ; $4ad4: $ee $ff
	rst AddAOntoHL                                          ; $4ad6: $ef
	rst AddAOntoHL                                          ; $4ad7: $ef
	xor a                                            ; $4ad8: $af
	cp a                                             ; $4ad9: $bf
	xor a                                            ; $4ada: $af
	cp a                                             ; $4adb: $bf
	inc bc                                           ; $4adc: $03
	sbc $01                                          ; $4add: $de $01
	rst $38                                          ; $4adf: $ff
	ld a, [hl]                                       ; $4ae0: $7e
	cp h                                             ; $4ae1: $bc
	sub a                                            ; $4ae2: $97
	db $d3                                           ; $4ae3: $d3
	set 5, c                                         ; $4ae4: $cb $e9
	ld sp, hl                                        ; $4ae6: $f9
	ld a, [$cffb]                                    ; $4ae7: $fa $fb $cf
	sbc a                                            ; $4aea: $9f
	ld a, b                                          ; $4aeb: $78
	add e                                            ; $4aec: $83
	ld a, h                                          ; $4aed: $7c
	add d                                            ; $4aee: $82
	sub h                                            ; $4aef: $94
	ld a, a                                          ; $4af0: $7f
	adc $98                                          ; $4af1: $ce $98
	daa                                              ; $4af3: $27
	dec hl                                           ; $4af4: $2b
	dec hl                                           ; $4af5: $2b
	ld l, e                                          ; $4af6: $6b
	ld l, d                                          ; $4af7: $6a
	ei                                               ; $4af8: $fb
	rst FarCall                                          ; $4af9: $f7
	rst FarCall                                          ; $4afa: $f7
	ld [hl], a                                       ; $4afb: $77
	rra                                              ; $4afc: $1f
	ld a, c                                          ; $4afd: $79
	rst AddAOntoHL                                          ; $4afe: $ef
	sub [hl]                                         ; $4aff: $96
	inc bc                                           ; $4b00: $03
	add e                                            ; $4b01: $83
	add b                                            ; $4b02: $80
	ret nz                                           ; $4b03: $c0

	rst JumpTable                                          ; $4b04: $c7
	push bc                                          ; $4b05: $c5
	ld h, d                                          ; $4b06: $62
	db $e3                                           ; $4b07: $e3
	ldh a, [$fe]                                     ; $4b08: $f0 $fe
	adc d                                            ; $4b0a: $8a
	rlca                                             ; $4b0b: $07
	ld b, $83                                        ; $4b0c: $06 $83
	ret nz                                           ; $4b0e: $c0

	ldh [$37], a                                     ; $4b0f: $e0 $37
	ld a, $c6                                        ; $4b11: $3e $c6
	add d                                            ; $4b13: $82
	inc c                                            ; $4b14: $0c
	rla                                              ; $4b15: $17
	ld a, [hl+]                                      ; $4b16: $2a
	ld [hl], a                                       ; $4b17: $77
	reti                                             ; $4b18: $d9


	ld b, e                                          ; $4b19: $43
	ld b, e                                          ; $4b1a: $43
	add a                                            ; $4b1b: $87
	add a                                            ; $4b1c: $87
	ld c, $1e                                        ; $4b1d: $0e $1e
	ld a, [hl-]                                      ; $4b1f: $3a
	ld b, b                                          ; $4b20: $40
	ld e, [hl]                                       ; $4b21: $5e
	sbc c                                            ; $4b22: $99
	db $fd                                           ; $4b23: $fd
	cp $d5                                           ; $4b24: $fe $d5
	cp $55                                           ; $4b26: $fe $55
	ld a, [$6060]                                    ; $4b28: $fa $60 $60
	sub a                                            ; $4b2b: $97
	and c                                            ; $4b2c: $a1
	ld d, b                                          ; $4b2d: $50
	sub b                                            ; $4b2e: $90
	jr c, @-$46                                      ; $4b2f: $38 $b8

	jr c, jr_058_4b6b                                ; $4b31: $38 $38

	ld a, h                                          ; $4b33: $7c
	reti                                             ; $4b34: $d9


	rst $38                                          ; $4b35: $ff
	adc a                                            ; $4b36: $8f
	ld a, [bc]                                       ; $4b37: $0a
	ld e, d                                          ; $4b38: $5a
	ld e, d                                          ; $4b39: $5a
	db $10                                           ; $4b3a: $10
	ld d, b                                          ; $4b3b: $50
	ld d, b                                          ; $4b3c: $50
	jr nc, jr_058_4b5f                               ; $4b3d: $30 $20

	ld a, [bc]                                       ; $4b3f: $0a
	ld c, d                                          ; $4b40: $4a
	ld c, d                                          ; $4b41: $4a
	ld a, [de]                                       ; $4b42: $1a
	ld e, c                                          ; $4b43: $59
	ld d, c                                          ; $4b44: $51
	ld de, $dd31                                     ; $4b45: $11 $31 $dd
	rst FarCall                                          ; $4b48: $f7
	rst SubAFromDE                                          ; $4b49: $df
	push af                                          ; $4b4a: $f5
	rst SubAFromDE                                          ; $4b4b: $df
	push de                                          ; $4b4c: $d5
	db $db                                           ; $4b4d: $db
	rra                                              ; $4b4e: $1f
	rst SubAFromDE                                          ; $4b4f: $df
	ccf                                              ; $4b50: $3f
	sbc [hl]                                         ; $4b51: $9e
	ld [de], a                                       ; $4b52: $12
	sbc $1a                                          ; $4b53: $de $1a
	sbc [hl]                                         ; $4b55: $9e
	inc e                                            ; $4b56: $1c
	sbc $1e                                          ; $4b57: $de $1e
	db $dd                                           ; $4b59: $dd
	db $fd                                           ; $4b5a: $fd
	db $dd                                           ; $4b5b: $dd
	rst $38                                          ; $4b5c: $ff
	sbc $62                                          ; $4b5d: $de $62

jr_058_4b5f:
	adc c                                            ; $4b5f: $89
	ld h, e                                          ; $4b60: $63
	ld h, d                                          ; $4b61: $62
	ld [hl+], a                                      ; $4b62: $22
	dec h                                            ; $4b63: $25
	dec c                                            ; $4b64: $0d
	rst AddAOntoHL                                          ; $4b65: $ef
	rst AddAOntoHL                                          ; $4b66: $ef
	rst $38                                          ; $4b67: $ff
	xor $fc                                          ; $4b68: $ee $fc
	db $fc                                           ; $4b6a: $fc

jr_058_4b6b:
	ld hl, sp-$10                                    ; $4b6b: $f8 $f0
	ld c, [hl]                                       ; $4b6d: $4e
	ldh a, [c]                                       ; $4b6e: $f2
	ei                                               ; $4b6f: $fb
	ld a, d                                          ; $4b70: $7a
	sbc e                                            ; $4b71: $9b
	call c, $a7a8                                    ; $4b72: $dc $a8 $a7
	add b                                            ; $4b75: $80

jr_058_4b76:
	ld a, [$d597]                                    ; $4b76: $fa $97 $d5
	rst GetHLinHL                                          ; $4b79: $cf
	or b                                             ; $4b7a: $b0
	cp [hl]                                          ; $4b7b: $be
	ld h, l                                          ; $4b7c: $65
	push bc                                          ; $4b7d: $c5
	ld c, d                                          ; $4b7e: $4a
	ld c, e                                          ; $4b7f: $4b
	db $fd                                           ; $4b80: $fd
	sub e                                            ; $4b81: $93
	jr jr_058_4bbc                                   ; $4b82: $18 $38

	jr nc, jr_058_4bb6                               ; $4b84: $30 $30

	rra                                              ; $4b86: $1f
	ld l, l                                          ; $4b87: $6d
	ld l, a                                          ; $4b88: $6f
	di                                               ; $4b89: $f3
	or [hl]                                          ; $4b8a: $b6
	ld l, a                                          ; $4b8b: $6f
	db $eb                                           ; $4b8c: $eb
	sbc $f9                                          ; $4b8d: $de $f9
	sub a                                            ; $4b8f: $97
	rst $38                                          ; $4b90: $ff
	call $8787                                       ; $4b91: $cd $87 $87
	rst GetHLinHL                                          ; $4b94: $cf
	ei                                               ; $4b95: $fb
	call c, $f9df                                    ; $4b96: $dc $df $f9
	sub l                                            ; $4b99: $95
	inc sp                                           ; $4b9a: $33
	rst SubAFromBC                                          ; $4b9b: $e7

jr_058_4b9c:
	rst GetHLinHL                                          ; $4b9c: $cf
	rra                                              ; $4b9d: $1f
	sbc a                                            ; $4b9e: $9f
	sbc a                                            ; $4b9f: $9f
	rst GetHLinHL                                          ; $4ba0: $cf
	ld c, a                                          ; $4ba1: $4f
	rlca                                             ; $4ba2: $07
	rrca                                             ; $4ba3: $0f
	ld a, e                                          ; $4ba4: $7b
	sub e                                            ; $4ba5: $93
	ld a, a                                          ; $4ba6: $7f
	ld c, $96                                        ; $4ba7: $0e $96
	rra                                              ; $4ba9: $1f
	db $fd                                           ; $4baa: $fd
	cp $ea                                           ; $4bab: $fe $ea
	jp hl                                            ; $4bad: $e9


	and l                                            ; $4bae: $a5
	and $a6                                          ; $4baf: $e6 $a6
	and [hl]                                         ; $4bb1: $a6
	reti                                             ; $4bb2: $d9


	rst $38                                          ; $4bb3: $ff
	rst SubAFromDE                                          ; $4bb4: $df
	add [hl]                                         ; $4bb5: $86

jr_058_4bb6:
	sbc c                                            ; $4bb6: $99
	dec b                                            ; $4bb7: $05
	adc l                                            ; $4bb8: $8d
	adc h                                            ; $4bb9: $8c
	sbc b                                            ; $4bba: $98
	ret c                                            ; $4bbb: $d8

jr_058_4bbc:
	ret c                                            ; $4bbc: $d8

	reti                                             ; $4bbd: $d9


	rst $38                                          ; $4bbe: $ff
	rst SubAFromDE                                          ; $4bbf: $df
	or c                                             ; $4bc0: $b1
	sbc c                                            ; $4bc1: $99
	and c                                            ; $4bc2: $a1
	xor c                                            ; $4bc3: $a9
	jp hl                                            ; $4bc4: $e9


	db $eb                                           ; $4bc5: $eb
	ld a, e                                          ; $4bc6: $7b
	ld a, [hl]                                       ; $4bc7: $7e
	reti                                             ; $4bc8: $d9


	rst $38                                          ; $4bc9: $ff
	adc a                                            ; $4bca: $8f
	sbc l                                            ; $4bcb: $9d
	ld a, [de]                                       ; $4bcc: $1a
	ld d, h                                          ; $4bcd: $54
	ld l, c                                          ; $4bce: $69
	ld d, e                                          ; $4bcf: $53
	sub d                                            ; $4bd0: $92
	ld h, $4a                                        ; $4bd1: $26 $4a
	dec h                                            ; $4bd3: $25
	xor d                                            ; $4bd4: $aa
	or h                                             ; $4bd5: $b4
	xor c                                            ; $4bd6: $a9
	db $d3                                           ; $4bd7: $d3
	sub e                                            ; $4bd8: $93
	daa                                              ; $4bd9: $27
	ld c, a                                          ; $4bda: $4f
	ld [hl], h                                       ; $4bdb: $74
	ld c, b                                          ; $4bdc: $48
	ld a, d                                          ; $4bdd: $7a
	and [hl]                                         ; $4bde: $a6
	sbc h                                            ; $4bdf: $9c
	rst FarCall                                          ; $4be0: $f7
	jr nc, @+$62                                     ; $4be1: $30 $60

	sbc $c0                                          ; $4be3: $de $c0
	sbc c                                            ; $4be5: $99
	add b                                            ; $4be6: $80
	adc b                                            ; $4be7: $88
	adc h                                            ; $4be8: $8c
	db $e3                                           ; $4be9: $e3
	ldh [$c1], a                                     ; $4bea: $e0 $c1
	db $dd                                           ; $4bec: $dd
	ret nz                                           ; $4bed: $c0

	sbc [hl]                                         ; $4bee: $9e
	add b                                            ; $4bef: $80
	ld h, [hl]                                       ; $4bf0: $66
	jr nc, jr_058_4b76                               ; $4bf1: $30 $83

	db $fd                                           ; $4bf3: $fd
	sbc a                                            ; $4bf4: $9f
	cp [hl]                                          ; $4bf5: $be
	cp h                                             ; $4bf6: $bc
	db $fd                                           ; $4bf7: $fd
	db $ed                                           ; $4bf8: $ed
	db $eb                                           ; $4bf9: $eb
	db $ed                                           ; $4bfa: $ed
	jr jr_058_4b9c                                   ; $4bfb: $18 $9f

	cp a                                             ; $4bfd: $bf
	and a                                            ; $4bfe: $a7
	rst JumpTable                                          ; $4bff: $c7

Jump_058_4c00:
	rst JumpTable                                          ; $4c00: $c7
	rst GetHLinHL                                          ; $4c01: $cf
	db $ed                                           ; $4c02: $ed
	jp c, Jump_058_5a36                              ; $4c03: $da $36 $5a

	dec h                                            ; $4c06: $25
	ld h, l                                          ; $4c07: $65
	dec hl                                           ; $4c08: $2b
	ld e, a                                          ; $4c09: $5f
	ld a, a                                          ; $4c0a: $7f
	di                                               ; $4c0b: $f3
	db $d3                                           ; $4c0c: $d3
	or a                                             ; $4c0d: $b7
	cp a                                             ; $4c0e: $bf
	ld [hl], c                                       ; $4c0f: $71
	sub b                                            ; $4c10: $90
	sbc c                                            ; $4c11: $99
	push af                                          ; $4c12: $f5
	rst $38                                          ; $4c13: $ff
	push de                                          ; $4c14: $d5
	rst $38                                          ; $4c15: $ff
	push de                                          ; $4c16: $d5
	ld a, [$6060]                                    ; $4c17: $fa $60 $60
	sbc b                                            ; $4c1a: $98
	ld [$aa55], a                                    ; $4c1b: $ea $55 $aa
	ld d, l                                          ; $4c1e: $55
	xor d                                            ; $4c1f: $aa
	ld d, h                                          ; $4c20: $54
	add sp, $69                                      ; $4c21: $e8 $69
	sub b                                            ; $4c23: $90
	ld a, h                                          ; $4c24: $7c
	ret nz                                           ; $4c25: $c0

	db $dd                                           ; $4c26: $dd
	ld a, l                                          ; $4c27: $7d
	sbc l                                            ; $4c28: $9d
	cp $04                                           ; $4c29: $fe $04
	ld l, d                                          ; $4c2b: $6a
	ld [$0a7e], sp                                   ; $4c2c: $08 $7e $0a
	add d                                            ; $4c2f: $82
	cp $28                                           ; $4c30: $fe $28
	inc l                                            ; $4c32: $2c
	inc b                                            ; $4c33: $04
	ld [de], a                                       ; $4c34: $12
	ld [hl+], a                                      ; $4c35: $22
	and d                                            ; $4c36: $a2
	nop                                              ; $4c37: $00
	ld [bc], a                                       ; $4c38: $02
	ld sp, $0921                                     ; $4c39: $31 $21 $09
	dec c                                            ; $4c3c: $0d
	ld e, l                                          ; $4c3d: $5d
	ld e, l                                          ; $4c3e: $5d
	rst $38                                          ; $4c3f: $ff
	rst $38                                          ; $4c40: $ff
	rst SubAFromHL                                          ; $4c41: $d7
	sub $91                                          ; $4c42: $d6 $91
	sbc d                                            ; $4c44: $9a
	inc d                                            ; $4c45: $14
	dec hl                                           ; $4c46: $2b
	ld d, [hl]                                       ; $4c47: $56
	xor [hl]                                         ; $4c48: $ae
	ccf                                              ; $4c49: $3f
	ccf                                              ; $4c4a: $3f
	ld a, a                                          ; $4c4b: $7f
	ld a, [hl]                                       ; $4c4c: $7e
	halt                                             ; $4c4d: $76
	ld c, [hl]                                       ; $4c4e: $4e
	sbc b                                            ; $4c4f: $98
	ld c, $06                                        ; $4c50: $0e $06
	ld [bc], a                                       ; $4c52: $02
	ld b, b                                          ; $4c53: $40
	ld b, c                                          ; $4c54: $41
	call Call_058_7473                               ; $4c55: $cd $73 $74
	adc b                                            ; $4c58: $88
	sub c                                            ; $4c59: $91
	ccf                                              ; $4c5a: $3f
	ld c, $02                                        ; $4c5b: $0e $02
	add b                                            ; $4c5d: $80
	nop                                              ; $4c5e: $00
	inc de                                           ; $4c5f: $13
	ld l, a                                          ; $4c60: $6f
	sbc a                                            ; $4c61: $9f
	ld c, c                                          ; $4c62: $49
	ld l, a                                          ; $4c63: $6f
	ld [hl], a                                       ; $4c64: $77
	ld e, b                                          ; $4c65: $58
	ld e, a                                          ; $4c66: $5f
	ldh [rOCPS], a                                   ; $4c67: $e0 $6a
	rst GetHLinHL                                          ; $4c69: $cf
	ld a, a                                          ; $4c6a: $7f
	db $db                                           ; $4c6b: $db
	sbc c                                            ; $4c6c: $99
	dec l                                            ; $4c6d: $2d
	dec e                                            ; $4c6e: $1d
	ld sp, hl                                        ; $4c6f: $f9
	xor $16                                          ; $4c70: $ee $16
	cp a                                             ; $4c72: $bf
	ld sp, hl                                        ; $4c73: $f9
	sub a                                            ; $4c74: $97
	ei                                               ; $4c75: $fb
	ldh [c], a                                       ; $4c76: $e2
	pop bc                                           ; $4c77: $c1
	set 0, c                                         ; $4c78: $cb $c1
	and e                                            ; $4c7a: $a3
	xor e                                            ; $4c7b: $ab
	ld bc, $c37a                                     ; $4c7c: $01 $7a $c3
	rst SubAFromDE                                          ; $4c7f: $df
	inc [hl]                                         ; $4c80: $34
	sub h                                            ; $4c81: $94
	ld e, h                                          ; $4c82: $5c
	ld d, h                                          ; $4c83: $54
	ld a, h                                          ; $4c84: $7c
	call c, $fec2                                    ; $4c85: $dc $c2 $fe
	ldh [c], a                                       ; $4c88: $e2
	add $fd                                          ; $4c89: $c6 $fd
	db $e3                                           ; $4c8b: $e3
	call c, $9dfe                                    ; $4c8c: $dc $fe $9d
	inc e                                            ; $4c8f: $1c
	jr c, jr_058_4d09                                ; $4c90: $38 $77

	ldh [$98], a                                     ; $4c92: $e0 $98
	reti                                             ; $4c94: $d9


	ldh a, [c]                                       ; $4c95: $f2
	or c                                             ; $4c96: $b1
	db $ed                                           ; $4c97: $ed
	ld e, $fd                                        ; $4c98: $1e $fd
	ei                                               ; $4c9a: $fb
	ld sp, hl                                        ; $4c9b: $f9
	rst SubAFromDE                                          ; $4c9c: $df
	rst SubAFromBC                                          ; $4c9d: $e7
	ld a, [hl]                                       ; $4c9e: $7e
	rst JumpTable                                          ; $4c9f: $c7
	adc e                                            ; $4ca0: $8b
	add a                                            ; $4ca1: $87
	add e                                            ; $4ca2: $83
	add hl, sp                                       ; $4ca3: $39
	ld b, h                                          ; $4ca4: $44
	rrca                                             ; $4ca5: $0f
	rrca                                             ; $4ca6: $0f
	rra                                              ; $4ca7: $1f
	rst $38                                          ; $4ca8: $ff
	ld a, a                                          ; $4ca9: $7f
	ld b, a                                          ; $4caa: $47
	add e                                            ; $4cab: $83
	ld bc, $32b3                                     ; $4cac: $01 $b3 $32
	jr nc, jr_058_4cc3                               ; $4caf: $30 $12

	db $10                                           ; $4cb1: $10
	db $10                                           ; $4cb2: $10
	ld [de], a                                       ; $4cb3: $12
	inc bc                                           ; $4cb4: $03
	reti                                             ; $4cb5: $d9


	rst $38                                          ; $4cb6: $ff
	rst SubAFromDE                                          ; $4cb7: $df
	ld [hl], h                                       ; $4cb8: $74
	rst SubAFromDE                                          ; $4cb9: $df
	ld [hl], l                                       ; $4cba: $75
	sbc h                                            ; $4cbb: $9c
	inc hl                                           ; $4cbc: $23
	ld [hl+], a                                      ; $4cbd: $22
	ld h, d                                          ; $4cbe: $62
	ld [hl], c                                       ; $4cbf: $71
	db $10                                           ; $4cc0: $10
	db $dd                                           ; $4cc1: $dd
	rst $38                                          ; $4cc2: $ff

jr_058_4cc3:
	sub l                                            ; $4cc3: $95
	db $f4                                           ; $4cc4: $f4
	or h                                             ; $4cc5: $b4
	cp c                                             ; $4cc6: $b9
	add hl, de                                       ; $4cc7: $19
	add hl, bc                                       ; $4cc8: $09
	ld de, $2313                                     ; $4cc9: $11 $13 $23
	db $fc                                           ; $4ccc: $fc
	db $fc                                           ; $4ccd: $fc
	sbc $f9                                          ; $4cce: $de $f9
	sub d                                            ; $4cd0: $92
	pop af                                           ; $4cd1: $f1
	di                                               ; $4cd2: $f3

jr_058_4cd3:
	db $e3                                           ; $4cd3: $e3
	sub l                                            ; $4cd4: $95
	and l                                            ; $4cd5: $a5
	dec h                                            ; $4cd6: $25
	ld b, l                                          ; $4cd7: $45
	add d                                            ; $4cd8: $82
	add d                                            ; $4cd9: $82
	add e                                            ; $4cda: $83
	inc bc                                           ; $4cdb: $03
	sbc a                                            ; $4cdc: $9f
	cp a                                             ; $4cdd: $bf
	ld a, d                                          ; $4cde: $7a
	add $7d                                          ; $4cdf: $c6 $7d
	db $d3                                           ; $4ce1: $d3
	sbc [hl]                                         ; $4ce2: $9e
	db $fc                                           ; $4ce3: $fc
	db $dd                                           ; $4ce4: $dd
	rst $38                                          ; $4ce5: $ff
	rst SubAFromDE                                          ; $4ce6: $df
	cp $9d                                           ; $4ce7: $fe $9d
	ld a, [hl]                                       ; $4ce9: $7e
	cp [hl]                                          ; $4cea: $be
	db $dd                                           ; $4ceb: $dd
	inc b                                            ; $4cec: $04
	rst SubAFromDE                                          ; $4ced: $df
	add h                                            ; $4cee: $84
	sbc e                                            ; $4cef: $9b
	ret z                                            ; $4cf0: $c8

	ld hl, sp-$7f                                    ; $4cf1: $f8 $81
	add c                                            ; $4cf3: $81
	ld l, h                                          ; $4cf4: $6c
	jr z, jr_058_4cd3                                ; $4cf5: $28 $dc

	ld bc, $02df                                     ; $4cf7: $01 $df $02
	adc [hl]                                         ; $4cfa: $8e
	inc bc                                           ; $4cfb: $03
	set 1, c                                         ; $4cfc: $cb $c9
	pop de                                           ; $4cfe: $d1
	db $e3                                           ; $4cff: $e3
	db $e3                                           ; $4d00: $e3
	push hl                                          ; $4d01: $e5
	ld sp, hl                                        ; $4d02: $f9
	di                                               ; $4d03: $f3
	ld c, e                                          ; $4d04: $4b
	ld c, c                                          ; $4d05: $49
	ld d, c                                          ; $4d06: $51
	inc hl                                           ; $4d07: $23
	inc hl                                           ; $4d08: $23

jr_058_4d09:
	dec h                                            ; $4d09: $25
	add hl, de                                       ; $4d0a: $19
	inc de                                           ; $4d0b: $13
	ld [hl], a                                       ; $4d0c: $77
	pop de                                           ; $4d0d: $d1
	ld a, a                                          ; $4d0e: $7f
	ld [hl], d                                       ; $4d0f: $72
	sbc l                                            ; $4d10: $9d
	or $ee                                           ; $4d11: $f6 $ee
	db $db                                           ; $4d13: $db
	rst $38                                          ; $4d14: $ff
	rst SubAFromDE                                          ; $4d15: $df
	cp $97                                           ; $4d16: $fe $97
	xor d                                            ; $4d18: $aa
	push de                                          ; $4d19: $d5
	ld a, [hl+]                                      ; $4d1a: $2a
	push de                                          ; $4d1b: $d5
	xor e                                            ; $4d1c: $ab
	rst SubAFromHL                                          ; $4d1d: $d7
	ld a, a                                          ; $4d1e: $7f
	ld b, a                                          ; $4d1f: $47
	db $db                                           ; $4d20: $db
	rst $38                                          ; $4d21: $ff
	ld a, a                                          ; $4d22: $7f
	ld hl, sp-$21                                    ; $4d23: $f8 $df
	db $eb                                           ; $4d25: $eb
	rst SubAFromDE                                          ; $4d26: $df
	db $d3                                           ; $4d27: $d3
	adc e                                            ; $4d28: $8b
	db $e3                                           ; $4d29: $e3
	and e                                            ; $4d2a: $a3
	and l                                            ; $4d2b: $a5
	pop de                                           ; $4d2c: $d1
	pop hl                                           ; $4d2d: $e1
	pop hl                                           ; $4d2e: $e1
	set 1, e                                         ; $4d2f: $cb $cb
	db $db                                           ; $4d31: $db
	sbc c                                            ; $4d32: $99
	sbc c                                            ; $4d33: $99
	xor l                                            ; $4d34: $ad
	ld a, [$fef8]                                    ; $4d35: $fa $f8 $fe
	db $fc                                           ; $4d38: $fc
	ld hl, sp-$04                                    ; $4d39: $f8 $fc
	ld a, [$def2]                                    ; $4d3b: $fa $f2 $de
	db $fd                                           ; $4d3e: $fd
	sbc $fb                                          ; $4d3f: $de $fb
	sub l                                            ; $4d41: $95
	ld sp, hl                                        ; $4d42: $f9
	push af                                          ; $4d43: $f5
	add l                                            ; $4d44: $85
	ld a, [hl+]                                      ; $4d45: $2a
	sub l                                            ; $4d46: $95
	ld c, d                                          ; $4d47: $4a
	dec d                                            ; $4d48: $15
	ld c, e                                          ; $4d49: $4b
	rla                                              ; $4d4a: $17
	ld c, a                                          ; $4d4b: $4f
	sbc $7f                                          ; $4d4c: $de $7f
	call c, $7fbf                                    ; $4d4e: $dc $bf $7f
	db $e3                                           ; $4d51: $e3
	sbc c                                            ; $4d52: $99
	rst FarCall                                          ; $4d53: $f7
	ld [$cad5], a                                    ; $4d54: $ea $d5 $ca
	push de                                          ; $4d57: $d5
	xor e                                            ; $4d58: $ab
	ld a, b                                          ; $4d59: $78
	ld [hl], h                                       ; $4d5a: $74
	sub d                                            ; $4d5b: $92
	push bc                                          ; $4d5c: $c5
	jp z, $8ad5                                      ; $4d5d: $ca $d5 $8a

	sub h                                            ; $4d60: $94
	jr nc, jr_058_4d72                               ; $4d61: $30 $0f

	rst JumpTable                                          ; $4d63: $c7
	and c                                            ; $4d64: $a1
	ld [hl], b                                       ; $4d65: $70
	sbc e                                            ; $4d66: $9b
	sbc c                                            ; $4d67: $99
	db $ec                                           ; $4d68: $ec
	cp $9e                                           ; $4d69: $fe $9e
	ld b, b                                          ; $4d6b: $40
	ld a, d                                          ; $4d6c: $7a
	call $1196                                       ; $4d6d: $cd $96 $11
	ld a, l                                          ; $4d70: $7d
	db $db                                           ; $4d71: $db

jr_058_4d72:
	cp $fe                                           ; $4d72: $fe $fe
	ld h, a                                          ; $4d74: $67
	ld b, a                                          ; $4d75: $47
	ld c, a                                          ; $4d76: $4f
	ld a, l                                          ; $4d77: $7d
	ld sp, hl                                        ; $4d78: $f9
	add e                                            ; $4d79: $83
	and b                                            ; $4d7a: $a0
	ld l, a                                          ; $4d7b: $6f
	jp nc, Jump_058_46dd                             ; $4d7c: $d2 $dd $46

	add c                                            ; $4d7f: $81
	or b                                             ; $4d80: $b0
	ret z                                            ; $4d81: $c8

	nop                                              ; $4d82: $00
	nop                                              ; $4d83: $00
	dec c                                            ; $4d84: $0d
	ld [bc], a                                       ; $4d85: $02
	add hl, sp                                       ; $4d86: $39
	ld a, $0f                                        ; $4d87: $3e $0f
	inc de                                           ; $4d89: $13
	inc hl                                           ; $4d8a: $23
	adc e                                            ; $4d8b: $8b
	add e                                            ; $4d8c: $83
	xor c                                            ; $4d8d: $a9
	add e                                            ; $4d8e: $83
	adc e                                            ; $4d8f: $8b
	add c                                            ; $4d90: $81
	inc hl                                           ; $4d91: $23
	ld e, h                                          ; $4d92: $5c
	ld [hl], h                                       ; $4d93: $74
	ld a, h                                          ; $4d94: $7c
	ld d, h                                          ; $4d95: $54
	ld a, e                                          ; $4d96: $7b
	db $fc                                           ; $4d97: $fc
	adc l                                            ; $4d98: $8d
	call c, Call_058_44a3                            ; $4d99: $dc $a3 $44
	ld c, e                                          ; $4d9c: $4b
	rla                                              ; $4d9d: $17
	daa                                              ; $4d9e: $27
	add c                                            ; $4d9f: $81
	and b                                            ; $4da0: $a0
	or d                                             ; $4da1: $b2
	inc e                                            ; $4da2: $1c
	jr c, jr_058_4dd5                                ; $4da3: $38 $30

	ld h, b                                          ; $4da5: $60
	ld b, b                                          ; $4da6: $40
	ld [$050a], sp                                   ; $4da7: $08 $0a $05
	ld b, b                                          ; $4daa: $40
	ld [hl], l                                       ; $4dab: $75
	ld a, [hl-]                                      ; $4dac: $3a
	sbc h                                            ; $4dad: $9c
	ld a, h                                          ; $4dae: $7c
	nop                                              ; $4daf: $00
	ld b, b                                          ; $4db0: $40
	ei                                               ; $4db1: $fb
	sub b                                            ; $4db2: $90
	ld [bc], a                                       ; $4db3: $02
	sub [hl]                                         ; $4db4: $96
	xor d                                            ; $4db5: $aa
	ld b, l                                          ; $4db6: $45
	ld b, d                                          ; $4db7: $42
	and d                                            ; $4db8: $a2
	jp nc, $eaed                                     ; $4db9: $d2 $ed $ea

	db $f4                                           ; $4dbc: $f4
	db $10                                           ; $4dbd: $10
	jr c, jr_058_4dfc                                ; $4dbe: $38 $3c

	inc e                                            ; $4dc0: $1c
	inc c                                            ; $4dc1: $0c
	ld a, b                                          ; $4dc2: $78
	ld a, a                                          ; $4dc3: $7f
	sub a                                            ; $4dc4: $97
	ld d, $14                                        ; $4dc5: $16 $14
	sub h                                            ; $4dc7: $94
	call nc, $b6f8                                   ; $4dc8: $d4 $f8 $b6
	or [hl]                                          ; $4dcb: $b6
	or a                                             ; $4dcc: $b7
	reti                                             ; $4dcd: $d9


	rst $38                                          ; $4dce: $ff
	sub a                                            ; $4dcf: $97
	ld b, h                                          ; $4dd0: $44
	push bc                                          ; $4dd1: $c5
	add $46                                          ; $4dd2: $c6 $46
	ld d, l                                          ; $4dd4: $55

jr_058_4dd5:
	db $fd                                           ; $4dd5: $fd
	cp a                                             ; $4dd6: $bf
	xor a                                            ; $4dd7: $af
	reti                                             ; $4dd8: $d9


	rst $38                                          ; $4dd9: $ff
	add b                                            ; $4dda: $80
	inc hl                                           ; $4ddb: $23
	ld b, d                                          ; $4ddc: $42
	ld b, d                                          ; $4ddd: $42
	ld b, h                                          ; $4dde: $44
	add h                                            ; $4ddf: $84
	adc h                                            ; $4de0: $8c
	add hl, bc                                       ; $4de1: $09
	dec bc                                           ; $4de2: $0b
	db $e3                                           ; $4de3: $e3
	jp $c7c3                                         ; $4de4: $c3 $c3 $c7


	add a                                            ; $4de7: $87
	adc a                                            ; $4de8: $8f
	ld c, $0c                                        ; $4de9: $0e $0c
	ld de, $5f2d                                     ; $4deb: $11 $2d $5f
	xor a                                            ; $4dee: $af
	ld e, l                                          ; $4def: $5d
	ld [hl-], a                                      ; $4df0: $32
	ld a, [$ee3c]                                    ; $4df1: $fa $3c $ee
	jp nc, Jump_058_51a0                             ; $4df4: $d2 $a0 $51

	and e                                            ; $4df7: $a3
	rst GetHLinHL                                          ; $4df8: $cf
	rlca                                             ; $4df9: $07
	sbc e                                            ; $4dfa: $9b
	rst JumpTable                                          ; $4dfb: $c7

jr_058_4dfc:
	ld c, h                                          ; $4dfc: $4c
	ld c, h                                          ; $4dfd: $4c
	adc h                                            ; $4dfe: $8c
	call c, $de18                                    ; $4dff: $dc $18 $de
	ld hl, sp-$24                                    ; $4e02: $f8 $dc
	ldh a, [$9d]                                     ; $4e04: $f0 $9d
	ld [bc], a                                       ; $4e06: $02
	ld b, $dd                                        ; $4e07: $06 $dd
	inc b                                            ; $4e09: $04
	sbc e                                            ; $4e0a: $9b
	inc c                                            ; $4e0b: $0c
	ld [$0303], sp                                   ; $4e0c: $08 $03 $03
	call c, $9207                                    ; $4e0f: $dc $07 $92
	rrca                                             ; $4e12: $0f
	db $eb                                           ; $4e13: $eb
	ld b, [hl]                                       ; $4e14: $46
	rlca                                             ; $4e15: $07
	ld [bc], a                                       ; $4e16: $02
	inc bc                                           ; $4e17: $03
	ld b, $07                                        ; $4e18: $06 $07
	ld a, h                                          ; $4e1a: $7c

jr_058_4e1b:
	cp e                                             ; $4e1b: $bb
	rst AddAOntoHL                                          ; $4e1c: $ef
	rst FarCall                                          ; $4e1d: $f7
	rst FarCall                                          ; $4e1e: $f7
	sbc $ff                                          ; $4e1f: $de $ff
	sub b                                            ; $4e21: $90
	ld hl, sp+$5f                                    ; $4e22: $f8 $5f
	cp e                                             ; $4e24: $bb
	ld e, a                                          ; $4e25: $5f
	or a                                             ; $4e26: $b7
	ld a, a                                          ; $4e27: $7f
	rst $38                                          ; $4e28: $ff
	rst GetHLinHL                                          ; $4e29: $cf
	nop                                              ; $4e2a: $00
	ld a, [$f5fa]                                    ; $4e2b: $fa $fa $f5
	push af                                          ; $4e2e: $f5
	or $e8                                           ; $4e2f: $f6 $e8
	ld a, c                                          ; $4e31: $79
	xor b                                            ; $4e32: $a8
	ld a, [hl]                                       ; $4e33: $7e
	and l                                            ; $4e34: $a5
	ld a, h                                          ; $4e35: $7c
	xor $80                                          ; $4e36: $ee $80
	sbc b                                            ; $4e38: $98
	jr nc, jr_058_4e1b                               ; $4e39: $30 $e0

	add c                                            ; $4e3b: $81
	add b                                            ; $4e3c: $80
	add d                                            ; $4e3d: $82
	ld [bc], a                                       ; $4e3e: $02
	rlca                                             ; $4e3f: $07
	ld [$4030], sp                                   ; $4e40: $08 $30 $40
	add c                                            ; $4e43: $81
	ld [$eb80], a                                    ; $4e44: $ea $80 $eb
	ret nz                                           ; $4e47: $c0

	ld l, d                                          ; $4e48: $6a
	jr nz, jr_058_4e60                               ; $4e49: $20 $15

	cp l                                             ; $4e4b: $bd
	sub h                                            ; $4e4c: $94
	cp [hl]                                          ; $4e4d: $be
	sub h                                            ; $4e4e: $94
	cp a                                             ; $4e4f: $bf
	ld b, l                                          ; $4e50: $45
	ccf                                              ; $4e51: $3f
	ld a, [de]                                       ; $4e52: $1a
	ld hl, sp-$0f                                    ; $4e53: $f8 $f1
	ld hl, sp+$75                                    ; $4e55: $f8 $75
	add b                                            ; $4e57: $80
	or h                                             ; $4e58: $b4
	call nc, Call_058_5122                           ; $4e59: $d4 $22 $51
	rst FarCall                                          ; $4e5c: $f7
	or $f7                                           ; $4e5d: $f6 $f7
	ld l, d                                          ; $4e5f: $6a

jr_058_4e60:
	dec hl                                           ; $4e60: $2b
	dec bc                                           ; $4e61: $0b
	call $0fa6                                       ; $4e62: $cd $a6 $0f
	ld c, a                                          ; $4e65: $4f
	cpl                                              ; $4e66: $2f
	cpl                                              ; $4e67: $2f
	rla                                              ; $4e68: $17
	sub a                                            ; $4e69: $97
	ld c, e                                          ; $4e6a: $4b
	ld c, e                                          ; $4e6b: $4b
	cp a                                             ; $4e6c: $bf
	cp a                                             ; $4e6d: $bf
	rst SubAFromDE                                          ; $4e6e: $df
	rst SubAFromDE                                          ; $4e6f: $df
	rst AddAOntoHL                                          ; $4e70: $ef
	ld l, a                                          ; $4e71: $6f
	or a                                             ; $4e72: $b7
	or a                                             ; $4e73: $b7
	jp nz, $c195                                     ; $4e74: $c2 $95 $c1

	add b                                            ; $4e77: $80
	or l                                             ; $4e78: $b5
	ld b, d                                          ; $4e79: $42
	xor d                                            ; $4e7a: $aa
	ld b, b                                          ; $4e7b: $40
	or h                                             ; $4e7c: $b4
	cp h                                             ; $4e7d: $bc
	xor b                                            ; $4e7e: $a8
	cp h                                             ; $4e7f: $bc
	adc b                                            ; $4e80: $88
	inc a                                            ; $4e81: $3c
	db $10                                           ; $4e82: $10
	ld a, $0a                                        ; $4e83: $3e $0a
	ld d, h                                          ; $4e85: $54
	xor h                                            ; $4e86: $ac
	call nc, Call_058_522c                           ; $4e87: $d4 $2c $52
	jr nz, @+$7d                                     ; $4e8a: $20 $7b

	ccf                                              ; $4e8c: $3f
	add hl, hl                                       ; $4e8d: $29
	ld de, wPtrToDataCopyStruct+1                                     ; $4e8e: $11 $09 $c1
	pop hl                                           ; $4e91: $e1
	ei                                               ; $4e92: $fb
	rst $38                                          ; $4e93: $ff
	rst $38                                          ; $4e94: $ff
	ld a, [hl]                                       ; $4e95: $7e
	ld l, l                                          ; $4e96: $6d
	sub h                                            ; $4e97: $94
	inc h                                            ; $4e98: $24
	add b                                            ; $4e99: $80
	ret nz                                           ; $4e9a: $c0

	db $e4                                           ; $4e9b: $e4
	rst $38                                          ; $4e9c: $ff
	rst $38                                          ; $4e9d: $ff
	nop                                              ; $4e9e: $00
	nop                                              ; $4e9f: $00
	add b                                            ; $4ea0: $80
	ret                                              ; $4ea1: $c9


	db $ed                                           ; $4ea2: $ed
	sbc $ff                                          ; $4ea3: $de $ff
	add b                                            ; $4ea5: $80
	jp nz, $cecd                                     ; $4ea6: $c2 $cd $ce

	dec c                                            ; $4ea9: $0d
	inc c                                            ; $4eaa: $0c
	db $fd                                           ; $4eab: $fd
	db $fc                                           ; $4eac: $fc
	db $fd                                           ; $4ead: $fd
	dec e                                            ; $4eae: $1d
	ld e, $1f                                        ; $4eaf: $1e $1f
	ld e, $ff                                        ; $4eb1: $1e $ff
	cp $ff                                           ; $4eb3: $fe $ff
	cp $03                                           ; $4eb5: $fe $03
	ld [$08a0], sp                                   ; $4eb7: $08 $a0 $08
	adc b                                            ; $4eba: $88
	ld hl, $00a3                                     ; $4ebb: $21 $a3 $00
	db $f4                                           ; $4ebe: $f4
	rst FarCall                                          ; $4ebf: $f7
	ld e, a                                          ; $4ec0: $5f
	ld d, a                                          ; $4ec1: $57
	ld [hl], a                                       ; $4ec2: $77
	ld e, [hl]                                       ; $4ec3: $5e
	ld e, h                                          ; $4ec4: $5c
	sub [hl]                                         ; $4ec5: $96
	ld hl, sp+$38                                    ; $4ec6: $f8 $38
	inc a                                            ; $4ec8: $3c
	inc h                                            ; $4ec9: $24
	xor d                                            ; $4eca: $aa
	ret c                                            ; $4ecb: $d8

	db $dd                                           ; $4ecc: $dd
	xor $03                                          ; $4ecd: $ee $03
	sbc $83                                          ; $4ecf: $de $83
	ld [hl], b                                       ; $4ed1: $70
	cp [hl]                                          ; $4ed2: $be
	sub [hl]                                         ; $4ed3: $96
	ld bc, $3f23                                     ; $4ed4: $01 $23 $3f
	ld [hl], e                                       ; $4ed7: $73
	dec b                                            ; $4ed8: $05
	rst GetHLinHL                                          ; $4ed9: $cf
	ccf                                              ; $4eda: $3f
	rst $38                                          ; $4edb: $ff
	call nc, $ac78                                   ; $4edc: $d4 $78 $ac
	db $fd                                           ; $4edf: $fd
	ld a, a                                          ; $4ee0: $7f
	ld d, c                                          ; $4ee1: $51
	rst SubAFromDE                                          ; $4ee2: $df
	di                                               ; $4ee3: $f3
	rst SubAFromDE                                          ; $4ee4: $df
	rst SubAFromBC                                          ; $4ee5: $e7
	sbc l                                            ; $4ee6: $9d
	rst GetHLinHL                                          ; $4ee7: $cf
	sbc a                                            ; $4ee8: $9f
	ld [hl], a                                       ; $4ee9: $77
	ld hl, $7c79                                     ; $4eea: $21 $79 $7c
	sub [hl]                                         ; $4eed: $96
	ccf                                              ; $4eee: $3f
	sub e                                            ; $4eef: $93
	db $d3                                           ; $4ef0: $d3
	jp nz, wTaskParam4_word1                                     ; $4ef1: $c2 $c2 $d0

	ret nc                                           ; $4ef4: $d0

	ld hl, sp-$18                                    ; $4ef5: $f8 $e8
	reti                                             ; $4ef7: $d9


	rst $38                                          ; $4ef8: $ff
	add b                                            ; $4ef9: $80
	ld l, $2a                                        ; $4efa: $2e $2a
	inc b                                            ; $4efc: $04
	ld b, h                                          ; $4efd: $44
	ld c, b                                          ; $4efe: $48
	ld c, b                                          ; $4eff: $48
	db $10                                           ; $4f00: $10
	db $10                                           ; $4f01: $10
	cp $fe                                           ; $4f02: $fe $fe
	db $fc                                           ; $4f04: $fc
	db $fc                                           ; $4f05: $fc
	ld hl, sp-$08                                    ; $4f06: $f8 $f8
	pop af                                           ; $4f08: $f1
	pop af                                           ; $4f09: $f1
	inc de                                           ; $4f0a: $13

jr_058_4f0b:
	rla                                              ; $4f0b: $17
	rla                                              ; $4f0c: $17
	dec de                                           ; $4f0d: $1b
	ld d, $19                                        ; $4f0e: $16 $19
	ld e, $1f                                        ; $4f10: $1e $1f
	inc e                                            ; $4f12: $1c
	jr jr_058_4f2d                                   ; $4f13: $18 $18

	inc e                                            ; $4f15: $1c
	rra                                              ; $4f16: $1f
	rra                                              ; $4f17: $1f
	rla                                              ; $4f18: $17
	adc l                                            ; $4f19: $8d
	inc de                                           ; $4f1a: $13
	add $f9                                          ; $4f1b: $c6 $f9

jr_058_4f1d:
	db $ec                                           ; $4f1d: $ec
	rst FarCall                                          ; $4f1e: $f7
	rst SubAFromDE                                          ; $4f1f: $df
	sbc [hl]                                         ; $4f20: $9e
	ld [hl], b                                       ; $4f21: $70
	adc [hl]                                         ; $4f22: $8e
	dec a                                            ; $4f23: $3d
	ld c, $1b                                        ; $4f24: $0e $1b
	jr jr_058_4f58                                   ; $4f26: $18 $30

	pop af                                           ; $4f28: $f1
	rst $38                                          ; $4f29: $ff
	rst $38                                          ; $4f2a: $ff
	jr jr_058_4f0b                                   ; $4f2b: $18 $de

jr_058_4f2d:
	inc a                                            ; $4f2d: $3c
	sbc d                                            ; $4f2e: $9a
	ld e, $0e                                        ; $4f2f: $1e $0e
	rra                                              ; $4f31: $1f
	rra                                              ; $4f32: $1f
	ldh a, [$dd]                                     ; $4f33: $f0 $dd
	ldh [$de], a                                     ; $4f35: $e0 $de
	ldh a, [$7f]                                     ; $4f37: $f0 $7f
	rst SubAFromHL                                          ; $4f39: $d7
	rst SubAFromDE                                          ; $4f3a: $df

jr_058_4f3b:
	jr nc, jr_058_4f3b                               ; $4f3b: $30 $fe

	sbc h                                            ; $4f3d: $9c
	rst $38                                          ; $4f3e: $ff
	rrca                                             ; $4f3f: $0f
	ld [$9efb], sp                                   ; $4f40: $08 $fb $9e
	ldh [$fe], a                                     ; $4f43: $e0 $fe
	sbc e                                            ; $4f45: $9b
	rlca                                             ; $4f46: $07
	rra                                              ; $4f47: $1f
	cp $fc                                           ; $4f48: $fe $fc
	ld [hl], e                                       ; $4f4a: $73
	add e                                            ; $4f4b: $83
	sbc b                                            ; $4f4c: $98
	ld bc, $1806                                     ; $4f4d: $01 $06 $18
	inc bc                                           ; $4f50: $03
	ld c, $38                                        ; $4f51: $0e $38
	ldh a, [$78]                                     ; $4f53: $f0 $78
	ld [hl+], a                                      ; $4f55: $22
	ld a, l                                          ; $4f56: $7d
	ld h, b                                          ; $4f57: $60

jr_058_4f58:
	ld a, a                                          ; $4f58: $7f
	push af                                          ; $4f59: $f5
	sbc l                                            ; $4f5a: $9d
	jr nz, jr_058_4f1d                               ; $4f5b: $20 $c0

	cp $7f                                           ; $4f5d: $fe $7f
	add sp, -$63                                     ; $4f5f: $e8 $9d
	jr @+$7e                                         ; $4f61: $18 $7c

	ld [hl], h                                       ; $4f63: $74
	adc b                                            ; $4f64: $88
	ld l, b                                          ; $4f65: $68
	and c                                            ; $4f66: $a1
	add b                                            ; $4f67: $80
	nop                                              ; $4f68: $00
	db $10                                           ; $4f69: $10
	dec e                                            ; $4f6a: $1d
	ld [$080a], sp                                   ; $4f6b: $08 $0a $08
	dec bc                                           ; $4f6e: $0b
	inc b                                            ; $4f6f: $04
	inc b                                            ; $4f70: $04
	rra                                              ; $4f71: $1f
	ld [de], a                                       ; $4f72: $12
	rrca                                             ; $4f73: $0f
	dec c                                            ; $4f74: $0d
	rrca                                             ; $4f75: $0f
	inc c                                            ; $4f76: $0c
	rlca                                             ; $4f77: $07
	rlca                                             ; $4f78: $07
	ld [$0052], sp                                   ; $4f79: $08 $52 $00
	jp z, Jump_058_4c00                              ; $4f7c: $ca $00 $4c

	nop                                              ; $4f7f: $00
	call nc, $acf1                                   ; $4f80: $d4 $f1 $ac
	rst $38                                          ; $4f83: $ff
	ld sp, $b3ff                                     ; $4f84: $31 $ff $b3
	ld a, [hl]                                       ; $4f87: $7e
	ld sp, $2780                                     ; $4f88: $31 $80 $27
	add hl, bc                                       ; $4f8b: $09
	add b                                            ; $4f8c: $80
	ld hl, $d200                                     ; $4f8d: $21 $00 $d2
	nop                                              ; $4f90: $00
	sub e                                            ; $4f91: $93
	ret c                                            ; $4f92: $d8

	halt                                             ; $4f93: $76
	rra                                              ; $4f94: $1f
	ret nz                                           ; $4f95: $c0

	rst $38                                          ; $4f96: $ff
	dec l                                            ; $4f97: $2d
	rst $38                                          ; $4f98: $ff
	ld l, h                                          ; $4f99: $6c
	ret nz                                           ; $4f9a: $c0

	sub $70                                          ; $4f9b: $d6 $70
	xor d                                            ; $4f9d: $aa
	nop                                              ; $4f9e: $00
	ld d, l                                          ; $4f9f: $55
	nop                                              ; $4fa0: $00
	ld h, l                                          ; $4fa1: $65
	ld a, $29                                        ; $4fa2: $3e $29
	adc a                                            ; $4fa4: $8f
	ld d, l                                          ; $4fa5: $55
	rst $38                                          ; $4fa6: $ff
	xor d                                            ; $4fa7: $aa
	rst $38                                          ; $4fa8: $ff
	adc [hl]                                         ; $4fa9: $8e
	ld a, [de]                                       ; $4faa: $1a
	ld a, a                                          ; $4fab: $7f
	ccf                                              ; $4fac: $3f
	ccf                                              ; $4fad: $3f
	sbc a                                            ; $4fae: $9f
	rra                                              ; $4faf: $1f
	adc a                                            ; $4fb0: $8f
	rrca                                             ; $4fb1: $0f
	add a                                            ; $4fb2: $87
	rst $38                                          ; $4fb3: $ff
	ld a, a                                          ; $4fb4: $7f
	ld a, a                                          ; $4fb5: $7f
	ccf                                              ; $4fb6: $3f
	cp a                                             ; $4fb7: $bf
	ld e, a                                          ; $4fb8: $5f
	rst SubAFromDE                                          ; $4fb9: $df
	ld l, a                                          ; $4fba: $6f
	ld l, l                                          ; $4fbb: $6d
	add hl, de                                       ; $4fbc: $19
	rst SubAFromDE                                          ; $4fbd: $df
	sub $67                                          ; $4fbe: $d6 $67
	ld hl, sp+$7e                                    ; $4fc0: $f8 $7e
	add $7f                                          ; $4fc2: $c6 $7f
	cp $9b                                           ; $4fc4: $fe $9b
	ld a, [$7a78]                                    ; $4fc6: $fa $78 $7a
	ld d, h                                          ; $4fc9: $54
	db $dd                                           ; $4fca: $dd
	cp $de                                           ; $4fcb: $fe $de
	db $fd                                           ; $4fcd: $fd
	adc l                                            ; $4fce: $8d
	ld e, e                                          ; $4fcf: $5b
	rlca                                             ; $4fd0: $07
	ld c, a                                          ; $4fd1: $4f
	ld bc, $0f07                                     ; $4fd2: $01 $07 $0f
	ld b, c                                          ; $4fd5: $41
	rlca                                             ; $4fd6: $07
	ld b, c                                          ; $4fd7: $41
	ldh a, [$a0]                                     ; $4fd8: $f0 $a0
	ldh a, [$f0]                                     ; $4fda: $f0 $f0
	and b                                            ; $4fdc: $a0
	and b                                            ; $4fdd: $a0
	ldh a, [$b8]                                     ; $4fde: $f0 $b8
	ld sp, hl                                        ; $4fe0: $f9
	jp c, $f9ff                                      ; $4fe1: $da $ff $f9

	sbc [hl]                                         ; $4fe4: $9e
	ld a, [hl+]                                      ; $4fe5: $2a
	ld c, e                                          ; $4fe6: $4b
	ldh a, [$7f]                                     ; $4fe7: $f0 $7f
	and d                                            ; $4fe9: $a2
	sub h                                            ; $4fea: $94
	rst GetHLinHL                                          ; $4feb: $cf
	rst SubAFromDE                                          ; $4fec: $df
	rst SubAFromBC                                          ; $4fed: $e7
	rst AddAOntoHL                                          ; $4fee: $ef
	di                                               ; $4fef: $f3
	ei                                               ; $4ff0: $fb
	ld a, a                                          ; $4ff1: $7f
	ccf                                              ; $4ff2: $3f
	rra                                              ; $4ff3: $1f
	rrca                                             ; $4ff4: $0f
	rrca                                             ; $4ff5: $0f
	sbc $07                                          ; $4ff6: $de $07
	sub a                                            ; $4ff8: $97
	add sp, -$14                                     ; $4ff9: $e8 $ec
	xor h                                            ; $4ffb: $ac
	add h                                            ; $4ffc: $84
	add h                                            ; $4ffd: $84
	ret nz                                           ; $4ffe: $c0

	ret nc                                           ; $4fff: $d0

	call nz, $ffd9                                   ; $5000: $c4 $d9 $ff
	rst SubAFromDE                                          ; $5003: $df
	jr nz, jr_058_5083                               ; $5004: $20 $7d

	add hl, bc                                       ; $5006: $09
	sub e                                            ; $5007: $93
	sub b                                            ; $5008: $90
	adc b                                            ; $5009: $88
	ld b, h                                          ; $500a: $44
	inc hl                                           ; $500b: $23
	pop hl                                           ; $500c: $e1
	db $e3                                           ; $500d: $e3
	jp $b783                                         ; $500e: $c3 $83 $b7


	cp a                                             ; $5011: $bf
	rst SubAFromDE                                          ; $5012: $df
	rst SubAFromBC                                          ; $5013: $e7
	call c, $df3f                                    ; $5014: $dc $3f $df
	ld a, a                                          ; $5017: $7f
	sbc [hl]                                         ; $5018: $9e
	add b                                            ; $5019: $80
	call c, $9b20                                    ; $501a: $dc $20 $9b
	ld b, b                                          ; $501d: $40
	ld a, a                                          ; $501e: $7f
	rst $38                                          ; $501f: $ff
	pop af                                           ; $5020: $f1
	ld a, e                                          ; $5021: $7b
	inc d                                            ; $5022: $14
	rst SubAFromDE                                          ; $5023: $df
	rst $38                                          ; $5024: $ff
	adc l                                            ; $5025: $8d
	call nz, Call_058_7f78                           ; $5026: $c4 $78 $7f
	rrca                                             ; $5029: $0f
	ld bc, $0300                                     ; $502a: $01 $00 $03
	ccf                                              ; $502d: $3f
	cp $fd                                           ; $502e: $fe $fd
	rst FarCall                                          ; $5030: $f7
	rla                                              ; $5031: $17
	rst $38                                          ; $5032: $ff
	db $fc                                           ; $5033: $fc
	sbc $3c                                          ; $5034: $de $3c
	ld d, b                                          ; $5036: $50
	sub b                                            ; $5037: $90
	sbc $f8                                          ; $5038: $de $f8
	ld a, a                                          ; $503a: $7f
	db $e3                                           ; $503b: $e3
	ld a, a                                          ; $503c: $7f
	cp $9e                                           ; $503d: $fe $9e
	cp a                                             ; $503f: $bf
	ld [hl], h                                       ; $5040: $74
	ld a, e                                          ; $5041: $7b
	sbc b                                            ; $5042: $98
	ccf                                              ; $5043: $3f
	ld a, $3c                                        ; $5044: $3e $3c
	inc a                                            ; $5046: $3c
	nop                                              ; $5047: $00
	ld bc, $7a1e                                     ; $5048: $01 $1e $7a
	xor l                                            ; $504b: $ad
	sbc l                                            ; $504c: $9d
	and b                                            ; $504d: $a0
	jr nz, @+$7c                                     ; $504e: $20 $7a

	db $d3                                           ; $5050: $d3
	ld [hl], d                                       ; $5051: $72
	push hl                                          ; $5052: $e5
	sbc [hl]                                         ; $5053: $9e
	jr nc, jr_058_50cc                               ; $5054: $30 $76

	db $d3                                           ; $5056: $d3
	cp $7e                                           ; $5057: $fe $7e
	ld c, b                                          ; $5059: $48
	ld a, [hl]                                       ; $505a: $7e
	ld c, e                                          ; $505b: $4b
	rst SubAFromDE                                          ; $505c: $df
	rra                                              ; $505d: $1f
	rst SubAFromDE                                          ; $505e: $df
	ccf                                              ; $505f: $3f

Jump_058_5060:
	halt                                             ; $5060: $76
	or d                                             ; $5061: $b2
	db $dd                                           ; $5062: $dd
	ld bc, $ffd9                                     ; $5063: $01 $d9 $ff
	sbc $80                                          ; $5066: $de $80
	db $fc                                           ; $5068: $fc
	rst SubAFromDE                                          ; $5069: $df
	inc b                                            ; $506a: $04
	db $dd                                           ; $506b: $dd
	ld [bc], a                                       ; $506c: $02
	rst SubAFromDE                                          ; $506d: $df
	ld bc, $07df                                     ; $506e: $01 $df $07
	db $dd                                           ; $5071: $dd
	inc bc                                           ; $5072: $03
	rst SubAFromDE                                          ; $5073: $df
	ld bc, $0087                                     ; $5074: $01 $87 $00
	db $e4                                           ; $5077: $e4
	nop                                              ; $5078: $00
	nop                                              ; $5079: $00
	ld [rRAMG], a                                    ; $507a: $ea $00 $00
	add hl, sp                                       ; $507d: $39
	rst $38                                          ; $507e: $ff
	dec de                                           ; $507f: $1b
	rst $38                                          ; $5080: $ff
	rst $38                                          ; $5081: $ff
	inc b                                            ; $5082: $04

jr_058_5083:
	rst $38                                          ; $5083: $ff
	rst $38                                          ; $5084: $ff
	add $00                                          ; $5085: $c6 $00
	and h                                            ; $5087: $a4
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	sub d                                            ; $508a: $92
	nop                                              ; $508b: $00
	nop                                              ; $508c: $00
	ld h, $77                                        ; $508d: $26 $77
	ldh a, [$80]                                     ; $508f: $f0 $80
	ld l, h                                          ; $5091: $6c
	rst $38                                          ; $5092: $ff
	rst $38                                          ; $5093: $ff
	reti                                             ; $5094: $d9


	nop                                              ; $5095: $00
	and l                                            ; $5096: $a5
	nop                                              ; $5097: $00
	nop                                              ; $5098: $00
	sbc e                                            ; $5099: $9b
	nop                                              ; $509a: $00
	nop                                              ; $509b: $00
	ld l, d                                          ; $509c: $6a
	rst $38                                          ; $509d: $ff
	ld a, [de]                                       ; $509e: $1a
	rst $38                                          ; $509f: $ff
	rst $38                                          ; $50a0: $ff
	ld h, h                                          ; $50a1: $64
	rst $38                                          ; $50a2: $ff
	rst $38                                          ; $50a3: $ff
	sub c                                            ; $50a4: $91
	rlca                                             ; $50a5: $07
	and l                                            ; $50a6: $a5
	ld bc, $5101                                     ; $50a7: $01 $01 $51
	ld bc, $a103                                     ; $50aa: $01 $03 $a1
	rst AddAOntoHL                                          ; $50ad: $ef
	ld c, l                                          ; $50ae: $4d
	push af                                          ; $50af: $f5
	sbc c                                            ; $50b0: $99
	db $f4                                           ; $50b1: $f4
	inc b                                            ; $50b2: $04
	db $f4                                           ; $50b3: $f4
	db $f4                                           ; $50b4: $f4
	ld [$dcf5], sp                                   ; $50b5: $08 $f5 $dc

jr_058_50b8:
	pop af                                           ; $50b8: $f1
	sbc h                                            ; $50b9: $9c
	jr nz, jr_058_50bc                               ; $50ba: $20 $00

jr_058_50bc:
	add h                                            ; $50bc: $84
	ld l, e                                          ; $50bd: $6b
	sbc a                                            ; $50be: $9f
	sbc [hl]                                         ; $50bf: $9e
	sub b                                            ; $50c0: $90
	sbc $80                                          ; $50c1: $de $80
	sbc d                                            ; $50c3: $9a
	add c                                            ; $50c4: $81
	adc b                                            ; $50c5: $88
	adc c                                            ; $50c6: $89
	jr jr_058_50dc                                   ; $50c7: $18 $13

	sbc $03                                          ; $50c9: $de $03
	ld a, h                                          ; $50cb: $7c

jr_058_50cc:
	jp hl                                            ; $50cc: $e9


	sbc b                                            ; $50cd: $98
	ld b, $03                                        ; $50ce: $06 $03
	ld b, b                                          ; $50d0: $40
	add b                                            ; $50d1: $80
	add c                                            ; $50d2: $81
	inc bc                                           ; $50d3: $03
	scf                                              ; $50d4: $37
	sbc $3f                                          ; $50d5: $de $3f
	sbc e                                            ; $50d7: $9b
	cp h                                             ; $50d8: $bc
	ld a, h                                          ; $50d9: $7c
	ld a, h                                          ; $50da: $7c
	ret z                                            ; $50db: $c8

jr_058_50dc:
	db $dd                                           ; $50dc: $dd
	add b                                            ; $50dd: $80
	sbc h                                            ; $50de: $9c
	rrca                                             ; $50df: $0f
	ld [hl], e                                       ; $50e0: $73
	db $fd                                           ; $50e1: $fd
	ld [hl], e                                       ; $50e2: $73
	ld e, $f9                                        ; $50e3: $1e $f9
	db $dd                                           ; $50e5: $dd
	rst $38                                          ; $50e6: $ff
	ld a, a                                          ; $50e7: $7f
	add hl, hl                                       ; $50e8: $29
	ld e, a                                          ; $50e9: $5f
	ldh a, [$9b]                                     ; $50ea: $f0 $9b
	rst FarCall                                          ; $50ec: $f7
	ld sp, hl                                        ; $50ed: $f9
	ld sp, hl                                        ; $50ee: $f9
	db $fd                                           ; $50ef: $fd
	ld [hl], a                                       ; $50f0: $77
	db $fd                                           ; $50f1: $fd
	reti                                             ; $50f2: $d9


	inc bc                                           ; $50f3: $03
	sub a                                            ; $50f4: $97
	call nc, $f4f4                                   ; $50f5: $d4 $f4 $f4
	db $fc                                           ; $50f8: $fc
	cp l                                             ; $50f9: $bd
	cp l                                             ; $50fa: $bd
	sbc a                                            ; $50fb: $9f

jr_058_50fc:
	dec e                                            ; $50fc: $1d
	reti                                             ; $50fd: $d9


	rst $38                                          ; $50fe: $ff

Call_058_50ff:
	sub a                                            ; $50ff: $97
	sbc c                                            ; $5100: $99
	rst JumpTable                                          ; $5101: $c7
	pop de                                           ; $5102: $d1
	pop af                                           ; $5103: $f1
	ld hl, sp-$58                                    ; $5104: $f8 $a8
	xor b                                            ; $5106: $a8
	ret z                                            ; $5107: $c8

	ld h, [hl]                                       ; $5108: $66
	ld a, b                                          ; $5109: $78
	sbc l                                            ; $510a: $9d
	add e                                            ; $510b: $83
	db $fc                                           ; $510c: $fc
	db $db                                           ; $510d: $db
	add b                                            ; $510e: $80
	reti                                             ; $510f: $d9


	rst $38                                          ; $5110: $ff
	sbc e                                            ; $5111: $9b
	sub a                                            ; $5112: $97
	ld l, $4c                                        ; $5113: $2e $4c
	ld de, $2775                                     ; $5115: $11 $75 $27

jr_058_5118:
	ld a, l                                          ; $5118: $7d
	jr c, jr_058_50b8                                ; $5119: $38 $9d

	rst FarCall                                          ; $511b: $f7
	xor $77                                          ; $511c: $ee $77
	sub a                                            ; $511e: $97
	adc h                                            ; $511f: $8c
	ld d, c                                          ; $5120: $51
	push hl                                          ; $5121: $e5

Call_058_5122:
	and l                                            ; $5122: $a5
	xor c                                            ; $5123: $a9
	adc e                                            ; $5124: $8b
	sbc e                                            ; $5125: $9b
	dec de                                           ; $5126: $1b
	dec de                                           ; $5127: $1b
	cp [hl]                                          ; $5128: $be
	ld a, [hl-]                                      ; $5129: $3a
	ld a, d                                          ; $512a: $7a
	halt                                             ; $512b: $76
	ld [hl], h                                       ; $512c: $74
	ld h, h                                          ; $512d: $64
	db $e4                                           ; $512e: $e4
	db $e4                                           ; $512f: $e4
	ld a, h                                          ; $5130: $7c
	ld a, b                                          ; $5131: $78
	ld a, b                                          ; $5132: $78
	sbc $70                                          ; $5133: $de $70
	sbc l                                            ; $5135: $9d
	ldh a, [$f1]                                     ; $5136: $f0 $f1
	db $db                                           ; $5138: $db
	ld b, b                                          ; $5139: $40
	ld [hl], e                                       ; $513a: $73
	ld c, h                                          ; $513b: $4c
	ld a, [hl]                                       ; $513c: $7e
	db $f4                                           ; $513d: $f4
	ld a, [hl]                                       ; $513e: $7e
	ret nc                                           ; $513f: $d0

	ld h, e                                          ; $5140: $63
	add b                                            ; $5141: $80
	rst SubAFromDE                                          ; $5142: $df
	ld a, a                                          ; $5143: $7f
	ld a, l                                          ; $5144: $7d
	ld [hl], h                                       ; $5145: $74
	sub e                                            ; $5146: $93
	ld hl, sp-$10                                    ; $5147: $f8 $f0
	ldh [$c0], a                                     ; $5149: $e0 $c0
	ld [bc], a                                       ; $514b: $02
	ld [bc], a                                       ; $514c: $02
	inc b                                            ; $514d: $04
	ld [$2010], sp                                   ; $514e: $08 $10 $20
	ld b, b                                          ; $5151: $40
	ld b, b                                          ; $5152: $40
	ld [hl], e                                       ; $5153: $73
	ld h, b                                          ; $5154: $60
	ld a, d                                          ; $5155: $7a
	inc sp                                           ; $5156: $33
	sbc $80                                          ; $5157: $de $80
	rst SubAFromDE                                          ; $5159: $df
	ld b, b                                          ; $515a: $40
	rst SubAFromDE                                          ; $515b: $df
	jr nz, jr_058_50fc                               ; $515c: $20 $9e

	db $10                                           ; $515e: $10
	sbc $81                                          ; $515f: $de $81
	rst SubAFromDE                                          ; $5161: $df
	pop bc                                           ; $5162: $c1
	sbc $e0                                          ; $5163: $de $e0
	sbc $01                                          ; $5165: $de $01
	ld sp, hl                                        ; $5167: $f9
	sbc d                                            ; $5168: $9a
	ldh [$98], a                                     ; $5169: $e0 $98
	add h                                            ; $516b: $84
	add d                                            ; $516c: $82
	add c                                            ; $516d: $81
	db $dd                                           ; $516e: $dd
	rst $38                                          ; $516f: $ff
	sbc e                                            ; $5170: $9b
	sbc a                                            ; $5171: $9f
	add a                                            ; $5172: $87
	add e                                            ; $5173: $83
	add c                                            ; $5174: $81
	halt                                             ; $5175: $76
	jp nz, $b49c                                     ; $5176: $c2 $9c $b4

	nop                                              ; $5179: $00
	dec hl                                           ; $517a: $2b
	ld a, e                                          ; $517b: $7b
	jr z, jr_058_5118                                ; $517c: $28 $9a

	ld l, l                                          ; $517e: $6d
	rst $38                                          ; $517f: $ff
	ld c, e                                          ; $5180: $4b
	rst $38                                          ; $5181: $ff
	call nz, $a87b                                   ; $5182: $c4 $7b $a8
	sbc d                                            ; $5185: $9a
	ld e, l                                          ; $5186: $5d
	nop                                              ; $5187: $00
	call nc, Call_058_5800                           ; $5188: $d4 $00 $58
	ld a, d                                          ; $518b: $7a
	ld a, b                                          ; $518c: $78
	sbc c                                            ; $518d: $99
	and d                                            ; $518e: $a2
	rst $38                                          ; $518f: $ff
	dec hl                                           ; $5190: $2b
	cp $a5                                           ; $5191: $fe $a5
	ld a, [$c977]                                    ; $5193: $fa $77 $c9
	add b                                            ; $5196: $80
	ld a, [bc]                                       ; $5197: $0a
	ld d, c                                          ; $5198: $51
	add b                                            ; $5199: $80
	nop                                              ; $519a: $00
	add sp, -$30                                     ; $519b: $e8 $d0
	pop de                                           ; $519d: $d1
	xor d                                            ; $519e: $aa
	ld d, h                                          ; $519f: $54

Jump_058_51a0:
	and d                                            ; $51a0: $a2
	rla                                              ; $51a1: $17
	cp h                                             ; $51a2: $bc
	ld b, $ce                                        ; $51a3: $06 $ce
	ret nc                                           ; $51a5: $d0

	ld [bc], a                                       ; $51a6: $02
	ld de, $0800                                     ; $51a7: $11 $00 $08
	stop                                             ; $51aa: $10 $00
	ld de, $c42e                                     ; $51ac: $11 $2e $c4
	ld l, [hl]                                       ; $51af: $6e
	rst $38                                          ; $51b0: $ff
	and l                                            ; $51b1: $a5
	rst AddAOntoHL                                          ; $51b2: $ef
	rrca                                             ; $51b3: $0f
	add l                                            ; $51b4: $85
	inc b                                            ; $51b5: $04
	sub d                                            ; $51b6: $92
	nop                                              ; $51b7: $00
	ld b, b                                          ; $51b8: $40
	jr z, jr_058_51bf                                ; $51b9: $28 $04

	ld [bc], a                                       ; $51bb: $02
	nop                                              ; $51bc: $00
	nop                                              ; $51bd: $00
	and c                                            ; $51be: $a1

jr_058_51bf:
	ld d, l                                          ; $51bf: $55
	adc e                                            ; $51c0: $8b
	pop de                                           ; $51c1: $d1
	ld a, [$dd3c]                                    ; $51c2: $fa $3c $dd
	ccf                                              ; $51c5: $3f
	sbc e                                            ; $51c6: $9b
	ld e, $00                                        ; $51c7: $1e $00
	nop                                              ; $51c9: $00
	ld [de], a                                       ; $51ca: $12
	db $dd                                           ; $51cb: $dd
	add b                                            ; $51cc: $80
	sbc l                                            ; $51cd: $9d
	ret nz                                           ; $51ce: $c0

	pop hl                                           ; $51cf: $e1
	ld a, e                                          ; $51d0: $7b
	xor e                                            ; $51d1: $ab
	rst SubAFromDE                                          ; $51d2: $df
	rst $38                                          ; $51d3: $ff
	sbc d                                            ; $51d4: $9a
	add a                                            ; $51d5: $87
	ld bc, $0020                                     ; $51d6: $01 $20 $00
	jr nz, @-$01                                     ; $51d9: $20 $fd

	sbc h                                            ; $51db: $9c
	ld a, b                                          ; $51dc: $78
	sbc $f9                                          ; $51dd: $de $f9
	ld l, l                                          ; $51df: $6d
	ld c, b                                          ; $51e0: $48
	sbc [hl]                                         ; $51e1: $9e
	ld a, a                                          ; $51e2: $7f
	ld sp, hl                                        ; $51e3: $f9
	ld a, [hl]                                       ; $51e4: $7e
	ld sp, hl                                        ; $51e5: $f9
	sub l                                            ; $51e6: $95
	ld sp, hl                                        ; $51e7: $f9
	pop af                                           ; $51e8: $f1
	pop af                                           ; $51e9: $f1
	db $ec                                           ; $51ea: $ec
	call c, $393c                                    ; $51eb: $dc $3c $39
	inc bc                                           ; $51ee: $03
	inc bc                                           ; $51ef: $03
	rlca                                             ; $51f0: $07
	ld a, d                                          ; $51f1: $7a
	inc hl                                           ; $51f2: $23
	sub [hl]                                         ; $51f3: $96
	ld bc, $c783                                     ; $51f4: $01 $83 $c7
	dec c                                            ; $51f7: $0d
	jr jr_058_5212                                   ; $51f8: $18 $18

	or d                                             ; $51fa: $b2
	di                                               ; $51fb: $f3
	db $eb                                           ; $51fc: $eb
	rst SubAFromHL                                          ; $51fd: $d7
	rst $38                                          ; $51fe: $ff
	sbc b                                            ; $51ff: $98
	ret nz                                           ; $5200: $c0

	jp nz, $b7a6                                     ; $5201: $c2 $a6 $b7

	sbc a                                            ; $5204: $9f
	rst SubAFromDE                                          ; $5205: $df
	rst SubAFromDE                                          ; $5206: $df
	ret c                                            ; $5207: $d8

	rst $38                                          ; $5208: $ff

jr_058_5209:
	ld [hl], e                                       ; $5209: $73
	xor b                                            ; $520a: $a8
	sbc h                                            ; $520b: $9c
	ret nz                                           ; $520c: $c0

	ldh [$f0], a                                     ; $520d: $e0 $f0
	reti                                             ; $520f: $d9


	rst $38                                          ; $5210: $ff
	ld d, [hl]                                       ; $5211: $56

jr_058_5212:
	ld l, b                                          ; $5212: $68
	db $dd                                           ; $5213: $dd
	rst $38                                          ; $5214: $ff
	rst SubAFromDE                                          ; $5215: $df
	rra                                              ; $5216: $1f
	sbc h                                            ; $5217: $9c
	dec sp                                           ; $5218: $3b
	dec hl                                           ; $5219: $2b
	inc de                                           ; $521a: $13
	ld a, e                                          ; $521b: $7b
	cp $df                                           ; $521c: $fe $df
	ldh [$9c], a                                     ; $521e: $e0 $9c
	call nz, $ecd4                                   ; $5220: $c4 $d4 $ec
	ld a, e                                          ; $5223: $7b
	cp $9e                                           ; $5224: $fe $9e
	ei                                               ; $5226: $fb
	ld e, e                                          ; $5227: $5b
	ret z                                            ; $5228: $c8

	ld d, [hl]                                       ; $5229: $56
	adc b                                            ; $522a: $88
	ld a, [hl]                                       ; $522b: $7e

Call_058_522c:
	cp d                                             ; $522c: $ba
	ld l, [hl]                                       ; $522d: $6e
	rst GetHLinHL                                          ; $522e: $cf
	rst SubAFromDE                                          ; $522f: $df
	add b                                            ; $5230: $80
	sbc [hl]                                         ; $5231: $9e
	ld hl, sp+$6f                                    ; $5232: $f8 $6f
	ldh [$fa], a                                     ; $5234: $e0 $fa
	ld a, b                                          ; $5236: $78
	ld a, [$ffdc]                                    ; $5237: $fa $dc $ff
	rst SubAFromDE                                          ; $523a: $df
	ld [$8675], sp                                   ; $523b: $08 $75 $86
	rst SubAFromDE                                          ; $523e: $df
	ld bc, $967f                                     ; $523f: $01 $7f $96
	sbc $f0                                          ; $5242: $de $f0
	sbc $f8                                          ; $5244: $de $f8
	ld sp, hl                                        ; $5246: $f9
	rst SubAFromDE                                          ; $5247: $df
	pop bc                                           ; $5248: $c1
	sbc c                                            ; $5249: $99
	ld h, c                                          ; $524a: $61
	ld a, c                                          ; $524b: $79
	ld a, h                                          ; $524c: $7c
	ld a, h                                          ; $524d: $7c
	inc a                                            ; $524e: $3c
	jr c, jr_058_52cb                                ; $524f: $38 $7a

	and d                                            ; $5251: $a2
	halt                                             ; $5252: $76
	and b                                            ; $5253: $a0
	sbc e                                            ; $5254: $9b
	jr nz, jr_058_5209                               ; $5255: $20 $b2

	call $deb2                                       ; $5257: $cd $b2 $de
	ld a, a                                          ; $525a: $7f
	rst SubAFromDE                                          ; $525b: $df
	ccf                                              ; $525c: $3f
	sub d                                            ; $525d: $92
	call $8080                                       ; $525e: $cd $80 $80
	ld a, a                                          ; $5261: $7f
	ld l, d                                          ; $5262: $6a
	ld a, a                                          ; $5263: $7f
	cpl                                              ; $5264: $2f
	ccf                                              ; $5265: $3f
	ldh a, [c]                                       ; $5266: $f2
	inc d                                            ; $5267: $14
	ld hl, sp-$10                                    ; $5268: $f8 $f0
	ret nc                                           ; $526a: $d0

	sbc $e0                                          ; $526b: $de $e0
	add b                                            ; $526d: $80
	inc b                                            ; $526e: $04
	ld a, [bc]                                       ; $526f: $0a
	ld sp, $6ffa                                     ; $5270: $31 $fa $6f
	push bc                                          ; $5273: $c5
	rst AddAOntoHL                                          ; $5274: $ef
	ei                                               ; $5275: $fb
	nop                                              ; $5276: $00
	inc bc                                           ; $5277: $03
	inc b                                            ; $5278: $04
	add hl, bc                                       ; $5279: $09
	ld [$6695], sp                                   ; $527a: $08 $95 $66
	ld l, $77                                        ; $527d: $2e $77
	call c, $b67b                                    ; $527f: $dc $7b $b6
	ld [hl], $6e                                     ; $5282: $36 $6e
	sbc a                                            ; $5284: $9f

jr_058_5285:
	rst SubAFromDE                                          ; $5285: $df
	db $10                                           ; $5286: $10
	rst SubAFromHL                                          ; $5287: $d7
	jr c, jr_058_52df                                ; $5288: $38 $55

	nop                                              ; $528a: $00
	ld d, l                                          ; $528b: $55
	db $10                                           ; $528c: $10
	sub h                                            ; $528d: $94
	sub d                                            ; $528e: $92
	rst AddAOntoHL                                          ; $528f: $ef
	jr z, @-$37                                      ; $5290: $28 $c7

	jr z, jr_058_52cc                                ; $5292: $28 $38

	jr z, jr_058_5285                                ; $5294: $28 $ef

	ld l, l                                          ; $5296: $6d
	ld bc, $7b80                                     ; $5297: $01 $80 $7b
	cp d                                             ; $529a: $ba
	add b                                            ; $529b: $80
	ld d, d                                          ; $529c: $52
	call z, $eee8                                    ; $529d: $cc $e8 $ee
	ld a, e                                          ; $52a0: $7b
	cp [hl]                                          ; $52a1: $be
	reti                                             ; $52a2: $d9


	reti                                             ; $52a3: $d9


	db $ed                                           ; $52a4: $ed
	di                                               ; $52a5: $f3
	rst FarCall                                          ; $52a6: $f7
	nop                                              ; $52a7: $00
	adc d                                            ; $52a8: $8a
	ld d, b                                          ; $52a9: $50
	jr z, @+$13                                      ; $52aa: $28 $11

	ld [$0814], sp                                   ; $52ac: $08 $14 $08
	cp a                                             ; $52af: $bf
	dec d                                            ; $52b0: $15
	xor [hl]                                         ; $52b1: $ae
	ld b, [hl]                                       ; $52b2: $46
	xor $b7                                          ; $52b3: $ee $b7
	db $e3                                           ; $52b5: $e3
	rst SubAFromHL                                          ; $52b6: $d7
	nop                                              ; $52b7: $00
	nop                                              ; $52b8: $00
	stop                                             ; $52b9: $10 $00
	sub a                                            ; $52bb: $97
	ld bc, $e542                                     ; $52bc: $01 $42 $e5
	add sp, -$11                                     ; $52bf: $e8 $ef
	rrca                                             ; $52c1: $0f
	rst AddAOntoHL                                          ; $52c2: $ef
	rst $38                                          ; $52c3: $ff
	halt                                             ; $52c4: $76
	ld d, $89                                        ; $52c5: $16 $89
	add b                                            ; $52c7: $80
	ld b, $11                                        ; $52c8: $06 $11
	xor c                                            ; $52ca: $a9

jr_058_52cb:
	ld b, h                                          ; $52cb: $44

jr_058_52cc:
	inc b                                            ; $52cc: $04
	ld [bc], a                                       ; $52cd: $02
	cp c                                             ; $52ce: $b9
	ld a, a                                          ; $52cf: $7f
	ld sp, hl                                        ; $52d0: $f9
	add sp, $40                                      ; $52d1: $e8 $40
	inc bc                                           ; $52d3: $03
	dec hl                                           ; $52d4: $2b
	ld a, l                                          ; $52d5: $7d
	ld a, [hl]                                       ; $52d6: $7e
	nop                                              ; $52d7: $00
	db $db                                           ; $52d8: $db
	inc h                                            ; $52d9: $24
	inc h                                            ; $52da: $24
	nop                                              ; $52db: $00
	ld a, a                                          ; $52dc: $7f
	ld a, e                                          ; $52dd: $7b
	db $e3                                           ; $52de: $e3

jr_058_52df:
	ld a, a                                          ; $52df: $7f
	ld a, [$fc76]                                    ; $52e0: $fa $76 $fc
	sbc [hl]                                         ; $52e3: $9e
	rra                                              ; $52e4: $1f
	ld [hl], $00                                     ; $52e5: $36 $00
	rst SubAFromDE                                          ; $52e7: $df
	ld b, h                                          ; $52e8: $44
	rst SubAFromDE                                          ; $52e9: $df
	ld d, l                                          ; $52ea: $55
	sbc [hl]                                         ; $52eb: $9e
	ld h, a                                          ; $52ec: $67
	call c, $3777                                    ; $52ed: $dc $77 $37
	or $9b                                           ; $52f0: $f6 $9b
	ld [hl+], a                                      ; $52f2: $22
	ld h, $55                                        ; $52f3: $26 $55
	ld d, l                                          ; $52f5: $55
	db $db                                           ; $52f6: $db
	ld [hl], a                                       ; $52f7: $77
	sbc h                                            ; $52f8: $9c
	ld [hl+], a                                      ; $52f9: $22
	inc hl                                           ; $52fa: $23
	ld b, l                                          ; $52fb: $45
	ld e, a                                          ; $52fc: $5f
	or $9e                                           ; $52fd: $f6 $9e
	daa                                              ; $52ff: $27
	ld l, e                                          ; $5300: $6b
	or $9b                                           ; $5301: $f6 $9b
	inc sp                                           ; $5303: $33
	ld b, h                                          ; $5304: $44
	ld b, h                                          ; $5305: $44
	ld d, a                                          ; $5306: $57
	ld l, e                                          ; $5307: $6b
	or $7f                                           ; $5308: $f6 $7f
	ldh [c], a                                       ; $530a: $e2
	ld l, e                                          ; $530b: $6b
	or $7b                                           ; $530c: $f6 $7b
	jp Jump_058_569e                                 ; $530e: $c3 $9e $56


	ld l, e                                          ; $5311: $6b
	db $ec                                           ; $5312: $ec
	sbc [hl]                                         ; $5313: $9e
	inc [hl]                                         ; $5314: $34
	ld l, e                                          ; $5315: $6b
	cp c                                             ; $5316: $b9
	ld [hl], e                                       ; $5317: $73
	or $73                                           ; $5318: $f6 $73
	pop hl                                           ; $531a: $e1
	add $8b                                          ; $531b: $c6 $8b
	rst GetHLinHL                                          ; $531d: $cf
	rst $38                                          ; $531e: $ff
	sbc c                                            ; $531f: $99
	cp $fd                                           ; $5320: $fe $fd
	ld a, [$e9f4]                                    ; $5322: $fa $f4 $e9
	db $d3                                           ; $5325: $d3
	ld l, e                                          ; $5326: $6b
	db $f4                                           ; $5327: $f4
	adc h                                            ; $5328: $8c
	db $fc                                           ; $5329: $fc
	and b                                            ; $532a: $a0
	ld d, b                                          ; $532b: $50
	adc b                                            ; $532c: $88
	inc a                                            ; $532d: $3c
	ld h, h                                          ; $532e: $64
	add $8f                                          ; $532f: $c6 $8f
	dec e                                            ; $5331: $1d
	ldh [$f0], a                                     ; $5332: $e0 $f0
	ld hl, sp-$3c                                    ; $5334: $f8 $c4
	add h                                            ; $5336: $84
	ld [bc], a                                       ; $5337: $02
	ld bc, $0001                                     ; $5338: $01 $01 $00
	nop                                              ; $533b: $00
	sbc $08                                          ; $533c: $de $08
	rst SubAFromDE                                          ; $533e: $df
	inc c                                            ; $533f: $0c
	sbc [hl]                                         ; $5340: $9e
	adc h                                            ; $5341: $8c
	ld sp, hl                                        ; $5342: $f9
	sbc $03                                          ; $5343: $de $03
	ld [hl], a                                       ; $5345: $77
	db $eb                                           ; $5346: $eb
	ld a, e                                          ; $5347: $7b
	db $fd                                           ; $5348: $fd
	ei                                               ; $5349: $fb
	adc e                                            ; $534a: $8b
	rst $38                                          ; $534b: $ff
	ld hl, sp-$20                                    ; $534c: $f8 $e0
	ret nz                                           ; $534e: $c0

	rst $38                                          ; $534f: $ff
	ld bc, $06ff                                     ; $5350: $01 $ff $06
	nop                                              ; $5353: $00
	rlca                                             ; $5354: $07
	rra                                              ; $5355: $1f
	ccf                                              ; $5356: $3f
	ld a, a                                          ; $5357: $7f
	nop                                              ; $5358: $00
	nop                                              ; $5359: $00
	ld sp, hl                                        ; $535a: $f9
	rst $38                                          ; $535b: $ff
	ld a, [hl]                                       ; $535c: $7e
	ld a, c                                          ; $535d: $79
	ld [hl], a                                       ; $535e: $77
	sbc $ff                                          ; $535f: $de $ff
	sbc [hl]                                         ; $5361: $9e
	ccf                                              ; $5362: $3f
	call c, $9bff                                    ; $5363: $dc $ff $9b
	rra                                              ; $5366: $1f
	rrca                                             ; $5367: $0f
	rst JumpTable                                          ; $5368: $c7
	cp a                                             ; $5369: $bf
	rst GetHLinHL                                          ; $536a: $cf
	rst $38                                          ; $536b: $ff
	sbc d                                            ; $536c: $9a
	db $fc                                           ; $536d: $fc
	db $f4                                           ; $536e: $f4
	rst $38                                          ; $536f: $ff
	cp $f7                                           ; $5370: $fe $f7
	db $dd                                           ; $5372: $dd
	rst $38                                          ; $5373: $ff
	adc a                                            ; $5374: $8f
	ei                                               ; $5375: $fb
	rst SubAFromBC                                          ; $5376: $e7
	ret                                              ; $5377: $c9


	sbc h                                            ; $5378: $9c
	db $fd                                           ; $5379: $fd

jr_058_537a:
	ld hl, sp-$1a                                    ; $537a: $f8 $e6
	inc de                                           ; $537c: $13
	ld [$6085], sp                                   ; $537d: $08 $85 $60
	ld [de], a                                       ; $5380: $12
	cp $ff                                           ; $5381: $fe $ff
	ld sp, hl                                        ; $5383: $f9
	db $fc                                           ; $5384: $fc
	db $dd                                           ; $5385: $dd
	rst $38                                          ; $5386: $ff
	add b                                            ; $5387: $80
	adc l                                            ; $5388: $8d
	sub $38                                          ; $5389: $d6 $38
	ld [hl], b                                       ; $538b: $70
	and c                                            ; $538c: $a1
	add b                                            ; $538d: $80
	ld [hl], b                                       ; $538e: $70
	ld d, b                                          ; $538f: $50
	ld a, [hl]                                       ; $5390: $7e
	jr c, jr_058_537a                                ; $5391: $38 $e7

	call Call_058_70d8                               ; $5393: $cd $d8 $70
	jr nz, @+$3a                                     ; $5396: $20 $38

	ret c                                            ; $5398: $d8

	scf                                              ; $5399: $37
	bit 4, l                                         ; $539a: $cb $65
	ld [hl-], a                                      ; $539c: $32
	sbc c                                            ; $539d: $99
	xor h                                            ; $539e: $ac
	sub $3f                                          ; $539f: $d6 $3f
	inc c                                            ; $53a1: $0c
	ld b, $83                                        ; $53a2: $06 $83
	pop bc                                           ; $53a4: $c1
	ld h, b                                          ; $53a5: $60
	ld [hl], b                                       ; $53a6: $70

jr_058_53a7:
	add b                                            ; $53a7: $80
	jr c, jr_058_540d                                ; $53a8: $38 $63

	jr jr_058_537a                                   ; $53aa: $18 $ce

	or e                                             ; $53ac: $b3
	db $db                                           ; $53ad: $db
	ld l, l                                          ; $53ae: $6d
	ld [hl], $9a                                     ; $53af: $36 $9a
	sbc h                                            ; $53b1: $9c
	rst SubAFromBC                                          ; $53b2: $e7
	ld sp, $860c                                     ; $53b3: $31 $0c $86
	jp Jump_058_71e1                                 ; $53b6: $c3 $e1 $71


	nop                                              ; $53b9: $00
	sub b                                            ; $53ba: $90
	ld l, d                                          ; $53bb: $6a
	dec [hl]                                         ; $53bc: $35
	sbc b                                            ; $53bd: $98
	ld c, d                                          ; $53be: $4a
	xor c                                            ; $53bf: $a9
	add h                                            ; $53c0: $84
	rst $38                                          ; $53c1: $ff
	ld l, a                                          ; $53c2: $6f
	sub a                                            ; $53c3: $97
	bit 4, a                                         ; $53c4: $cb $67
	or a                                             ; $53c6: $b7
	sub c                                            ; $53c7: $91
	rst SubAFromDE                                          ; $53c8: $df
	rst $38                                          ; $53c9: $ff
	ld hl, sp+$3c                                    ; $53ca: $f8 $3c
	ld c, $86                                        ; $53cc: $0e $86
	ld b, e                                          ; $53ce: $43
	ld hl, $c810                                     ; $53cf: $21 $10 $c8
	ld hl, sp-$04                                    ; $53d2: $f8 $fc
	cp $fe                                           ; $53d4: $fe $fe
	db $dd                                           ; $53d6: $dd
	rst $38                                          ; $53d7: $ff
	adc a                                            ; $53d8: $8f
	inc sp                                           ; $53d9: $33
	ld sp, $1325                                     ; $53da: $31 $25 $13
	inc c                                            ; $53dd: $0c
	ld [hl+], a                                      ; $53de: $22
	jp nz, $0160                                     ; $53df: $c2 $60 $01

	ld bc, $0c03                                     ; $53e2: $01 $03 $0c
	jr nc, jr_058_53a7                               ; $53e5: $30 $c0

	add b                                            ; $53e7: $80
	ret nz                                           ; $53e8: $c0

	db $db                                           ; $53e9: $db
	rst $38                                          ; $53ea: $ff
	sbc [hl]                                         ; $53eb: $9e
	ld a, a                                          ; $53ec: $7f
	ld l, a                                          ; $53ed: $6f
	ld h, b                                          ; $53ee: $60
	sbc $7f                                          ; $53ef: $de $7f
	ld l, e                                          ; $53f1: $6b
	ld l, l                                          ; $53f2: $6d
	sbc [hl]                                         ; $53f3: $9e
	ldh a, [$62]                                     ; $53f4: $f0 $62
	ldh a, [c]                                       ; $53f6: $f2
	ld [hl], e                                       ; $53f7: $73
	ret                                              ; $53f8: $c9


	sbc h                                            ; $53f9: $9c
	ld b, a                                          ; $53fa: $47
	add c                                            ; $53fb: $81
	db $fc                                           ; $53fc: $fc
	ld a, e                                          ; $53fd: $7b
	ret nz                                           ; $53fe: $c0

	ld [hl], a                                       ; $53ff: $77
	or $8f                                           ; $5400: $f6 $8f
	ld a, a                                          ; $5402: $7f
	ld e, a                                          ; $5403: $5f
	ld [hl], $36                                     ; $5404: $36 $36
	dec de                                           ; $5406: $1b
	ld a, [de]                                       ; $5407: $1a
	adc l                                            ; $5408: $8d
	call z, $3734                                    ; $5409: $cc $34 $37
	inc e                                            ; $540c: $1c

jr_058_540d:
	inc e                                            ; $540d: $1c
	ld c, $0f                                        ; $540e: $0e $0f
	rlca                                             ; $5410: $07
	add a                                            ; $5411: $87
	ld b, [hl]                                       ; $5412: $46
	ret nc                                           ; $5413: $d0

	sub d                                            ; $5414: $92

jr_058_5415:
	and [hl]                                         ; $5415: $a6
	ld c, h                                          ; $5416: $4c
	sbc b                                            ; $5417: $98
	ld sp, $cf67                                     ; $5418: $31 $67 $cf
	sbc a                                            ; $541b: $9f
	ccf                                              ; $541c: $3f
	ld hl, sp-$10                                    ; $541d: $f8 $f0
	ldh [$c0], a                                     ; $541f: $e0 $c0
	add b                                            ; $5421: $80
	cp $97                                           ; $5422: $fe $97
	dec sp                                           ; $5424: $3b
	ld [hl], l                                       ; $5425: $75
	ld [$a8d4], a                                    ; $5426: $ea $d4 $a8
	ret nc                                           ; $5429: $d0

	and b                                            ; $542a: $a0
	ld b, b                                          ; $542b: $40
	ld sp, hl                                        ; $542c: $f9
	rst SubAFromDE                                          ; $542d: $df
	adc [hl]                                         ; $542e: $8e
	sbc c                                            ; $542f: $99
	adc $4e                                          ; $5430: $ce $4e
	ld l, [hl]                                       ; $5432: $6e
	ld l, $2c                                        ; $5433: $2e $2c
	jr c, jr_058_5415                                ; $5435: $38 $de

	add b                                            ; $5437: $80
	rst SubAFromDE                                          ; $5438: $df
	ld b, b                                          ; $5439: $40
	sbc $20                                          ; $543a: $de $20
	sbc e                                            ; $543c: $9b
	ld [bc], a                                       ; $543d: $02
	inc b                                            ; $543e: $04

jr_058_543f:
	add hl, bc                                       ; $543f: $09
	jr jr_058_543f                                   ; $5440: $18 $fd

	ld a, a                                          ; $5442: $7f
	ld [hl], c                                       ; $5443: $71
	ld a, [hl]                                       ; $5444: $7e
	call $8bfd                                       ; $5445: $cd $fd $8b
	jr jr_058_54ad                                   ; $5448: $18 $63

	inc b                                            ; $544a: $04
	rlca                                             ; $544b: $07
	rlca                                             ; $544c: $07
	inc b                                            ; $544d: $04
	ld [$e010], sp                                   ; $544e: $08 $10 $e0
	add b                                            ; $5451: $80
	inc bc                                           ; $5452: $03
	ld bc, $0300                                     ; $5453: $01 $00 $03
	rlca                                             ; $5456: $07
	rrca                                             ; $5457: $0f
	sbc a                                            ; $5458: $9f
	rlca                                             ; $5459: $07
	inc bc                                           ; $545a: $03
	jp $c77a                                         ; $545b: $c3 $7a $c7


	sub a                                            ; $545e: $97
	ld bc, $f963                                     ; $545f: $01 $63 $f9
	db $fd                                           ; $5462: $fd
	db $fd                                           ; $5463: $fd
	ccf                                              ; $5464: $3f
	inc bc                                           ; $5465: $03
	pop hl                                           ; $5466: $e1
	ld a, e                                          ; $5467: $7b
	ld a, l                                          ; $5468: $7d
	rst SubAFromDE                                          ; $5469: $df
	cp $9b                                           ; $546a: $fe $9b
	db $fc                                           ; $546c: $fc
	db $fd                                           ; $546d: $fd
	ld sp, hl                                        ; $546e: $f9
	ld hl, sp+$77                                    ; $546f: $f8 $77
	ld sp, hl                                        ; $5471: $f9
	sbc $fc                                          ; $5472: $de $fc
	add b                                            ; $5474: $80

Jump_058_5475:
	db $fd                                           ; $5475: $fd
	db $db                                           ; $5476: $db
	push de                                          ; $5477: $d5
	db $e4                                           ; $5478: $e4
	ld h, $36                                        ; $5479: $26 $36
	or a                                             ; $547b: $b7
	daa                                              ; $547c: $27
	daa                                              ; $547d: $27
	ld [hl], $33                                     ; $547e: $36 $33
	inc sp                                           ; $5480: $33
	ld sp, $2021                                     ; $5481: $31 $21 $20
	and b                                            ; $5484: $a0
	and b                                            ; $5485: $a0
	adc e                                            ; $5486: $8b
	rst JumpTable                                          ; $5487: $c7
	pop hl                                           ; $5488: $e1
	dec h                                            ; $5489: $25
	add hl, bc                                       ; $548a: $09
	ld de, $2919                                     ; $548b: $11 $19 $29
	ld a, [hl]                                       ; $548e: $7e
	ld a, $9e                                        ; $548f: $3e $9e
	sbc $fe                                          ; $5491: $de $fe
	cp $df                                           ; $5493: $fe $df
	or $80                                           ; $5495: $f6 $80
	jr z, jr_058_54bd                                ; $5497: $28 $24

	ld [de], a                                       ; $5499: $12
	sbc c                                            ; $549a: $99
	call z, Call_058_56a4                            ; $549b: $cc $a4 $56
	ld l, e                                          ; $549e: $6b
	inc e                                            ; $549f: $1c
	ld e, $0f                                        ; $54a0: $1e $0f
	rlca                                             ; $54a2: $07
	inc bc                                           ; $54a3: $03
	ld b, e                                          ; $54a4: $43
	and c                                            ; $54a5: $a1
	sub b                                            ; $54a6: $90
	ld c, e                                          ; $54a7: $4b
	ld b, l                                          ; $54a8: $45
	ld [hl+], a                                      ; $54a9: $22
	ld bc, $58b0                                     ; $54aa: $01 $b0 $58

jr_058_54ad:
	inc l                                            ; $54ad: $2c

Call_058_54ae:
	inc d                                            ; $54ae: $14
	inc a                                            ; $54af: $3c
	ld a, $1f                                        ; $54b0: $3e $1f
	sbc a                                            ; $54b2: $9f
	rst GetHLinHL                                          ; $54b3: $cf
	rst SubAFromBC                                          ; $54b4: $e7
	di                                               ; $54b5: $f3
	add [hl]                                         ; $54b6: $86
	ei                                               ; $54b7: $fb
	adc a                                            ; $54b8: $8f
	set 0, l                                         ; $54b9: $cb $c5
	ld b, d                                          ; $54bb: $42
	and c                                            ; $54bc: $a1

jr_058_54bd:
	ld d, b                                          ; $54bd: $50
	jr z, jr_058_54d4                                ; $54be: $28 $14

	ld a, b                                          ; $54c0: $78
	inc a                                            ; $54c1: $3c
	ld a, $bf                                        ; $54c2: $3e $bf
	rst SubAFromDE                                          ; $54c4: $df
	rst AddAOntoHL                                          ; $54c5: $ef
	rst FarCall                                          ; $54c6: $f7
	ei                                               ; $54c7: $fb
	ld b, d                                          ; $54c8: $42
	ld hl, $8890                                     ; $54c9: $21 $90 $88
	ld b, h                                          ; $54cc: $44
	and d                                            ; $54cd: $a2
	ld b, c                                          ; $54ce: $41
	jr nz, jr_058_5547                               ; $54cf: $20 $76

	di                                               ; $54d1: $f3

Jump_058_54d2:
	ld a, a                                          ; $54d2: $7f
	rst AddAOntoHL                                          ; $54d3: $ef

jr_058_54d4:
	rst SubAFromDE                                          ; $54d4: $df
	rst $38                                          ; $54d5: $ff
	sub a                                            ; $54d6: $97
	ld h, $11                                        ; $54d7: $26 $11
	adc b                                            ; $54d9: $88
	ld b, h                                          ; $54da: $44
	ld [hl+], a                                      ; $54db: $22
	ld de, $8608                                     ; $54dc: $11 $08 $86
	reti                                             ; $54df: $d9


	rst $38                                          ; $54e0: $ff
	sub [hl]                                         ; $54e1: $96
	jr nc, jr_058_54fc                               ; $54e2: $30 $18

	call nz, $1122                                   ; $54e4: $c4 $22 $11
	adc b                                            ; $54e7: $88
	ld b, [hl]                                       ; $54e8: $46
	ld hl, $7ae0                                     ; $54e9: $21 $e0 $7a
	xor a                                            ; $54ec: $af
	ld l, [hl]                                       ; $54ed: $6e
	dec l                                            ; $54ee: $2d
	ld a, d                                          ; $54ef: $7a
	ei                                               ; $54f0: $fb
	sbc d                                            ; $54f1: $9a
	add e                                            ; $54f2: $83
	ld b, l                                          ; $54f3: $45
	xor [hl]                                         ; $54f4: $ae
	ccf                                              ; $54f5: $3f
	rra                                              ; $54f6: $1f
	ld a, e                                          ; $54f7: $7b
	or $95                                           ; $54f8: $f6 $95
	add a                                            ; $54fa: $87
	db $e3                                           ; $54fb: $e3

jr_058_54fc:
	pop af                                           ; $54fc: $f1
	pop hl                                           ; $54fd: $e1
	rst GetHLinHL                                          ; $54fe: $cf
	sbc b                                            ; $54ff: $98

Call_058_5500:
	or a                                             ; $5500: $b7
	ld a, a                                          ; $5501: $7f
	ld a, a                                          ; $5502: $7f
	xor a                                            ; $5503: $af
	halt                                             ; $5504: $76
	jr nc, jr_058_5585                               ; $5505: $30 $7e

	db $fd                                           ; $5507: $fd
	ld a, l                                          ; $5508: $7d
	call z, $ed9e                                    ; $5509: $cc $9e $ed
	sbc $80                                          ; $550c: $de $80
	sbc e                                            ; $550e: $9b
	adc c                                            ; $550f: $89
	ld c, b                                          ; $5510: $48
	call nz, Call_058_6ee2                           ; $5511: $c4 $e2 $6e
	ldh [$7a], a                                     ; $5514: $e0 $7a
	and c                                            ; $5516: $a1
	adc b                                            ; $5517: $88
	add $e7                                          ; $5518: $c6 $e7
	ld [hl], d                                       ; $551a: $72
	dec sp                                           ; $551b: $3b
	cp a                                             ; $551c: $bf
	sub a                                            ; $551d: $97
	ld e, [hl]                                       ; $551e: $5e
	ld e, a                                          ; $551f: $5f
	add e                                            ; $5520: $83
	jp $e2e3                                         ; $5521: $c3 $e3 $e2


	ldh a, [c]                                       ; $5524: $f2
	ld sp, hl                                        ; $5525: $f9
	ei                                               ; $5526: $fb
	cp $a6                                           ; $5527: $fe $a6
	ld c, h                                          ; $5529: $4c
	sbc e                                            ; $552a: $9b
	ld [hl], $66                                     ; $552b: $36 $66
	add $8e                                          ; $552d: $c6 $8e
	ld a, d                                          ; $552f: $7a
	ret nc                                           ; $5530: $d0

	sbc h                                            ; $5531: $9c
	pop hl                                           ; $5532: $e1
	jp nz, $de82                                     ; $5533: $c2 $82 $de

	ld [bc], a                                       ; $5536: $02
	sbc d                                            ; $5537: $9a
	ld a, [hl]                                       ; $5538: $7e
	db $fd                                           ; $5539: $fd
	ld a, [$e874]                                    ; $553a: $fa $74 $e8
	ld a, d                                          ; $553d: $7a
	call nz, $dbfe                                   ; $553e: $c4 $fe $db
	add b                                            ; $5541: $80
	ld a, c                                          ; $5542: $79
	and l                                            ; $5543: $a5
	ld a, l                                          ; $5544: $7d
	adc c                                            ; $5545: $89
	sbc l                                            ; $5546: $9d

jr_058_5547:
	dec b                                            ; $5547: $05
	rlca                                             ; $5548: $07
	halt                                             ; $5549: $76
	db $dd                                           ; $554a: $dd
	ld a, [hl]                                       ; $554b: $7e
	call c, $03df                                    ; $554c: $dc $df $03
	sub l                                            ; $554f: $95
	ret nc                                           ; $5550: $d0

	or b                                             ; $5551: $b0
	ld a, b                                          ; $5552: $78
	ld a, b                                          ; $5553: $78
	ld e, b                                          ; $5554: $58
	ld e, h                                          ; $5555: $5c
	ld c, $2f                                        ; $5556: $0e $2f
	jr nc, @+$52                                     ; $5558: $30 $50

	sbc $88                                          ; $555a: $de $88
	sbc h                                            ; $555c: $9c
	add h                                            ; $555d: $84
	jp nz, Jump_058_77c1                             ; $555e: $c2 $c1 $77

	add sp, $7e                                      ; $5561: $e8 $7e
	ret c                                            ; $5563: $d8

	ei                                               ; $5564: $fb
	ld [hl], l                                       ; $5565: $75
	ld a, e                                          ; $5566: $7b
	sbc d                                            ; $5567: $9a
	jr nz, jr_058_55b1                               ; $5568: $20 $47

	sbc e                                            ; $556a: $9b
	inc hl                                           ; $556b: $23
	ld b, e                                          ; $556c: $43
	ld a, e                                          ; $556d: $7b
	rst FarCall                                          ; $556e: $f7
	sbc h                                            ; $556f: $9c
	rra                                              ; $5570: $1f
	jr c, @+$62                                      ; $5571: $38 $60

	ld [hl], d                                       ; $5573: $72
	add b                                            ; $5574: $80
	sbc h                                            ; $5575: $9c
	rrca                                             ; $5576: $0f
	db $fc                                           ; $5577: $fc
	db $fc                                           ; $5578: $fc
	ld a, e                                          ; $5579: $7b
	and l                                            ; $557a: $a5

jr_058_557b:
	sbc h                                            ; $557b: $9c
	rst JumpTable                                          ; $557c: $c7
	nop                                              ; $557d: $00
	ldh a, [rBCPD]                                   ; $557e: $f0 $69
	ld e, l                                          ; $5580: $5d
	call c, $def8                                    ; $5581: $dc $f8 $de
	ld sp, hl                                        ; $5584: $f9

jr_058_5585:
	ld a, d                                          ; $5585: $7a
	ld c, $7f                                        ; $5586: $0e $7f
	db $fd                                           ; $5588: $fd
	ld a, e                                          ; $5589: $7b
	ld c, l                                          ; $558a: $4d
	sub l                                            ; $558b: $95
	ld h, $8e                                        ; $558c: $26 $8e
	adc h                                            ; $558e: $8c
	call z, Call_058_48cc                            ; $558f: $cc $cc $48
	cp b                                             ; $5592: $b8
	cp b                                             ; $5593: $b8
	and c                                            ; $5594: $a1
	and c                                            ; $5595: $a1
	sbc $a3                                          ; $5596: $de $a3
	sub h                                            ; $5598: $94
	and a                                            ; $5599: $a7
	ld h, a                                          ; $559a: $67
	ld h, a                                          ; $559b: $67
	dec a                                            ; $559c: $3d
	dec a                                            ; $559d: $3d
	ld e, l                                          ; $559e: $5d
	ld c, d                                          ; $559f: $4a
	ld c, e                                          ; $55a0: $4b
	ld h, e                                          ; $55a1: $63
	ld l, e                                          ; $55a2: $6b
	ld [hl], l                                       ; $55a3: $75
	sbc $e2                                          ; $55a4: $de $e2
	rst SubAFromDE                                          ; $55a6: $df
	db $e3                                           ; $55a7: $e3
	rst SubAFromDE                                          ; $55a8: $df
	jp $cb80                                         ; $55a9: $c3 $80 $cb


	ld b, l                                          ; $55ac: $45
	sbc e                                            ; $55ad: $9b
	push hl                                          ; $55ae: $e5

Call_058_55af:
	ld l, [hl]                                       ; $55af: $6e
	dec sp                                           ; $55b0: $3b

jr_058_55b1:
	di                                               ; $55b1: $f3
	jp hl                                            ; $55b2: $e9


	push de                                          ; $55b3: $d5
	sbc b                                            ; $55b4: $98
	ld c, h                                          ; $55b5: $4c
	ld c, [hl]                                       ; $55b6: $4e
	ld h, a                                          ; $55b7: $67
	ld [hl], a                                       ; $55b8: $77
	ccf                                              ; $55b9: $3f
	cp a                                             ; $55ba: $bf
	cp a                                             ; $55bb: $bf
	adc d                                            ; $55bc: $8a
	add l                                            ; $55bd: $85
	jp nz, $f0e1                                     ; $55be: $c2 $e1 $f0

	ld e, b                                          ; $55c1: $58
	ld [hl], h                                       ; $55c2: $74
	db $ec                                           ; $55c3: $ec
	ld a, l                                          ; $55c4: $7d
	ld a, [hl]                                       ; $55c5: $7e
	ccf                                              ; $55c6: $3f
	rra                                              ; $55c7: $1f
	adc a                                            ; $55c8: $8f
	rst SubAFromBC                                          ; $55c9: $e7
	sub d                                            ; $55ca: $92
	cp e                                             ; $55cb: $bb
	sbc a                                            ; $55cc: $9f
	ld a, [bc]                                       ; $55cd: $0a
	inc b                                            ; $55ce: $04
	jp $c020                                         ; $55cf: $c3 $20 $c0


	jr nz, jr_058_55ec                               ; $55d2: $20 $18

	ld b, $fd                                        ; $55d4: $06 $fd
	rst $38                                          ; $55d6: $ff
	ccf                                              ; $55d7: $3f
	ld a, d                                          ; $55d8: $7a
	jp nc, $ffdf                                     ; $55d9: $d2 $df $ff

	sub a                                            ; $55dc: $97
	jr jr_058_55e3                                   ; $55dd: $18 $04

	ld [bc], a                                       ; $55df: $02
	pop bc                                           ; $55e0: $c1
	jr nc, jr_058_55ff                               ; $55e1: $30 $1c

jr_058_55e3:
	rlca                                             ; $55e3: $07
	ld [bc], a                                       ; $55e4: $02
	reti                                             ; $55e5: $d9


	rst $38                                          ; $55e6: $ff
	sub a                                            ; $55e7: $97
	ld b, c                                          ; $55e8: $41
	jr nc, jr_058_55f3                               ; $55e9: $30 $08

	add h                                            ; $55eb: $84

jr_058_55ec:
	ld h, d                                          ; $55ec: $62
	add hl, de                                       ; $55ed: $19
	add [hl]                                         ; $55ee: $86
	ld a, h                                          ; $55ef: $7c
	reti                                             ; $55f0: $d9


	rst $38                                          ; $55f1: $ff
	sub a                                            ; $55f2: $97

jr_058_55f3:
	jr jr_058_557b                                   ; $55f3: $18 $86

	ld b, c                                          ; $55f5: $41
	jr nz, jr_058_5608                               ; $55f6: $20 $10

	ld [$4488], sp                                   ; $55f8: $08 $88 $44
	reti                                             ; $55fb: $d9


	rst $38                                          ; $55fc: $ff
	sbc e                                            ; $55fd: $9b
	ld a, a                                          ; $55fe: $7f

jr_058_55ff:
	rra                                              ; $55ff: $1f
	rlca                                             ; $5600: $07
	jp $d07b                                         ; $5601: $c3 $7b $d0


	sbc l                                            ; $5604: $9d
	inc bc                                           ; $5605: $03
	ld hl, sp+$71                                    ; $5606: $f8 $71

jr_058_5608:
	ld [de], a                                       ; $5608: $12
	rst SubAFromDE                                          ; $5609: $df
	rst $38                                          ; $560a: $ff
	add b                                            ; $560b: $80
	inc bc                                           ; $560c: $03
	dec de                                           ; $560d: $1b
	nop                                              ; $560e: $00
	add b                                            ; $560f: $80
	ret z                                            ; $5610: $c8

	jr nz, jr_058_5623                               ; $5611: $20 $10

	adc h                                            ; $5613: $8c
	db $fc                                           ; $5614: $fc
	db $e4                                           ; $5615: $e4
	ldh [$f4], a                                     ; $5616: $e0 $f4
	rst FarCall                                          ; $5618: $f7
	db $fc                                           ; $5619: $fc
	ei                                               ; $561a: $fb
	ld hl, sp+$79                                    ; $561b: $f8 $79
	inc d                                            ; $561d: $14
	ld d, $0d                                        ; $561e: $16 $0d
	dec a                                            ; $5620: $3d
	dec a                                            ; $5621: $3d
	ld h, l                                          ; $5622: $65

jr_058_5623:
	push de                                          ; $5623: $d5
	rst GetHLinHL                                          ; $5624: $cf
	rst AddAOntoHL                                          ; $5625: $ef
	rrca                                             ; $5626: $0f
	rla                                              ; $5627: $17
	rst JumpTable                                          ; $5628: $c7
	ld c, a                                          ; $5629: $4f
	sbc a                                            ; $562a: $9f
	sbc c                                            ; $562b: $99
	cpl                                              ; $562c: $2f
	cp a                                             ; $562d: $bf
	cp a                                             ; $562e: $bf
	ret c                                            ; $562f: $d8

	ld e, [hl]                                       ; $5630: $5e
	ld e, [hl]                                       ; $5631: $5e
	ld a, d                                          ; $5632: $7a
	cp b                                             ; $5633: $b8
	db $dd                                           ; $5634: $dd
	db $fc                                           ; $5635: $fc
	ld [hl], e                                       ; $5636: $73
	ret nz                                           ; $5637: $c0

	add a                                            ; $5638: $87
	rst $38                                          ; $5639: $ff
	push af                                          ; $563a: $f5
	push af                                          ; $563b: $f5
	rst $38                                          ; $563c: $ff
	rst $38                                          ; $563d: $ff
	jp hl                                            ; $563e: $e9


	call z, $150e                                    ; $563f: $cc $0e $15
	dec [hl]                                         ; $5642: $35
	ld e, a                                          ; $5643: $5f
	ccf                                              ; $5644: $3f
	add hl, bc                                       ; $5645: $09
	ld [$c028], sp                                   ; $5646: $08 $28 $c0
	ld b, b                                          ; $5649: $40
	ret nz                                           ; $564a: $c0

	ret nz                                           ; $564b: $c0

	ld b, b                                          ; $564c: $40
	jr nz, @+$62                                     ; $564d: $20 $60

	pop hl                                           ; $564f: $e1
	add b                                            ; $5650: $80
	ld a, e                                          ; $5651: $7b
	ld sp, hl                                        ; $5652: $f9
	adc [hl]                                         ; $5653: $8e
	ld b, b                                          ; $5654: $40
	ld h, b                                          ; $5655: $60
	jr nz, jr_058_5678                               ; $5656: $20 $20

	add hl, bc                                       ; $5658: $09
	dec bc                                           ; $5659: $0b
	rla                                              ; $565a: $17
	rra                                              ; $565b: $1f
	ccf                                              ; $565c: $3f
	add hl, sp                                       ; $565d: $39
	halt                                             ; $565e: $76
	rst AddAOntoHL                                          ; $565f: $ef
	rlca                                             ; $5660: $07
	rlca                                             ; $5661: $07
	rrca                                             ; $5662: $0f
	rrca                                             ; $5663: $0f
	rra                                              ; $5664: $1f
	ld a, b                                          ; $5665: $78
	ld l, l                                          ; $5666: $6d
	rst SubAFromDE                                          ; $5667: $df
	rst SubAFromBC                                          ; $5668: $e7
	sub l                                            ; $5669: $95
	di                                               ; $566a: $f3
	rst $38                                          ; $566b: $ff
	cp $e0                                           ; $566c: $fe $e0
	ldh [$71], a                                     ; $566e: $e0 $71
	pop bc                                           ; $5670: $c1
	ldh [$e0], a                                     ; $5671: $e0 $e0
	pop af                                           ; $5673: $f1
	ld a, e                                          ; $5674: $7b
	ld hl, sp-$62                                    ; $5675: $f8 $9e
	pop af                                           ; $5677: $f1

jr_058_5678:
	db $dd                                           ; $5678: $dd
	add b                                            ; $5679: $80
	ld a, a                                          ; $567a: $7f
	sub $7f                                          ; $567b: $d6 $7f
	rst SubAFromHL                                          ; $567d: $d7
	call c, Call_058_7980                            ; $567e: $dc $80 $79
	ld l, [hl]                                       ; $5681: $6e
	ld h, d                                          ; $5682: $62
	or a                                             ; $5683: $b7
	ld l, a                                          ; $5684: $6f
	rst FarCall                                          ; $5685: $f7
	ld a, [hl]                                       ; $5686: $7e
	and [hl]                                         ; $5687: $a6
	ld a, e                                          ; $5688: $7b
	call z, $d59b                                    ; $5689: $cc $9b $d5
	xor [hl]                                         ; $568c: $ae
	add hl, de                                       ; $568d: $19
	ld h, c                                          ; $568e: $61
	db $fd                                           ; $568f: $fd
	sbc b                                            ; $5690: $98
	ld a, [hl+]                                      ; $5691: $2a
	ld d, b                                          ; $5692: $50
	ldh [$80], a                                     ; $5693: $e0 $80
	ld a, c                                          ; $5695: $79
	pop af                                           ; $5696: $f1
	pop af                                           ; $5697: $f1
	db $dd                                           ; $5698: $dd
	ldh a, [c]                                       ; $5699: $f2
	sbc [hl]                                         ; $569a: $9e
	and $7b                                          ; $569b: $e6 $7b
	or e                                             ; $569d: $b3

Jump_058_569e:
	db $dd                                           ; $569e: $dd
	rra                                              ; $569f: $1f
	sub h                                            ; $56a0: $94
	ccf                                              ; $56a1: $3f
	cp b                                             ; $56a2: $b8
	or b                                             ; $56a3: $b0

Call_058_56a4:
	jr nc, jr_058_56d7                               ; $56a4: $30 $31

	ld sp, $2121                                     ; $56a6: $31 $21 $21
	ld [hl+], a                                      ; $56a9: $22
	ld h, a                                          ; $56aa: $67
	ld l, a                                          ; $56ab: $6f
	sbc $ef                                          ; $56ac: $de $ef
	sbc $ff                                          ; $56ae: $de $ff
	sub e                                            ; $56b0: $93
	reti                                             ; $56b1: $d9


	ld sp, hl                                        ; $56b2: $f9
	push hl                                          ; $56b3: $e5
	ld h, l                                          ; $56b4: $65
	db $f4                                           ; $56b5: $f4
	ldh a, [c]                                       ; $56b6: $f2
	ld a, [$effb]                                    ; $56b7: $fa $fb $ef
	xor a                                            ; $56ba: $af
	cp a                                             ; $56bb: $bf
	cp a                                             ; $56bc: $bf
	ld [hl], l                                       ; $56bd: $75
	db $ed                                           ; $56be: $ed
	add [hl]                                         ; $56bf: $86
	ld d, [hl]                                       ; $56c0: $56
	cpl                                              ; $56c1: $2f
	ld l, e                                          ; $56c2: $6b
	rst SubAFromHL                                          ; $56c3: $d7
	rst FarCall                                          ; $56c4: $f7
	ld a, [$7ffe]                                    ; $56c5: $fa $fe $7f
	ei                                               ; $56c8: $fb
	ld sp, hl                                        ; $56c9: $f9
	cp h                                             ; $56ca: $bc
	cp h                                             ; $56cb: $bc
	sbc h                                            ; $56cc: $9c
	adc a                                            ; $56cd: $8f
	rst JumpTable                                          ; $56ce: $c7
	jp Jump_058_40bb                                 ; $56cf: $c3 $bb $40


	cp a                                             ; $56d2: $bf
	ld d, b                                          ; $56d3: $50
	ld a, a                                          ; $56d4: $7f
	rst AddAOntoHL                                          ; $56d5: $ef
	ld e, a                                          ; $56d6: $5f

jr_058_56d7:
	or a                                             ; $56d7: $b7
	rst JumpTable                                          ; $56d8: $c7
	ld [hl], l                                       ; $56d9: $75
	rst SubAFromDE                                          ; $56da: $df
	sbc b                                            ; $56db: $98
	call c, $40a6                                    ; $56dc: $dc $a6 $40
	ld bc, $fcc0                                     ; $56df: $01 $c0 $fc
	ei                                               ; $56e2: $fb
	jp c, $76ff                                      ; $56e3: $da $ff $76

	inc e                                            ; $56e6: $1c
	sub [hl]                                         ; $56e7: $96
	nop                                              ; $56e8: $00
	pop hl                                           ; $56e9: $e1
	ld e, b                                          ; $56ea: $58
	ld [hl], $89                                     ; $56eb: $36 $89
	ld [hl], h                                       ; $56ed: $74
	rst AddAOntoHL                                          ; $56ee: $ef
	add sp, -$16                                     ; $56ef: $e8 $ea
	call c, $dfff                                    ; $56f1: $dc $ff $df
	ccf                                              ; $56f4: $3f
	sub [hl]                                         ; $56f5: $96
	dec a                                            ; $56f6: $3d
	ld h, $93                                        ; $56f7: $26 $93
	ld d, e                                          ; $56f9: $53
	jp hl                                            ; $56fa: $e9


	ld c, c                                          ; $56fb: $49
	ld b, h                                          ; $56fc: $44
	ld d, h                                          ; $56fd: $54
	ld d, h                                          ; $56fe: $54
	db $db                                           ; $56ff: $db
	rst $38                                          ; $5700: $ff
	rst SubAFromDE                                          ; $5701: $df
	rst AddAOntoHL                                          ; $5702: $ef
	ld a, l                                          ; $5703: $7d
	ld h, b                                          ; $5704: $60
	sbc l                                            ; $5705: $9d
	ld de, $7a10                                     ; $5706: $11 $10 $7a
	rlca                                             ; $5709: $07
	ld h, d                                          ; $570a: $62
	ret nz                                           ; $570b: $c0

	rst SubAFromDE                                          ; $570c: $df
	ld bc, $0899                                     ; $570d: $01 $99 $08
	adc h                                            ; $5710: $8c
	add h                                            ; $5711: $84
	ld b, [hl]                                       ; $5712: $46
	ld b, e                                          ; $5713: $43
	ld b, e                                          ; $5714: $43
	reti                                             ; $5715: $d9


	rst $38                                          ; $5716: $ff
	add b                                            ; $5717: $80
	ld c, e                                          ; $5718: $4b
	inc h                                            ; $5719: $24
	sub [hl]                                         ; $571a: $96
	ld c, d                                          ; $571b: $4a
	ld h, $22                                        ; $571c: $26 $22
	ld [de], a                                       ; $571e: $12
	db $10                                           ; $571f: $10
	ld a, h                                          ; $5720: $7c
	ccf                                              ; $5721: $3f
	sbc a                                            ; $5722: $9f
	adc $e6                                          ; $5723: $ce $e6
	ldh [c], a                                       ; $5725: $e2
	ldh a, [c]                                       ; $5726: $f2

jr_058_5727:
	ldh a, [$bf]                                     ; $5727: $f0 $bf
	ld [hl], e                                       ; $5729: $73
	pop hl                                           ; $572a: $e1
	ld b, e                                          ; $572b: $43
	add d                                            ; $572c: $82
	and $94                                          ; $572d: $e6 $94
	jr c, @+$51                                      ; $572f: $38 $4f

	sub e                                            ; $5731: $93
	ld hl, $83c3                                     ; $5732: $21 $c3 $83
	rst SubAFromBC                                          ; $5735: $e7
	sub a                                            ; $5736: $97
	ld a, [hl]                                       ; $5737: $7e
	ld a, [bc]                                       ; $5738: $0a
	ld a, [hl]                                       ; $5739: $7e
	adc $9a                                          ; $573a: $ce $9a
	rrca                                             ; $573c: $0f
	inc bc                                           ; $573d: $03
	dec c                                            ; $573e: $0d
	db $10                                           ; $573f: $10
	jr @-$23                                         ; $5740: $18 $db

	rst $38                                          ; $5742: $ff
	ld a, l                                          ; $5743: $7d
	push hl                                          ; $5744: $e5
	add b                                            ; $5745: $80
	and a                                            ; $5746: $a7
	ld d, e                                          ; $5747: $53
	ld [hl+], a                                      ; $5748: $22
	ld [bc], a                                       ; $5749: $02
	inc bc                                           ; $574a: $03
	ld b, [hl]                                       ; $574b: $46
	inc b                                            ; $574c: $04
	add [hl]                                         ; $574d: $86
	ld d, h                                          ; $574e: $54
	and e                                            ; $574f: $a3
	jp nc, $c3e2                                     ; $5750: $d2 $e2 $c3

	add h                                            ; $5753: $84
	add h                                            ; $5754: $84
	inc b                                            ; $5755: $04
	db $e3                                           ; $5756: $e3
	ld l, $7f                                        ; $5757: $2e $7f
	ld e, a                                          ; $5759: $5f
	dec bc                                           ; $575a: $0b
	dec bc                                           ; $575b: $0b
	rrca                                             ; $575c: $0f
	rlca                                             ; $575d: $07
	ldh [rAUD4LEN], a                                ; $575e: $e0 $20
	ld h, b                                          ; $5760: $60
	db $10                                           ; $5761: $10
	ld [$0408], sp                                   ; $5762: $08 $08 $04
	sub a                                            ; $5765: $97
	inc b                                            ; $5766: $04
	rst AddAOntoHL                                          ; $5767: $ef

jr_058_5768:
	rst AddAOntoHL                                          ; $5768: $ef
	halt                                             ; $5769: $76
	or $f6                                           ; $576a: $f6 $f6
	rst FarCall                                          ; $576c: $f7
	rst FarCall                                          ; $576d: $f7
	ld [hl], l                                       ; $576e: $75
	ld b, l                                          ; $576f: $45
	call c, $96ff                                    ; $5770: $dc $ff $96
	ld a, [hl]                                       ; $5773: $7e
	ld a, b                                          ; $5774: $78
	ld hl, sp-$10                                    ; $5775: $f8 $f0
	ld hl, sp+$7c                                    ; $5777: $f8 $7c
	ld a, h                                          ; $5779: $7c
	db $fc                                           ; $577a: $fc
	cp $79                                           ; $577b: $fe $79
	inc hl                                           ; $577d: $23
	db $dd                                           ; $577e: $dd
	ld hl, sp+$7e                                    ; $577f: $f8 $7e
	ld d, l                                          ; $5781: $55
	ld [hl], a                                       ; $5782: $77
	reti                                             ; $5783: $d9


	ld a, a                                          ; $5784: $7f
	cp l                                             ; $5785: $bd
	ld a, e                                          ; $5786: $7b
	ld hl, sp-$21                                    ; $5787: $f8 $df
	jr jr_058_5727                                   ; $5789: $18 $9c

	inc e                                            ; $578b: $1c
	ld a, $3f                                        ; $578c: $3e $3f
	ld h, l                                          ; $578e: $65
	ld [hl], d                                       ; $578f: $72
	sbc e                                            ; $5790: $9b
	rlca                                             ; $5791: $07
	ld b, $0c                                        ; $5792: $06 $0c
	ld [$9dfd], sp                                   ; $5794: $08 $fd $9d
	adc c                                            ; $5797: $89
	jr nc, @+$73                                     ; $5798: $30 $71

	inc [hl]                                         ; $579a: $34
	ld h, [hl]                                       ; $579b: $66
	xor [hl]                                         ; $579c: $ae
	sub [hl]                                         ; $579d: $96
	ld bc, $ece6                                     ; $579e: $01 $e6 $ec
	ld l, h                                          ; $57a1: $6c
	ld e, h                                          ; $57a2: $5c
	ld [hl], h                                       ; $57a3: $74
	ld h, h                                          ; $57a4: $64
	push bc                                          ; $57a5: $c5
	call $3fde                                       ; $57a6: $cd $de $3f
	sub d                                            ; $57a9: $92
	ld [hl], a                                       ; $57aa: $77
	ld h, a                                          ; $57ab: $67
	ld h, a                                          ; $57ac: $67
	rst JumpTable                                          ; $57ad: $c7
	add a                                            ; $57ae: $87
	ld [hl+], a                                      ; $57af: $22
	inc hl                                           ; $57b0: $23
	ld h, e                                          ; $57b1: $63
	ld b, l                                          ; $57b2: $45
	rst JumpTable                                          ; $57b3: $c7
	call $99ca                                       ; $57b4: $cd $ca $99
	ld a, b                                          ; $57b7: $78
	jr nc, jr_058_5836                               ; $57b8: $30 $7c

	cpl                                              ; $57ba: $2f
	ld [hl], h                                       ; $57bb: $74
	xor [hl]                                         ; $57bc: $ae
	sub b                                            ; $57bd: $90
	rst GetHLinHL                                          ; $57be: $cf
	or a                                             ; $57bf: $b7
	ld c, e                                          ; $57c0: $4b
	or l                                             ; $57c1: $b5
	ld e, $8f                                        ; $57c2: $1e $8f
	adc e                                            ; $57c4: $8b
	ld b, $3e                                        ; $57c5: $06 $3e
	ld a, d                                          ; $57c7: $7a
	push af                                          ; $57c8: $f5
	jp z, $0081                                      ; $57c9: $ca $81 $00

	rlca                                             ; $57cc: $07
	ld l, [hl]                                       ; $57cd: $6e
	inc e                                            ; $57ce: $1c
	sbc c                                            ; $57cf: $99
	ld sp, hl                                        ; $57d0: $f9
	ldh a, [$c1]                                     ; $57d1: $f0 $c1
	ld h, b                                          ; $57d3: $60
	jr nz, jr_058_57e6                               ; $57d4: $20 $10

	ld [hl], l                                       ; $57d6: $75
	jr nc, jr_058_5768                               ; $57d7: $30 $8f

	db $d3                                           ; $57d9: $d3
	and l                                            ; $57da: $a5
	db $eb                                           ; $57db: $eb
	rst SubAFromBC                                          ; $57dc: $e7
	rst AddAOntoHL                                          ; $57dd: $ef
	cp $f8                                           ; $57de: $fe $f8
	ld [hl], b                                       ; $57e0: $70
	and b                                            ; $57e1: $a0
	jp $0b04                                         ; $57e2: $c3 $04 $0b


	rlca                                             ; $57e5: $07

jr_058_57e6:
	inc c                                            ; $57e6: $0c
	nop                                              ; $57e7: $00
	nop                                              ; $57e8: $00
	sbc $ff                                          ; $57e9: $de $ff
	ld a, [hl]                                       ; $57eb: $7e
	sub h                                            ; $57ec: $94
	ld a, d                                          ; $57ed: $7a
	inc h                                            ; $57ee: $24
	sbc d                                            ; $57ef: $9a
	nop                                              ; $57f0: $00
	ret nz                                           ; $57f1: $c0

	nop                                              ; $57f2: $00
	db $fc                                           ; $57f3: $fc
	ldh a, [$fe]                                     ; $57f4: $f0 $fe
	sub l                                            ; $57f6: $95
	ld [$f5f8], a                                    ; $57f7: $ea $f8 $f5
	db $f4                                           ; $57fa: $f4
	db $f4                                           ; $57fb: $f4
	push af                                          ; $57fc: $f5

jr_058_57fd:
	rst FarCall                                          ; $57fd: $f7
	rst FarCall                                          ; $57fe: $f7
	dec a                                            ; $57ff: $3d

Call_058_5800:
	dec e                                            ; $5800: $1d
	call c, $921c                                    ; $5801: $dc $1c $92
	ld e, $22                                        ; $5804: $1e $22
	xor d                                            ; $5806: $aa
	ld a, [hl-]                                      ; $5807: $3a
	add hl, hl                                       ; $5808: $29
	ld sp, $2831                                     ; $5809: $31 $31 $28
	jr z, jr_058_57fd                                ; $580c: $28 $ef

	ld h, a                                          ; $580e: $67
	ld h, a                                          ; $580f: $67
	ld [hl], a                                       ; $5810: $77
	db $dd                                           ; $5811: $dd
	ld a, a                                          ; $5812: $7f
	sub a                                            ; $5813: $97
	ld b, d                                          ; $5814: $42
	ld [hl+], a                                      ; $5815: $22
	ld [hl+], a                                      ; $5816: $22
	ld de, $0911                                     ; $5817: $11 $11 $09
	adc b                                            ; $581a: $88
	add h                                            ; $581b: $84
	reti                                             ; $581c: $d9


	rst $38                                          ; $581d: $ff
	rst SubAFromDE                                          ; $581e: $df

jr_058_581f:
	ld hl, $4677                                     ; $581f: $21 $77 $46
	rst SubAFromDE                                          ; $5822: $df
	adc b                                            ; $5823: $88
	reti                                             ; $5824: $d9


	rst $38                                          ; $5825: $ff
	sbc d                                            ; $5826: $9a
	adc b                                            ; $5827: $88
	ret z                                            ; $5828: $c8

	db $e4                                           ; $5829: $e4
	db $e4                                           ; $582a: $e4
	db $f4                                           ; $582b: $f4
	sbc $7a                                          ; $582c: $de $7a
	rst SubAFromDE                                          ; $582e: $df
	ld hl, sp+$7a                                    ; $582f: $f8 $7a
	ld d, b                                          ; $5831: $50
	sbc $ce                                          ; $5832: $de $ce
	rst SubAFromDE                                          ; $5834: $df
	ld b, b                                          ; $5835: $40

jr_058_5836:
	sbc h                                            ; $5836: $9c
	add b                                            ; $5837: $80
	add c                                            ; $5838: $81
	add c                                            ; $5839: $81
	sbc $03                                          ; $583a: $de $03
	ld h, a                                          ; $583c: $67
	nop                                              ; $583d: $00
	sbc [hl]                                         ; $583e: $9e
	jr nc, jr_058_581f                               ; $583f: $30 $de

	inc [hl]                                         ; $5841: $34
	sbc e                                            ; $5842: $9b
	jr c, jr_058_586d                                ; $5843: $38 $28

	ld [hl-], a                                      ; $5845: $32
	xor d                                            ; $5846: $aa
	db $dd                                           ; $5847: $dd
	ldh [$7f], a                                     ; $5848: $e0 $7f
	rst SubAFromHL                                          ; $584a: $d7
	rst SubAFromDE                                          ; $584b: $df
	db $fc                                           ; $584c: $fc
	adc [hl]                                         ; $584d: $8e
	ld b, $02                                        ; $584e: $06 $02
	ld b, $07                                        ; $5850: $06 $07
	ld b, a                                          ; $5852: $47
	ld c, a                                          ; $5853: $4f
	cp a                                             ; $5854: $bf
	rst $38                                          ; $5855: $ff
	inc b                                            ; $5856: $04
	ld [bc], a                                       ; $5857: $02
	ld [bc], a                                       ; $5858: $02
	ld b, $16                                        ; $5859: $06 $16
	ld e, a                                          ; $585b: $5f
	cp a                                             ; $585c: $bf
	rst $38                                          ; $585d: $ff
	rlca                                             ; $585e: $07
	ld a, e                                          ; $585f: $7b
	rlca                                             ; $5860: $07
	add b                                            ; $5861: $80
	dec c                                            ; $5862: $0d
	add hl, bc                                       ; $5863: $09
	adc b                                            ; $5864: $88
	adc e                                            ; $5865: $8b
	ld [bc], a                                       ; $5866: $02
	inc bc                                           ; $5867: $03

Call_058_5868:
	inc bc                                           ; $5868: $03
	ld b, $04                                        ; $5869: $06 $04
	inc c                                            ; $586b: $0c
	dec c                                            ; $586c: $0d

jr_058_586d:
	dec c                                            ; $586d: $0d
	ld hl, sp+$4c                                    ; $586e: $f8 $4c
	ccf                                              ; $5870: $3f
	xor b                                            ; $5871: $a8
	jr nc, @+$28                                     ; $5872: $30 $26

	bit 5, a                                         ; $5874: $cb $6f
	rst $38                                          ; $5876: $ff
	cp a                                             ; $5877: $bf
	ld a, a                                          ; $5878: $7f
	rra                                              ; $5879: $1f
	ld a, a                                          ; $587a: $7f
	ld a, a                                          ; $587b: $7f
	ld e, a                                          ; $587c: $5f
	db $dd                                           ; $587d: $dd
	ld a, b                                          ; $587e: $78
	inc e                                            ; $587f: $1c
	adc h                                            ; $5880: $8c
	sbc d                                            ; $5881: $9a
	and $36                                          ; $5882: $e6 $36
	ld a, [de]                                       ; $5884: $1a
	rrca                                             ; $5885: $0f
	rlca                                             ; $5886: $07
	db $dd                                           ; $5887: $dd
	db $fc                                           ; $5888: $fc
	ld [hl], a                                       ; $5889: $77
	ld de, $479a                                     ; $588a: $11 $9a $47
	rrca                                             ; $588d: $0f
	rrca                                             ; $588e: $0f
	ld l, a                                          ; $588f: $6f
	ld [hl], a                                       ; $5890: $77
	sbc $9f                                          ; $5891: $de $9f
	sbc $3f                                          ; $5893: $de $3f
	sbc d                                            ; $5895: $9a
	ld e, $0e                                        ; $5896: $1e $0e
	ld [bc], a                                       ; $5898: $02
	ld bc, $7981                                     ; $5899: $01 $81 $79
	ld [hl], e                                       ; $589c: $73
	sbc d                                            ; $589d: $9a
	and b                                            ; $589e: $a0
	sub b                                            ; $589f: $90
	ret z                                            ; $58a0: $c8

	ret z                                            ; $58a1: $c8

	db $ec                                           ; $58a2: $ec
	ld a, e                                          ; $58a3: $7b
	ld hl, sp+$78                                    ; $58a4: $f8 $78
	ret c                                            ; $58a6: $d8

	sbc l                                            ; $58a7: $9d
	ld [$792c], sp                                   ; $58a8: $08 $2c $79
	ld a, [hl]                                       ; $58ab: $7e
	ld l, [hl]                                       ; $58ac: $6e
	rst JumpTable                                          ; $58ad: $c7
	sbc [hl]                                         ; $58ae: $9e
	ld [bc], a                                       ; $58af: $02
	ei                                               ; $58b0: $fb
	sub h                                            ; $58b1: $94
	adc e                                            ; $58b2: $8b
	dec c                                            ; $58b3: $0d
	add hl, de                                       ; $58b4: $19
	ld de, $0903                                     ; $58b5: $11 $03 $09
	ld [$0e08], sp                                   ; $58b8: $08 $08 $0e
	inc c                                            ; $58bb: $0c
	add hl, de                                       ; $58bc: $19
	ld [hl], e                                       ; $58bd: $73
	db $ed                                           ; $58be: $ed
	sub a                                            ; $58bf: $97
	sbc c                                            ; $58c0: $99
	cp c                                             ; $58c1: $b9
	ld a, c                                          ; $58c2: $79
	ld a, [$b2d2]                                    ; $58c3: $fa $d2 $b2
	ld [hl], $26                                     ; $58c6: $36 $26
	ld a, d                                          ; $58c8: $7a
	rst JumpTable                                          ; $58c9: $c7
	sbc [hl]                                         ; $58ca: $9e
	adc a                                            ; $58cb: $8f
	ld a, c                                          ; $58cc: $79
	ld [hl], c                                       ; $58cd: $71
	add h                                            ; $58ce: $84
	ccf                                              ; $58cf: $3f
	rlca                                             ; $58d0: $07
	bit 0, a                                         ; $58d1: $cb $47
	db $ed                                           ; $58d3: $ed
	jr c, jr_058_5946                                ; $58d4: $38 $70

	ld [hl], b                                       ; $58d6: $70
	sub b                                            ; $58d7: $90
	adc b                                            ; $58d8: $88
	sub a                                            ; $58d9: $97
	rst GetHLinHL                                          ; $58da: $cf
	ld c, [hl]                                       ; $58db: $4e
	ld a, h                                          ; $58dc: $7c
	jr nz, jr_058_58ff                               ; $58dd: $20 $20

	ld [hl], b                                       ; $58df: $70
	ldh a, [rSVBK]                                   ; $58e0: $f0 $70
	db $ec                                           ; $58e2: $ec
	adc [hl]                                         ; $58e3: $8e
	rrca                                             ; $58e4: $0f
	rla                                              ; $58e5: $17
	ld [hl-], a                                      ; $58e6: $32
	inc e                                            ; $58e7: $1c
	nop                                              ; $58e8: $00
	add b                                            ; $58e9: $80
	ld a, d                                          ; $58ea: $7a
	ld a, c                                          ; $58eb: $79
	sbc l                                            ; $58ec: $9d
	ld [$721c], sp                                   ; $58ed: $08 $1c $72
	ld l, h                                          ; $58f0: $6c
	cp $9e                                           ; $58f1: $fe $9e
	cp $f9                                           ; $58f3: $fe $f9
	reti                                             ; $58f5: $d9


	rrca                                             ; $58f6: $0f
	ld sp, hl                                        ; $58f7: $f9
	ld a, [hl]                                       ; $58f8: $7e
	ld d, $de                                        ; $58f9: $16 $de
	rst $38                                          ; $58fb: $ff
	add b                                            ; $58fc: $80
	db $fc                                           ; $58fd: $fc
	rst GetHLinHL                                          ; $58fe: $cf

jr_058_58ff:
	add e                                            ; $58ff: $83
	ld e, $1a                                        ; $5900: $1e $1a
	ld a, [de]                                       ; $5902: $1a
	inc de                                           ; $5903: $13
	inc d                                            ; $5904: $14
	jr c, jr_058_594d                                ; $5905: $38 $46

	add c                                            ; $5907: $81
	xor h                                            ; $5908: $ac
	ld a, $67                                        ; $5909: $3e $67
	set 7, e                                         ; $590b: $cb $fb
	ld a, e                                          ; $590d: $7b
	dec hl                                           ; $590e: $2b
	call $f37f                                       ; $590f: $cd $7f $f3
	pop bc                                           ; $5912: $c1
	add c                                            ; $5913: $81
	ret z                                            ; $5914: $c8

	jr c, @+$1e                                      ; $5915: $38 $1c

	add [hl]                                         ; $5917: $86
	add h                                            ; $5918: $84
	add h                                            ; $5919: $84
	call nz, $9be2                                   ; $591a: $c4 $e2 $9b
	ld [hl], d                                       ; $591d: $72
	ld a, [$faba]                                    ; $591e: $fa $ba $fa
	ld [hl], l                                       ; $5921: $75
	ld h, d                                          ; $5922: $62
	sbc d                                            ; $5923: $9a
	sbc a                                            ; $5924: $9f
	adc a                                            ; $5925: $8f
	rst GetHLinHL                                          ; $5926: $cf
	ld c, a                                          ; $5927: $4f
	adc h                                            ; $5928: $8c
	jp c, $d94c                                      ; $5929: $da $4c $d9

	rst $38                                          ; $592c: $ff
	rst SubAFromDE                                          ; $592d: $df
	ld h, [hl]                                       ; $592e: $66
	sbc h                                            ; $592f: $9c
	ld h, d                                          ; $5930: $62
	ldh [c], a                                       ; $5931: $e2
	jp nz, $c0de                                     ; $5932: $c2 $de $c0

	sbc $df                                          ; $5935: $de $df
	sbc [hl]                                         ; $5937: $9e
	sbc a                                            ; $5938: $9f
	db $dd                                           ; $5939: $dd
	cp a                                             ; $593a: $bf
	ld a, b                                          ; $593b: $78
	adc b                                            ; $593c: $88
	sbc e                                            ; $593d: $9b
	ld c, $1e                                        ; $593e: $0e $1e
	inc e                                            ; $5940: $1c
	ccf                                              ; $5941: $3f
	ld l, d                                          ; $5942: $6a
	jp nz, $a67f                                     ; $5943: $c2 $7f $a6

jr_058_5946:
	sbc l                                            ; $5946: $9d
	ld [$deeb], a                                    ; $5947: $ea $eb $de
	rst $38                                          ; $594a: $ff
	sbc [hl]                                         ; $594b: $9e
	db $fd                                           ; $594c: $fd

jr_058_594d:
	ld [hl], b                                       ; $594d: $70
	ld b, c                                          ; $594e: $41
	halt                                             ; $594f: $76
	rst $38                                          ; $5950: $ff
	sub [hl]                                         ; $5951: $96
	ld a, h                                          ; $5952: $7c
	rst $38                                          ; $5953: $ff
	pop af                                           ; $5954: $f1
	add b                                            ; $5955: $80
	ld [$570c], sp                                   ; $5956: $08 $0c $57
	ld l, b                                          ; $5959: $68
	or a                                             ; $595a: $b7
	call c, $94ff                                    ; $595b: $dc $ff $94
	ei                                               ; $595e: $fb
	rst FarCall                                          ; $595f: $f7
	ret z                                            ; $5960: $c8

	adc l                                            ; $5961: $8d
	adc l                                            ; $5962: $8d
	add h                                            ; $5963: $84
	jp nz, $c1c5                                     ; $5964: $c2 $c5 $c1

	ldh [c], a                                       ; $5967: $e2
	ldh [c], a                                       ; $5968: $e2
	db $dd                                           ; $5969: $dd
	add a                                            ; $596a: $87
	add h                                            ; $596b: $84
	add e                                            ; $596c: $83
	jp nz, $e0c0                                     ; $596d: $c2 $c0 $e0

	ld c, l                                          ; $5970: $4d
	inc h                                            ; $5971: $24
	rst $38                                          ; $5972: $ff
	ld a, h                                          ; $5973: $7c
	call $e3c3                                       ; $5974: $cd $c3 $e3
	or e                                             ; $5977: $b3
	ei                                               ; $5978: $fb
	ld sp, hl                                        ; $5979: $f9
	di                                               ; $597a: $f3
	ret nc                                           ; $597b: $d0

	ret nz                                           ; $597c: $c0

	call z, $e5cd                                    ; $597d: $cc $cd $e5
	jp Jump_058_75a9                                 ; $5980: $c3 $a9 $75


	rst FarCall                                          ; $5983: $f7
	rst $38                                          ; $5984: $ff
	rrca                                             ; $5985: $0f
	cp a                                             ; $5986: $bf
	sbc $ff                                          ; $5987: $de $ff
	sub [hl]                                         ; $5989: $96
	sbc a                                            ; $598a: $9f
	rrca                                             ; $598b: $0f
	rrca                                             ; $598c: $0f
	rst $38                                          ; $598d: $ff
	ld e, a                                          ; $598e: $5f
	xor a                                            ; $598f: $af
	sbc e                                            ; $5990: $9b
	db $e3                                           ; $5991: $e3
	pop bc                                           ; $5992: $c1
	ld [hl], c                                       ; $5993: $71
	halt                                             ; $5994: $76
	rst SubAFromDE                                          ; $5995: $df
	ret nz                                           ; $5996: $c0

	rst SubAFromDE                                          ; $5997: $df
	ldh [$7b], a                                     ; $5998: $e0 $7b
	rst FarCall                                          ; $599a: $f7
	add [hl]                                         ; $599b: $86
	db $fc                                           ; $599c: $fc
	sbc $df                                          ; $599d: $de $df
	rst AddAOntoHL                                          ; $599f: $ef
	di                                               ; $59a0: $f3
	ei                                               ; $59a1: $fb
	rst $38                                          ; $59a2: $ff
	cp $ff                                           ; $59a3: $fe $ff
	sub [hl]                                         ; $59a5: $96
	sub l                                            ; $59a6: $95
	call z, Call_058_7361                            ; $59a7: $cc $61 $73
	ld a, a                                          ; $59aa: $7f
	ccf                                              ; $59ab: $3f
	ld a, $00                                        ; $59ac: $3e $00
	nop                                              ; $59ae: $00
	add b                                            ; $59af: $80
	add b                                            ; $59b0: $80
	ret nz                                           ; $59b1: $c0

	and b                                            ; $59b2: $a0
	or b                                             ; $59b3: $b0
	sub b                                            ; $59b4: $90
	ld h, a                                          ; $59b5: $67
	ld hl, sp-$62                                    ; $59b6: $f8 $9e
	ld [$18dc], sp                                   ; $59b8: $08 $dc $18
	sbc l                                            ; $59bb: $9d
	add hl, de                                       ; $59bc: $19
	add hl, sp                                       ; $59bd: $39
	ld h, l                                          ; $59be: $65
	ld [hl], b                                       ; $59bf: $70
	add b                                            ; $59c0: $80
	ld l, $4e                                        ; $59c1: $2e $4e
	ld e, [hl]                                       ; $59c3: $5e
	sbc $af                                          ; $59c4: $de $af
	xor a                                            ; $59c6: $af
	rst GetHLinHL                                          ; $59c7: $cf
	ld e, l                                          ; $59c8: $5d
	ccf                                              ; $59c9: $3f
	ld a, e                                          ; $59ca: $7b
	ld [hl], e                                       ; $59cb: $73
	ld [hl], e                                       ; $59cc: $73
	pop hl                                           ; $59cd: $e1
	pop hl                                           ; $59ce: $e1
	pop bc                                           ; $59cf: $c1
	pop bc                                           ; $59d0: $c1
	sub b                                            ; $59d1: $90
	sbc b                                            ; $59d2: $98
	or b                                             ; $59d3: $b0
	cp b                                             ; $59d4: $b8
	jr z, @+$70                                      ; $59d5: $28 $6e

	ld e, a                                          ; $59d7: $5f
	ld d, l                                          ; $59d8: $55
	ld [hl], b                                       ; $59d9: $70
	ld [hl], b                                       ; $59da: $70
	ld a, b                                          ; $59db: $78
	ld l, b                                          ; $59dc: $68
	db $ec                                           ; $59dd: $ec
	call nz, $9cc2                                   ; $59de: $c4 $c2 $9c
	jp $0c03                                         ; $59e1: $c3 $03 $0c


	ld a, b                                          ; $59e4: $78
	di                                               ; $59e5: $f3
	sbc c                                            ; $59e6: $99
	inc bc                                           ; $59e7: $03
	ld bc, $0180                                     ; $59e8: $01 $80 $01
	inc b                                            ; $59eb: $04
	rrca                                             ; $59ec: $0f
	ld [hl], a                                       ; $59ed: $77
	ld hl, sp+$7e                                    ; $59ee: $f8 $7e
	rst JumpTable                                          ; $59f0: $c7
	ld a, h                                          ; $59f1: $7c
	reti                                             ; $59f2: $d9


	sub d                                            ; $59f3: $92
	add $84                                          ; $59f4: $c6 $84
	adc h                                            ; $59f6: $8c
	sbc b                                            ; $59f7: $98
	ldh a, [$fe]                                     ; $59f8: $f0 $fe
	ld a, $fe                                        ; $59fa: $3e $fe
	db $fc                                           ; $59fc: $fc
	db $fc                                           ; $59fd: $fc
	ld hl, sp-$10                                    ; $59fe: $f8 $f0
	ldh [$de], a                                     ; $5a00: $e0 $de
	rrca                                             ; $5a02: $0f
	call c, $de1f                                    ; $5a03: $dc $1f $de
	ld bc, $b073                                     ; $5a06: $01 $73 $b0
	rst SubAFromDE                                          ; $5a09: $df
	ld [hl], b                                       ; $5a0a: $70
	ld a, e                                          ; $5a0b: $7b
	db $eb                                           ; $5a0c: $eb
	sub c                                            ; $5a0d: $91
	db $e3                                           ; $5a0e: $e3
	jp $0087                                         ; $5a0f: $c3 $87 $00


	jr nz, jr_058_5a44                               ; $5a12: $20 $30

	and b                                            ; $5a14: $a0
	ld h, b                                          ; $5a15: $60
	ret nz                                           ; $5a16: $c0

	add b                                            ; $5a17: $80
	nop                                              ; $5a18: $00
	ldh [c], a                                       ; $5a19: $e2
	ld sp, $7818                                     ; $5a1a: $31 $18 $78
	adc h                                            ; $5a1d: $8c
	rst SubAFromDE                                          ; $5a1e: $df
	rst $38                                          ; $5a1f: $ff
	sbc h                                            ; $5a20: $9c
	ld b, e                                          ; $5a21: $43
	ld hl, $fc10                                     ; $5a22: $21 $10 $fc
	sbc h                                            ; $5a25: $9c
	jp c, $bc7c                                      ; $5a26: $da $7c $bc

	sbc $fc                                          ; $5a29: $de $fc
	rst SubAFromDE                                          ; $5a2b: $df
	ld hl, sp-$64                                    ; $5a2c: $f8 $9c
	ld l, a                                          ; $5a2e: $6f
	xor a                                            ; $5a2f: $af
	xor a                                            ; $5a30: $af
	ld [hl], a                                       ; $5a31: $77
	push bc                                          ; $5a32: $c5
	sbc c                                            ; $5a33: $99
	ccf                                              ; $5a34: $3f
	ld c, l                                          ; $5a35: $4d

Jump_058_5a36:
	ld c, l                                          ; $5a36: $4d
	ld c, c                                          ; $5a37: $49
	ld c, e                                          ; $5a38: $4b
	adc e                                            ; $5a39: $8b
	sbc $9f                                          ; $5a3a: $de $9f
	sbc $ff                                          ; $5a3c: $de $ff
	ld a, b                                          ; $5a3e: $78
	rst $38                                          ; $5a3f: $ff
	rst SubAFromDE                                          ; $5a40: $df
	ldh a, [$97]                                     ; $5a41: $f0 $97
	push bc                                          ; $5a43: $c5

jr_058_5a44:
	call nz, $8dcc                                   ; $5a44: $c4 $cc $8d
	adc h                                            ; $5a47: $8c
	jp z, $fbea                                      ; $5a48: $ca $ea $fb

	sbc $7f                                          ; $5a4b: $de $7f
	rst SubAFromDE                                          ; $5a4d: $df
	rst $38                                          ; $5a4e: $ff
	sbc d                                            ; $5a4f: $9a
	ld a, e                                          ; $5a50: $7b
	dec sp                                           ; $5a51: $3b
	dec de                                           ; $5a52: $1b
	ld a, $1b                                        ; $5a53: $3e $1b
	sbc $1f                                          ; $5a55: $de $1f
	sub [hl]                                         ; $5a57: $96
	sbc a                                            ; $5a58: $9f
	cpl                                              ; $5a59: $2f
	rst $38                                          ; $5a5a: $ff
	ld sp, hl                                        ; $5a5b: $f9
	or $f4                                           ; $5a5c: $f6 $f4
	ld sp, hl                                        ; $5a5e: $f9
	ld a, [$78fc]                                    ; $5a5f: $fa $fc $78
	ld c, [hl]                                       ; $5a62: $4e
	sbc e                                            ; $5a63: $9b
	db $fc                                           ; $5a64: $fc
	ld a, [hl]                                       ; $5a65: $7e
	or $b4                                           ; $5a66: $f6 $b4
	sbc $ff                                          ; $5a68: $de $ff
	ld a, [hl]                                       ; $5a6a: $7e
	ld [hl], l                                       ; $5a6b: $75
	add b                                            ; $5a6c: $80
	adc d                                            ; $5a6d: $8a
	ld a, [bc]                                       ; $5a6e: $0a
	ld c, d                                          ; $5a6f: $4a
	add a                                            ; $5a70: $87
	rrca                                             ; $5a71: $0f
	rst $38                                          ; $5a72: $ff
	rst $38                                          ; $5a73: $ff
	jr nz, @-$2e                                     ; $5a74: $20 $d0

	nop                                              ; $5a76: $00
	pop bc                                           ; $5a77: $c1
	and c                                            ; $5a78: $a1
	ld b, c                                          ; $5a79: $41
	ld [$e086], a                                    ; $5a7a: $ea $86 $e0
	ld d, b                                          ; $5a7d: $50
	adc h                                            ; $5a7e: $8c
	sbc h                                            ; $5a7f: $9c
	call z, Call_058_71e0                            ; $5a80: $cc $e0 $71
	ldh a, [$b9]                                     ; $5a83: $f0 $b9
	ld sp, hl                                        ; $5a85: $f9
	sbc h                                            ; $5a86: $9c
	cp h                                             ; $5a87: $bc
	ld a, [hl]                                       ; $5a88: $7e
	ld a, a                                          ; $5a89: $7f
	or e                                             ; $5a8a: $b3
	ld [hl], b                                       ; $5a8b: $70
	sbc h                                            ; $5a8c: $9c
	ld d, b                                          ; $5a8d: $50
	jr @+$7a                                         ; $5a8e: $18 $78

	ld a, b                                          ; $5a90: $78
	ld e, d                                          ; $5a91: $5a
	adc [hl]                                         ; $5a92: $8e
	rst $38                                          ; $5a93: $ff
	db $db                                           ; $5a94: $db
	adc $bf                                          ; $5a95: $ce $bf
	or e                                             ; $5a97: $b3
	daa                                              ; $5a98: $27
	ld h, l                                          ; $5a99: $65
	daa                                              ; $5a9a: $27
	and [hl]                                         ; $5a9b: $a6
	ld [hl], c                                       ; $5a9c: $71
	ld a, c                                          ; $5a9d: $79
	ld a, $3e                                        ; $5a9e: $3e $3e
	cp [hl]                                          ; $5aa0: $be
	cp [hl]                                          ; $5aa1: $be
	db $fc                                           ; $5aa2: $fc
	ld a, h                                          ; $5aa3: $7c
	ld a, d                                          ; $5aa4: $7a
	ld a, l                                          ; $5aa5: $7d
	call c, $9cfc                                    ; $5aa6: $dc $fc $9c
	ld b, a                                          ; $5aa9: $47
	and a                                            ; $5aaa: $a7
	add a                                            ; $5aab: $87
	db $dd                                           ; $5aac: $dd
	ld b, a                                          ; $5aad: $47
	sub [hl]                                         ; $5aae: $96
	cpl                                              ; $5aaf: $2f
	cp $fe                                           ; $5ab0: $fe $fe
	ccf                                              ; $5ab2: $3f
	rra                                              ; $5ab3: $1f
	ccf                                              ; $5ab4: $3f
	ld e, a                                          ; $5ab5: $5f
	rra                                              ; $5ab6: $1f
	cp e                                             ; $5ab7: $bb
	ld a, e                                          ; $5ab8: $7b
	and l                                            ; $5ab9: $a5
	ld a, l                                          ; $5aba: $7d
	cp [hl]                                          ; $5abb: $be
	rst SubAFromDE                                          ; $5abc: $df
	add a                                            ; $5abd: $87
	sbc [hl]                                         ; $5abe: $9e
	rlca                                             ; $5abf: $07
	sbc $f3                                          ; $5ac0: $de $f3
	add d                                            ; $5ac2: $82
	ld [hl], e                                       ; $5ac3: $73
	inc de                                           ; $5ac4: $13
	ld hl, $4021                                     ; $5ac5: $21 $21 $40
	ld e, $1e                                        ; $5ac8: $1e $1e
	sbc [hl]                                         ; $5aca: $9e
	ld a, a                                          ; $5acb: $7f
	ld e, $3f                                        ; $5acc: $1e $3f
	ccf                                              ; $5ace: $3f
	ld a, a                                          ; $5acf: $7f
	ld c, b                                          ; $5ad0: $48
	call z, $e2c4                                    ; $5ad1: $cc $c4 $e2
	ldh [c], a                                       ; $5ad4: $e2
	or c                                             ; $5ad5: $b1
	ld a, c                                          ; $5ad6: $79
	ld a, b                                          ; $5ad7: $78
	ret z                                            ; $5ad8: $c8

	ld c, h                                          ; $5ad9: $4c
	call nz, $2222                                   ; $5ada: $c4 $22 $22
	ld d, c                                          ; $5add: $51
	adc c                                            ; $5ade: $89
	adc b                                            ; $5adf: $88
	jp c, $9e39                                      ; $5ae0: $da $39 $9e

	reti                                             ; $5ae3: $d9


	jp c, $9d01                                      ; $5ae4: $da $01 $9d

	add c                                            ; $5ae7: $81
	db $dd                                           ; $5ae8: $dd
	sbc $9d                                          ; $5ae9: $de $9d
	ld a, a                                          ; $5aeb: $7f
	ld c, a                                          ; $5aec: $4f
	rst SubAFromDE                                          ; $5aed: $df
	adc h                                            ; $5aee: $8c
	ld a, l                                          ; $5aef: $7d
	ld b, a                                          ; $5af0: $47
	sbc $80                                          ; $5af1: $de $80
	cp $83                                           ; $5af3: $fe $83
	ld b, l                                          ; $5af5: $45
	add l                                            ; $5af6: $85
	pop de                                           ; $5af7: $d1
	db $db                                           ; $5af8: $db
	db $d3                                           ; $5af9: $d3
	db $d3                                           ; $5afa: $d3
	and e                                            ; $5afb: $a3
	rst SubAFromBC                                          ; $5afc: $e7
	jp $87c3                                         ; $5afd: $c3 $c3 $87


	add a                                            ; $5b00: $87
	adc a                                            ; $5b01: $8f
	adc a                                            ; $5b02: $8f
	rst SubAFromDE                                          ; $5b03: $df
	rst SubAFromDE                                          ; $5b04: $df
	ret nz                                           ; $5b05: $c0

	ret nz                                           ; $5b06: $c0

	ld hl, sp+$4e                                    ; $5b07: $f8 $4e
	ld l, $2f                                        ; $5b09: $2e $2f
	inc b                                            ; $5b0b: $04
	ld b, l                                          ; $5b0c: $45
	add b                                            ; $5b0d: $80
	ld h, b                                          ; $5b0e: $60
	jr nc, jr_058_5b4d                               ; $5b0f: $30 $3c

	ld a, e                                          ; $5b11: $7b
	scf                                              ; $5b12: $37
	sbc l                                            ; $5b13: $9d
	sbc a                                            ; $5b14: $9f
	ld h, b                                          ; $5b15: $60
	ld a, d                                          ; $5b16: $7a
	ld a, a                                          ; $5b17: $7f
	adc [hl]                                         ; $5b18: $8e
	add b                                            ; $5b19: $80
	and b                                            ; $5b1a: $a0
	ld a, a                                          ; $5b1b: $7f
	rst GetHLinHL                                          ; $5b1c: $cf
	nop                                              ; $5b1d: $00
	nop                                              ; $5b1e: $00
	jr jr_058_5b21                                   ; $5b1f: $18 $00

jr_058_5b21:
	nop                                              ; $5b21: $00
	ret nz                                           ; $5b22: $c0

	ldh a, [$cf]                                     ; $5b23: $f0 $cf
	rra                                              ; $5b25: $1f
	ld a, $3c                                        ; $5b26: $3e $3c
	ld a, h                                          ; $5b28: $7c
	ld a, b                                          ; $5b29: $78
	sbc $f8                                          ; $5b2a: $de $f8
	sub a                                            ; $5b2c: $97
	ld [bc], a                                       ; $5b2d: $02
	inc b                                            ; $5b2e: $04
	inc c                                            ; $5b2f: $0c
	jr jr_058_5b6a                                   ; $5b30: $18 $38

	ld a, b                                          ; $5b32: $78
	ld hl, sp-$48                                    ; $5b33: $f8 $b8
	ld a, b                                          ; $5b35: $78
	dec [hl]                                         ; $5b36: $35
	ld a, c                                          ; $5b37: $79
	ld a, [hl-]                                      ; $5b38: $3a
	rst SubAFromDE                                          ; $5b39: $df
	ld a, a                                          ; $5b3a: $7f
	ld sp, hl                                        ; $5b3b: $f9
	db $dd                                           ; $5b3c: $dd
	rst $38                                          ; $5b3d: $ff
	ld a, d                                          ; $5b3e: $7a
	rst SubAFromBC                                          ; $5b3f: $e7
	sub e                                            ; $5b40: $93
	db $fc                                           ; $5b41: $fc
	nop                                              ; $5b42: $00
	ld bc, $0703                                     ; $5b43: $01 $03 $07
	ld c, $1e                                        ; $5b46: $0e $1e
	inc a                                            ; $5b48: $3c
	ld a, h                                          ; $5b49: $7c
	ld sp, hl                                        ; $5b4a: $f9
	db $fd                                           ; $5b4b: $fd
	rst AddAOntoHL                                          ; $5b4c: $ef

jr_058_5b4d:
	ld a, b                                          ; $5b4d: $78
	call nc, $e47e                                   ; $5b4e: $d4 $7e $e4
	ld a, l                                          ; $5b51: $7d
	ld [de], a                                       ; $5b52: $12
	sbc b                                            ; $5b53: $98
	dec bc                                           ; $5b54: $0b
	ld a, [bc]                                       ; $5b55: $0a
	ld [de], a                                       ; $5b56: $12
	ld [hl+], a                                      ; $5b57: $22
	ld b, d                                          ; $5b58: $42
	ld b, d                                          ; $5b59: $42
	ccf                                              ; $5b5a: $3f
	ld [hl], d                                       ; $5b5b: $72
	and d                                            ; $5b5c: $a2
	ld a, a                                          ; $5b5d: $7f
	rst SubAFromDE                                          ; $5b5e: $df
	adc h                                            ; $5b5f: $8c
	ldh [rIE], a                                     ; $5b60: $e0 $ff
	call nz, $1008                                   ; $5b62: $c4 $08 $10
	jr nz, jr_058_5ba7                               ; $5b65: $20 $40

	add b                                            ; $5b67: $80
	db $fc                                           ; $5b68: $fc
	rst $38                                          ; $5b69: $ff

jr_058_5b6a:
	cp a                                             ; $5b6a: $bf
	ccf                                              ; $5b6b: $3f
	ccf                                              ; $5b6c: $3f
	rra                                              ; $5b6d: $1f
	adc a                                            ; $5b6e: $8f
	add a                                            ; $5b6f: $87
	db $fc                                           ; $5b70: $fc
	inc bc                                           ; $5b71: $03
	ld b, b                                          ; $5b72: $40
	ld a, c                                          ; $5b73: $79
	db $ed                                           ; $5b74: $ed
	ld a, [hl]                                       ; $5b75: $7e
	dec sp                                           ; $5b76: $3b
	ld a, d                                          ; $5b77: $7a
	ld [$f97f], sp                                   ; $5b78: $08 $7f $f9
	ld a, c                                          ; $5b7b: $79
	rst SubAFromDE                                          ; $5b7c: $df
	ld a, e                                          ; $5b7d: $7b
	ld hl, sp+$70                                    ; $5b7e: $f8 $70
	xor a                                            ; $5b80: $af
	sbc h                                            ; $5b81: $9c
	rst $38                                          ; $5b82: $ff
	ld a, a                                          ; $5b83: $7f
	ccf                                              ; $5b84: $3f
	sbc $37                                          ; $5b85: $de $37
	add b                                            ; $5b87: $80
	inc sp                                           ; $5b88: $33
	ld sp, $1fff                                     ; $5b89: $31 $ff $1f
	rrca                                             ; $5b8c: $0f
	rra                                              ; $5b8d: $1f
	dec e                                            ; $5b8e: $1d
	dec e                                            ; $5b8f: $1d
	rra                                              ; $5b90: $1f
	ccf                                              ; $5b91: $3f
	cp a                                             ; $5b92: $bf
	db $dd                                           ; $5b93: $dd
	rst SubAFromBC                                          ; $5b94: $e7
	ret nc                                           ; $5b95: $d0

	ld e, b                                          ; $5b96: $58
	sbc l                                            ; $5b97: $9d
	db $db                                           ; $5b98: $db
	rst $38                                          ; $5b99: $ff
	ld a, a                                          ; $5b9a: $7f
	ld a, $1c                                        ; $5b9b: $3e $1c
	cpl                                              ; $5b9d: $2f
	and a                                            ; $5b9e: $a7
	and $ea                                          ; $5b9f: $e6 $ea
	pop af                                           ; $5ba1: $f1
	db $ed                                           ; $5ba2: $ed
	sbc $be                                          ; $5ba3: $de $be
	ld e, e                                          ; $5ba5: $5b
	sub a                                            ; $5ba6: $97

jr_058_5ba7:
	sub c                                            ; $5ba7: $91
	ld [hl], $e6                                     ; $5ba8: $36 $e6
	db $e4                                           ; $5baa: $e4
	inc sp                                           ; $5bab: $33
	ld hl, $8441                                     ; $5bac: $21 $41 $84
	ld [$1909], sp                                   ; $5baf: $08 $09 $19
	dec de                                           ; $5bb2: $1b
	and a                                            ; $5bb3: $a7
	ldh [$f0], a                                     ; $5bb4: $e0 $f0
	call c, $9340                                    ; $5bb6: $dc $40 $93
	ld a, a                                          ; $5bb9: $7f
	sbc [hl]                                         ; $5bba: $9e
	adc $c6                                          ; $5bbb: $ce $c6
	jp $c0c1                                         ; $5bbd: $c3 $c1 $c0


	ret nz                                           ; $5bc0: $c0

	db $f4                                           ; $5bc1: $f4
	ld h, l                                          ; $5bc2: $65
	ld c, d                                          ; $5bc3: $4a
	ld d, d                                          ; $5bc4: $52
	sbc $63                                          ; $5bc5: $de $63
	sbc e                                            ; $5bc7: $9b
	db $e3                                           ; $5bc8: $e3
	rst FarCall                                          ; $5bc9: $f7
	ld h, $44                                        ; $5bca: $26 $44
	sbc $40                                          ; $5bcc: $de $40
	ld a, h                                          ; $5bce: $7c
	ld e, e                                          ; $5bcf: $5b
	ld a, d                                          ; $5bd0: $7a
	ld e, d                                          ; $5bd1: $5a
	sbc $3f                                          ; $5bd2: $de $3f
	rst SubAFromDE                                          ; $5bd4: $df
	or a                                             ; $5bd5: $b7
	db $db                                           ; $5bd6: $db
	rlca                                             ; $5bd7: $07
	rst SubAFromDE                                          ; $5bd8: $df
	rrca                                             ; $5bd9: $0f
	ld a, e                                          ; $5bda: $7b
	db $ec                                           ; $5bdb: $ec
	sbc d                                            ; $5bdc: $9a
	and b                                            ; $5bdd: $a0
	sub a                                            ; $5bde: $97
	adc c                                            ; $5bdf: $89
	call nz, Call_058_7aff                           ; $5be0: $c4 $ff $7a
	ld b, c                                          ; $5be3: $41
	sub a                                            ; $5be4: $97
	cp a                                             ; $5be5: $bf
	sbc a                                            ; $5be6: $9f
	adc a                                            ; $5be7: $8f
	rst JumpTable                                          ; $5be8: $c7
	rst $38                                          ; $5be9: $ff
	db $fc                                           ; $5bea: $fc
	cp $7e                                           ; $5beb: $fe $7e
	ld [hl], a                                       ; $5bed: $77
	db $dd                                           ; $5bee: $dd
	sbc c                                            ; $5bef: $99
	rra                                              ; $5bf0: $1f
	add h                                            ; $5bf1: $84
	add d                                            ; $5bf2: $82
	jp nz, $e1c1                                     ; $5bf3: $c2 $c1 $e1

	ld a, c                                          ; $5bf6: $79
	ld e, a                                          ; $5bf7: $5f
	adc l                                            ; $5bf8: $8d
	sbc l                                            ; $5bf9: $9d
	rst AddAOntoHL                                          ; $5bfa: $ef
	rst $38                                          ; $5bfb: $ff
	ld l, l                                          ; $5bfc: $6d
	ld a, l                                          ; $5bfd: $7d
	or h                                             ; $5bfe: $b4
	db $ec                                           ; $5bff: $ec
	db $ec                                           ; $5c00: $ec
	pop bc                                           ; $5c01: $c1
	ld d, b                                          ; $5c02: $50
	jr nz, @+$32                                     ; $5c03: $20 $30

	db $10                                           ; $5c05: $10
	sbc b                                            ; $5c06: $98
	ld e, b                                          ; $5c07: $58
	ld e, b                                          ; $5c08: $58
	adc h                                            ; $5c09: $8c
	adc h                                            ; $5c0a: $8c
	sbc $0c                                          ; $5c0b: $de $0c
	sbc $04                                          ; $5c0d: $de $04
	ld sp, hl                                        ; $5c0f: $f9
	rst SubAFromDE                                          ; $5c10: $df
	rst JumpTable                                          ; $5c11: $c7
	sub a                                            ; $5c12: $97
	rst SubAFromBC                                          ; $5c13: $e7
	push hl                                          ; $5c14: $e5
	db $e4                                           ; $5c15: $e4
	or $73                                           ; $5c16: $f6 $73
	ld a, e                                          ; $5c18: $7b
	ld a, l                                          ; $5c19: $7d
	ld a, h                                          ; $5c1a: $7c
	db $dd                                           ; $5c1b: $dd
	inc a                                            ; $5c1c: $3c
	sub l                                            ; $5c1d: $95
	ld a, $2f                                        ; $5c1e: $3e $2f
	ld b, $84                                        ; $5c20: $06 $84
	add h                                            ; $5c22: $84
	jp nz, $63c2                                     ; $5c23: $c2 $c2 $63

	inc hl                                           ; $5c26: $23
	or c                                             ; $5c27: $b1
	ld a, d                                          ; $5c28: $7a
	db $fd                                           ; $5c29: $fd
	rst SubAFromDE                                          ; $5c2a: $df
	ld a, [hl]                                       ; $5c2b: $7e
	ld a, l                                          ; $5c2c: $7d
	ld sp, $1f9e                                     ; $5c2d: $31 $9e $1f
	ld a, e                                          ; $5c30: $7b
	sbc l                                            ; $5c31: $9d
	sbc d                                            ; $5c32: $9a
	rlca                                             ; $5c33: $07
	ld bc, $f8e0                                     ; $5c34: $01 $e0 $f8
	rst $38                                          ; $5c37: $ff
	db $fc                                           ; $5c38: $fc
	sbc e                                            ; $5c39: $9b
	ldh [rAUD2LOW], a                                ; $5c3a: $e0 $18
	ld b, $b8                                        ; $5c3c: $06 $b8
	sbc $8c                                          ; $5c3e: $de $8c
	rst SubAFromDE                                          ; $5c40: $df
	add $9b                                          ; $5c41: $c6 $9b
	ld h, a                                          ; $5c43: $67
	ld hl, sp-$78                                    ; $5c44: $f8 $88
	adc b                                            ; $5c46: $88
	db $dd                                           ; $5c47: $dd
	add h                                            ; $5c48: $84
	sbc l                                            ; $5c49: $9d
	ld b, a                                          ; $5c4a: $47
	ld hl, sp-$22                                    ; $5c4b: $f8 $de
	ld a, a                                          ; $5c4d: $7f
	ld a, d                                          ; $5c4e: $7a
	db $ed                                           ; $5c4f: $ed
	sbc [hl]                                         ; $5c50: $9e
	ldh [$79], a                                     ; $5c51: $e0 $79
	halt                                             ; $5c53: $76
	add a                                            ; $5c54: $87
	ld [bc], a                                       ; $5c55: $02
	nop                                              ; $5c56: $00
	nop                                              ; $5c57: $00
	rra                                              ; $5c58: $1f
	ldh [rP1], a                                     ; $5c59: $e0 $00
	db $fd                                           ; $5c5b: $fd
	db $fd                                           ; $5c5c: $fd
	ei                                               ; $5c5d: $fb
	ld a, [$fdff]                                    ; $5c5e: $fa $ff $fd
	rrca                                             ; $5c61: $0f
	rrca                                             ; $5c62: $0f
	ld hl, sp-$07                                    ; $5c63: $f8 $f9
	ld sp, hl                                        ; $5c65: $f9
	ei                                               ; $5c66: $fb
	ldh a, [c]                                       ; $5c67: $f2
	or $0c                                           ; $5c68: $f6 $0c
	add hl, bc                                       ; $5c6a: $09
	cp a                                             ; $5c6b: $bf
	ld a, a                                          ; $5c6c: $7f
	ld a, d                                          ; $5c6d: $7a
	db $d3                                           ; $5c6e: $d3
	rst SubAFromDE                                          ; $5c6f: $df
	ld hl, sp+$7d                                    ; $5c70: $f8 $7d
	sbc b                                            ; $5c72: $98
	sub [hl]                                         ; $5c73: $96
	adc d                                            ; $5c74: $8a
	inc d                                            ; $5c75: $14
	inc h                                            ; $5c76: $24
	ld c, b                                          ; $5c77: $48
	adc b                                            ; $5c78: $88
	sub b                                            ; $5c79: $90
	db $10                                           ; $5c7a: $10

jr_058_5c7b:
	ldh a, [$c0]                                     ; $5c7b: $f0 $c0
	db $fd                                           ; $5c7d: $fd
	sbc l                                            ; $5c7e: $9d
	ccf                                              ; $5c7f: $3f
	cp $f9                                           ; $5c80: $fe $f9
	sbc b                                            ; $5c82: $98
	ld b, c                                          ; $5c83: $41
	ccf                                              ; $5c84: $3f
	rra                                              ; $5c85: $1f
	rlca                                             ; $5c86: $07
	nop                                              ; $5c87: $00
	inc bc                                           ; $5c88: $03
	adc a                                            ; $5c89: $8f
	ld [hl], h                                       ; $5c8a: $74
	rst JumpTable                                          ; $5c8b: $c7
	db $fc                                           ; $5c8c: $fc
	sub h                                            ; $5c8d: $94
	db $fc                                           ; $5c8e: $fc
	ld a, [$f2fa]                                    ; $5c8f: $fa $fa $f2
	ldh a, [c]                                       ; $5c92: $f2
	db $e4                                           ; $5c93: $e4
	push hl                                          ; $5c94: $e5
	push bc                                          ; $5c95: $c5
	inc b                                            ; $5c96: $04
	ld b, $06                                        ; $5c97: $06 $06
	ld a, d                                          ; $5c99: $7a
	ld h, [hl]                                       ; $5c9a: $66
	add b                                            ; $5c9b: $80
	ld e, $3e                                        ; $5c9c: $1e $3e
	ld [$2808], sp                                   ; $5c9e: $08 $08 $28
	ld e, h                                          ; $5ca1: $5c
	ret z                                            ; $5ca2: $c8

	sbc h                                            ; $5ca3: $9c
	cp b                                             ; $5ca4: $b8
	sbc h                                            ; $5ca5: $9c
	ld [hl], a                                       ; $5ca6: $77
	ld [hl], a                                       ; $5ca7: $77
	rst SubAFromHL                                          ; $5ca8: $d7
	and e                                            ; $5ca9: $a3
	scf                                              ; $5caa: $37
	ld h, e                                          ; $5cab: $63
	ld b, a                                          ; $5cac: $47
	ld h, e                                          ; $5cad: $63
	pop hl                                           ; $5cae: $e1
	pop af                                           ; $5caf: $f1
	di                                               ; $5cb0: $f3
	rst FarCall                                          ; $5cb1: $f7
	db $fd                                           ; $5cb2: $fd
	rst $38                                          ; $5cb3: $ff
	jp c, $f9e7                                      ; $5cb4: $da $e7 $f9

	pop hl                                           ; $5cb7: $e1
	pop hl                                           ; $5cb8: $e1
	pop de                                           ; $5cb9: $d1
	db $d3                                           ; $5cba: $d3
	add h                                            ; $5cbb: $84
	adc $e7                                          ; $5cbc: $ce $e7
	rst $38                                          ; $5cbe: $ff
	db $ec                                           ; $5cbf: $ec
	call nz, $8e0e                                   ; $5cc0: $c4 $0e $8e
	xor $de                                          ; $5cc3: $ee $de
	ld a, d                                          ; $5cc5: $7a
	ld a, $1b                                        ; $5cc6: $3e $1b
	dec sp                                           ; $5cc8: $3b
	ld sp, hl                                        ; $5cc9: $f9
	ld sp, hl                                        ; $5cca: $f9
	ld a, c                                          ; $5ccb: $79
	dec a                                            ; $5ccc: $3d
	add a                                            ; $5ccd: $87
	jp Jump_058_5060                                 ; $5cce: $c3 $60 $50


	ld h, e                                          ; $5cd1: $63
	ld [hl], e                                       ; $5cd2: $73
	pop af                                           ; $5cd3: $f1
	ld a, b                                          ; $5cd4: $78
	ld a, h                                          ; $5cd5: $7c
	ld a, e                                          ; $5cd6: $7b
	ld a, d                                          ; $5cd7: $7a
	ld a, e                                          ; $5cd8: $7b
	ld [hl], h                                       ; $5cd9: $74
	ld e, c                                          ; $5cda: $59
	sub [hl]                                         ; $5cdb: $96
	db $fc                                           ; $5cdc: $fc
	ld l, e                                          ; $5cdd: $6b
	ld a, c                                          ; $5cde: $79
	ld hl, sp-$08                                    ; $5cdf: $f8 $f8
	call c, $173e                                    ; $5ce1: $dc $3e $17
	rrca                                             ; $5ce4: $0f
	db $dd                                           ; $5ce5: $dd
	jr nz, jr_058_5c7b                               ; $5ce6: $20 $93

	jr nc, jr_058_5cf2                               ; $5ce8: $30 $08

	rlca                                             ; $5cea: $07
	nop                                              ; $5ceb: $00
	or a                                             ; $5cec: $b7
	rst SubAFromDE                                          ; $5ced: $df

jr_058_5cee:
	rst $38                                          ; $5cee: $ff
	ld l, a                                          ; $5cef: $6f
	ld e, a                                          ; $5cf0: $5f
	cp a                                             ; $5cf1: $bf

jr_058_5cf2:
	rst FarCall                                          ; $5cf2: $f7
	rst AddAOntoHL                                          ; $5cf3: $ef
	halt                                             ; $5cf4: $76
	add hl, bc                                       ; $5cf5: $09
	add h                                            ; $5cf6: $84
	ld l, a                                          ; $5cf7: $6f
	rst JumpTable                                          ; $5cf8: $c7
	rrca                                             ; $5cf9: $0f
	rra                                              ; $5cfa: $1f
	db $dd                                           ; $5cfb: $dd
	call nz, $c6d8                                   ; $5cfc: $c4 $d8 $c6
	ret c                                            ; $5cff: $d8

	sbc l                                            ; $5d00: $9d
	cp d                                             ; $5d01: $ba
	or e                                             ; $5d02: $b3
	db $e3                                           ; $5d03: $e3
	ei                                               ; $5d04: $fb
	rst SubAFromBC                                          ; $5d05: $e7
	ld sp, hl                                        ; $5d06: $f9
	rst SubAFromBC                                          ; $5d07: $e7
	db $e3                                           ; $5d08: $e3
	rst JumpTable                                          ; $5d09: $c7
	call z, $bb0f                                    ; $5d0a: $cc $0f $bb
	rst JumpTable                                          ; $5d0d: $c7
	ldh a, [c]                                       ; $5d0e: $f2
	rst $38                                          ; $5d0f: $ff
	ret                                              ; $5d10: $c9


	ret                                              ; $5d11: $c9


	ld a, c                                          ; $5d12: $79
	ld [$5e75], sp                                   ; $5d13: $08 $75 $5e
	rst SubAFromDE                                          ; $5d16: $df

jr_058_5d17:
	rst $38                                          ; $5d17: $ff
	rst SubAFromDE                                          ; $5d18: $df
	db $e4                                           ; $5d19: $e4
	sbc c                                            ; $5d1a: $99
	jp nc, $fd88                                     ; $5d1b: $d2 $88 $fd

	rlca                                             ; $5d1e: $07
	ld bc, $7aff                                     ; $5d1f: $01 $ff $7a
	db $e4                                           ; $5d22: $e4
	sbc [hl]                                         ; $5d23: $9e
	ld a, [hl]                                       ; $5d24: $7e
	db $dd                                           ; $5d25: $dd
	rst $38                                          ; $5d26: $ff
	sub [hl]                                         ; $5d27: $96
	inc h                                            ; $5d28: $24
	ld d, b                                          ; $5d29: $50
	ld d, b                                          ; $5d2a: $50
	ld c, b                                          ; $5d2b: $48
	ret z                                            ; $5d2c: $c8

	ret nz                                           ; $5d2d: $c0

	call nz, $00c4                                   ; $5d2e: $c4 $c4 $00
	ld a, e                                          ; $5d31: $7b
	or c                                             ; $5d32: $b1
	sub e                                            ; $5d33: $93
	jr nc, jr_058_5cee                               ; $5d34: $30 $b8

	cp b                                             ; $5d36: $b8
	ld hl, sp+$7f                                    ; $5d37: $f8 $7f
	ld l, e                                          ; $5d39: $6b
	ld l, e                                          ; $5d3a: $6b
	ld c, e                                          ; $5d3b: $4b
	ld c, e                                          ; $5d3c: $4b
	ld c, c                                          ; $5d3d: $49
	ld c, c                                          ; $5d3e: $49
	add hl, bc                                       ; $5d3f: $09
	sbc $26                                          ; $5d40: $de $26
	rst SubAFromDE                                          ; $5d42: $df
	dec h                                            ; $5d43: $25
	sbc $24                                          ; $5d44: $de $24
	sbc l                                            ; $5d46: $9d
	reti                                             ; $5d47: $d9


	add sp, $78                                      ; $5d48: $e8 $78
	ei                                               ; $5d4a: $fb
	sub h                                            ; $5d4b: $94
	cp $f8                                           ; $5d4c: $fe $f8
	ldh [hDisp1_LCDC], a                                     ; $5d4e: $e0 $8f
	ld l, a                                          ; $5d50: $6f
	rra                                              ; $5d51: $1f
	inc bc                                           ; $5d52: $03
	inc bc                                           ; $5d53: $03
	inc c                                            ; $5d54: $0c
	jr nc, jr_058_5d17                               ; $5d55: $30 $c0

	ld a, c                                          ; $5d57: $79
	ld bc, $fedf                                     ; $5d58: $01 $df $fe
	sub h                                            ; $5d5b: $94
	adc $73                                          ; $5d5c: $ce $73
	ld a, l                                          ; $5d5e: $7d
	inc bc                                           ; $5d5f: $03
	add h                                            ; $5d60: $84
	add h                                            ; $5d61: $84
	call nz, $cef2                                   ; $5d62: $c4 $f2 $ce
	ld h, d                                          ; $5d65: $62
	ld sp, $4c75                                     ; $5d66: $31 $75 $4c
	ld a, a                                          ; $5d69: $7f
	add $9e                                          ; $5d6a: $c6 $9e
	ld e, b                                          ; $5d6c: $58
	ld a, c                                          ; $5d6d: $79
	ret c                                            ; $5d6e: $d8

	cp $9c                                           ; $5d6f: $fe $9c
	jr nc, jr_058_5dbb                               ; $5d71: $30 $48

	ld d, b                                          ; $5d73: $50
	pop af                                           ; $5d74: $f1
	sbc [hl]                                         ; $5d75: $9e
	add hl, bc                                       ; $5d76: $09
	ld a, d                                          ; $5d77: $7a
	sub b                                            ; $5d78: $90
	sbc [hl]                                         ; $5d79: $9e
	dec c                                            ; $5d7a: $0d
	sbc $0c                                          ; $5d7b: $de $0c
	ld a, l                                          ; $5d7d: $7d
	sub d                                            ; $5d7e: $92
	sbc h                                            ; $5d7f: $9c
	ld a, [bc]                                       ; $5d80: $0a
	inc c                                            ; $5d81: $0c
	ld b, $de                                        ; $5d82: $06 $de
	rlca                                             ; $5d84: $07
	adc l                                            ; $5d85: $8d
	or c                                             ; $5d86: $b1
	inc sp                                           ; $5d87: $33
	ld h, $64                                        ; $5d88: $26 $64
	add sp, -$27                                     ; $5d8a: $e8 $d9
	ld d, c                                          ; $5d8c: $51
	ld d, c                                          ; $5d8d: $51
	db $10                                           ; $5d8e: $10
	jr nz, jr_058_5db2                               ; $5d8f: $20 $21

	inc hl                                           ; $5d91: $23
	ld h, a                                          ; $5d92: $67
	ld h, [hl]                                       ; $5d93: $66
	xor $ee                                          ; $5d94: $ee $ee
	db $fc                                           ; $5d96: $fc
	rst $38                                          ; $5d97: $ff
	ld a, d                                          ; $5d98: $7a
	ld hl, $ffde                                     ; $5d99: $21 $de $ff
	ld a, c                                          ; $5d9c: $79
	and b                                            ; $5d9d: $a0
	ld l, c                                          ; $5d9e: $69
	ld d, b                                          ; $5d9f: $50
	ld a, d                                          ; $5da0: $7a
	ld d, [hl]                                       ; $5da1: $56
	ld a, [hl]                                       ; $5da2: $7e
	and c                                            ; $5da3: $a1
	halt                                             ; $5da4: $76
	ld a, a                                          ; $5da5: $7f
	rst SubAFromDE                                          ; $5da6: $df
	inc bc                                           ; $5da7: $03
	ld a, [hl]                                       ; $5da8: $7e
	ld d, e                                          ; $5da9: $53
	sub l                                            ; $5daa: $95
	rra                                              ; $5dab: $1f
	adc c                                            ; $5dac: $89
	add hl, bc                                       ; $5dad: $09
	dec de                                           ; $5dae: $1b
	dec de                                           ; $5daf: $1b
	inc de                                           ; $5db0: $13
	inc sp                                           ; $5db1: $33

jr_058_5db2:
	scf                                              ; $5db2: $37
	ld [hl], $7e                                     ; $5db3: $36 $7e
	ld a, e                                          ; $5db5: $7b
	jp hl                                            ; $5db6: $e9


	ld a, e                                          ; $5db7: $7b
	rst SubAFromBC                                          ; $5db8: $e7
	adc h                                            ; $5db9: $8c
	ld sp, hl                                        ; $5dba: $f9

jr_058_5dbb:
	cp b                                             ; $5dbb: $b8
	ld a, h                                          ; $5dbc: $7c
	jr c, jr_058_5e3b                                ; $5dbd: $38 $7c

	jr c, jr_058_5e35                                ; $5dbf: $38 $74

	jr c, jr_058_5e37                                ; $5dc1: $38 $74

	ld b, a                                          ; $5dc3: $47
	add e                                            ; $5dc4: $83
	rst JumpTable                                          ; $5dc5: $c7
	add e                                            ; $5dc6: $83
	rst JumpTable                                          ; $5dc7: $c7
	adc e                                            ; $5dc8: $8b
	rst JumpTable                                          ; $5dc9: $c7
	adc e                                            ; $5dca: $8b
	ldh a, [$fb]                                     ; $5dcb: $f0 $fb
	ld a, e                                          ; $5dcd: $7b
	ld l, a                                          ; $5dce: $6f
	ld a, e                                          ; $5dcf: $7b
	call z, Call_058_687f                            ; $5dd0: $cc $7f $68
	call c, $86ff                                    ; $5dd3: $dc $ff $86
	cp $9f                                           ; $5dd6: $fe $9f
	ld b, [hl]                                       ; $5dd8: $46
	and c                                            ; $5dd9: $a1
	reti                                             ; $5dda: $d9


	inc e                                            ; $5ddb: $1c
	call Call_058_7f1e                               ; $5ddc: $cd $1e $7f
	ldh [$f9], a                                     ; $5ddf: $e0 $f9
	ld a, a                                          ; $5de1: $7f
	ccf                                              ; $5de2: $3f
	rst $38                                          ; $5de3: $ff
	ldh a, [c]                                       ; $5de4: $f2
	ld bc, $f800                                     ; $5de5: $01 $00 $f8
	db $fd                                           ; $5de8: $fd
	cp [hl]                                          ; $5de9: $be
	ccf                                              ; $5dea: $3f
	rra                                              ; $5deb: $1f
	ld e, a                                          ; $5dec: $5f
	adc a                                            ; $5ded: $8f
	ld c, [hl]                                       ; $5dee: $4e
	ld a, b                                          ; $5def: $78
	ei                                               ; $5df0: $fb
	rst SubAFromDE                                          ; $5df1: $df
	rst $38                                          ; $5df2: $ff
	ld a, [hl]                                       ; $5df3: $7e

jr_058_5df4:
	ld b, e                                          ; $5df4: $43
	sub b                                            ; $5df5: $90
	cp a                                             ; $5df6: $bf
	jp nz, $f72f                                     ; $5df7: $c2 $2f $f7

	adc b                                            ; $5dfa: $88
	inc bc                                           ; $5dfb: $03
	ld b, h                                          ; $5dfc: $44
	add d                                            ; $5dfd: $82
	add h                                            ; $5dfe: $84
	ld bc, $781f                                     ; $5dff: $01 $1f $78
	rst FarCall                                          ; $5e02: $f7
	db $fc                                           ; $5e03: $fc
	cp e                                             ; $5e04: $bb
	ld a, c                                          ; $5e05: $79
	sbc d                                            ; $5e06: $9a
	sbc b                                            ; $5e07: $98
	adc a                                            ; $5e08: $8f
	rlca                                             ; $5e09: $07
	add e                                            ; $5e0a: $83
	rst SubAFromDE                                          ; $5e0b: $df
	ld b, e                                          ; $5e0c: $43
	pop af                                           ; $5e0d: $f1
	ld hl, sp+$7b                                    ; $5e0e: $f8 $7b
	ld a, c                                          ; $5e10: $79
	ld a, a                                          ; $5e11: $7f
	rst GetHLinHL                                          ; $5e12: $cf
	sbc d                                            ; $5e13: $9a
	cp a                                             ; $5e14: $bf
	rrca                                             ; $5e15: $0f
	rlca                                             ; $5e16: $07
	or a                                             ; $5e17: $b7
	cp a                                             ; $5e18: $bf
	db $dd                                           ; $5e19: $dd
	ld a, a                                          ; $5e1a: $7f
	sbc e                                            ; $5e1b: $9b
	ld a, [hl]                                       ; $5e1c: $7e
	ld a, $c8                                        ; $5e1d: $3e $c8
	ret nz                                           ; $5e1f: $c0

	db $dd                                           ; $5e20: $dd
	add c                                            ; $5e21: $81
	sbc l                                            ; $5e22: $9d
	add e                                            ; $5e23: $83
	jp Jump_058_6b78                                 ; $5e24: $c3 $78 $6b


	sbc $24                                          ; $5e27: $de $24
	rst SubAFromDE                                          ; $5e29: $df
	ld b, h                                          ; $5e2a: $44
	reti                                             ; $5e2b: $d9


	rst $38                                          ; $5e2c: $ff
	sbc d                                            ; $5e2d: $9a
	nop                                              ; $5e2e: $00
	dec b                                            ; $5e2f: $05
	dec b                                            ; $5e30: $05
	inc b                                            ; $5e31: $04
	inc d                                            ; $5e32: $14
	sbc $94                                          ; $5e33: $de $94

jr_058_5e35:
	reti                                             ; $5e35: $d9


	rst $38                                          ; $5e36: $ff

jr_058_5e37:
	sub a                                            ; $5e37: $97
	jp nz, $2022                                     ; $5e38: $c2 $22 $20

jr_058_5e3b:
	sub c                                            ; $5e3b: $91
	sub c                                            ; $5e3c: $91
	adc b                                            ; $5e3d: $88
	ld c, b                                          ; $5e3e: $48
	ld c, b                                          ; $5e3f: $48
	halt                                             ; $5e40: $76
	jp hl                                            ; $5e41: $e9


	ld a, e                                          ; $5e42: $7b
	sbc [hl]                                         ; $5e43: $9e
	sub [hl]                                         ; $5e44: $96
	rst $38                                          ; $5e45: $ff
	add hl, bc                                       ; $5e46: $09
	dec bc                                           ; $5e47: $0b
	rlca                                             ; $5e48: $07
	dec h                                            ; $5e49: $25
	dec h                                            ; $5e4a: $25
	and l                                            ; $5e4b: $a5
	and h                                            ; $5e4c: $a4
	and h                                            ; $5e4d: $a4
	ld a, d                                          ; $5e4e: $7a
	jp $06de                                         ; $5e4f: $c3 $de $06


	rst SubAFromDE                                          ; $5e52: $df
	rlca                                             ; $5e53: $07
	sbc $80                                          ; $5e54: $de $80
	ld a, [hl]                                       ; $5e56: $7e
	ld b, l                                          ; $5e57: $45
	sbc h                                            ; $5e58: $9c
	sub b                                            ; $5e59: $90
	xor b                                            ; $5e5a: $a8
	and l                                            ; $5e5b: $a5
	ld [hl], h                                       ; $5e5c: $74
	cp b                                             ; $5e5d: $b8
	sub a                                            ; $5e5e: $97
	and b                                            ; $5e5f: $a0
	or b                                             ; $5e60: $b0
	sbc b                                            ; $5e61: $98
	sbc h                                            ; $5e62: $9c
	inc bc                                           ; $5e63: $03
	ld b, c                                          ; $5e64: $41
	ld b, b                                          ; $5e65: $40

Jump_058_5e66:
	ld b, b                                          ; $5e66: $40
	sbc $81                                          ; $5e67: $de $81
	sbc l                                            ; $5e69: $9d
	ld bc, $de3d                                     ; $5e6a: $01 $3d $de
	ccf                                              ; $5e6d: $3f
	sbc $7f                                          ; $5e6e: $de $7f
	sbc c                                            ; $5e70: $99
	rst $38                                          ; $5e71: $ff
	jr nc, jr_058_5df4                               ; $5e72: $30 $80

	add c                                            ; $5e74: $81
	adc a                                            ; $5e75: $8f
	db $fc                                           ; $5e76: $fc
	sbc $80                                          ; $5e77: $de $80
	sbc e                                            ; $5e79: $9b
	jr nz, jr_058_5e7c                               ; $5e7a: $20 $00

jr_058_5e7c:
	add b                                            ; $5e7c: $80
	add a                                            ; $5e7d: $87
	ld a, b                                          ; $5e7e: $78
	sbc e                                            ; $5e7f: $9b
	ld a, a                                          ; $5e80: $7f
	ld a, [bc]                                       ; $5e81: $0a
	sbc l                                            ; $5e82: $9d
	ccf                                              ; $5e83: $3f
	ld hl, sp+$6e                                    ; $5e84: $f8 $6e
	rst FarCall                                          ; $5e86: $f7
	sbc l                                            ; $5e87: $9d
	rrca                                             ; $5e88: $0f
	ldh a, [$6e]                                     ; $5e89: $f0 $6e
	ldh a, [$df]                                     ; $5e8b: $f0 $df
	add b                                            ; $5e8d: $80
	ld a, h                                          ; $5e8e: $7c
	adc b                                            ; $5e8f: $88
	ld a, b                                          ; $5e90: $78
	ld l, b                                          ; $5e91: $68
	rst SubAFromDE                                          ; $5e92: $df
	rst $38                                          ; $5e93: $ff
	ld a, a                                          ; $5e94: $7f
	ld h, c                                          ; $5e95: $61
	rst SubAFromDE                                          ; $5e96: $df
	rra                                              ; $5e97: $1f
	ld a, a                                          ; $5e98: $7f
	call $d396                                       ; $5e99: $cd $96 $d3
	ld b, e                                          ; $5e9c: $43
	ld b, e                                          ; $5e9d: $43
	ld b, a                                          ; $5e9e: $47
	ld b, a                                          ; $5e9f: $47
	ld h, [hl]                                       ; $5ea0: $66
	ld l, h                                          ; $5ea1: $6c
	ld [hl], h                                       ; $5ea2: $74
	db $ec                                           ; $5ea3: $ec
	ld a, d                                          ; $5ea4: $7a
	di                                               ; $5ea5: $f3
	ld a, [hl]                                       ; $5ea6: $7e
	ldh a, [c]                                       ; $5ea7: $f2
	sbc l                                            ; $5ea8: $9d
	di                                               ; $5ea9: $f3
	ei                                               ; $5eaa: $fb
	ld [hl], e                                       ; $5eab: $73
	dec bc                                           ; $5eac: $0b
	sbc h                                            ; $5ead: $9c
	cp $7f                                           ; $5eae: $fe $7f
	ccf                                              ; $5eb0: $3f
	db $fd                                           ; $5eb1: $fd
	rst SubAFromDE                                          ; $5eb2: $df
	ld bc, $9c7f                                     ; $5eb3: $01 $7f $9c
	sbc [hl]                                         ; $5eb6: $9e
	ret nz                                           ; $5eb7: $c0

	ld a, e                                          ; $5eb8: $7b
	ld c, a                                          ; $5eb9: $4f
	cp $9e                                           ; $5eba: $fe $9e
	add b                                            ; $5ebc: $80
	ld a, e                                          ; $5ebd: $7b
	and e                                            ; $5ebe: $a3
	db $dd                                           ; $5ebf: $dd
	rst $38                                          ; $5ec0: $ff
	sbc c                                            ; $5ec1: $99
	ld a, a                                          ; $5ec2: $7f
	ld h, $66                                        ; $5ec3: $26 $66
	ld l, [hl]                                       ; $5ec5: $6e
	ld l, [hl]                                       ; $5ec6: $6e
	ld l, h                                          ; $5ec7: $6c
	sbc $cc                                          ; $5ec8: $de $cc
	rst SubAFromDE                                          ; $5eca: $df
	ld sp, hl                                        ; $5ecb: $f9
	rst SubAFromDE                                          ; $5ecc: $df
	pop af                                           ; $5ecd: $f1
	db $dd                                           ; $5ece: $dd
	di                                               ; $5ecf: $f3
	adc a                                            ; $5ed0: $8f
	ld hl, sp+$74                                    ; $5ed1: $f8 $74
	ld hl, sp+$74                                    ; $5ed3: $f8 $74
	add sp, -$0c                                     ; $5ed5: $e8 $f4
	add sp, -$0c                                     ; $5ed7: $e8 $f4
	rlca                                             ; $5ed9: $07
	adc e                                            ; $5eda: $8b
	rlca                                             ; $5edb: $07
	adc e                                            ; $5edc: $8b
	rla                                              ; $5edd: $17
	dec bc                                           ; $5ede: $0b
	rla                                              ; $5edf: $17
	dec bc                                           ; $5ee0: $0b
	ld d, e                                          ; $5ee1: $53
	nop                                              ; $5ee2: $00
	sbc e                                            ; $5ee3: $9b
	ld [hl+], a                                      ; $5ee4: $22
	scf                                              ; $5ee5: $37
	ld [hl], a                                       ; $5ee6: $77
	ld [hl], d                                       ; $5ee7: $72
	sbc $55                                          ; $5ee8: $de $55
	sbc [hl]                                         ; $5eea: $9e
	ld d, d                                          ; $5eeb: $52
	sbc $22                                          ; $5eec: $de $22
	sbc h                                            ; $5eee: $9c
	daa                                              ; $5eef: $27
	ld [hl], a                                       ; $5ef0: $77
	ld [hl], l                                       ; $5ef1: $75
	db $dd                                           ; $5ef2: $dd
	ld d, l                                          ; $5ef3: $55
	sbc $22                                          ; $5ef4: $de $22
	sbc h                                            ; $5ef6: $9c
	inc hl                                           ; $5ef7: $23
	ld [hl], a                                       ; $5ef8: $77
	ld [hl], h                                       ; $5ef9: $74
	db $dd                                           ; $5efa: $dd
	ld d, l                                          ; $5efb: $55
	sbc [hl]                                         ; $5efc: $9e
	ld d, e                                          ; $5efd: $53
	sbc $22                                          ; $5efe: $de $22
	ld e, a                                          ; $5f00: $5f
	or $9e                                           ; $5f01: $f6 $9e
	scf                                              ; $5f03: $37
	ld [hl], e                                       ; $5f04: $73
	or $73                                           ; $5f05: $f6 $73
	pop hl                                           ; $5f07: $e1
	sbc l                                            ; $5f08: $9d
	ld [hl], h                                       ; $5f09: $74
	ld b, l                                          ; $5f0a: $45
	ld l, e                                          ; $5f0b: $6b
	db $ec                                           ; $5f0c: $ec
	sbc l                                            ; $5f0d: $9d
	ld [hl+], a                                      ; $5f0e: $22
	inc [hl]                                         ; $5f0f: $34
	ld [hl], a                                       ; $5f10: $77
	or $7b                                           ; $5f11: $f6 $7b
	jp $26df                                         ; $5f13: $c3 $df $26


	ld [hl], a                                       ; $5f16: $77
	or $9c                                           ; $5f17: $f6 $9c
	ld d, h                                          ; $5f19: $54
	ld b, a                                          ; $5f1a: $47
	ld [hl], d                                       ; $5f1b: $72
	ld a, e                                          ; $5f1c: $7b
	push af                                          ; $5f1d: $f5
	sbc e                                            ; $5f1e: $9b
	daa                                              ; $5f1f: $27
	ld b, h                                          ; $5f20: $44
	ld b, h                                          ; $5f21: $44
	ld d, l                                          ; $5f22: $55
	sbc $77                                          ; $5f23: $de $77
	ld [hl], e                                       ; $5f25: $73
	xor [hl]                                         ; $5f26: $ae
	sbc l                                            ; $5f27: $9d
	ld b, a                                          ; $5f28: $47
	ld b, h                                          ; $5f29: $44
	ld [hl], a                                       ; $5f2a: $77
	or $9a                                           ; $5f2b: $f6 $9a
	ld h, $62                                        ; $5f2d: $26 $62
	ld [hl+], a                                      ; $5f2f: $22
	ld [hl], a                                       ; $5f30: $77
	ld [hl], a                                       ; $5f31: $77
	ld [hl], a                                       ; $5f32: $77

Jump_058_5f33:
	or $60                                           ; $5f33: $f6 $60
	adc e                                            ; $5f35: $8b
	pop af                                           ; $5f36: $f1
	sbc b                                            ; $5f37: $98
	xor d                                            ; $5f38: $aa
	ld d, l                                          ; $5f39: $55
	xor d                                            ; $5f3a: $aa
	dec b                                            ; $5f3b: $05
	xor d                                            ; $5f3c: $aa
	nop                                              ; $5f3d: $00
	xor d                                            ; $5f3e: $aa
	ld d, a                                          ; $5f3f: $57
	ldh a, [rPCM34]                                  ; $5f40: $f0 $77
	cp $9e                                           ; $5f42: $fe $9e
	dec b                                            ; $5f44: $05
	ld c, e                                          ; $5f45: $4b
	ldh a, [$9e]                                     ; $5f46: $f0 $9e
	ld d, h                                          ; $5f48: $54
	ld sp, hl                                        ; $5f49: $f9
	sbc l                                            ; $5f4a: $9d
	adc d                                            ; $5f4b: $8a
	ld b, l                                          ; $5f4c: $45
	ld l, a                                          ; $5f4d: $6f
	cp $d9                                           ; $5f4e: $fe $d9
	jr nc, @+$79                                     ; $5f50: $30 $77

	ldh [c], a                                       ; $5f52: $e2
	sbc e                                            ; $5f53: $9b
	xor b                                            ; $5f54: $a8
	ld d, c                                          ; $5f55: $51
	and d                                            ; $5f56: $a2
	ld b, c                                          ; $5f57: $41
	db $fd                                           ; $5f58: $fd
	add b                                            ; $5f59: $80
	inc bc                                           ; $5f5a: $03
	ld b, $0d                                        ; $5f5b: $06 $0d
	ld e, $aa                                        ; $5f5d: $1e $aa
	ld d, d                                          ; $5f5f: $52
	add b                                            ; $5f60: $80
	jp hl                                            ; $5f61: $e9


	and c                                            ; $5f62: $a1
	ld d, l                                          ; $5f63: $55
	cp d                                             ; $5f64: $ba
	ld [hl], l                                       ; $5f65: $75
	ld [bc], a                                       ; $5f66: $02
	ld [bc], a                                       ; $5f67: $02
	pop hl                                           ; $5f68: $e1
	rst FarCall                                          ; $5f69: $f7
	ld b, b                                          ; $5f6a: $40
	and b                                            ; $5f6b: $a0
	ld b, b                                          ; $5f6c: $40
	add b                                            ; $5f6d: $80
	nop                                              ; $5f6e: $00
	nop                                              ; $5f6f: $00
	ld d, b                                          ; $5f70: $50
	ld hl, sp+$50                                    ; $5f71: $f8 $50
	xor b                                            ; $5f73: $a8
	call nc, $0068                                   ; $5f74: $d4 $68 $00
	nop                                              ; $5f77: $00
	ldh a, [$9a]                                     ; $5f78: $f0 $9a
	ldh a, [$ac]                                     ; $5f7a: $f0 $ac
	ld d, [hl]                                       ; $5f7c: $56
	dec hl                                           ; $5f7d: $2b
	rla                                              ; $5f7e: $17
	ldh a, [c]                                       ; $5f7f: $f2
	sbc c                                            ; $5f80: $99
	add b                                            ; $5f81: $80
	ld [de], a                                       ; $5f82: $12
	inc h                                            ; $5f83: $24
	add hl, hl                                       ; $5f84: $29
	ld c, d                                          ; $5f85: $4a
	ld d, d                                          ; $5f86: $52
	sbc $a5                                          ; $5f87: $de $a5
	sbc d                                            ; $5f89: $9a
	rra                                              ; $5f8a: $1f
	ccf                                              ; $5f8b: $3f
	ccf                                              ; $5f8c: $3f
	ld a, a                                          ; $5f8d: $7f
	ld a, a                                          ; $5f8e: $7f
	sbc $fe                                          ; $5f8f: $de $fe
	add b                                            ; $5f91: $80
	ld c, h                                          ; $5f92: $4c
	sub c                                            ; $5f93: $91
	ld d, [hl]                                       ; $5f94: $56
	xor h                                            ; $5f95: $ac
	or h                                             ; $5f96: $b4
	call nz, Call_058_5868                           ; $5f97: $c4 $68 $58
	rst $38                                          ; $5f9a: $ff
	rst $38                                          ; $5f9b: $ff
	cp e                                             ; $5f9c: $bb
	halt                                             ; $5f9d: $76
	ld h, [hl]                                       ; $5f9e: $66
	ld l, [hl]                                       ; $5f9f: $6e
	adc $ce                                          ; $5fa0: $ce $ce
	db $fc                                           ; $5fa2: $fc
	inc bc                                           ; $5fa3: $03
	ret nz                                           ; $5fa4: $c0

	jr nz, jr_058_5fff                               ; $5fa5: $20 $58

	ld l, $23                                        ; $5fa7: $2e $23
	and c                                            ; $5fa9: $a1
	rst $38                                          ; $5faa: $ff
	rst $38                                          ; $5fab: $ff
	ccf                                              ; $5fac: $3f
	rra                                              ; $5fad: $1f
	ccf                                              ; $5fae: $3f
	ld [hl], a                                       ; $5faf: $77
	ld [hl], c                                       ; $5fb0: $71
	sub [hl]                                         ; $5fb1: $96
	ld [hl], b                                       ; $5fb2: $70
	inc b                                            ; $5fb3: $04
	ld [$6090], sp                                   ; $5fb4: $08 $90 $60
	ld hl, $0201                                     ; $5fb7: $21 $01 $02
	add d                                            ; $5fba: $82
	reti                                             ; $5fbb: $d9


	rst $38                                          ; $5fbc: $ff
	add b                                            ; $5fbd: $80
	jr nc, jr_058_6034                               ; $5fbe: $30 $74

	xor d                                            ; $5fc0: $aa
	sub h                                            ; $5fc1: $94
	ld [hl+], a                                      ; $5fc2: $22
	ld bc, $0010                                     ; $5fc3: $01 $10 $00
	ldh [$f8], a                                     ; $5fc6: $e0 $f8
	call c, $cfcf                                    ; $5fc8: $dc $cf $cf
	rst SubAFromBC                                          ; $5fcb: $e7
	db $e3                                           ; $5fcc: $e3
	pop af                                           ; $5fcd: $f1
	xor b                                            ; $5fce: $a8
	ld d, d                                          ; $5fcf: $52
	add hl, hl                                       ; $5fd0: $29
	sub h                                            ; $5fd1: $94
	ld c, d                                          ; $5fd2: $4a
	dec d                                            ; $5fd3: $15
	adc l                                            ; $5fd4: $8d
	ld b, d                                          ; $5fd5: $42
	ld [hl], b                                       ; $5fd6: $70
	inc a                                            ; $5fd7: $3c
	ld e, $0f                                        ; $5fd8: $1e $0f
	add a                                            ; $5fda: $87
	db $e3                                           ; $5fdb: $e3
	di                                               ; $5fdc: $f3
	add [hl]                                         ; $5fdd: $86
	db $fd                                           ; $5fde: $fd
	add h                                            ; $5fdf: $84
	ld b, d                                          ; $5fe0: $42
	ld hl, $3850                                     ; $5fe1: $21 $50 $38
	inc c                                            ; $5fe4: $0c
	inc bc                                           ; $5fe5: $03
	add b                                            ; $5fe6: $80
	rst $38                                          ; $5fe7: $ff
	ld a, a                                          ; $5fe8: $7f
	ccf                                              ; $5fe9: $3f
	sbc a                                            ; $5fea: $9f
	rst GetHLinHL                                          ; $5feb: $cf
	rst FarCall                                          ; $5fec: $f7
	rst $38                                          ; $5fed: $ff
	rst $38                                          ; $5fee: $ff
	adc c                                            ; $5fef: $89
	ld b, h                                          ; $5ff0: $44
	ld [hl+], a                                      ; $5ff1: $22
	sub c                                            ; $5ff2: $91
	ld c, b                                          ; $5ff3: $48
	inc h                                            ; $5ff4: $24
	ld [de], a                                       ; $5ff5: $12
	sub l                                            ; $5ff6: $95
	jp c, $8eff                                      ; $5ff7: $da $ff $8e

	ei                                               ; $5ffa: $fb
	adc a                                            ; $5ffb: $8f
	ld b, a                                          ; $5ffc: $47
	dec hl                                           ; $5ffd: $2b
	dec d                                            ; $5ffe: $15

jr_058_5fff:
	xor d                                            ; $5fff: $aa
	ld d, d                                          ; $6000: $52
	add hl, de                                       ; $6001: $19
	ld c, h                                          ; $6002: $4c
	pop af                                           ; $6003: $f1
	ld sp, hl                                        ; $6004: $f9
	db $f4                                           ; $6005: $f4
	ld a, [$ecdd]                                    ; $6006: $fa $dd $ec
	and $b3                                          ; $6009: $e6 $b3
	ld a, e                                          ; $600b: $7b
	ld l, l                                          ; $600c: $6d
	sbc d                                            ; $600d: $9a
	add b                                            ; $600e: $80
	ret nz                                           ; $600f: $c0

	ret nz                                           ; $6010: $c0

	ld h, b                                          ; $6011: $60
	ld h, b                                          ; $6012: $60
	db $dd                                           ; $6013: $dd
	rst $38                                          ; $6014: $ff
	rst SubAFromDE                                          ; $6015: $df
	ld a, a                                          ; $6016: $7f
	rst SubAFromDE                                          ; $6017: $df
	ccf                                              ; $6018: $3f
	ld sp, hl                                        ; $6019: $f9
	reti                                             ; $601a: $d9


	rst $38                                          ; $601b: $ff
	pop af                                           ; $601c: $f1
	sbc [hl]                                         ; $601d: $9e
	ld a, [bc]                                       ; $601e: $0a
	ld b, [hl]                                       ; $601f: $46
	or b                                             ; $6020: $b0
	ld [hl], e                                       ; $6021: $73
	cp $5f                                           ; $6022: $fe $5f
	ld [$f06f], a                                    ; $6024: $ea $6f $f0
	ld e, [hl]                                       ; $6027: $5e
	and b                                            ; $6028: $a0
	sbc l                                            ; $6029: $9d
	adc d                                            ; $602a: $8a
	dec b                                            ; $602b: $05
	ld [hl], a                                       ; $602c: $77
	cp $9d                                           ; $602d: $fe $9d
	add e                                            ; $602f: $83
	rrca                                             ; $6030: $0f
	db $dd                                           ; $6031: $dd
	jr nc, @-$6b                                     ; $6032: $30 $93

jr_058_6034:
	ld sp, $3c32                                     ; $6034: $31 $32 $3c
	jr nc, @-$7e                                     ; $6037: $30 $80

	ld a, a                                          ; $6039: $7f
	sbc a                                            ; $603a: $9f
	ld e, [hl]                                       ; $603b: $5e
	rst AddAOntoHL                                          ; $603c: $ef
	cpl                                              ; $603d: $2f
	scf                                              ; $603e: $37
	ldh [c], a                                       ; $603f: $e2
	ld a, e                                          ; $6040: $7b
	ld bc, $b780                                     ; $6041: $01 $80 $b7
	rra                                              ; $6044: $1f
	rra                                              ; $6045: $1f
	rrca                                             ; $6046: $0f
	inc e                                            ; $6047: $1c
	cp d                                             ; $6048: $ba
	sbc h                                            ; $6049: $9c
	ld b, b                                          ; $604a: $40
	ldh a, [c]                                       ; $604b: $f2
	or $30                                           ; $604c: $f6 $30
	rst $38                                          ; $604e: $ff
	add a                                            ; $604f: $87
	ld b, b                                          ; $6050: $40
	db $e3                                           ; $6051: $e3
	add b                                            ; $6052: $80
	ld b, d                                          ; $6053: $42
	add $c0                                          ; $6054: $c6 $c0
	rst $38                                          ; $6056: $ff
	ld a, b                                          ; $6057: $78
	call nc, $4301                                   ; $6058: $d4 $01 $43
	ld e, d                                          ; $605b: $5a
	sub [hl]                                         ; $605c: $96
	adc a                                            ; $605d: $8f
	ld hl, sp+$00                                    ; $605e: $f8 $00
	dec hl                                           ; $6060: $2b
	rst $38                                          ; $6061: $ff
	adc c                                            ; $6062: $89
	ccf                                              ; $6063: $3f
	dec l                                            ; $6064: $2d
	ld a, a                                          ; $6065: $7f
	ld a, [hl]                                       ; $6066: $7e
	cp $e0                                           ; $6067: $fe $e0
	ld bc, $4181                                     ; $6069: $01 $81 $41
	pop hl                                           ; $606c: $e1
	or e                                             ; $606d: $b3
	ld e, e                                          ; $606e: $5b
	xor a                                            ; $606f: $af
	ld d, a                                          ; $6070: $57
	add c                                            ; $6071: $81
	pop bc                                           ; $6072: $c1
	and c                                            ; $6073: $a1
	ld de, $060a                                     ; $6074: $11 $0a $06
	ld [bc], a                                       ; $6077: $02
	ld [bc], a                                       ; $6078: $02
	db $dd                                           ; $6079: $dd
	ld c, b                                          ; $607a: $48
	db $dd                                           ; $607b: $dd
	sub b                                            ; $607c: $90
	reti                                             ; $607d: $d9


	rst $38                                          ; $607e: $ff
	sbc e                                            ; $607f: $9b
	ld c, b                                          ; $6080: $48
	ld l, b                                          ; $6081: $68
	ld l, b                                          ; $6082: $68
	xor c                                            ; $6083: $a9
	db $dd                                           ; $6084: $dd
	adc c                                            ; $6085: $89
	db $dd                                           ; $6086: $dd
	sbc $dd                                          ; $6087: $de $dd
	cp $97                                           ; $6089: $fe $97
	and b                                            ; $608b: $a0
	and c                                            ; $608c: $a1
	and c                                            ; $608d: $a1
	and d                                            ; $608e: $a2
	jp nz, Jump_058_4543                             ; $608f: $c2 $43 $45

	ld b, l                                          ; $6092: $45
	sbc $70                                          ; $6093: $de $70
	rst SubAFromDE                                          ; $6095: $df
	ld [hl], c                                       ; $6096: $71
	add c                                            ; $6097: $81
	pop af                                           ; $6098: $f1
	di                                               ; $6099: $f3
	di                                               ; $609a: $f3
	call nz, Call_058_480f                           ; $609b: $c4 $0f $48

Jump_058_609e:
	add c                                            ; $609e: $81
	xor b                                            ; $609f: $a8
	jr z, jr_058_60cc                                ; $60a0: $28 $2a

	ld [hl], b                                       ; $60a2: $70
	ld a, a                                          ; $60a3: $7f
	rst $38                                          ; $60a4: $ff
	rst $38                                          ; $60a5: $ff
	cp $ff                                           ; $60a6: $fe $ff
	rst $38                                          ; $60a8: $ff
	db $fd                                           ; $60a9: $fd
	xor l                                            ; $60aa: $ad
	nop                                              ; $60ab: $00
	add d                                            ; $60ac: $82
	pop bc                                           ; $60ad: $c1
	ld h, b                                          ; $60ae: $60
	ldh a, [$38]                                     ; $60af: $f0 $38
	inc c                                            ; $60b1: $0c
	ld l, $f8                                        ; $60b2: $2e $f8
	db $fc                                           ; $60b4: $fc
	cp $7a                                           ; $60b5: $fe $7a
	sbc $95                                          ; $60b7: $de $95
	rst SubAFromDE                                          ; $60b9: $df
	rst GetHLinHL                                          ; $60ba: $cf
	ld hl, $0810                                     ; $60bb: $21 $10 $08
	ld [$1a34], sp                                   ; $60be: $08 $34 $1a
	ld bc, $7700                                     ; $60c1: $01 $00 $77
	ldh a, [c]                                       ; $60c4: $f2
	ld a, [hl]                                       ; $60c5: $7e
	or b                                             ; $60c6: $b0
	rst SubAFromDE                                          ; $60c7: $df
	rst $38                                          ; $60c8: $ff
	ld a, [hl]                                       ; $60c9: $7e
	inc a                                            ; $60ca: $3c
	ld a, a                                          ; $60cb: $7f

jr_058_60cc:
	rst AddAOntoHL                                          ; $60cc: $ef
	sbc h                                            ; $60cd: $9c
	inc b                                            ; $60ce: $04
	ld [bc], a                                       ; $60cf: $02
	ld bc, $c07a                                     ; $60d0: $01 $7a $c0
	db $db                                           ; $60d3: $db
	rst $38                                          ; $60d4: $ff
	sub l                                            ; $60d5: $95
	ld c, d                                          ; $60d6: $4a
	dec h                                            ; $60d7: $25
	inc de                                           ; $60d8: $13
	add hl, bc                                       ; $60d9: $09
	dec b                                            ; $60da: $05
	ld [bc], a                                       ; $60db: $02
	ld bc, $fdc0                                     ; $60dc: $01 $c0 $fd
	cp $7b                                           ; $60df: $fe $7b
	pop bc                                           ; $60e1: $c1
	sbc $ff                                          ; $60e2: $de $ff
	add a                                            ; $60e4: $87
	and d                                            ; $60e5: $a2
	dec [hl]                                         ; $60e6: $35
	ld [$8550], sp                                   ; $60e7: $08 $50 $85
	xor b                                            ; $60ea: $a8
	ret nz                                           ; $60eb: $c0

	and h                                            ; $60ec: $a4
	reti                                             ; $60ed: $d9


	ret z                                            ; $60ee: $c8

	ld h, h                                          ; $60ef: $64
	ld h, $32                                        ; $60f0: $26 $32
	sub e                                            ; $60f2: $93
	sbc c                                            ; $60f3: $99
	ret                                              ; $60f4: $c9


	or b                                             ; $60f5: $b0
	db $10                                           ; $60f6: $10
	jr @-$26                                         ; $60f7: $18 $d8

	ld l, h                                          ; $60f9: $6c
	ld a, h                                          ; $60fa: $7c
	cp [hl]                                          ; $60fb: $be
	cp [hl]                                          ; $60fc: $be
	ld a, e                                          ; $60fd: $7b
	inc [hl]                                         ; $60fe: $34
	sbc d                                            ; $60ff: $9a
	rrca                                             ; $6100: $0f
	rlca                                             ; $6101: $07
	rlca                                             ; $6102: $07
	inc bc                                           ; $6103: $03
	inc bc                                           ; $6104: $03
	ld b, d                                          ; $6105: $42
	ret nz                                           ; $6106: $c0

	sbc b                                            ; $6107: $98
	ld d, b                                          ; $6108: $50
	nop                                              ; $6109: $00
	ld d, h                                          ; $610a: $54
	nop                                              ; $610b: $00
	ld d, l                                          ; $610c: $55
	add b                                            ; $610d: $80
	ld d, l                                          ; $610e: $55
	ldh [$d9], a                                     ; $610f: $e0 $d9
	sbc d                                            ; $6111: $9a
	ld a, [hl+]                                      ; $6112: $2a
	nop                                              ; $6113: $00

jr_058_6114:
	ld [$0100], sp                                   ; $6114: $08 $00 $01
	ei                                               ; $6117: $fb
	ld a, [hl]                                       ; $6118: $7e
	ld a, [bc]                                       ; $6119: $0a
	add d                                            ; $611a: $82
	inc bc                                           ; $611b: $03
	ld bc, $1300                                     ; $611c: $01 $00 $13
	inc sp                                           ; $611f: $33
	ld a, [hl]                                       ; $6120: $7e
	inc a                                            ; $6121: $3c
	jr c, jr_058_6114                                ; $6122: $38 $f0

	ld e, b                                          ; $6124: $58
	inc l                                            ; $6125: $2c
	jr nz, jr_058_6168                               ; $6126: $20 $40

	add c                                            ; $6128: $81
	inc bc                                           ; $6129: $03
	ld b, $0c                                        ; $612a: $06 $0c
	add h                                            ; $612c: $84
	jp nz, $8ac5                                     ; $612d: $c2 $c5 $8a

	ld d, l                                          ; $6130: $55
	jr z, jr_058_6183                                ; $6131: $28 $50

	jr nz, jr_058_6135                               ; $6133: $20 $00

jr_058_6135:
	nop                                              ; $6135: $00
	jr nc, jr_058_6198                               ; $6136: $30 $60

	ld a, c                                          ; $6138: $79
	sub l                                            ; $6139: $95
	cp $9e                                           ; $613a: $fe $9e
	ld c, $6f                                        ; $613c: $0e $6f
	ld sp, hl                                        ; $613e: $f9
	sbc l                                            ; $613f: $9d
	nop                                              ; $6140: $00
	ld sp, $9ef2                                     ; $6141: $31 $f2 $9e
	ret nz                                           ; $6144: $c0

	ld a, [$7e7d]                                    ; $6145: $fa $7d $7e
	sbc [hl]                                         ; $6148: $9e
	dec bc                                           ; $6149: $0b
	ld a, e                                          ; $614a: $7b
	ld l, d                                          ; $614b: $6a
	rst SubAFromDE                                          ; $614c: $df
	rlca                                             ; $614d: $07
	sbc $02                                          ; $614e: $de $02
	sbc $03                                          ; $6150: $de $03
	sbc l                                            ; $6152: $9d
	rlca                                             ; $6153: $07
	ld b, $da                                        ; $6154: $06 $da
	sub b                                            ; $6156: $90
	sbc [hl]                                         ; $6157: $9e
	adc b                                            ; $6158: $88
	reti                                             ; $6159: $d9


	rst $38                                          ; $615a: $ff

Call_058_615b:
	sbc [hl]                                         ; $615b: $9e
	adc c                                            ; $615c: $89
	db $db                                           ; $615d: $db
	adc b                                            ; $615e: $88
	sbc [hl]                                         ; $615f: $9e
	sbc b                                            ; $6160: $98
	ld l, a                                          ; $6161: $6f
	ld [hl+], a                                      ; $6162: $22
	rst SubAFromDE                                          ; $6163: $df
	rst $38                                          ; $6164: $ff
	db $dd                                           ; $6165: $dd
	ld b, l                                          ; $6166: $45
	rst SubAFromDE                                          ; $6167: $df

jr_058_6168:
	ld c, l                                          ; $6168: $4d
	sbc l                                            ; $6169: $9d
	ld c, a                                          ; $616a: $4f
	ld c, e                                          ; $616b: $4b
	jp c, $80f3                                      ; $616c: $da $f3 $80

	rst FarCall                                          ; $616f: $f7
	ld d, a                                          ; $6170: $57
	dec c                                            ; $6171: $0d
	inc c                                            ; $6172: $0c
	ld [hl-], a                                      ; $6173: $32
	dec hl                                           ; $6174: $2b
	ld [hl], l                                       ; $6175: $75
	ld de, $acb1                                     ; $6176: $11 $b1 $ac
	and [hl]                                         ; $6179: $a6
	and a                                            ; $617a: $a7
	add a                                            ; $617b: $87
	sub e                                            ; $617c: $93

Call_058_617d:
	sbc e                                            ; $617d: $9b
	rst SubAFromDE                                          ; $617e: $df
	rst SubAFromDE                                          ; $617f: $df

Jump_058_6180:
	sub a                                            ; $6180: $97
	ld c, d                                          ; $6181: $4a
	db $e3                                           ; $6182: $e3

jr_058_6183:
	ld sp, $1c28                                     ; $6183: $31 $28 $1c
	sbc a                                            ; $6186: $9f
	adc $e7                                          ; $6187: $ce $e7
	rst FarCall                                          ; $6189: $f7
	ld a, [hl]                                       ; $618a: $7e
	rst $38                                          ; $618b: $ff
	rst $38                                          ; $618c: $ff
	rst FarCall                                          ; $618d: $f7
	sub l                                            ; $618e: $95
	di                                               ; $618f: $f3
	ld sp, hl                                        ; $6190: $f9
	nop                                              ; $6191: $00
	add b                                            ; $6192: $80
	ld b, b                                          ; $6193: $40
	and b                                            ; $6194: $a0
	ret c                                            ; $6195: $d8

	ld [hl], h                                       ; $6196: $74
	dec sp                                           ; $6197: $3b

jr_058_6198:
	sbc $75                                          ; $6198: $de $75
	pop bc                                           ; $619a: $c1
	sub e                                            ; $619b: $93
	cp a                                             ; $619c: $bf
	rst GetHLinHL                                          ; $619d: $cf
	rst SubAFromBC                                          ; $619e: $e7
	pop af                                           ; $619f: $f1
	ld b, b                                          ; $61a0: $40
	ld h, b                                          ; $61a1: $60
	jr c, jr_058_61ba                                ; $61a2: $38 $16

	add hl, bc                                       ; $61a4: $09
	inc b                                            ; $61a5: $04
	ld [bc], a                                       ; $61a6: $02
	pop bc                                           ; $61a7: $c1
	reti                                             ; $61a8: $d9


	rst $38                                          ; $61a9: $ff
	sub a                                            ; $61aa: $97
	ld [hl], b                                       ; $61ab: $70
	ld l, $11                                        ; $61ac: $2e $11
	add hl, bc                                       ; $61ae: $09

jr_058_61af:
	add [hl]                                         ; $61af: $86
	ld h, c                                          ; $61b0: $61
	ld e, h                                          ; $61b1: $5c
	ld c, e                                          ; $61b2: $4b
	reti                                             ; $61b3: $d9


	rst $38                                          ; $61b4: $ff
	sub l                                            ; $61b5: $95
	ld d, d                                          ; $61b6: $52
	jr c, @-$71                                      ; $61b7: $38 $8d

	ld h, d                                          ; $61b9: $62

jr_058_61ba:
	sbc l                                            ; $61ba: $9d
	adc e                                            ; $61bb: $8b
	ld b, h                                          ; $61bc: $44
	db $e4                                           ; $61bd: $e4
	db $ec                                           ; $61be: $ec
	or $6f                                           ; $61bf: $f6 $6f
	adc [hl]                                         ; $61c1: $8e
	sbc l                                            ; $61c2: $9d
	ld c, a                                          ; $61c3: $4f
	daa                                              ; $61c4: $27
	ld a, e                                          ; $61c5: $7b
	xor c                                            ; $61c6: $a9
	sub h                                            ; $61c7: $94
	ret                                              ; $61c8: $c9


	ld c, a                                          ; $61c9: $4f
	ld h, $91                                        ; $61ca: $26 $91
	reti                                             ; $61cc: $d9


	ld l, c                                          ; $61cd: $69
	ld l, l                                          ; $61ce: $6d
	db $e4                                           ; $61cf: $e4
	or $f2                                           ; $61d0: $f6 $f2
	ei                                               ; $61d2: $fb
	ld [hl], b                                       ; $61d3: $70
	db $db                                           ; $61d4: $db
	ld a, c                                          ; $61d5: $79
	ld l, [hl]                                       ; $61d6: $6e
	db $db                                           ; $61d7: $db
	rst $38                                          ; $61d8: $ff
	rst SubAFromDE                                          ; $61d9: $df
	ld a, a                                          ; $61da: $7f
	sbc h                                            ; $61db: $9c
	xor b                                            ; $61dc: $a8
	ld d, l                                          ; $61dd: $55
	xor b                                            ; $61de: $a8
	ld [hl], b                                       ; $61df: $70
	ld l, [hl]                                       ; $61e0: $6e
	ld hl, sp-$64                                    ; $61e1: $f8 $9c
	ld b, h                                          ; $61e3: $44
	nop                                              ; $61e4: $00
	ld d, l                                          ; $61e5: $55
	ld [hl], e                                       ; $61e6: $73
	cp $eb                                           ; $61e7: $fe $eb
	ld h, [hl]                                       ; $61e9: $66
	add b                                            ; $61ea: $80
	sbc [hl]                                         ; $61eb: $9e
	ldh [rOCPD], a                                   ; $61ec: $e0 $6b
	ld sp, hl                                        ; $61ee: $f9
	sbc e                                            ; $61ef: $9b
	db $10                                           ; $61f0: $10
	ld d, $0b                                        ; $61f1: $16 $0b
	ld [bc], a                                       ; $61f3: $02
	ld [hl], d                                       ; $61f4: $72
	or c                                             ; $61f5: $b1
	sub a                                            ; $61f6: $97
	ld h, c                                          ; $61f7: $61
	jr nc, jr_058_6236                               ; $61f8: $30 $3c

	ld [hl], $33                                     ; $61fa: $36 $33
	ld sp, $3030                                     ; $61fc: $31 $30 $30
	ld a, e                                          ; $61ff: $7b
	and d                                            ; $6200: $a2
	sbc d                                            ; $6201: $9a
	ld b, b                                          ; $6202: $40
	ldh [$30], a                                     ; $6203: $e0 $30
	jr jr_058_620c                                   ; $6205: $18 $05

	ld a, e                                          ; $6207: $7b
	ld sp, hl                                        ; $6208: $f9
	sbc d                                            ; $6209: $9a
	jr nz, jr_058_621c                               ; $620a: $20 $10

jr_058_620c:
	ret z                                            ; $620c: $c8

	ld h, h                                          ; $620d: $64
	ld a, $eb                                        ; $620e: $3e $eb
	sbc [hl]                                         ; $6210: $9e
	ld bc, $2f6d                                     ; $6211: $01 $6d $2f
	ld a, [hl]                                       ; $6214: $7e
	ld a, [hl]                                       ; $6215: $7e
	rst SubAFromDE                                          ; $6216: $df
	rlca                                             ; $6217: $07
	sbc e                                            ; $6218: $9b
	rrca                                             ; $6219: $0f
	ld e, $3c                                        ; $621a: $1e $3c

jr_058_621c:
	ld e, b                                          ; $621c: $58
	ld a, b                                          ; $621d: $78
	jr z, jr_058_61af                                ; $621e: $28 $8f

	ld c, $14                                        ; $6220: $0e $14
	dec h                                            ; $6222: $25
	ld c, e                                          ; $6223: $4b
	add [hl]                                         ; $6224: $86
	inc e                                            ; $6225: $1c
	jr nc, jr_058_6288                               ; $6226: $30 $60

	adc b                                            ; $6228: $88
	adc b                                            ; $6229: $88
	ld c, c                                          ; $622a: $49
	ld b, l                                          ; $622b: $45
	dec h                                            ; $622c: $25
	dec h                                            ; $622d: $25
	dec d                                            ; $622e: $15
	ld c, $6c                                        ; $622f: $0e $6c
	jp nc, $0b7e                                     ; $6231: $d2 $7e $0b

	rst SubAFromDE                                          ; $6234: $df
	xor b                                            ; $6235: $a8

jr_058_6236:
	sbc $28                                          ; $6236: $de $28
	sbc h                                            ; $6238: $9c
	ld c, b                                          ; $6239: $48
	ld d, b                                          ; $623a: $50
	ld d, b                                          ; $623b: $50
	reti                                             ; $623c: $d9


	rst $38                                          ; $623d: $ff
	rst SubAFromDE                                          ; $623e: $df
	ld c, d                                          ; $623f: $4a
	adc c                                            ; $6240: $89
	ld b, h                                          ; $6241: $44
	ld b, l                                          ; $6242: $45
	ld b, l                                          ; $6243: $45
	ld c, e                                          ; $6244: $4b
	adc e                                            ; $6245: $8b
	sub h                                            ; $6246: $94
	rst FarCall                                          ; $6247: $f7
	rst FarCall                                          ; $6248: $f7
	rst $38                                          ; $6249: $ff
	cp $fe                                           ; $624a: $fe $fe
	db $fc                                           ; $624c: $fc
	db $fc                                           ; $624d: $fc
	ei                                               ; $624e: $fb
	adc c                                            ; $624f: $89
	ld c, b                                          ; $6250: $48
	call nz, $d3a6                                   ; $6251: $c4 $a6 $d3
	ld [$03f5], a                                    ; $6254: $ea $f5 $03
	ld [hl], e                                       ; $6257: $73
	ret nc                                           ; $6258: $d0

	ld a, a                                          ; $6259: $7f
	pop de                                           ; $625a: $d1
	add b                                            ; $625b: $80
	rst $38                                          ; $625c: $ff
	and a                                            ; $625d: $a7
	db $d3                                           ; $625e: $d3
	xor l                                            ; $625f: $ad
	ld [hl], d                                       ; $6260: $72
	ld a, l                                          ; $6261: $7d
	cp a                                             ; $6262: $bf
	ld a, a                                          ; $6263: $7f
	ccf                                              ; $6264: $3f
	db $fc                                           ; $6265: $fc
	cp [hl]                                          ; $6266: $be
	rst SubAFromDE                                          ; $6267: $df
	rst GetHLinHL                                          ; $6268: $cf
	jp $f0e0                                         ; $6269: $c3 $e0 $f0


	ret c                                            ; $626c: $d8

	xor a                                            ; $626d: $af
	call nc, $fbef                                   ; $626e: $d4 $ef $fb
	cp $7b                                           ; $6271: $fe $7b
	push hl                                          ; $6273: $e5
	db $eb                                           ; $6274: $eb
	ld a, b                                          ; $6275: $78
	ccf                                              ; $6276: $3f
	rra                                              ; $6277: $1f
	add a                                            ; $6278: $87
	rst JumpTable                                          ; $6279: $c7
	db $ec                                           ; $627a: $ec
	sbc d                                            ; $627b: $9a
	ld a, [de]                                       ; $627c: $1a
	inc d                                            ; $627d: $14
	jr nz, jr_058_62fc                               ; $627e: $20 $7c

	rst SubAFromBC                                          ; $6280: $e7
	ld a, d                                          ; $6281: $7a
	and a                                            ; $6282: $a7
	ld [hl], b                                       ; $6283: $70
	ld d, l                                          ; $6284: $55
	sbc [hl]                                         ; $6285: $9e
	add c                                            ; $6286: $81
	db $fd                                           ; $6287: $fd

jr_058_6288:
	sub a                                            ; $6288: $97
	add sp, $34                                      ; $6289: $e8 $34
	inc c                                            ; $628b: $0c
	db $e3                                           ; $628c: $e3
	rra                                              ; $628d: $1f
	jp z, $a5c9                                      ; $628e: $ca $c9 $a5

	ld l, d                                          ; $6291: $6a
	pop af                                           ; $6292: $f1
	sub [hl]                                         ; $6293: $96
	ld a, a                                          ; $6294: $7f
	and d                                            ; $6295: $a2
	sub d                                            ; $6296: $92
	ld d, c                                          ; $6297: $51
	ld l, c                                          ; $6298: $69
	xor c                                            ; $6299: $a9
	inc h                                            ; $629a: $24
	inc d                                            ; $629b: $14
	inc d                                            ; $629c: $14
	reti                                             ; $629d: $d9


	rst $38                                          ; $629e: $ff
	add b                                            ; $629f: $80
	daa                                              ; $62a0: $27
	dec h                                            ; $62a1: $25
	rla                                              ; $62a2: $17
	inc sp                                           ; $62a3: $33
	ld [hl-], a                                      ; $62a4: $32
	or e                                             ; $62a5: $b3
	adc e                                            ; $62a6: $8b
	sbc c                                            ; $62a7: $99
	ei                                               ; $62a8: $fb
	ei                                               ; $62a9: $fb
	ld sp, hl                                        ; $62aa: $f9
	db $dd                                           ; $62ab: $dd
	db $dd                                           ; $62ac: $dd
	call c, $eefc                                    ; $62ad: $dc $fc $ee
	ldh [$e0], a                                     ; $62b0: $e0 $e0
	ldh a, [$f0]                                     ; $62b2: $f0 $f0
	ld hl, sp-$48                                    ; $62b4: $f8 $b8
	cp h                                             ; $62b6: $bc
	cp h                                             ; $62b7: $bc
	ccf                                              ; $62b8: $3f
	ccf                                              ; $62b9: $3f
	sbc a                                            ; $62ba: $9f
	sbc a                                            ; $62bb: $9f
	rst GetHLinHL                                          ; $62bc: $cf
	rst AddAOntoHL                                          ; $62bd: $ef
	rst SubAFromBC                                          ; $62be: $e7
	sbc [hl]                                         ; $62bf: $9e
	rst FarCall                                          ; $62c0: $f7
	halt                                             ; $62c1: $76
	call nz, $c056                                   ; $62c2: $c4 $56 $c0
	ld a, e                                          ; $62c5: $7b
	db $f4                                           ; $62c6: $f4
	sbc d                                            ; $62c7: $9a
	ld d, b                                          ; $62c8: $50
	add [hl]                                         ; $62c9: $86
	inc e                                            ; $62ca: $1c
	inc a                                            ; $62cb: $3c
	ld a, a                                          ; $62cc: $7f
	ld h, l                                          ; $62cd: $65
	sbc a                                            ; $62ce: $9f
	ld a, a                                          ; $62cf: $7f
	db $fc                                           ; $62d0: $fc
	add a                                            ; $62d1: $87
	ld b, $17                                        ; $62d2: $06 $17
	ld [de], a                                       ; $62d4: $12
	or b                                             ; $62d5: $b0
	ld c, c                                          ; $62d6: $49
	rst AddAOntoHL                                          ; $62d7: $ef
	ld b, $0c                                        ; $62d8: $06 $0c
	ld [$9d18], sp                                   ; $62da: $08 $18 $9d
	ld e, a                                          ; $62dd: $5f
	adc $86                                          ; $62de: $ce $86
	db $10                                           ; $62e0: $10
	ld h, b                                          ; $62e1: $60
	sbc b                                            ; $62e2: $98
	ld [hl], b                                       ; $62e3: $70
	ldh [$a0], a                                     ; $62e4: $e0 $a0
	ld d, b                                          ; $62e6: $50
	ld [$1f08], sp                                   ; $62e7: $08 $08 $1f
	ld a, c                                          ; $62ea: $79
	sbc a                                            ; $62eb: $9f
	ld a, [hl]                                       ; $62ec: $7e
	dec h                                            ; $62ed: $25
	sub e                                            ; $62ee: $93
	or b                                             ; $62ef: $b0
	nop                                              ; $62f0: $00
	add b                                            ; $62f1: $80
	ld h, b                                          ; $62f2: $60
	db $10                                           ; $62f3: $10
	inc c                                            ; $62f4: $0c
	ld d, $0f                                        ; $62f5: $16 $0f
	ld d, [hl]                                       ; $62f7: $56
	jr nc, jr_058_632a                               ; $62f8: $30 $30

	db $10                                           ; $62fa: $10
	db $fc                                           ; $62fb: $fc

jr_058_62fc:
	sbc l                                            ; $62fc: $9d
	ld e, $07                                        ; $62fd: $1e $07
	ld [hl], l                                       ; $62ff: $75
	and e                                            ; $6300: $a3
	ld a, [hl]                                       ; $6301: $7e
	push bc                                          ; $6302: $c5
	sbc [hl]                                         ; $6303: $9e
	rrca                                             ; $6304: $0f
	ld l, d                                          ; $6305: $6a
	sub [hl]                                         ; $6306: $96
	sbc [hl]                                         ; $6307: $9e
	ld b, b                                          ; $6308: $40
	ld [hl], e                                       ; $6309: $73
	jp hl                                            ; $630a: $e9


	ld a, h                                          ; $630b: $7c
	ld hl, $809e                                     ; $630c: $21 $9e $80
	ld l, d                                          ; $630f: $6a
	adc [hl]                                         ; $6310: $8e
	sbc l                                            ; $6311: $9d
	ld h, $8e                                        ; $6312: $26 $8e
	db $fc                                           ; $6314: $fc
	sbc h                                            ; $6315: $9c
	add b                                            ; $6316: $80
	rra                                              ; $6317: $1f
	ld a, h                                          ; $6318: $7c
	dec l                                            ; $6319: $2d
	ld [hl], b                                       ; $631a: $70
	sub a                                            ; $631b: $97
	ld b, $04                                        ; $631c: $06 $04
	dec b                                            ; $631e: $05
	dec b                                            ; $631f: $05
	ld b, $06                                        ; $6320: $06 $06
	inc c                                            ; $6322: $0c
	dec c                                            ; $6323: $0d
	db $db                                           ; $6324: $db
	rlca                                             ; $6325: $07
	rst SubAFromDE                                          ; $6326: $df
	rrca                                             ; $6327: $0f
	sub a                                            ; $6328: $97
	sub b                                            ; $6329: $90

jr_058_632a:
	sub c                                            ; $632a: $91
	ld de, $6622                                     ; $632b: $11 $22 $66
	ld h, [hl]                                       ; $632e: $66
	call z, $d955                                    ; $632f: $cc $55 $d9
	rst $38                                          ; $6332: $ff
	add b                                            ; $6333: $80
	sbc b                                            ; $6334: $98
	daa                                              ; $6335: $27
	dec hl                                           ; $6336: $2b
	ld a, a                                          ; $6337: $7f
	ld e, [hl]                                       ; $6338: $5e
	ld a, l                                          ; $6339: $7d
	cp $ff                                           ; $633a: $fe $ff
	rst FarCall                                          ; $633c: $f7
	rst $38                                          ; $633d: $ff
	db $fc                                           ; $633e: $fc
	ldh a, [$e1]                                     ; $633f: $f0 $e1
	jp nz, $e1c1                                     ; $6341: $c2 $c1 $e1

	ld sp, hl                                        ; $6344: $f9
	ld d, l                                          ; $6345: $55
	xor d                                            ; $6346: $aa
	ld a, [hl]                                       ; $6347: $7e
	rst $38                                          ; $6348: $ff
	and $ef                                          ; $6349: $e6 $ef
	rst GetHLinHL                                          ; $634b: $cf
	rst $38                                          ; $634c: $ff
	xor d                                            ; $634d: $aa
	ld d, l                                          ; $634e: $55
	cp a                                             ; $634f: $bf
	ld a, a                                          ; $6350: $7f
	rst FarCall                                          ; $6351: $f7
	rst JumpTable                                          ; $6352: $c7
	sbc h                                            ; $6353: $9c
	rst GetHLinHL                                          ; $6354: $cf
	sbc a                                            ; $6355: $9f
	rst AddAOntoHL                                          ; $6356: $ef
	ld [hl], h                                       ; $6357: $74
	ld h, [hl]                                       ; $6358: $66
	rst SubAFromDE                                          ; $6359: $df
	ld a, a                                          ; $635a: $7f
	sbc e                                            ; $635b: $9b
	db $ec                                           ; $635c: $ec
	ret nc                                           ; $635d: $d0

	ld h, b                                          ; $635e: $60
	add b                                            ; $635f: $80
	ld [hl], l                                       ; $6360: $75
	dec b                                            ; $6361: $05
	sbc d                                            ; $6362: $9a
	push af                                          ; $6363: $f5
	ei                                               ; $6364: $fb
	rst $38                                          ; $6365: $ff
	cp $fd                                           ; $6366: $fe $fd
	sbc $ff                                          ; $6368: $de $ff
	sbc [hl]                                         ; $636a: $9e
	ld a, [bc]                                       ; $636b: $0a
	ld a, b                                          ; $636c: $78
	ld e, e                                          ; $636d: $5b
	rst SubAFromDE                                          ; $636e: $df
	inc bc                                           ; $636f: $03
	sub b                                            ; $6370: $90
	ld [bc], a                                       ; $6371: $02
	nop                                              ; $6372: $00
	rst FarCall                                          ; $6373: $f7
	rst $38                                          ; $6374: $ff
	ld [hl], e                                       ; $6375: $73
	rst $38                                          ; $6376: $ff
	db $fd                                           ; $6377: $fd
	ld a, a                                          ; $6378: $7f
	rst $38                                          ; $6379: $ff
	cp $f8                                           ; $637a: $fe $f8
	nop                                              ; $637c: $00
	db $fc                                           ; $637d: $fc
	rst $38                                          ; $637e: $ff
	cp $7b                                           ; $637f: $fe $7b
	rst SubAFromDE                                          ; $6381: $df
	sub a                                            ; $6382: $97
	push hl                                          ; $6383: $e5
	call nc, $9272                                   ; $6384: $d4 $72 $92
	ld a, [de]                                       ; $6387: $1a
	ld a, [bc]                                       ; $6388: $0a
	add hl, bc                                       ; $6389: $09
	dec c                                            ; $638a: $0d
	ld a, d                                          ; $638b: $7a
	ldh a, [$78]                                     ; $638c: $f0 $78
	ld e, [hl]                                       ; $638e: $5e
	ld a, h                                          ; $638f: $7c
	ld e, l                                          ; $6390: $5d

jr_058_6391:
	sub a                                            ; $6391: $97
	sub d                                            ; $6392: $92
	adc d                                            ; $6393: $8a
	adc d                                            ; $6394: $8a
	ret                                              ; $6395: $c9


	ld c, c                                          ; $6396: $49
	ld b, l                                          ; $6397: $45
	ld h, l                                          ; $6398: $65
	ld h, l                                          ; $6399: $65
	reti                                             ; $639a: $d9


	rst $38                                          ; $639b: $ff
	sub a                                            ; $639c: $97
	sbc c                                            ; $639d: $99
	ld e, c                                          ; $639e: $59
	ld e, c                                          ; $639f: $59
	ld b, h                                          ; $63a0: $44
	ld c, h                                          ; $63a1: $4c
	inc l                                            ; $63a2: $2c
	inc l                                            ; $63a3: $2c
	ld [hl+], a                                      ; $63a4: $22
	sbc $ee                                          ; $63a5: $de $ee
	ld a, a                                          ; $63a7: $7f
	adc h                                            ; $63a8: $8c
	ld a, d                                          ; $63a9: $7a
	ld c, e                                          ; $63aa: $4b
	sbc [hl]                                         ; $63ab: $9e
	call c, $cede                                    ; $63ac: $dc $de $ce
	rst SubAFromDE                                          ; $63af: $df
	add $df                                          ; $63b0: $c6 $df
	ldh [c], a                                       ; $63b2: $e2
	sbc h                                            ; $63b3: $9c
	ld [hl], a                                       ; $63b4: $77
	ld a, e                                          ; $63b5: $7b
	ld a, e                                          ; $63b6: $7b
	sbc $7f                                          ; $63b7: $de $7f
	rst SubAFromDE                                          ; $63b9: $df
	ccf                                              ; $63ba: $3f
	ld a, [hl]                                       ; $63bb: $7e
	db $db                                           ; $63bc: $db
	sbc c                                            ; $63bd: $99
	inc bc                                           ; $63be: $03
	ld c, a                                          ; $63bf: $4f
	rra                                              ; $63c0: $1f
	ld l, $2d                                        ; $63c1: $2e $2d
	cpl                                              ; $63c3: $2f
	db $fc                                           ; $63c4: $fc
	add e                                            ; $63c5: $83
	add hl, de                                       ; $63c6: $19
	rra                                              ; $63c7: $1f
	rra                                              ; $63c8: $1f
	rst $38                                          ; $63c9: $ff
	di                                               ; $63ca: $f3
	call z, $c7f1                                    ; $63cb: $cc $f1 $c7
	sbc a                                            ; $63ce: $9f
	ld a, [$00e5]                                    ; $63cf: $fa $e5 $00
	ld c, $3c                                        ; $63d2: $0e $3c
	jr nc, @+$42                                     ; $63d4: $30 $40

	add b                                            ; $63d6: $80
	dec b                                            ; $63d7: $05
	ld a, d                                          ; $63d8: $7a
	push af                                          ; $63d9: $f5
	ld [hl], e                                       ; $63da: $73
	ld a, a                                          ; $63db: $7f
	rst $38                                          ; $63dc: $ff
	db $ed                                           ; $63dd: $ed
	ld d, c                                          ; $63de: $51
	and [hl]                                         ; $63df: $a6
	dec d                                            ; $63e0: $15
	ld b, $de                                        ; $63e1: $06 $de
	inc b                                            ; $63e3: $04
	add b                                            ; $63e4: $80
	ld d, $ae                                        ; $63e5: $16 $ae
	ld e, e                                          ; $63e7: $5b
	ld sp, hl                                        ; $63e8: $f9
	add [hl]                                         ; $63e9: $86
	set 4, [hl]                                      ; $63ea: $cb $e6
	cp $be                                           ; $63ec: $fe $be
	sub l                                            ; $63ee: $95
	jp Jump_058_68e1                                 ; $63ef: $c3 $e1 $68


	ld h, $1f                                        ; $63f2: $26 $1f
	rrca                                             ; $63f4: $0f
	ld c, a                                          ; $63f5: $4f
	ld c, [hl]                                       ; $63f6: $4e

jr_058_63f7:
	jr nz, jr_058_6391                               ; $63f7: $20 $98

	xor [hl]                                         ; $63f9: $ae
	ld a, l                                          ; $63fa: $7d
	dec b                                            ; $63fb: $05
	add c                                            ; $63fc: $81
	add h                                            ; $63fd: $84
	adc l                                            ; $63fe: $8d
	ld a, [$0074]                                    ; $63ff: $fa $74 $00
	add d                                            ; $6402: $82
	ld a, [$2692]                                    ; $6403: $fa $92 $26
	dec hl                                           ; $6406: $2b
	ld [hl], e                                       ; $6407: $73
	inc b                                            ; $6408: $04
	adc h                                            ; $6409: $8c
	nop                                              ; $640a: $00
	jr nz, jr_058_646e                               ; $640b: $20 $61

	jp nc, $c020                                     ; $640d: $d2 $20 $c0

	ld bc, $de02                                     ; $6410: $01 $02 $de
	db $10                                           ; $6413: $10
	sbc l                                            ; $6414: $9d
	jr nc, jr_058_63f7                               ; $6415: $30 $e0

	ld a, d                                          ; $6417: $7a
	db $eb                                           ; $6418: $eb
	sbc b                                            ; $6419: $98
	ld b, b                                          ; $641a: $40
	add d                                            ; $641b: $82
	dec b                                            ; $641c: $05
	dec hl                                           ; $641d: $2b
	ld e, d                                          ; $641e: $5a
	or h                                             ; $641f: $b4
	ld h, d                                          ; $6420: $62
	ld [hl], d                                       ; $6421: $72
	jp nz, $0595                                     ; $6422: $c2 $95 $05

	dec bc                                           ; $6425: $0b
	inc e                                            ; $6426: $1c
	nop                                              ; $6427: $00
	ld b, b                                          ; $6428: $40
	ldh [$f0], a                                     ; $6429: $e0 $f0
	ld c, h                                          ; $642b: $4c
	add c                                            ; $642c: $81
	ld b, b                                          ; $642d: $40
	db $fc                                           ; $642e: $fc
	sbc [hl]                                         ; $642f: $9e
	or b                                             ; $6430: $b0
	ld a, d                                          ; $6431: $7a
	ld a, [hl]                                       ; $6432: $7e
	ei                                               ; $6433: $fb
	rst SubAFromDE                                          ; $6434: $df
	add b                                            ; $6435: $80
	ld l, a                                          ; $6436: $6f
	xor $fe                                          ; $6437: $ee $fe
	adc c                                            ; $6439: $89
	add hl, bc                                       ; $643a: $09
	ld a, [de]                                       ; $643b: $1a
	ld [de], a                                       ; $643c: $12
	ld [hl], $24                                     ; $643d: $36 $24
	ld l, h                                          ; $643f: $6c
	ld c, h                                          ; $6440: $4c
	ld d, h                                          ; $6441: $54
	rrca                                             ; $6442: $0f
	rra                                              ; $6443: $1f
	rra                                              ; $6444: $1f
	ccf                                              ; $6445: $3f
	ccf                                              ; $6446: $3f
	ld a, a                                          ; $6447: $7f
	ld a, a                                          ; $6448: $7f
	halt                                             ; $6449: $76
	xor c                                            ; $644a: $a9
	xor d                                            ; $644b: $aa
	xor $cc                                          ; $644c: $ee $cc
	ld d, h                                          ; $644e: $54
	ld d, h                                          ; $644f: $54
	ld h, l                                          ; $6450: $65
	ldh a, [$99]                                     ; $6451: $f0 $99
	ccf                                              ; $6453: $3f
	rst SubAFromDE                                          ; $6454: $df
	rst AddAOntoHL                                          ; $6455: $ef
	cp a                                             ; $6456: $bf
	xor l                                            ; $6457: $ad
	xor a                                            ; $6458: $af
	sbc $a7                                          ; $6459: $de $a7
	ld a, a                                          ; $645b: $7f
	ld e, c                                          ; $645c: $59
	sub e                                            ; $645d: $93
	rst FarCall                                          ; $645e: $f7
	ei                                               ; $645f: $fb
	ld hl, sp-$04                                    ; $6460: $f8 $fc
	db $fc                                           ; $6462: $fc
	cp $ff                                           ; $6463: $fe $ff
	sbc $7e                                          ; $6465: $de $7e
	dec l                                            ; $6467: $2d
	and h                                            ; $6468: $a4
	pop de                                           ; $6469: $d1
	sbc $ff                                          ; $646a: $de $ff
	sub a                                            ; $646c: $97
	ld e, a                                          ; $646d: $5f

jr_058_646e:
	ld a, a                                          ; $646e: $7f
	ld a, [hl]                                       ; $646f: $7e
	jr c, jr_058_6491                                ; $6470: $38 $1f

	ld c, $00                                        ; $6472: $0e $00
	add b                                            ; $6474: $80
	sbc $ff                                          ; $6475: $de $ff
	rst SubAFromDE                                          ; $6477: $df
	cp $9c                                           ; $6478: $fe $9c
	sbc h                                            ; $647a: $9c
	ld a, [de]                                       ; $647b: $1a
	sbc [hl]                                         ; $647c: $9e
	db $dd                                           ; $647d: $dd
	add b                                            ; $647e: $80
	sbc e                                            ; $647f: $9b
	nop                                              ; $6480: $00
	ld [bc], a                                       ; $6481: $02
	ld b, $07                                        ; $6482: $06 $07
	ld [hl], l                                       ; $6484: $75
	xor d                                            ; $6485: $aa
	ld a, d                                          ; $6486: $7a
	rst SubAFromBC                                          ; $6487: $e7
	sbc [hl]                                         ; $6488: $9e
	sbc a                                            ; $6489: $9f
	ld sp, hl                                        ; $648a: $f9
	reti                                             ; $648b: $d9


	cp $f9                                           ; $648c: $fe $f9
	sbc $0d                                          ; $648e: $de $0d
	sbc d                                            ; $6490: $9a

jr_058_6491:
	inc c                                            ; $6491: $0c
	ld b, $0e                                        ; $6492: $06 $0e
	ld e, $1e                                        ; $6494: $1e $1e
	ld l, [hl]                                       ; $6496: $6e
	ld d, d                                          ; $6497: $52
	ld a, a                                          ; $6498: $7f
	adc d                                            ; $6499: $8a
	sbc h                                            ; $649a: $9c
	ld h, h                                          ; $649b: $64
	inc [hl]                                         ; $649c: $34
	ld [hl-], a                                      ; $649d: $32
	sbc $b2                                          ; $649e: $de $b2
	sbc l                                            ; $64a0: $9d
	cp d                                             ; $64a1: $ba
	cp c                                             ; $64a2: $b9
	reti                                             ; $64a3: $d9


	rst $38                                          ; $64a4: $ff
	rst SubAFromDE                                          ; $64a5: $df
	and [hl]                                         ; $64a6: $a6
	sbc c                                            ; $64a7: $99
	sub [hl]                                         ; $64a8: $96
	sub c                                            ; $64a9: $91
	sub e                                            ; $64aa: $93
	sub e                                            ; $64ab: $93
	ld d, e                                          ; $64ac: $53
	ld c, e                                          ; $64ad: $4b
	sbc $fb                                          ; $64ae: $de $fb
	ld a, [hl]                                       ; $64b0: $7e
	adc b                                            ; $64b1: $88
	sbc $fd                                          ; $64b2: $de $fd
	sbc [hl]                                         ; $64b4: $9e
	ldh [c], a                                       ; $64b5: $e2
	jp c, $d9e0                                      ; $64b6: $da $e0 $d9

	ccf                                              ; $64b9: $3f
	add b                                            ; $64ba: $80
	rra                                              ; $64bb: $1f
	sbc a                                            ; $64bc: $9f
	cp $5c                                           ; $64bd: $fe $5c
	and b                                            ; $64bf: $a0
	ld c, h                                          ; $64c0: $4c
	sub d                                            ; $64c1: $92
	dec sp                                           ; $64c2: $3b
	rrca                                             ; $64c3: $0f
	rlca                                             ; $64c4: $07
	inc bc                                           ; $64c5: $03
	and b                                            ; $64c6: $a0
	ld e, b                                          ; $64c7: $58
	cp c                                             ; $64c8: $b9
	ld a, c                                          ; $64c9: $79
	ldh a, [rSVBK]                                   ; $64ca: $f0 $70
	db $10                                           ; $64cc: $10
	rst AddAOntoHL                                          ; $64cd: $ef

jr_058_64ce:
	ld a, e                                          ; $64ce: $7b

jr_058_64cf:
	cp l                                             ; $64cf: $bd
	xor l                                            ; $64d0: $ad
	call nc, $fffc                                   ; $64d1: $d4 $fc $ff
	adc a                                            ; $64d4: $8f
	inc de                                           ; $64d5: $13
	dec e                                            ; $64d6: $1d
	rra                                              ; $64d7: $1f
	rst SubAFromDE                                          ; $64d8: $df
	rst AddAOntoHL                                          ; $64d9: $ef
	add h                                            ; $64da: $84
	rst SubAFromBC                                          ; $64db: $e7
	jr z, jr_058_64ce                                ; $64dc: $28 $f0

	ret nc                                           ; $64de: $d0

	cp d                                             ; $64df: $ba
	cp l                                             ; $64e0: $bd
	ld a, a                                          ; $64e1: $7f
	ld e, a                                          ; $64e2: $5f
	rst AddAOntoHL                                          ; $64e3: $ef

jr_058_64e4:
	ldh a, [$e0]                                     ; $64e4: $f0 $e0
	ldh [$c0], a                                     ; $64e6: $e0 $c0
	ret nz                                           ; $64e8: $c0

	add b                                            ; $64e9: $80
	and b                                            ; $64ea: $a0
	db $10                                           ; $64eb: $10
	ret c                                            ; $64ec: $d8

	inc de                                           ; $64ed: $13
	jr jr_058_64f3                                   ; $64ee: $18 $03

	ld b, b                                          ; $64f0: $40
	xor c                                            ; $64f1: $a9
	rst $38                                          ; $64f2: $ff

jr_058_64f3:
	rst GetHLinHL                                          ; $64f3: $cf
	ld h, a                                          ; $64f4: $67
	inc a                                            ; $64f5: $3c
	ld [hl], l                                       ; $64f6: $75
	sub a                                            ; $64f7: $97
	add l                                            ; $64f8: $85
	nop                                              ; $64f9: $00
	jr nc, jr_058_64e4                               ; $64fa: $30 $e8

	sub b                                            ; $64fc: $90
	jr nz, jr_058_64cf                               ; $64fd: $20 $d0

	nop                                              ; $64ff: $00
	ldh [rSVBK], a                                   ; $6500: $e0 $70
	add e                                            ; $6502: $83
	inc e                                            ; $6503: $1c
	ld a, b                                          ; $6504: $78
	ldh a, [rAUD4LEN]                                ; $6505: $f0 $20
	db $10                                           ; $6507: $10
	db $10                                           ; $6508: $10
	ld [$0538], sp                                   ; $6509: $08 $38 $05
	ld b, e                                          ; $650c: $43
	ld l, b                                          ; $650d: $68
	ld d, b                                          ; $650e: $50
	ld l, d                                          ; $650f: $6a
	ld [hl], l                                       ; $6510: $75
	cp a                                             ; $6511: $bf
	db $dd                                           ; $6512: $dd
	ld a, [$0296]                                    ; $6513: $fa $96 $02
	ret nz                                           ; $6516: $c0

	ld bc, $4703                                     ; $6517: $01 $03 $47
	xor a                                            ; $651a: $af
	ld e, a                                          ; $651b: $5f
	db $eb                                           ; $651c: $eb
	ld d, a                                          ; $651d: $57
	ld a, c                                          ; $651e: $79
	inc sp                                           ; $651f: $33
	rst SubAFromDE                                          ; $6520: $df
	ld [bc], a                                       ; $6521: $02
	sub h                                            ; $6522: $94
	ld bc, $a815                                     ; $6523: $01 $15 $a8
	ret nz                                           ; $6526: $c0

	ld [hl+], a                                      ; $6527: $22
	sub l                                            ; $6528: $95
	sbc h                                            ; $6529: $9c
	set 5, b                                         ; $652a: $cb $e8
	db $e4                                           ; $652c: $e4
	ldh a, [c]                                       ; $652d: $f2
	ld a, c                                          ; $652e: $79
	ld e, l                                          ; $652f: $5d
	sub [hl]                                         ; $6530: $96
	inc de                                           ; $6531: $13
	inc c                                            ; $6532: $0c
	ld [$8204], sp                                   ; $6533: $08 $04 $82
	ld b, b                                          ; $6536: $40
	add b                                            ; $6537: $80
	ld b, c                                          ; $6538: $41
	add c                                            ; $6539: $81
	ld a, c                                          ; $653a: $79
	rst SubAFromBC                                          ; $653b: $e7
	ld a, l                                          ; $653c: $7d
	ld d, d                                          ; $653d: $52
	sbc l                                            ; $653e: $9d
	ld b, b                                          ; $653f: $40
	add c                                            ; $6540: $81
	ld a, c                                          ; $6541: $79
	inc d                                            ; $6542: $14
	rst SubAFromDE                                          ; $6543: $df
	inc bc                                           ; $6544: $03
	sub c                                            ; $6545: $91
	and h                                            ; $6546: $a4
	xor b                                            ; $6547: $a8
	ld c, b                                          ; $6548: $48
	ld l, b                                          ; $6549: $68
	adc c                                            ; $654a: $89
	xor c                                            ; $654b: $a9
	add hl, de                                       ; $654c: $19
	xor c                                            ; $654d: $a9
	rst SubAFromBC                                          ; $654e: $e7
	rst AddAOntoHL                                          ; $654f: $ef
	rst GetHLinHL                                          ; $6550: $cf
	rst GetHLinHL                                          ; $6551: $cf
	adc a                                            ; $6552: $8f
	adc a                                            ; $6553: $8f
	ld a, c                                          ; $6554: $79
	rst AddAOntoHL                                          ; $6555: $ef
	sub [hl]                                         ; $6556: $96
	add h                                            ; $6557: $84
	sbc b                                            ; $6558: $98
	or b                                             ; $6559: $b0
	jr nz, jr_058_65a0                               ; $655a: $20 $44

	ld b, l                                          ; $655c: $45
	adc l                                            ; $655d: $8d
	ld l, a                                          ; $655e: $6f
	add a                                            ; $655f: $87
	ld [hl], h                                       ; $6560: $74
	adc l                                            ; $6561: $8d
	add b                                            ; $6562: $80
	ld a, [$00f2]                                    ; $6563: $fa $f2 $00
	rlca                                             ; $6566: $07
	nop                                              ; $6567: $00
	ld c, $34                                        ; $6568: $0e $34
	xor b                                            ; $656a: $a8
	push hl                                          ; $656b: $e5
	and b                                            ; $656c: $a0
	rst $38                                          ; $656d: $ff
	ld hl, sp-$01                                    ; $656e: $f8 $ff
	pop af                                           ; $6570: $f1
	bit 2, a                                         ; $6571: $cb $57
	dec de                                           ; $6573: $1b
	ld e, a                                          ; $6574: $5f
	ld a, a                                          ; $6575: $7f
	rra                                              ; $6576: $1f
	adc a                                            ; $6577: $8f
	rlca                                             ; $6578: $07
	inc bc                                           ; $6579: $03
	inc de                                           ; $657a: $13
	add hl, bc                                       ; $657b: $09
	xor c                                            ; $657c: $a9
	ldh [$f0], a                                     ; $657d: $e0 $f0
	ld a, b                                          ; $657f: $78
	db $fc                                           ; $6580: $fc
	cp $7e                                           ; $6581: $fe $7e
	or c                                             ; $6583: $b1
	ld a, [hl]                                       ; $6584: $7e
	jp $fd73                                         ; $6585: $c3 $73 $fd


	rst SubAFromDE                                          ; $6588: $df
	rst $38                                          ; $6589: $ff
	ld a, a                                          ; $658a: $7f
	xor a                                            ; $658b: $af
	adc c                                            ; $658c: $89
	inc bc                                           ; $658d: $03
	rlca                                             ; $658e: $07
	inc bc                                           ; $658f: $03
	ld bc, $0100                                     ; $6590: $01 $00 $01
	rst $38                                          ; $6593: $ff
	rst $38                                          ; $6594: $ff
	and a                                            ; $6595: $a7
	rst SubAFromDE                                          ; $6596: $df
	adc a                                            ; $6597: $8f
	inc c                                            ; $6598: $0c
	sbc a                                            ; $6599: $9f
	rst $38                                          ; $659a: $ff
	nop                                              ; $659b: $00
	db $fc                                           ; $659c: $fc
	inc e                                            ; $659d: $1c
	db $fc                                           ; $659e: $fc
	db $fc                                           ; $659f: $fc

jr_058_65a0:
	ld hl, sp-$10                                    ; $65a0: $f8 $f0
	rst FarCall                                          ; $65a2: $f7
	sbc $fe                                          ; $65a3: $de $fe
	ld a, a                                          ; $65a5: $7f
	rst SubAFromDE                                          ; $65a6: $df
	sbc h                                            ; $65a7: $9c
	ld a, a                                          ; $65a8: $7f
	db $f4                                           ; $65a9: $f4
	rst $38                                          ; $65aa: $ff
	ld a, [$e098]                                    ; $65ab: $fa $98 $e0
	inc a                                            ; $65ae: $3c
	ccf                                              ; $65af: $3f
	dec a                                            ; $65b0: $3d
	call $8025                                       ; $65b1: $cd $25 $80
	ld a, b                                          ; $65b4: $78
	ldh a, [$9d]                                     ; $65b5: $f0 $9d
	inc a                                            ; $65b7: $3c
	jr @-$02                                         ; $65b8: $18 $fc

	rst SubAFromDE                                          ; $65ba: $df
	cp c                                             ; $65bb: $b9
	sub [hl]                                         ; $65bc: $96
	db $fd                                           ; $65bd: $fd
	dec hl                                           ; $65be: $2b
	inc hl                                           ; $65bf: $23
	inc b                                            ; $65c0: $04
	nop                                              ; $65c1: $00
	add c                                            ; $65c2: $81

Jump_058_65c3:
	rst $38                                          ; $65c3: $ff
	rst $38                                          ; $65c4: $ff
	and e                                            ; $65c5: $a3
	ld [hl], h                                       ; $65c6: $74
	cp [hl]                                          ; $65c7: $be
	sbc [hl]                                         ; $65c8: $9e
	add b                                            ; $65c9: $80
	sbc $5b                                          ; $65ca: $de $5b
	sbc d                                            ; $65cc: $9a
	ld e, c                                          ; $65cd: $59
	ret                                              ; $65ce: $c9


	ld l, c                                          ; $65cf: $69
	cp c                                             ; $65d0: $b9
	dec e                                            ; $65d1: $1d
	sbc $ed                                          ; $65d2: $de $ed
	sbc d                                            ; $65d4: $9a
	rst AddAOntoHL                                          ; $65d5: $ef
	ld a, a                                          ; $65d6: $7f
	rra                                              ; $65d7: $1f
	rlca                                             ; $65d8: $07
	inc bc                                           ; $65d9: $03
	halt                                             ; $65da: $76
	ld sp, hl                                        ; $65db: $f9
	db $dd                                           ; $65dc: $dd
	ret nz                                           ; $65dd: $c0

	halt                                             ; $65de: $76
	inc hl                                           ; $65df: $23
	rst SubAFromDE                                          ; $65e0: $df
	ld a, a                                          ; $65e1: $7f
	rst SubAFromDE                                          ; $65e2: $df
	rst $38                                          ; $65e3: $ff
	sub l                                            ; $65e4: $95
	ld [hl], l                                       ; $65e5: $75
	db $eb                                           ; $65e6: $eb
	rst SubAFromHL                                          ; $65e7: $d7
	xor a                                            ; $65e8: $af
	ld e, a                                          ; $65e9: $5f
	cp [hl]                                          ; $65ea: $be
	db $fd                                           ; $65eb: $fd
	ld a, [$c0e0]                                    ; $65ec: $fa $e0 $c0
	ld a, c                                          ; $65ef: $79
	di                                               ; $65f0: $f3
	ld a, a                                          ; $65f1: $7f
	ccf                                              ; $65f2: $3f
	sub c                                            ; $65f3: $91
	dec b                                            ; $65f4: $05
	ld l, d                                          ; $65f5: $6a
	and [hl]                                         ; $65f6: $a6
	and $97                                          ; $65f7: $e6 $97
	ld b, a                                          ; $65f9: $47
	sub a                                            ; $65fa: $97
	cpl                                              ; $65fb: $2f
	ld e, a                                          ; $65fc: $5f
	rst FarCall                                          ; $65fd: $f7
	ld a, a                                          ; $65fe: $7f
	rra                                              ; $65ff: $1f
	ld a, a                                          ; $6600: $7f
	cp a                                             ; $6601: $bf
	ld a, e                                          ; $6602: $7b
	ldh [hDisp0_BGP], a                                     ; $6603: $e0 $85
	sub $af                                          ; $6605: $d6 $af
	rst SubAFromHL                                          ; $6607: $d7
	adc e                                            ; $6608: $8b
	ld b, l                                          ; $6609: $45
	xor d                                            ; $660a: $aa
	push de                                          ; $660b: $d5
	ld [$5029], a                                    ; $660c: $ea $29 $50
	jr z, jr_058_6685                                ; $660f: $28 $74

	ld a, [$fff5]                                    ; $6611: $fa $f5 $ff
	rst $38                                          ; $6614: $ff
	ldh a, [$9f]                                     ; $6615: $f0 $9f
	sbc b                                            ; $6617: $98
	ldh a, [$fd]                                     ; $6618: $f0 $fd
	cp [hl]                                          ; $661a: $be
	ld [de], a                                       ; $661b: $12
	xor b                                            ; $661c: $a8
	rst $38                                          ; $661d: $ff
	ld a, a                                          ; $661e: $7f
	ld a, d                                          ; $661f: $7a
	ret nz                                           ; $6620: $c0

	add b                                            ; $6621: $80
	ld b, c                                          ; $6622: $41
	db $fd                                           ; $6623: $fd
	rst $38                                          ; $6624: $ff
	and c                                            ; $6625: $a1
	db $fc                                           ; $6626: $fc
	or h                                             ; $6627: $b4
	ld b, [hl]                                       ; $6628: $46
	sub a                                            ; $6629: $97
	add a                                            ; $662a: $87
	and a                                            ; $662b: $a7
	rst SubAFromBC                                          ; $662c: $e7
	ldh a, [$f0]                                     ; $662d: $f0 $f0
	ld h, b                                          ; $662f: $60
	add b                                            ; $6630: $80
	db $f4                                           ; $6631: $f4
	or $f7                                           ; $6632: $f6 $f7
	rst FarCall                                          ; $6634: $f7
	add b                                            ; $6635: $80
	dec b                                            ; $6636: $05
	ld [bc], a                                       ; $6637: $02
	inc bc                                           ; $6638: $03
	inc b                                            ; $6639: $04
	rrca                                             ; $663a: $0f
	rrca                                             ; $663b: $0f
	add a                                            ; $663c: $87
	nop                                              ; $663d: $00
	ld [bc], a                                       ; $663e: $02
	ld bc, $861f                                     ; $663f: $01 $1f $86
	inc l                                            ; $6642: $2c
	ld e, b                                          ; $6643: $58
	xor b                                            ; $6644: $a8
	call c, Call_058_5500                            ; $6645: $dc $00 $55
	xor d                                            ; $6648: $aa
	ld bc, $20c0                                     ; $6649: $01 $c0 $20
	ret nc                                           ; $664c: $d0

	add sp, $00                                      ; $664d: $e8 $00
	xor d                                            ; $664f: $aa
	ld d, l                                          ; $6650: $55
	cp $ff                                           ; $6651: $fe $ff
	ccf                                              ; $6653: $3f
	rra                                              ; $6654: $1f
	rrca                                             ; $6655: $0f
	ldh a, [c]                                       ; $6656: $f2
	ld a, c                                          ; $6657: $79
	db $fc                                           ; $6658: $fc
	ld a, [hl]                                       ; $6659: $7e
	ld e, $7a                                        ; $665a: $1e $7a
	jp hl                                            ; $665c: $e9


	adc a                                            ; $665d: $8f
	add d                                            ; $665e: $82
	pop bc                                           ; $665f: $c1
	ld b, h                                          ; $6660: $44
	xor b                                            ; $6661: $a8
	ldh a, [$f8]                                     ; $6662: $f0 $f8
	add sp, -$0c                                     ; $6664: $e8 $f4
	ld [bc], a                                       ; $6666: $02
	ld [bc], a                                       ; $6667: $02
	add d                                            ; $6668: $82
	add d                                            ; $6669: $82
	ld b, b                                          ; $666a: $40
	ld [hl+], a                                      ; $666b: $22
	sub b                                            ; $666c: $90
	jp c, $f873                                      ; $666d: $da $73 $f8

	ld a, d                                          ; $6670: $7a
	ld a, [hl]                                       ; $6671: $7e
	sub a                                            ; $6672: $97
	ld de, $52b2                                     ; $6673: $11 $b2 $52
	or d                                             ; $6676: $b2
	ld d, [hl]                                       ; $6677: $56
	or [hl]                                          ; $6678: $b6
	ld d, a                                          ; $6679: $57
	or a                                             ; $667a: $b7
	db $db                                           ; $667b: $db
	rra                                              ; $667c: $1f
	rst SubAFromDE                                          ; $667d: $df
	dec e                                            ; $667e: $1d
	sub l                                            ; $667f: $95
	adc h                                            ; $6680: $8c
	add h                                            ; $6681: $84
	add b                                            ; $6682: $80
	add b                                            ; $6683: $80
	add e                                            ; $6684: $83

jr_058_6685:
	add h                                            ; $6685: $84
	ld c, b                                          ; $6686: $48
	ld c, b                                          ; $6687: $48
	di                                               ; $6688: $f3
	ei                                               ; $6689: $fb
	db $db                                           ; $668a: $db
	rst $38                                          ; $668b: $ff
	rst $38                                          ; $668c: $ff
	sbc c                                            ; $668d: $99
	inc b                                            ; $668e: $04
	dec b                                            ; $668f: $05
	dec h                                            ; $6690: $25
	xor e                                            ; $6691: $ab
	cpl                                              ; $6692: $2f
	ccf                                              ; $6693: $3f
	call c, $94ff                                    ; $6694: $dc $ff $94
	cp $fc                                           ; $6697: $fe $fc
	cp $a9                                           ; $6699: $fe $a9
	xor e                                            ; $669b: $ab
	xor e                                            ; $669c: $ab
	push af                                          ; $669d: $f5
	db $fd                                           ; $669e: $fd
	call c, $363c                                    ; $669f: $dc $3c $36
	ld [hl], l                                       ; $66a2: $75
	sbc b                                            ; $66a3: $98
	sub c                                            ; $66a4: $91
	ld [hl], a                                       ; $66a5: $77
	ld d, a                                          ; $66a6: $57
	scf                                              ; $66a7: $37
	inc bc                                           ; $66a8: $03
	cp $f8                                           ; $66a9: $fe $f8
	ldh a, [$a0]                                     ; $66ab: $f0 $a0
	and h                                            ; $66ad: $a4
	ret z                                            ; $66ae: $c8

	ret                                              ; $66af: $c9


	db $d3                                           ; $66b0: $d3
	add [hl]                                         ; $66b1: $86
	ret z                                            ; $66b2: $c8

	ld [hl], d                                       ; $66b3: $72
	ld c, $9d                                        ; $66b4: $0e $9d
	pop bc                                           ; $66b6: $c1
	inc a                                            ; $66b7: $3c
	cp $7e                                           ; $66b8: $fe $7e
	ld h, l                                          ; $66ba: $65
	sbc l                                            ; $66bb: $9d
	add a                                            ; $66bc: $87
	adc a                                            ; $66bd: $8f
	ld l, [hl]                                       ; $66be: $6e
	ldh [c], a                                       ; $66bf: $e2
	rst SubAFromDE                                          ; $66c0: $df
	add b                                            ; $66c1: $80
	sbc h                                            ; $66c2: $9c
	cp $3e                                           ; $66c3: $fe $3e
	ccf                                              ; $66c5: $3f
	ld a, e                                          ; $66c6: $7b
	ld a, [hl+]                                      ; $66c7: $2a
	sbc c                                            ; $66c8: $99
	rst SubAFromBC                                          ; $66c9: $e7
	rst GetHLinHL                                          ; $66ca: $cf
	jr jr_058_66d1                                   ; $66cb: $18 $04

	ld [bc], a                                       ; $66cd: $02
	ld bc, $ef77                                     ; $66ce: $01 $77 $ef

jr_058_66d1:
	add b                                            ; $66d1: $80
	ld bc, $9609                                     ; $66d2: $01 $09 $96
	ldh a, [c]                                       ; $66d5: $f2
	ldh a, [$d0]                                     ; $66d6: $f0 $d0
	call c, $01fe                                    ; $66d8: $dc $fe $01
	add hl, bc                                       ; $66db: $09
	ld e, $9e                                        ; $66dc: $1e $9e
	ld hl, sp-$68                                    ; $66de: $f8 $98
	ld e, h                                          ; $66e0: $5c
	ld h, d                                          ; $66e1: $62
	ld b, b                                          ; $66e2: $40
	ld c, b                                          ; $66e3: $48
	or h                                             ; $66e4: $b4
	and [hl]                                         ; $66e5: $a6
	add a                                            ; $66e6: $87
	ld [bc], a                                       ; $66e7: $02
	sbc c                                            ; $66e8: $99
	inc a                                            ; $66e9: $3c
	ld b, b                                          ; $66ea: $40
	ld c, b                                          ; $66eb: $48
	inc [hl]                                         ; $66ec: $34
	inc [hl]                                         ; $66ed: $34
	rla                                              ; $66ee: $17
	ld [de], a                                       ; $66ef: $12
	dec e                                            ; $66f0: $1d
	adc l                                            ; $66f1: $8d
	ld h, $67                                        ; $66f2: $26 $67
	sbc [hl]                                         ; $66f4: $9e
	ld [hl], b                                       ; $66f5: $70
	ldh [rSCX], a                                    ; $66f6: $e0 $43
	add l                                            ; $66f8: $85
	sbc h                                            ; $66f9: $9c
	and b                                            ; $66fa: $a0
	inc bc                                           ; $66fb: $03
	rrca                                             ; $66fc: $0f
	ld a, [de]                                       ; $66fd: $1a
	push af                                          ; $66fe: $f5
	ld l, e                                          ; $66ff: $6b
	push de                                          ; $6700: $d5
	cp h                                             ; $6701: $bc
	ld [$76fc], a                                    ; $6702: $ea $fc $76
	xor d                                            ; $6705: $aa
	adc c                                            ; $6706: $89
	or b                                             ; $6707: $b0
	ret z                                            ; $6708: $c8

	db $10                                           ; $6709: $10
	rst $38                                          ; $670a: $ff
	ld e, a                                          ; $670b: $5f
	xor e                                            ; $670c: $ab
	ld d, l                                          ; $670d: $55
	xor e                                            ; $670e: $ab
	push af                                          ; $670f: $f5
	rst GetHLinHL                                          ; $6710: $cf
	rst SubAFromDE                                          ; $6711: $df
	ld d, h                                          ; $6712: $54
	xor b                                            ; $6713: $a8
	ld d, d                                          ; $6714: $52
	dec b                                            ; $6715: $05
	xor e                                            ; $6716: $ab
	ld d, a                                          ; $6717: $57
	rst $38                                          ; $6718: $ff
	rst $38                                          ; $6719: $ff
	xor e                                            ; $671a: $ab
	ld d, a                                          ; $671b: $57
	xor a                                            ; $671c: $af
	call c, $85ff                                    ; $671d: $dc $ff $85
	jr c, @+$72                                      ; $6720: $38 $70

	push hl                                          ; $6722: $e5
	rst AddAOntoHL                                          ; $6723: $ef
	di                                               ; $6724: $f3
	rst SubAFromHL                                          ; $6725: $d7
	and h                                            ; $6726: $a4
	rlca                                             ; $6727: $07
	rst $38                                          ; $6728: $ff
	ld hl, sp-$10                                    ; $6729: $f8 $f0
	ldh a, [rIE]                                     ; $672b: $f0 $ff
	db $ec                                           ; $672d: $ec
	rst JumpTable                                          ; $672e: $c7
	rst $38                                          ; $672f: $ff
	rst SubAFromDE                                          ; $6730: $df
	rra                                              ; $6731: $1f
	ld b, d                                          ; $6732: $42
	and b                                            ; $6733: $a0
	ret nz                                           ; $6734: $c0

	adc c                                            ; $6735: $89
	rst JumpTable                                          ; $6736: $c7
	dec bc                                           ; $6737: $0b
	rst $38                                          ; $6738: $ff
	rrca                                             ; $6739: $0f
	cp $94                                           ; $673a: $fe $94
	add d                                            ; $673c: $82
	add c                                            ; $673d: $81
	add b                                            ; $673e: $80
	db $fc                                           ; $673f: $fc
	cp $df                                           ; $6740: $fe $df
	ld a, c                                          ; $6742: $79
	cp l                                             ; $6743: $bd
	ldh a, [$62]                                     ; $6744: $f0 $62
	add e                                            ; $6746: $83
	ld a, b                                          ; $6747: $78
	or h                                             ; $6748: $b4
	ld a, [hl]                                       ; $6749: $7e
	ld [hl], e                                       ; $674a: $73
	ld a, h                                          ; $674b: $7c
	jp hl                                            ; $674c: $e9


	sub [hl]                                         ; $674d: $96
	rst $38                                          ; $674e: $ff
	daa                                              ; $674f: $27
	rlca                                             ; $6750: $07
	ld [hl], a                                       ; $6751: $77
	rst SubAFromBC                                          ; $6752: $e7
	scf                                              ; $6753: $37
	rlca                                             ; $6754: $07
	rlca                                             ; $6755: $07
	ld h, a                                          ; $6756: $67
	reti                                             ; $6757: $d9


	rst FarCall                                          ; $6758: $f7
	sbc e                                            ; $6759: $9b
	inc bc                                           ; $675a: $03
	adc c                                            ; $675b: $89
	inc b                                            ; $675c: $04
	adc b                                            ; $675d: $88
	ld [hl], a                                       ; $675e: $77
	cp $9a                                           ; $675f: $fe $9a
	xor [hl]                                         ; $6761: $ae
	rst SubAFromDE                                          ; $6762: $df
	xor a                                            ; $6763: $af
	db $dd                                           ; $6764: $dd
	xor [hl]                                         ; $6765: $ae
	ld a, e                                          ; $6766: $7b
	cp $9b                                           ; $6767: $fe $9b
	db $f4                                           ; $6769: $f4
	ei                                               ; $676a: $fb
	db $fc                                           ; $676b: $fc
	ld a, [hl]                                       ; $676c: $7e
	ld a, d                                          ; $676d: $7a
	ret                                              ; $676e: $c9


	rst SubAFromDE                                          ; $676f: $df
	rlca                                             ; $6770: $07
	add h                                            ; $6771: $84
	inc bc                                           ; $6772: $03
	add b                                            ; $6773: $80
	ret nc                                           ; $6774: $d0

	ldh [$f0], a                                     ; $6775: $e0 $f0
	ld hl, sp-$02                                    ; $6777: $f8 $fe
	inc bc                                           ; $6779: $03
	inc bc                                           ; $677a: $03
	add c                                            ; $677b: $81
	ld h, b                                          ; $677c: $60
	sub b                                            ; $677d: $90
	ret z                                            ; $677e: $c8

	db $e4                                           ; $677f: $e4
	di                                               ; $6780: $f3
	ld [$e9f6], a                                    ; $6781: $ea $f6 $e9
	ld [hl], h                                       ; $6784: $74
	jr @+$0e                                         ; $6785: $18 $0c

	ld b, h                                          ; $6787: $44
	add e                                            ; $6788: $83
	call $f3e6                                       ; $6789: $cd $e6 $f3
	ld sp, hl                                        ; $678c: $f9
	ld a, b                                          ; $678d: $78
	ld a, c                                          ; $678e: $79
	sbc c                                            ; $678f: $99
	rst SubAFromDE                                          ; $6790: $df
	ld [$1204], sp                                   ; $6791: $08 $04 $12
	and c                                            ; $6794: $a1
	ld b, b                                          ; $6795: $40
	ld a, d                                          ; $6796: $7a
	cp a                                             ; $6797: $bf
	add a                                            ; $6798: $87
	ld d, a                                          ; $6799: $57
	cp a                                             ; $679a: $bf
	ld a, a                                          ; $679b: $7f
	cp a                                             ; $679c: $bf
	rst $38                                          ; $679d: $ff
	ld a, a                                          ; $679e: $7f
	ccf                                              ; $679f: $3f
	sbc a                                            ; $67a0: $9f
	inc e                                            ; $67a1: $1c
	inc e                                            ; $67a2: $1c
	inc c                                            ; $67a3: $0c
	inc c                                            ; $67a4: $0c
	adc h                                            ; $67a5: $8c
	ld b, h                                          ; $67a6: $44
	inc h                                            ; $67a7: $24
	ld [de], a                                       ; $67a8: $12
	ret z                                            ; $67a9: $c8

	call nz, $c1c3                                   ; $67aa: $c4 $c3 $c1
	push bc                                          ; $67ad: $c5
	call nz, $e9e2                                   ; $67ae: $c4 $e2 $e9
	halt                                             ; $67b1: $76
	ldh [$df], a                                     ; $67b2: $e0 $df
	ld a, a                                          ; $67b4: $7f
	rst SubAFromDE                                          ; $67b5: $df
	ccf                                              ; $67b6: $3f
	add b                                            ; $67b7: $80
	ld l, d                                          ; $67b8: $6a
	cp [hl]                                          ; $67b9: $be
	ld a, h                                          ; $67ba: $7c
	ld a, b                                          ; $67bb: $78
	ld a, $bf                                        ; $67bc: $3e $bf
	ld e, a                                          ; $67be: $5f
	ld h, $fa                                        ; $67bf: $26 $fa
	xor $a6                                          ; $67c1: $ee $a6
	and b                                            ; $67c3: $a0
	ret nc                                           ; $67c4: $d0

	ret c                                            ; $67c5: $d8

	rst AddAOntoHL                                          ; $67c6: $ef
	db $fc                                           ; $67c7: $fc
	ld [hl], $07                                     ; $67c8: $36 $07
	ld h, a                                          ; $67ca: $67
	rlca                                             ; $67cb: $07
	rrca                                             ; $67cc: $0f
	ei                                               ; $67cd: $fb
	di                                               ; $67ce: $f3
	ld e, $23                                        ; $67cf: $1e $23
	inc bc                                           ; $67d1: $03
	ld h, e                                          ; $67d2: $63
	ld b, $06                                        ; $67d3: $06 $06
	ld a, [bc]                                       ; $67d5: $0a
	di                                               ; $67d6: $f3
	sbc l                                            ; $67d7: $9d
	inc e                                            ; $67d8: $1c
	rst SubAFromHL                                          ; $67d9: $d7
	ld [hl], d                                       ; $67da: $72
	xor b                                            ; $67db: $a8
	sub d                                            ; $67dc: $92
	rst $38                                          ; $67dd: $ff
	rst FarCall                                          ; $67de: $f7
	pop de                                           ; $67df: $d1
	jp nc, Jump_058_54d2                             ; $67e0: $d2 $d2 $54

	inc l                                            ; $67e3: $2c
	dec d                                            ; $67e4: $15
	rra                                              ; $67e5: $1f
	sub l                                            ; $67e6: $95
	sbc a                                            ; $67e7: $9f
	rst SubAFromDE                                          ; $67e8: $df
	rst SubAFromDE                                          ; $67e9: $df
	sbc $ff                                          ; $67ea: $de $ff
	adc d                                            ; $67ec: $8a
	ld l, a                                          ; $67ed: $6f
	ld c, [hl]                                       ; $67ee: $4e
	add c                                            ; $67ef: $81
	add c                                            ; $67f0: $81
	add d                                            ; $67f1: $82
	ld b, [hl]                                       ; $67f2: $46
	ld a, [hl+]                                      ; $67f3: $2a
	jp c, Jump_058_43db                              ; $67f4: $da $db $43

	rst $38                                          ; $67f7: $ff
	rst $38                                          ; $67f8: $ff
	di                                               ; $67f9: $f3
	pop af                                           ; $67fa: $f1
	di                                               ; $67fb: $f3
	cp $f3                                           ; $67fc: $fe $f3
	cp $00                                           ; $67fe: $fe $00
	inc e                                            ; $6800: $1c
	ld e, $de                                        ; $6801: $1e $de
	sbc a                                            ; $6803: $9f
	add b                                            ; $6804: $80
	ld d, e                                          ; $6805: $53
	adc $f3                                          ; $6806: $ce $f3
	rst AddAOntoHL                                          ; $6808: $ef
	db $fc                                           ; $6809: $fc
	ld hl, sp-$08                                    ; $680a: $f8 $f8
	cp h                                             ; $680c: $bc
	dec a                                            ; $680d: $3d
	cp a                                             ; $680e: $bf
	dec l                                            ; $680f: $2d
	jr nc, jr_058_683e                               ; $6810: $30 $2c

	ld c, b                                          ; $6812: $48
	db $ec                                           ; $6813: $ec
	db $e4                                           ; $6814: $e4
	ldh [$f7], a                                     ; $6815: $e0 $f7
	rst SubAFromBC                                          ; $6817: $e7
	add e                                            ; $6818: $83
	add hl, de                                       ; $6819: $19
	ld a, [hl-]                                      ; $681a: $3a
	ld a, [hl+]                                      ; $681b: $2a
	ld [bc], a                                       ; $681c: $02
	add [hl]                                         ; $681d: $86
	add h                                            ; $681e: $84
	jp $1101                                         ; $681f: $c3 $01 $11


	dec sp                                           ; $6822: $3b
	dec hl                                           ; $6823: $2b
	rst SubAFromDE                                          ; $6824: $df
	inc bc                                           ; $6825: $03
	add b                                            ; $6826: $80
	rlca                                             ; $6827: $07
	jr nz, jr_058_6888                               ; $6828: $20 $5e

	ld d, e                                          ; $682a: $53
	ld d, a                                          ; $682b: $57
	ld hl, sp-$18                                    ; $682c: $f8 $e8
	xor b                                            ; $682e: $a8
	sub b                                            ; $682f: $90
	ldh [$fe], a                                     ; $6830: $e0 $fe
	rst $38                                          ; $6832: $ff
	db $fc                                           ; $6833: $fc
	cp b                                             ; $6834: $b8
	cp b                                             ; $6835: $b8
	xor b                                            ; $6836: $a8
	sub b                                            ; $6837: $90
	ld [$8404], sp                                   ; $6838: $08 $04 $84
	jp nz, Jump_058_5e66                             ; $683b: $c2 $66 $5e

jr_058_683e:
	ld d, [hl]                                       ; $683e: $56
	cp d                                             ; $683f: $ba
	rst GetHLinHL                                          ; $6840: $cf
	rla                                              ; $6841: $17
	add a                                            ; $6842: $87
	set 4, a                                         ; $6843: $cb $e7
	ld a, a                                          ; $6845: $7f
	sbc d                                            ; $6846: $9a
	rst $38                                          ; $6847: $ff
	rst AddAOntoHL                                          ; $6848: $ef
	db $fc                                           ; $6849: $fc
	rlca                                             ; $684a: $07
	pop hl                                           ; $684b: $e1
	ld a, d                                          ; $684c: $7a
	ld a, [hl-]                                      ; $684d: $3a
	ld [hl], l                                       ; $684e: $75
	dec c                                            ; $684f: $0d
	sbc l                                            ; $6850: $9d
	rra                                              ; $6851: $1f
	ld [bc], a                                       ; $6852: $02
	sbc $04                                          ; $6853: $de $04
	ld a, a                                          ; $6855: $7f
	add $96                                          ; $6856: $c6 $96
	add d                                            ; $6858: $82
	ld b, c                                          ; $6859: $41
	add b                                            ; $685a: $80
	ldh [$7d], a                                     ; $685b: $e0 $7d
	ld d, a                                          ; $685d: $57
	xor d                                            ; $685e: $aa
	rst SubAFromHL                                          ; $685f: $d7
	ld sp, hl                                        ; $6860: $f9
	ld a, c                                          ; $6861: $79
	ld [hl], b                                       ; $6862: $70
	add d                                            ; $6863: $82
	nop                                              ; $6864: $00
	jr z, @+$77                                      ; $6865: $28 $75

	rlca                                             ; $6867: $07
	cpl                                              ; $6868: $2f
	rrca                                             ; $6869: $0f
	adc [hl]                                         ; $686a: $8e
	ld l, l                                          ; $686b: $6d
	ld a, [$8b54]                                    ; $686c: $fa $54 $8b
	ldh [$50], a                                     ; $686f: $e0 $50
	ret nc                                           ; $6871: $d0

	ld [hl], c                                       ; $6872: $71
	ld [de], a                                       ; $6873: $12
	dec b                                            ; $6874: $05
	xor e                                            ; $6875: $ab
	ld [hl], c                                       ; $6876: $71
	ld b, l                                          ; $6877: $45
	adc e                                            ; $6878: $8b
	scf                                              ; $6879: $37
	sbc [hl]                                         ; $687a: $9e
	jr c, jr_058_689d                                ; $687b: $38 $20

	ld h, b                                          ; $687d: $60
	ld h, c                                          ; $687e: $61

Call_058_687f:
	rst $38                                          ; $687f: $ff
	ld a, a                                          ; $6880: $7f
	ld a, e                                          ; $6881: $7b
	cp $7b                                           ; $6882: $fe $7b
	ld d, [hl]                                       ; $6884: $56
	sbc l                                            ; $6885: $9d
	rst SubAFromBC                                          ; $6886: $e7
	rst FarCall                                          ; $6887: $f7

jr_058_6888:
	ld a, d                                          ; $6888: $7a
	jp nz, Jump_058_779c                             ; $6889: $c2 $9c $77

	or $f2                                           ; $688c: $f6 $f2
	call c, $9cf7                                    ; $688e: $dc $f7 $9c
	add a                                            ; $6891: $87
	rlca                                             ; $6892: $07
	dec b                                            ; $6893: $05
	ld l, [hl]                                       ; $6894: $6e
	jp nz, $8c9d                                     ; $6895: $c2 $9d $8c

	sbc h                                            ; $6898: $9c
	halt                                             ; $6899: $76
	call nz, $ae93                                   ; $689a: $c4 $93 $ae

jr_058_689d:
	push de                                          ; $689d: $d5
	ld l, $dd                                        ; $689e: $2e $dd
	ld bc, $00a0                                     ; $68a0: $01 $a0 $00
	xor b                                            ; $68a3: $a8
	nop                                              ; $68a4: $00
	ld [$faf5], a                                    ; $68a5: $ea $f5 $fa
	reti                                             ; $68a8: $d9


	rst $38                                          ; $68a9: $ff
	ld a, [hl]                                       ; $68aa: $7e
	cp [hl]                                          ; $68ab: $be
	ld a, l                                          ; $68ac: $7d
	daa                                              ; $68ad: $27
	rst SubAFromDE                                          ; $68ae: $df
	rrca                                             ; $68af: $0f
	sbc e                                            ; $68b0: $9b
	rra                                              ; $68b1: $1f
	ccf                                              ; $68b2: $3f

jr_058_68b3:
	nop                                              ; $68b3: $00
	add b                                            ; $68b4: $80
	ld a, d                                          ; $68b5: $7a
	or d                                             ; $68b6: $b2
	add b                                            ; $68b7: $80
	db $fc                                           ; $68b8: $fc
	ldh a, [c]                                       ; $68b9: $f2
	pop hl                                           ; $68ba: $e1
	rst SubAFromDE                                          ; $68bb: $df
	ld c, a                                          ; $68bc: $4f
	ccf                                              ; $68bd: $3f
	sbc a                                            ; $68be: $9f
	rst AddAOntoHL                                          ; $68bf: $ef
	rst $38                                          ; $68c0: $ff
	rst FarCall                                          ; $68c1: $f7
	rst JumpTable                                          ; $68c2: $c7
	sub b                                            ; $68c3: $90
	ld c, b                                          ; $68c4: $48
	jr c, jr_058_68d4                                ; $68c5: $38 $0d

	ld b, $08                                        ; $68c7: $06 $08
	nop                                              ; $68c9: $00
	add b                                            ; $68ca: $80
	rst GetHLinHL                                          ; $68cb: $cf
	rst SubAFromBC                                          ; $68cc: $e7
	di                                               ; $68cd: $f3
	pop af                                           ; $68ce: $f1
	ldh [$c0], a                                     ; $68cf: $e0 $c0
	cp $ff                                           ; $68d1: $fe $ff
	ld a, [bc]                                       ; $68d3: $0a

jr_058_68d4:
	inc b                                            ; $68d4: $04
	ld [bc], a                                       ; $68d5: $02
	add c                                            ; $68d6: $81
	db $fd                                           ; $68d7: $fd
	ld a, h                                          ; $68d8: $7c
	sub [hl]                                         ; $68d9: $96
	adc l                                            ; $68da: $8d
	ld hl, sp-$2c                                    ; $68db: $f8 $d4
	db $ed                                           ; $68dd: $ed
	ld [hl], l                                       ; $68de: $75
	dec sp                                           ; $68df: $3b
	rst SubAFromDE                                          ; $68e0: $df

Jump_058_68e1:
	rra                                              ; $68e1: $1f
	rrca                                             ; $68e2: $0f
	ccf                                              ; $68e3: $3f
	rst AddAOntoHL                                          ; $68e4: $ef
	ld d, a                                          ; $68e5: $57
	cpl                                              ; $68e6: $2f
	ld d, $0a                                        ; $68e7: $16 $0a
	sbc e                                            ; $68e9: $9b
	rst $38                                          ; $68ea: $ff
	ld h, [hl]                                       ; $68eb: $66
	add e                                            ; $68ec: $83
	ld a, e                                          ; $68ed: $7b
	add hl, hl                                       ; $68ee: $29
	sbc d                                            ; $68ef: $9a
	rst JumpTable                                          ; $68f0: $c7
	cp $fd                                           ; $68f1: $fe $fd
	jp nz, $de82                                     ; $68f3: $c2 $82 $de

	ld bc, $009c                                     ; $68f6: $01 $9c $00
	ld a, h                                          ; $68f9: $7c
	ldh a, [$7b]                                     ; $68fa: $f0 $7b
	ld e, b                                          ; $68fc: $58
	add b                                            ; $68fd: $80
	add b                                            ; $68fe: $80
	add c                                            ; $68ff: $81
	jp $c121                                         ; $6900: $c3 $21 $c1


	dec c                                            ; $6903: $0d
	ld l, l                                          ; $6904: $6d
	ld l, l                                          ; $6905: $6d
	scf                                              ; $6906: $37
	ccf                                              ; $6907: $3f
	sbc e                                            ; $6908: $9b
	push af                                          ; $6909: $f5
	ld [hl], h                                       ; $690a: $74
	ld h, h                                          ; $690b: $64
	ld c, [hl]                                       ; $690c: $4e
	ld c, d                                          ; $690d: $4a
	rst GetHLinHL                                          ; $690e: $cf
	sbc h                                            ; $690f: $9c
	inc e                                            ; $6910: $1c
	sub l                                            ; $6911: $95
	call nc, $d4ec                                   ; $6912: $d4 $ec $d4
	sub $d7                                          ; $6915: $d6 $d7
	xor h                                            ; $6917: $ac
	inc l                                            ; $6918: $2c
	ld b, d                                          ; $6919: $42
	ld [bc], a                                       ; $691a: $02
	nop                                              ; $691b: $00
	jr nc, jr_058_68b3                               ; $691c: $30 $95

	jr nz, jr_058_6920                               ; $691e: $20 $00

jr_058_6920:
	add e                                            ; $6920: $83
	cp $c2                                           ; $6921: $fe $c2
	inc bc                                           ; $6923: $03
	nop                                              ; $6924: $00
	jr nc, jr_058_6927                               ; $6925: $30 $00

jr_058_6927:
	nop                                              ; $6927: $00
	ld a, d                                          ; $6928: $7a
	add hl, bc                                       ; $6929: $09
	ld a, [hl]                                       ; $692a: $7e
	ld [$4e80], sp                                   ; $692b: $08 $80 $4e
	ld e, h                                          ; $692e: $5c
	or b                                             ; $692f: $b0
	or b                                             ; $6930: $b0
	and b                                            ; $6931: $a0
	and l                                            ; $6932: $a5
	xor c                                            ; $6933: $a9
	scf                                              ; $6934: $37
	ld c, a                                          ; $6935: $4f
	ld c, a                                          ; $6936: $4f
	sbc a                                            ; $6937: $9f
	sbc a                                            ; $6938: $9f
	cp a                                             ; $6939: $bf
	ld a, b                                          ; $693a: $78
	add $01                                          ; $693b: $c6 $01
	nop                                              ; $693d: $00
	rlca                                             ; $693e: $07
	add b                                            ; $693f: $80
	add b                                            ; $6940: $80
	ld b, b                                          ; $6941: $40
	ld a, a                                          ; $6942: $7f
	rst $38                                          ; $6943: $ff
	pop bc                                           ; $6944: $c1
	adc a                                            ; $6945: $8f
	rlca                                             ; $6946: $07
	db $e3                                           ; $6947: $e3
	rst $38                                          ; $6948: $ff
	rst $38                                          ; $6949: $ff
	call z, $9838                                    ; $694a: $cc $38 $98
	ld [$27c4], sp                                   ; $694d: $08 $c4 $27
	sub $5c                                          ; $6950: $d6 $5c
	ld a, h                                          ; $6952: $7c

jr_058_6953:
	rst JumpTable                                          ; $6953: $c7
	db $dd                                           ; $6954: $dd
	rst $38                                          ; $6955: $ff
	ld a, d                                          ; $6956: $7a
	and l                                            ; $6957: $a5
	add h                                            ; $6958: $84
	add b                                            ; $6959: $80
	ret nz                                           ; $695a: $c0

	ld c, h                                          ; $695b: $4c
	ld h, b                                          ; $695c: $60
	ld h, e                                          ; $695d: $63
	sbc a                                            ; $695e: $9f
	ld a, b                                          ; $695f: $78
	ccf                                              ; $6960: $3f
	add b                                            ; $6961: $80
	add b                                            ; $6962: $80
	call z, $e0c0                                    ; $6963: $cc $c0 $e0
	sbc a                                            ; $6966: $9f
	ld a, b                                          ; $6967: $78
	rlca                                             ; $6968: $07
	cp d                                             ; $6969: $ba
	ld e, [hl]                                       ; $696a: $5e
	ld a, a                                          ; $696b: $7f
	db $f4                                           ; $696c: $f4
	db $e4                                           ; $696d: $e4
	or l                                             ; $696e: $b5
	ld e, l                                          ; $696f: $5d
	adc l                                            ; $6970: $8d
	xor a                                            ; $6971: $af
	rst SubAFromBC                                          ; $6972: $e7
	rrca                                             ; $6973: $0f
	ld a, b                                          ; $6974: $78
	ld e, a                                          ; $6975: $5f
	sbc e                                            ; $6976: $9b
	ld c, a                                          ; $6977: $4f
	add a                                            ; $6978: $87
	ld sp, hl                                        ; $6979: $f9
	db $fc                                           ; $697a: $fc
	db $db                                           ; $697b: $db
	rst $38                                          ; $697c: $ff
	ld a, l                                          ; $697d: $7d
	ldh [$fb], a                                     ; $697e: $e0 $fb
	sbc d                                            ; $6980: $9a
	push hl                                          ; $6981: $e5
	jr nc, jr_058_6953                               ; $6982: $30 $cf

	ldh [$f8], a                                     ; $6984: $e0 $f8
	sbc $ff                                          ; $6986: $de $ff
	ld a, a                                          ; $6988: $7f
	rrca                                             ; $6989: $0f
	ld a, l                                          ; $698a: $7d
	jp z, $5e78                                      ; $698b: $ca $78 $5e

	sbc c                                            ; $698e: $99
	nop                                              ; $698f: $00
	inc hl                                           ; $6990: $23
	ld b, c                                          ; $6991: $41
	and e                                            ; $6992: $a3
	ld a, h                                          ; $6993: $7c
	nop                                              ; $6994: $00
	sbc $ff                                          ; $6995: $de $ff
	sbc l                                            ; $6997: $9d
	pop bc                                           ; $6998: $c1
	add e                                            ; $6999: $83
	ld a, e                                          ; $699a: $7b
	xor [hl]                                         ; $699b: $ae
	cp $9c                                           ; $699c: $fe $9c
	rst JumpTable                                          ; $699e: $c7
	adc a                                            ; $699f: $8f
	rra                                              ; $69a0: $1f
	ld [hl], b                                       ; $69a1: $70
	call nz, Call_058_617d                           ; $69a2: $c4 $7d $61
	ld a, a                                          ; $69a5: $7f
	ld a, [de]                                       ; $69a6: $1a
	db $fd                                           ; $69a7: $fd
	sbc [hl]                                         ; $69a8: $9e
	rst FarCall                                          ; $69a9: $f7

jr_058_69aa:
	ld a, c                                          ; $69aa: $79
	pop bc                                           ; $69ab: $c1
	ld [hl], e                                       ; $69ac: $73
	ret nz                                           ; $69ad: $c0

	sbc l                                            ; $69ae: $9d
	rrca                                             ; $69af: $0f
	dec b                                            ; $69b0: $05
	ld [hl], e                                       ; $69b1: $73
	cp [hl]                                          ; $69b2: $be
	sub d                                            ; $69b3: $92
	xor h                                            ; $69b4: $ac
	ret c                                            ; $69b5: $d8

	db $fc                                           ; $69b6: $fc
	daa                                              ; $69b7: $27
	jr nc, jr_058_69aa                               ; $69b8: $30 $f0

	rst $38                                          ; $69ba: $ff
	rst $38                                          ; $69bb: $ff
	xor [hl]                                         ; $69bc: $ae
	db $dd                                           ; $69bd: $dd
	cp $1f                                           ; $69be: $fe $1f
	ret nz                                           ; $69c0: $c0

	ld a, c                                          ; $69c1: $79
	ld c, h                                          ; $69c2: $4c
	sbc d                                            ; $69c3: $9a
	db $fd                                           ; $69c4: $fd
	ld a, [hl]                                       ; $69c5: $7e
	ccf                                              ; $69c6: $3f
	ld hl, sp-$29                                    ; $69c7: $f8 $d7
	ld [hl], a                                       ; $69c9: $77
	cp a                                             ; $69ca: $bf
	ld a, c                                          ; $69cb: $79
	xor c                                            ; $69cc: $a9
	sbc [hl]                                         ; $69cd: $9e
	rrca                                             ; $69ce: $0f
	ld a, e                                          ; $69cf: $7b
	cp a                                             ; $69d0: $bf
	ld [hl], l                                       ; $69d1: $75
	cp h                                             ; $69d2: $bc
	adc e                                            ; $69d3: $8b
	xor a                                            ; $69d4: $af
	inc sp                                           ; $69d5: $33
	rst $38                                          ; $69d6: $ff
	ld hl, sp-$40                                    ; $69d7: $f8 $c0
	ret nz                                           ; $69d9: $c0

	ldh [$f0], a                                     ; $69da: $e0 $f0
	db $fc                                           ; $69dc: $fc
	sbc $1f                                          ; $69dd: $de $1f
	daa                                              ; $69df: $27
	ld h, a                                          ; $69e0: $67
	or a                                             ; $69e1: $b7
	rst SubAFromDE                                          ; $69e2: $df
	ei                                               ; $69e3: $fb
	rst $38                                          ; $69e4: $ff
	db $fc                                           ; $69e5: $fc
	rst $38                                          ; $69e6: $ff
	ld hl, sp+$79                                    ; $69e7: $f8 $79
	add l                                            ; $69e9: $85
	sbc e                                            ; $69ea: $9b
	ld c, a                                          ; $69eb: $4f
	add h                                            ; $69ec: $84
	adc b                                            ; $69ed: $88
	sub b                                            ; $69ee: $90
	ld a, e                                          ; $69ef: $7b
	add $76                                          ; $69f0: $c6 $76
	inc [hl]                                         ; $69f2: $34
	rst SubAFromDE                                          ; $69f3: $df
	ld a, a                                          ; $69f4: $7f
	sbc d                                            ; $69f5: $9a
	nop                                              ; $69f6: $00
	rrca                                             ; $69f7: $0f
	ld [hl], b                                       ; $69f8: $70
	add b                                            ; $69f9: $80
	ld b, b                                          ; $69fa: $40
	sbc $20                                          ; $69fb: $de $20

jr_058_69fd:
	ld a, a                                          ; $69fd: $7f
	add a                                            ; $69fe: $87
	ld a, [hl]                                       ; $69ff: $7e
	ldh [c], a                                       ; $6a00: $e2
	sbc h                                            ; $6a01: $9c
	ret nz                                           ; $6a02: $c0

	add b                                            ; $6a03: $80
	rra                                              ; $6a04: $1f
	ld [hl], e                                       ; $6a05: $73
	add h                                            ; $6a06: $84
	db $fd                                           ; $6a07: $fd
	sub a                                            ; $6a08: $97
	db $e3                                           ; $6a09: $e3
	pop hl                                           ; $6a0a: $e1
	ld h, b                                          ; $6a0b: $60
	jr nc, jr_058_6a1e                               ; $6a0c: $30 $10

	add hl, de                                       ; $6a0e: $19
	adc a                                            ; $6a0f: $8f
	rst JumpTable                                          ; $6a10: $c7
	ld a, e                                          ; $6a11: $7b
	db $e3                                           ; $6a12: $e3
	rst SubAFromDE                                          ; $6a13: $df
	db $10                                           ; $6a14: $10
	sbc c                                            ; $6a15: $99
	ld [$0609], sp                                   ; $6a16: $08 $09 $06
	push hl                                          ; $6a19: $e5
	db $fd                                           ; $6a1a: $fd
	db $fd                                           ; $6a1b: $fd
	sbc $fe                                          ; $6a1c: $de $fe

jr_058_6a1e:
	add b                                            ; $6a1e: $80
	rst GetHLinHL                                          ; $6a1f: $cf
	call nz, $8f87                                   ; $6a20: $c4 $87 $8f
	rst FarCall                                          ; $6a23: $f7
	add [hl]                                         ; $6a24: $86
	ld a, [$8382]                                    ; $6a25: $fa $82 $83
	add a                                            ; $6a28: $87
	dec [hl]                                         ; $6a29: $35
	scf                                              ; $6a2a: $37
	dec [hl]                                         ; $6a2b: $35
	ld l, e                                          ; $6a2c: $6b
	ld l, e                                          ; $6a2d: $6b
	ld l, a                                          ; $6a2e: $6f
	ccf                                              ; $6a2f: $3f
	sbc a                                            ; $6a30: $9f
	ld e, l                                          ; $6a31: $5d
	ld e, [hl]                                       ; $6a32: $5e
	ld e, l                                          ; $6a33: $5d
	cp d                                             ; $6a34: $ba
	cp d                                             ; $6a35: $ba
	cp h                                             ; $6a36: $bc
	ld e, h                                          ; $6a37: $5c
	xor b                                            ; $6a38: $a8
	add h                                            ; $6a39: $84
	adc c                                            ; $6a3a: $89
	or c                                             ; $6a3b: $b1
	pop bc                                           ; $6a3c: $c1
	add e                                            ; $6a3d: $83
	sbc c                                            ; $6a3e: $99
	add l                                            ; $6a3f: $85
	adc b                                            ; $6a40: $88
	sub b                                            ; $6a41: $90
	add a                                            ; $6a42: $87
	adc a                                            ; $6a43: $8f
	cp a                                             ; $6a44: $bf
	call c, $9eff                                    ; $6a45: $dc $ff $9e
	and b                                            ; $6a48: $a0
	sbc $60                                          ; $6a49: $de $60
	sbc d                                            ; $6a4b: $9a
	ld b, e                                          ; $6a4c: $43
	ld b, h                                          ; $6a4d: $44
	ret z                                            ; $6a4e: $c8

	add h                                            ; $6a4f: $84
	cp a                                             ; $6a50: $bf
	sbc $3f                                          ; $6a51: $de $3f
	rst SubAFromDE                                          ; $6a53: $df
	ld a, a                                          ; $6a54: $7f
	rst SubAFromDE                                          ; $6a55: $df
	rst $38                                          ; $6a56: $ff
	add d                                            ; $6a57: $82
	ld a, [hl]                                       ; $6a58: $7e
	ld sp, $3950                                     ; $6a59: $31 $50 $39
	jr jr_058_69fd                                   ; $6a5c: $18 $9f

	inc e                                            ; $6a5e: $1c
	ld a, $ff                                        ; $6a5f: $3e $ff
	pop hl                                           ; $6a61: $e1
	ldh a, [$f1]                                     ; $6a62: $f0 $f1
	ldh a, [$f3]                                     ; $6a64: $f0 $f3
	db $f4                                           ; $6a66: $f4
	ldh [$7e], a                                     ; $6a67: $e0 $7e
	ld a, a                                          ; $6a69: $7f
	rst AddAOntoHL                                          ; $6a6a: $ef
	xor d                                            ; $6a6b: $aa
	dec de                                           ; $6a6c: $1b
	ld bc, $3909                                     ; $6a6d: $01 $09 $39
	sub $f5                                          ; $6a70: $d6 $f5
	xor e                                            ; $6a72: $ab
	dec de                                           ; $6a73: $1b
	add hl, de                                       ; $6a74: $19
	ld a, e                                          ; $6a75: $7b
	ld hl, sp-$72                                    ; $6a76: $f8 $8e
	ld l, $68                                        ; $6a78: $2e $68
	ld sp, hl                                        ; $6a7a: $f9
	ldh a, [c]                                       ; $6a7b: $f2
	ld l, d                                          ; $6a7c: $6a
	or [hl]                                          ; $6a7d: $b6
	jp c, $00d9                                      ; $6a7e: $da $d9 $00

	nop                                              ; $6a81: $00
	pop bc                                           ; $6a82: $c1
	or d                                             ; $6a83: $b2
	jp z, $72e6                                      ; $6a84: $ca $e6 $72

	ld [hl], c                                       ; $6a87: $71
	ld b, $dd                                        ; $6a88: $06 $dd
	inc bc                                           ; $6a8a: $03
	sbc e                                            ; $6a8b: $9b
	rlca                                             ; $6a8c: $07
	ld c, $3c                                        ; $6a8d: $0e $3c
	inc bc                                           ; $6a8f: $03
	call c, $7c01                                    ; $6a90: $dc $01 $7c
	ld a, [hl]                                       ; $6a93: $7e
	ld [hl], $00                                     ; $6a94: $36 $00
	db $dd                                           ; $6a96: $dd
	ld [hl+], a                                      ; $6a97: $22
	sbc [hl]                                         ; $6a98: $9e
	dec h                                            ; $6a99: $25
	db $dd                                           ; $6a9a: $dd
	ld d, l                                          ; $6a9b: $55
	sbc [hl]                                         ; $6a9c: $9e
	ld h, [hl]                                       ; $6a9d: $66
	ld c, a                                          ; $6a9e: $4f
	or $9e                                           ; $6a9f: $f6 $9e
	ld b, l                                          ; $6aa1: $45
	db $dd                                           ; $6aa2: $dd
	ld d, l                                          ; $6aa3: $55
	sbc [hl]                                         ; $6aa4: $9e
	ld d, [hl]                                       ; $6aa5: $56
	ld h, e                                          ; $6aa6: $63
	db $ec                                           ; $6aa7: $ec
	daa                                              ; $6aa8: $27
	or $9d                                           ; $6aa9: $f6 $9d
	inc hl                                           ; $6aab: $23
	dec [hl]                                         ; $6aac: $35
	ld l, e                                          ; $6aad: $6b
	or $97                                           ; $6aae: $f6 $97
	inc hl                                           ; $6ab0: $23
	inc sp                                           ; $6ab1: $33
	dec [hl]                                         ; $6ab2: $35
	ld d, l                                          ; $6ab3: $55
	ld d, h                                          ; $6ab4: $54

Jump_058_6ab5:
	ld b, h                                          ; $6ab5: $44
	ld [hl], a                                       ; $6ab6: $77
	ld [hl], a                                       ; $6ab7: $77
	ld [hl], a                                       ; $6ab8: $77
	or $7f                                           ; $6ab9: $f6 $7f
	call nz, $f67f                                   ; $6abb: $c4 $7f $f6
	sbc [hl]                                         ; $6abe: $9e
	ld b, a                                          ; $6abf: $47
	ld a, e                                          ; $6ac0: $7b
	or $7f                                           ; $6ac1: $f6 $7f
	push af                                          ; $6ac3: $f5
	rst SubAFromDE                                          ; $6ac4: $df
	ld d, l                                          ; $6ac5: $55
	ld a, e                                          ; $6ac6: $7b
	rst FarCall                                          ; $6ac7: $f7
	ld e, e                                          ; $6ac8: $5b
	or $8b                                           ; $6ac9: $f6 $8b
	add hl, bc                                       ; $6acb: $09
	push af                                          ; $6acc: $f5
	sbc e                                            ; $6acd: $9b
	ret z                                            ; $6ace: $c8

	ldh a, [rIE]                                     ; $6acf: $f0 $ff
	rst $38                                          ; $6ad1: $ff
	di                                               ; $6ad2: $f3
	sbc l                                            ; $6ad3: $9d
	ld h, b                                          ; $6ad4: $60
	add b                                            ; $6ad5: $80
	pop af                                           ; $6ad6: $f1
	sbc [hl]                                         ; $6ad7: $9e
	ld d, l                                          ; $6ad8: $55
	or e                                             ; $6ad9: $b3
	ld a, [hl+]                                      ; $6ada: $2a
	dec d                                            ; $6adb: $15
	ld a, [hl+]                                      ; $6adc: $2a
	dec d                                            ; $6add: $15
	ld a, [hl+]                                      ; $6ade: $2a
	dec d                                            ; $6adf: $15
	dec hl                                           ; $6ae0: $2b
	sub b                                            ; $6ae1: $90
	sbc h                                            ; $6ae2: $9c
	add e                                            ; $6ae3: $83
	add b                                            ; $6ae4: $80
	cp b                                             ; $6ae5: $b8
	and a                                            ; $6ae6: $a7
	xor h                                            ; $6ae7: $ac
	sbc h                                            ; $6ae8: $9c
	inc c                                            ; $6ae9: $0c
	xor h                                            ; $6aea: $ac
	inc c                                            ; $6aeb: $0c
	db $fd                                           ; $6aec: $fd
	sbc [hl]                                         ; $6aed: $9e
	ldh [$b1], a                                     ; $6aee: $e0 $b1
	rra                                              ; $6af0: $1f
	nop                                              ; $6af1: $00
	ret nz                                           ; $6af2: $c0

	ld a, $01                                        ; $6af3: $3e $01
	db $10                                           ; $6af5: $10
	db $10                                           ; $6af6: $10
	db $10                                           ; $6af7: $10
	db $10                                           ; $6af8: $10
	ldh a, [rP1]                                     ; $6af9: $f0 $00
	nop                                              ; $6afb: $00
	ldh a, [rP1]                                     ; $6afc: $f0 $00
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	cp e                                             ; $6b00: $bb
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	nop                                              ; $6b05: $00
	dec c                                            ; $6b06: $0d
	sbc [hl]                                         ; $6b07: $9e
	ld [bc], a                                       ; $6b08: $02
	ld h, a                                          ; $6b09: $67
	cp $99                                           ; $6b0a: $fe $99
	inc c                                            ; $6b0c: $0c
	ld [bc], a                                       ; $6b0d: $02
	inc c                                            ; $6b0e: $0c
	inc bc                                           ; $6b0f: $03
	ld c, $01                                        ; $6b10: $0e $01
	sbc $ff                                          ; $6b12: $de $ff
	sbc d                                            ; $6b14: $9a
	db $fc                                           ; $6b15: $fc
	rst $38                                          ; $6b16: $ff
	ldh [rIE], a                                     ; $6b17: $e0 $ff
	add b                                            ; $6b19: $80
	ld [hl], e                                       ; $6b1a: $73
	ld [hl], a                                       ; $6b1b: $77
	sbc e                                            ; $6b1c: $9b
	rst $38                                          ; $6b1d: $ff
	ccf                                              ; $6b1e: $3f
	ret nz                                           ; $6b1f: $c0

	cp $bd                                           ; $6b20: $fe $bd
	ld sp, hl                                        ; $6b22: $f9
	rst FarCall                                          ; $6b23: $f7
	rst GetHLinHL                                          ; $6b24: $cf
	ccf                                              ; $6b25: $3f
	ld a, a                                          ; $6b26: $7f
	and $80                                          ; $6b27: $e6 $80
	inc bc                                           ; $6b29: $03
	cp $0f                                           ; $6b2a: $fe $0f
	db $f4                                           ; $6b2c: $f4
	ccf                                              ; $6b2d: $3f
	cp $07                                           ; $6b2e: $fe $07
	ld hl, sp+$1f                                    ; $6b30: $f8 $1f
	and $79                                          ; $6b32: $e6 $79
	adc c                                            ; $6b34: $89
	and $55                                          ; $6b35: $e6 $55
	adc b                                            ; $6b37: $88
	jp nc, $a131                                     ; $6b38: $d2 $31 $a1

	ld h, a                                          ; $6b3b: $67
	ld [hl], e                                       ; $6b3c: $73
	adc $7c                                          ; $6b3d: $ce $7c
	rst $38                                          ; $6b3f: $ff
	ld a, [bc]                                       ; $6b40: $0a
	rst $38                                          ; $6b41: $ff
	push af                                          ; $6b42: $f5
	rst $38                                          ; $6b43: $ff
	ld [$161f], a                                    ; $6b44: $ea $1f $16
	rst AddAOntoHL                                          ; $6b47: $ef
	add b                                            ; $6b48: $80
	ld [hl], e                                       ; $6b49: $73
	rst $38                                          ; $6b4a: $ff
	rst $38                                          ; $6b4b: $ff
	adc a                                            ; $6b4c: $8f
	ld [hl], a                                       ; $6b4d: $77
	rrca                                             ; $6b4e: $0f
	cp b                                             ; $6b4f: $b8
	ld hl, sp+$56                                    ; $6b50: $f8 $56
	cp $51                                           ; $6b52: $fe $51
	rst $38                                          ; $6b54: $ff
	xor e                                            ; $6b55: $ab
	rst $38                                          ; $6b56: $ff
	xor a                                            ; $6b57: $af
	rst $38                                          ; $6b58: $ff
	ei                                               ; $6b59: $fb
	cp $a3                                           ; $6b5a: $fe $a3
	db $fd                                           ; $6b5c: $fd
	dec d                                            ; $6b5d: $15
	ld a, [$1010]                                    ; $6b5e: $fa $10 $10
	jr nc, jr_058_6b93                               ; $6b61: $30 $30

	ld d, b                                          ; $6b63: $50
	ld [hl], b                                       ; $6b64: $70
	db $fc                                           ; $6b65: $fc
	db $fc                                           ; $6b66: $fc
	ld a, e                                          ; $6b67: $7b
	sbc b                                            ; $6b68: $98
	add a                                            ; $6b69: $87
	xor [hl]                                         ; $6b6a: $ae
	ld d, c                                          ; $6b6b: $51
	push de                                          ; $6b6c: $d5
	xor d                                            ; $6b6d: $aa
	ld l, d                                          ; $6b6e: $6a
	push de                                          ; $6b6f: $d5
	rst FarCall                                          ; $6b70: $f7
	rst SubAFromDE                                          ; $6b71: $df
	add b                                            ; $6b72: $80
	sbc e                                            ; $6b73: $9b
	ld b, b                                          ; $6b74: $40
	ret nz                                           ; $6b75: $c0

	and b                                            ; $6b76: $a0
	ld h, b                                          ; $6b77: $60

Jump_058_6b78:
	ldh [$d1], a                                     ; $6b78: $e0 $d1
	ld a, a                                          ; $6b7a: $7f
	ld l, b                                          ; $6b7b: $68
	ld c, e                                          ; $6b7c: $4b
	cp $dc                                           ; $6b7d: $fe $dc
	rst $38                                          ; $6b7f: $ff
	sbc [hl]                                         ; $6b80: $9e
	rra                                              ; $6b81: $1f
	ld h, a                                          ; $6b82: $67
	pop af                                           ; $6b83: $f1
	sbc h                                            ; $6b84: $9c
	cp $fb                                           ; $6b85: $fe $fb
	db $fc                                           ; $6b87: $fc
	reti                                             ; $6b88: $d9


	rst $38                                          ; $6b89: $ff
	ld a, e                                          ; $6b8a: $7b
	db $ec                                           ; $6b8b: $ec
	sbc [hl]                                         ; $6b8c: $9e
	jp $9cfd                                         ; $6b8d: $c3 $fd $9c


	call c, $fee0                                    ; $6b90: $dc $e0 $fe

jr_058_6b93:
	ret c                                            ; $6b93: $d8

	rst $38                                          ; $6b94: $ff
	sbc l                                            ; $6b95: $9d
	rrca                                             ; $6b96: $0f
	rra                                              ; $6b97: $1f
	halt                                             ; $6b98: $76
	call z, $df9b                                    ; $6b99: $cc $9b $df
	nop                                              ; $6b9c: $00
	rst FarCall                                          ; $6b9d: $f7
	ld hl, sp-$27                                    ; $6b9e: $f8 $d9
	rst $38                                          ; $6ba0: $ff
	sbc [hl]                                         ; $6ba1: $9e
	and c                                            ; $6ba2: $a1
	cp [hl]                                          ; $6ba3: $be
	or b                                             ; $6ba4: $b0
	xor a                                            ; $6ba5: $af
	xor a                                            ; $6ba6: $af
	sub a                                            ; $6ba7: $97
	inc c                                            ; $6ba8: $0c
	inc l                                            ; $6ba9: $2c
	adc h                                            ; $6baa: $8c
	db $e4                                           ; $6bab: $e4
	add b                                            ; $6bac: $80
	ldh a, [$80]                                     ; $6bad: $f0 $80
	rst AddAOntoHL                                          ; $6baf: $ef
	ld l, d                                          ; $6bb0: $6a
	sub b                                            ; $6bb1: $90
	sbc e                                            ; $6bb2: $9b
	db $f4                                           ; $6bb3: $f4
	jr c, jr_058_6bf5                                ; $6bb4: $38 $3f

	rrca                                             ; $6bb6: $0f
	ld [hl], e                                       ; $6bb7: $73
	ld e, h                                          ; $6bb8: $5c
	cp h                                             ; $6bb9: $bc
	rrca                                             ; $6bba: $0f
	nop                                              ; $6bbb: $00
	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	and b                                            ; $6bbe: $a0
	sbc d                                            ; $6bbf: $9a
	ret nz                                           ; $6bc0: $c0

	ld a, l                                          ; $6bc1: $7d
	ld a, [hl]                                       ; $6bc2: $7e
	rlca                                             ; $6bc3: $07
	inc bc                                           ; $6bc4: $03
	ld [hl], a                                       ; $6bc5: $77
	xor $9e                                          ; $6bc6: $ee $9e
	ld a, h                                          ; $6bc8: $7c
	cp h                                             ; $6bc9: $bc
	inc bc                                           ; $6bca: $03
	nop                                              ; $6bcb: $00
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	ldh a, [$9d]                                     ; $6bce: $f0 $9d
	add b                                            ; $6bd0: $80
	rra                                              ; $6bd1: $1f
	cp l                                             ; $6bd2: $bd
	rrca                                             ; $6bd3: $0f
	rrca                                             ; $6bd4: $0f
	rst GetHLinHL                                          ; $6bd5: $cf
	ld c, h                                          ; $6bd6: $4c
	sbc h                                            ; $6bd7: $9c
	inc bc                                           ; $6bd8: $03
	ld c, l                                          ; $6bd9: $4d
	ld [bc], a                                       ; $6bda: $02
	ld [hl], a                                       ; $6bdb: $77
	cp $96                                           ; $6bdc: $fe $96
	call $cf02                                       ; $6bde: $cd $02 $cf
	ld sp, $06f9                                     ; $6be1: $31 $f9 $06
	add a                                            ; $6be4: $87
	ld a, b                                          ; $6be5: $78
	ld a, a                                          ; $6be6: $7f
	ld a, d                                          ; $6be7: $7a
	ret nz                                           ; $6be8: $c0

	ld l, a                                          ; $6be9: $6f
	cp $80                                           ; $6bea: $fe $80
	ret z                                            ; $6bec: $c8

	rst $38                                          ; $6bed: $ff
	ld sp, hl                                        ; $6bee: $f9
	ccf                                              ; $6bef: $3f
	pop af                                           ; $6bf0: $f1
	rra                                              ; $6bf1: $1f
	ldh a, [c]                                       ; $6bf2: $f2
	rra                                              ; $6bf3: $1f
	ldh [c], a                                       ; $6bf4: $e2

jr_058_6bf5:
	ccf                                              ; $6bf5: $3f
	db $e4                                           ; $6bf6: $e4
	ccf                                              ; $6bf7: $3f
	push hl                                          ; $6bf8: $e5
	ccf                                              ; $6bf9: $3f
	ld [$a63f], a                                    ; $6bfa: $ea $3f $a6
	call c, $b84d                                    ; $6bfd: $dc $4d $b8
	ld a, [de]                                       ; $6c00: $1a
	pop af                                           ; $6c01: $f1
	inc [hl]                                         ; $6c02: $34
	db $e3                                           ; $6c03: $e3
	ld [hl], b                                       ; $6c04: $70
	rst GetHLinHL                                          ; $6c05: $cf
	db $e3                                           ; $6c06: $e3
	sbc a                                            ; $6c07: $9f
	add l                                            ; $6c08: $85
	ld a, a                                          ; $6c09: $7f
	ld a, [bc]                                       ; $6c0a: $0a
	add b                                            ; $6c0b: $80
	rst $38                                          ; $6c0c: $ff
	sbc h                                            ; $6c0d: $9c
	ld h, a                                          ; $6c0e: $67
	add hl, bc                                       ; $6c0f: $09
	or $0e                                           ; $6c10: $f6 $0e
	ldh a, [rAUD3LEVEL]                              ; $6c12: $f0 $1c
	ldh [$bc], a                                     ; $6c14: $e0 $bc
	ret nz                                           ; $6c16: $c0

	ld a, [hl]                                       ; $6c17: $7e
	add b                                            ; $6c18: $80
	xor d                                            ; $6c19: $aa
	ld d, h                                          ; $6c1a: $54
	xor d                                            ; $6c1b: $aa
	ld d, h                                          ; $6c1c: $54
	adc e                                            ; $6c1d: $8b
	db $fd                                           ; $6c1e: $fd
	ld e, e                                          ; $6c1f: $5b
	db $ec                                           ; $6c20: $ec
	push de                                          ; $6c21: $d5
	ld l, [hl]                                       ; $6c22: $6e
	cp l                                             ; $6c23: $bd
	ld h, [hl]                                       ; $6c24: $66
	or l                                             ; $6c25: $b5
	ld h, [hl]                                       ; $6c26: $66
	or d                                             ; $6c27: $b2
	ld h, [hl]                                       ; $6c28: $66
	ld [hl+], a                                      ; $6c29: $22
	and $80                                          ; $6c2a: $e6 $80
	ld a, [hl+]                                      ; $6c2c: $2a
	and $b5                                          ; $6c2d: $e6 $b5
	ld l, d                                          ; $6c2f: $6a
	cp $ab                                           ; $6c30: $fe $ab
	rst $38                                          ; $6c32: $ff
	sub l                                            ; $6c33: $95
	cp a                                             ; $6c34: $bf
	call nc, $da67                                   ; $6c35: $d4 $67 $da
	rst SubAFromDE                                          ; $6c38: $df
	ld l, d                                          ; $6c39: $6a
	rst SubAFromDE                                          ; $6c3a: $df
	ld l, d                                          ; $6c3b: $6a
	or l                                             ; $6c3c: $b5
	ld l, d                                          ; $6c3d: $6a
	ld d, b                                          ; $6c3e: $50
	or b                                             ; $6c3f: $b0
	adc b                                            ; $6c40: $88
	ld a, b                                          ; $6c41: $78
	ld l, b                                          ; $6c42: $68
	cp b                                             ; $6c43: $b8
	sub h                                            ; $6c44: $94
	db $fc                                           ; $6c45: $fc
	sub h                                            ; $6c46: $94
	db $fc                                           ; $6c47: $fc
	ld c, d                                          ; $6c48: $4a
	cp $ca                                           ; $6c49: $fe $ca
	sbc h                                            ; $6c4b: $9c
	ld a, [hl]                                       ; $6c4c: $7e
	push hl                                          ; $6c4d: $e5
	ld a, a                                          ; $6c4e: $7f
	ldh [$d1], a                                     ; $6c4f: $e0 $d1
	ld b, [hl]                                       ; $6c51: $46
	ret nz                                           ; $6c52: $c0

	cp a                                             ; $6c53: $bf
	ldh a, [$80]                                     ; $6c54: $f0 $80
	sbc [hl]                                         ; $6c56: $9e
	dec b                                            ; $6c57: $05
	or e                                             ; $6c58: $b3
	nop                                              ; $6c59: $00
	ld d, l                                          ; $6c5a: $55
	nop                                              ; $6c5b: $00
	ld d, l                                          ; $6c5c: $55
	ld a, [hl+]                                      ; $6c5d: $2a
	ld d, h                                          ; $6c5e: $54
	nop                                              ; $6c5f: $00
	ld d, l                                          ; $6c60: $55
	nop                                              ; $6c61: $00
	ld d, l                                          ; $6c62: $55
	and b                                            ; $6c63: $a0
	ld d, l                                          ; $6c64: $55
	xor d                                            ; $6c65: $aa
	nop                                              ; $6c66: $00
	ld a, l                                          ; $6c67: $7d
	cp l                                             ; $6c68: $bd
	cp d                                             ; $6c69: $ba
	ld b, b                                          ; $6c6a: $40
	nop                                              ; $6c6b: $00
	ld d, h                                          ; $6c6c: $54
	nop                                              ; $6c6d: $00
	ld d, l                                          ; $6c6e: $55
	add b                                            ; $6c6f: $80
	rst $38                                          ; $6c70: $ff
	sbc l                                            ; $6c71: $9d
	rst $38                                          ; $6c72: $ff
	rlca                                             ; $6c73: $07
	ld [hl], l                                       ; $6c74: $75
	and e                                            ; $6c75: $a3
	cp h                                             ; $6c76: $bc
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	db $ec                                           ; $6c7b: $ec
	sbc d                                            ; $6c7c: $9a
	adc h                                            ; $6c7d: $8c
	db $ec                                           ; $6c7e: $ec
	adc h                                            ; $6c7f: $8c
	ld a, a                                          ; $6c80: $7f
	add b                                            ; $6c81: $80
	ld h, [hl]                                       ; $6c82: $66
	jp c, $c676                                      ; $6c83: $da $76 $c6

	rst SubAFromDE                                          ; $6c86: $df
	rrca                                             ; $6c87: $0f
	ld [hl], a                                       ; $6c88: $77
	xor e                                            ; $6c89: $ab
	sbc [hl]                                         ; $6c8a: $9e
	ld a, [hl]                                       ; $6c8b: $7e
	cp h                                             ; $6c8c: $bc
	ld bc, $3000                                     ; $6c8d: $01 $00 $30
	nop                                              ; $6c90: $00
	and b                                            ; $6c91: $a0
	sbc c                                            ; $6c92: $99
	ret nz                                           ; $6c93: $c0

	ld a, [$0f7c]                                    ; $6c94: $fa $7c $0f
	rlca                                             ; $6c97: $07
	nop                                              ; $6c98: $00
	cp d                                             ; $6c99: $ba
	ld hl, sp+$1f                                    ; $6c9a: $f8 $1f
	inc bc                                           ; $6c9c: $03
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	nop                                              ; $6c9f: $00
	add b                                            ; $6ca0: $80
	sbc l                                            ; $6ca1: $9d
	add b                                            ; $6ca2: $80
	ld hl, sp-$43                                    ; $6ca3: $f8 $bd
	rlca                                             ; $6ca5: $07
	add b                                            ; $6ca6: $80
	ld hl, sp-$33                                    ; $6ca7: $f8 $cd
	ld [hl], d                                       ; $6ca9: $72
	ret z                                            ; $6caa: $c8

	halt                                             ; $6cab: $76
	ret nz                                           ; $6cac: $c0

	ld l, a                                          ; $6cad: $6f
	or $99                                           ; $6cae: $f6 $99
	cp $01                                           ; $6cb0: $fe $01
	pop af                                           ; $6cb2: $f1
	ld c, $8f                                        ; $6cb3: $0e $8f
	ld [hl], b                                       ; $6cb5: $70
	ld a, d                                          ; $6cb6: $7a
	ret nz                                           ; $6cb7: $c0

	ld a, c                                          ; $6cb8: $79
	sub b                                            ; $6cb9: $90
	ld [hl], a                                       ; $6cba: $77
	ld h, b                                          ; $6cbb: $60
	add b                                            ; $6cbc: $80
	db $f4                                           ; $6cbd: $f4
	rra                                              ; $6cbe: $1f
	ld hl, sp+$1f                                    ; $6cbf: $f8 $1f
	ldh a, [$3f]                                     ; $6cc1: $f0 $3f
	jp $9e7f                                         ; $6cc3: $c3 $7f $9e


	rst $38                                          ; $6cc6: $ff
	cp $ef                                           ; $6cc7: $fe $ef
	ei                                               ; $6cc9: $fb
	rrca                                             ; $6cca: $0f
	di                                               ; $6ccb: $f3
	ld e, $3b                                        ; $6ccc: $1e $3b
	or $5d                                           ; $6cce: $f6 $5d
	and $ee                                          ; $6cd0: $e6 $ee
	push af                                          ; $6cd2: $f5
	or $1d                                           ; $6cd3: $f6 $1d
	sbc l                                            ; $6cd5: $9d
	ld l, a                                          ; $6cd6: $6f
	ld l, l                                          ; $6cd7: $6d
	rst FarCall                                          ; $6cd8: $f7
	rst $38                                          ; $6cd9: $ff
	di                                               ; $6cda: $f3
	db $dd                                           ; $6cdb: $dd
	adc l                                            ; $6cdc: $8d
	ld d, e                                          ; $6cdd: $53
	ld c, [hl]                                       ; $6cde: $4e
	and h                                            ; $6cdf: $a4
	rlca                                             ; $6ce0: $07
	xor h                                            ; $6ce1: $ac
	rst FarCall                                          ; $6ce2: $f7
	xor h                                            ; $6ce3: $ac
	or l                                             ; $6ce4: $b5
	xor $ab                                          ; $6ce5: $ee $ab
	cp $ae                                           ; $6ce7: $fe $ae
	ei                                               ; $6ce9: $fb
	xor [hl]                                         ; $6cea: $ae
	ei                                               ; $6ceb: $fb
	pop af                                           ; $6cec: $f1
	rst $38                                          ; $6ced: $ff
	ld a, [hl+]                                      ; $6cee: $2a
	ld a, d                                          ; $6cef: $7a
	call z, $fe7f                                    ; $6cf0: $cc $7f $fe
	sub b                                            ; $6cf3: $90
	dec hl                                           ; $6cf4: $2b
	and $bb                                          ; $6cf5: $e6 $bb
	ld h, [hl]                                       ; $6cf7: $66
	cp e                                             ; $6cf8: $bb
	ld h, [hl]                                       ; $6cf9: $66
	xor e                                            ; $6cfa: $ab
	halt                                             ; $6cfb: $76
	and e                                            ; $6cfc: $a3
	ld a, [hl]                                       ; $6cfd: $7e
	or [hl]                                          ; $6cfe: $b6
	ld l, e                                          ; $6cff: $6b
	xor d                                            ; $6d00: $aa
	ld a, a                                          ; $6d01: $7f
	xor e                                            ; $6d02: $ab
	ld a, e                                          ; $6d03: $7b
	cp $9a                                           ; $6d04: $fe $9a
	dec hl                                           ; $6d06: $2b
	rst $38                                          ; $6d07: $ff
	dec hl                                           ; $6d08: $2b
	rst $38                                          ; $6d09: $ff
	ld a, [hl+]                                      ; $6d0a: $2a
	ld a, e                                          ; $6d0b: $7b
	cp $9d                                           ; $6d0c: $fe $9d
	and l                                            ; $6d0e: $a5
	ld a, a                                          ; $6d0f: $7f
	ld [hl], a                                       ; $6d10: $77
	cp $9d                                           ; $6d11: $fe $9d
	dec h                                            ; $6d13: $25
	rst $38                                          ; $6d14: $ff
	ld [hl], a                                       ; $6d15: $77
	cp $9e                                           ; $6d16: $fe $9e
	and l                                            ; $6d18: $a5
	ld a, e                                          ; $6d19: $7b
	cp $e0                                           ; $6d1a: $fe $e0
	pop de                                           ; $6d1c: $d1
	ld b, [hl]                                       ; $6d1d: $46
	ret nz                                           ; $6d1e: $c0

	halt                                             ; $6d1f: $76
	call c, $fc77                                    ; $6d20: $dc $77 $fc
	sbc b                                            ; $6d23: $98
	ld d, a                                          ; $6d24: $57
	ld b, $b9                                        ; $6d25: $06 $b9
	add hl, sp                                       ; $6d27: $39
	ret nz                                           ; $6d28: $c0

	ret nz                                           ; $6d29: $c0

	inc b                                            ; $6d2a: $04
	cp d                                             ; $6d2b: $ba
	ld d, l                                          ; $6d2c: $55
	xor d                                            ; $6d2d: $aa
	ld d, l                                          ; $6d2e: $55
	xor d                                            ; $6d2f: $aa
	ld d, l                                          ; $6d30: $55
	xor d                                            ; $6d31: $aa
	push de                                          ; $6d32: $d5
	ld a, [hl]                                       ; $6d33: $7e
	ld l, $9d                                        ; $6d34: $2e $9d
	add b                                            ; $6d36: $80
	ld d, l                                          ; $6d37: $55
	or c                                             ; $6d38: $b1
	xor b                                            ; $6d39: $a8
	ld d, l                                          ; $6d3a: $55
	xor d                                            ; $6d3b: $aa
	ld d, l                                          ; $6d3c: $55
	xor d                                            ; $6d3d: $aa
	ld d, l                                          ; $6d3e: $55
	xor d                                            ; $6d3f: $aa
	ld d, b                                          ; $6d40: $50
	nop                                              ; $6d41: $00
	ld d, h                                          ; $6d42: $54
	nop                                              ; $6d43: $00
	ld d, l                                          ; $6d44: $55
	xor b                                            ; $6d45: $a8
	ld d, l                                          ; $6d46: $55
	xor d                                            ; $6d47: $aa
	nop                                              ; $6d48: $00
	or [hl]                                          ; $6d49: $b6
	ld bc, $0402                                     ; $6d4a: $01 $02 $04
	ld c, b                                          ; $6d4d: $48
	or b                                             ; $6d4e: $b0
	ld b, b                                          ; $6d4f: $40
	add b                                            ; $6d50: $80
	ret z                                            ; $6d51: $c8

	ld [$0204], sp                                   ; $6d52: $08 $04 $02
	sub a                                            ; $6d55: $97
	ld [bc], a                                       ; $6d56: $02
	ld h, a                                          ; $6d57: $67
	dec b                                            ; $6d58: $05
	ld [bc], a                                       ; $6d59: $02
	ld [bc], a                                       ; $6d5a: $02
	inc de                                           ; $6d5b: $13
	ld [bc], a                                       ; $6d5c: $02
	sub c                                            ; $6d5d: $91
	halt                                             ; $6d5e: $76
	cp e                                             ; $6d5f: $bb
	ld e, h                                          ; $6d60: $5c
	ret nc                                           ; $6d61: $d0

	sbc e                                            ; $6d62: $9b
	ld b, b                                          ; $6d63: $40
	and b                                            ; $6d64: $a0
	jr nz, jr_058_6da6                               ; $6d65: $20 $3f

	cp c                                             ; $6d67: $b9
	ld bc, $0000                                     ; $6d68: $01 $00 $00
	nop                                              ; $6d6b: $00
	inc c                                            ; $6d6c: $0c
	ld a, [bc]                                       ; $6d6d: $0a
	add hl, bc                                       ; $6d6e: $09
	call $c87a                                       ; $6d6f: $cd $7a $c8
	sbc l                                            ; $6d72: $9d
	inc e                                            ; $6d73: $1c
	inc bc                                           ; $6d74: $03
	ld h, a                                          ; $6d75: $67
	db $ec                                           ; $6d76: $ec
	ld a, a                                          ; $6d77: $7f
	ld [hl], b                                       ; $6d78: $70
	sbc e                                            ; $6d79: $9b
	db $fc                                           ; $6d7a: $fc
	inc bc                                           ; $6d7b: $03
	add e                                            ; $6d7c: $83
	ld a, h                                          ; $6d7d: $7c
	ld [hl], l                                       ; $6d7e: $75
	add d                                            ; $6d7f: $82
	sbc [hl]                                         ; $6d80: $9e
	rrca                                             ; $6d81: $0f
	db $dd                                           ; $6d82: $dd
	ld bc, $0381                                     ; $6d83: $01 $81 $03
	ld [bc], a                                       ; $6d86: $02
	inc bc                                           ; $6d87: $03
	ld [$de36], a                                    ; $6d88: $ea $36 $de
	ld h, h                                          ; $6d8b: $64
	and h                                            ; $6d8c: $a4
	call z, $cd94                                    ; $6d8d: $cc $94 $cd
	ld e, h                                          ; $6d90: $5c
	xor b                                            ; $6d91: $a8
	cp b                                             ; $6d92: $b8
	ld l, b                                          ; $6d93: $68
	ld l, b                                          ; $6d94: $68
	ld hl, sp-$38                                    ; $6d95: $f8 $c8
	ld hl, sp-$41                                    ; $6d97: $f8 $bf
	sub b                                            ; $6d99: $90
	rst $38                                          ; $6d9a: $ff
	ldh a, [$af]                                     ; $6d9b: $f0 $af
	ldh a, [$a7]                                     ; $6d9d: $f0 $a7
	ldh [$c3], a                                     ; $6d9f: $e0 $c3
	ret nz                                           ; $6da1: $c0

	ld hl, $4079                                     ; $6da2: $21 $79 $40
	adc b                                            ; $6da5: $88

jr_058_6da6:
	cp b                                             ; $6da6: $b8
	ret nz                                           ; $6da7: $c0

	cp a                                             ; $6da8: $bf
	rst $38                                          ; $6da9: $ff
	ld e, a                                          ; $6daa: $5f
	or c                                             ; $6dab: $b1
	db $fd                                           ; $6dac: $fd
	ld e, $fe                                        ; $6dad: $1e $fe
	ccf                                              ; $6daf: $3f
	db $db                                           ; $6db0: $db
	rrca                                             ; $6db1: $0f
	sbc c                                            ; $6db2: $99
	ld de, $1333                                     ; $6db3: $11 $33 $13
	ccf                                              ; $6db6: $3f
	rra                                              ; $6db7: $1f
	and d                                            ; $6db8: $a2
	ld a, a                                          ; $6db9: $7f
	ld [de], a                                       ; $6dba: $12
	rst $38                                          ; $6dbb: $ff
	sub d                                            ; $6dbc: $92
	ld [hl], e                                       ; $6dbd: $73
	cp $94                                           ; $6dbe: $fe $94
	ret                                              ; $6dc0: $c9


	rst $38                                          ; $6dc1: $ff
	ld l, c                                          ; $6dc2: $69
	rst $38                                          ; $6dc3: $ff
	db $dd                                           ; $6dc4: $dd
	ld a, a                                          ; $6dc5: $7f
	ld a, [hl+]                                      ; $6dc6: $2a
	rst $38                                          ; $6dc7: $ff
	ld c, d                                          ; $6dc8: $4a
	rst $38                                          ; $6dc9: $ff
	ld d, h                                          ; $6dca: $54
	ld [hl], e                                       ; $6dcb: $73
	cp $9e                                           ; $6dcc: $fe $9e
	ld d, l                                          ; $6dce: $55
	ld a, e                                          ; $6dcf: $7b
	cp $7f                                           ; $6dd0: $fe $7f
	xor $76                                          ; $6dd2: $ee $76
	call z, $fe6f                                    ; $6dd4: $cc $6f $fe
	ld a, [hl]                                       ; $6dd7: $7e
	ret nz                                           ; $6dd8: $c0

	sbc [hl]                                         ; $6dd9: $9e
	ld h, l                                          ; $6dda: $65
	ld a, e                                          ; $6ddb: $7b
	cp $5b                                           ; $6ddc: $fe $5b
	ld h, c                                          ; $6dde: $61
	call c, $0280                                    ; $6ddf: $dc $80 $02
	ret nz                                           ; $6de2: $c0

	cp [hl]                                          ; $6de3: $be
	rst $38                                          ; $6de4: $ff
	rst $38                                          ; $6de5: $ff
	cp $95                                           ; $6de6: $fe $95
	ld bc, $03fd                                     ; $6de8: $01 $fd $03
	ei                                               ; $6deb: $fb
	rlca                                             ; $6dec: $07
	rst $38                                          ; $6ded: $ff
	rlca                                             ; $6dee: $07
	rst $38                                          ; $6def: $ff
	rrca                                             ; $6df0: $0f
	ld b, $b9                                        ; $6df1: $06 $b9
	ld bc, $8001                                     ; $6df3: $01 $01 $80
	add b                                            ; $6df6: $80
	ret nz                                           ; $6df7: $c0

	add b                                            ; $6df8: $80
	nop                                              ; $6df9: $00
	ld a, l                                          ; $6dfa: $7d
	sub b                                            ; $6dfb: $90
	ld b, b                                          ; $6dfc: $40
	ld l, d                                          ; $6dfd: $6a
	ld b, b                                          ; $6dfe: $40
	ccf                                              ; $6dff: $3f
	jr nz, jr_058_6e1c                               ; $6e00: $20 $1a

	db $10                                           ; $6e02: $10
	rra                                              ; $6e03: $1f
	db $10                                           ; $6e04: $10
	ld a, [bc]                                       ; $6e05: $0a
	ld [$0407], sp                                   ; $6e06: $08 $07 $04
	rlca                                             ; $6e09: $07
	inc b                                            ; $6e0a: $04
	halt                                             ; $6e0b: $76
	call c, $507c                                    ; $6e0c: $dc $7c $50
	ld a, a                                          ; $6e0f: $7f
	db $fc                                           ; $6e10: $fc
	ld a, a                                          ; $6e11: $7f
	call z, $fc77                                    ; $6e12: $cc $77 $fc
	sbc [hl]                                         ; $6e15: $9e
	cp a                                             ; $6e16: $bf
	or c                                             ; $6e17: $b1
	ld d, l                                          ; $6e18: $55
	xor d                                            ; $6e19: $aa
	db $fd                                           ; $6e1a: $fd
	or b                                             ; $6e1b: $b0

jr_058_6e1c:
	ldh [$c2], a                                     ; $6e1c: $e0 $c2
	add [hl]                                         ; $6e1e: $86
	adc b                                            ; $6e1f: $88
	jr @+$22                                         ; $6e20: $18 $20

	inc c                                            ; $6e22: $0c
	sub b                                            ; $6e23: $90
	add b                                            ; $6e24: $80
	ld b, [hl]                                       ; $6e25: $46
	jr nz, jr_058_6e38                               ; $6e26: $20 $10

	sbc e                                            ; $6e28: $9b
	nop                                              ; $6e29: $00
	ld e, c                                          ; $6e2a: $59
	ld bc, $ba40                                     ; $6e2b: $01 $40 $ba
	ld h, h                                          ; $6e2e: $64
	inc b                                            ; $6e2f: $04
	ld [de], a                                       ; $6e30: $12
	inc de                                           ; $6e31: $13
	ld de, $9010                                     ; $6e32: $11 $10 $90
	adc a                                            ; $6e35: $8f
	sub b                                            ; $6e36: $90
	ret nc                                           ; $6e37: $d0

jr_058_6e38:
	sub b                                            ; $6e38: $90
	add sp, -$78                                     ; $6e39: $e8 $88
	ld l, b                                          ; $6e3b: $68
	ld [$0434], sp                                   ; $6e3c: $08 $34 $04
	inc [hl]                                         ; $6e3f: $34
	inc b                                            ; $6e40: $04
	ld e, $02                                        ; $6e41: $1e $02
	rrca                                             ; $6e43: $0f
	rrca                                             ; $6e44: $0f
	dec c                                            ; $6e45: $0d
	cp e                                             ; $6e46: $bb
	dec bc                                           ; $6e47: $0b
	dec c                                            ; $6e48: $0d
	dec bc                                           ; $6e49: $0b
	add hl, bc                                       ; $6e4a: $09
	dec c                                            ; $6e4b: $0d
	rlca                                             ; $6e4c: $07
	sbc e                                            ; $6e4d: $9b
	ld b, $07                                        ; $6e4e: $06 $07
	rlca                                             ; $6e50: $07
	pop af                                           ; $6e51: $f1
	cp d                                             ; $6e52: $ba
	dec e                                            ; $6e53: $1d
	pop de                                           ; $6e54: $d1
	dec e                                            ; $6e55: $1d
	ld de, $1f11                                     ; $6e56: $11 $11 $1f
	rst SubAFromBC                                          ; $6e59: $e7
	sbc [hl]                                         ; $6e5a: $9e
	rra                                              ; $6e5b: $1f
	db $dd                                           ; $6e5c: $dd
	inc bc                                           ; $6e5d: $03
	db $dd                                           ; $6e5e: $dd
	ld [bc], a                                       ; $6e5f: $02
	ld h, a                                          ; $6e60: $67
	cpl                                              ; $6e61: $2f
	sbc [hl]                                         ; $6e62: $9e
	add sp, -$24                                     ; $6e63: $e8 $dc
	ld e, b                                          ; $6e65: $58
	add b                                            ; $6e66: $80
	ld a, b                                          ; $6e67: $78
	ld e, b                                          ; $6e68: $58
	ld e, h                                          ; $6e69: $5c
	ld a, b                                          ; $6e6a: $78
	ld e, h                                          ; $6e6b: $5c
	ld a, h                                          ; $6e6c: $7c
	ld e, h                                          ; $6e6d: $5c
	ld a, h                                          ; $6e6e: $7c
	ld e, [hl]                                       ; $6e6f: $5e
	ld a, h                                          ; $6e70: $7c
	jr nc, jr_058_6e73                               ; $6e71: $30 $00

jr_058_6e73:
	ld b, b                                          ; $6e73: $40
	add b                                            ; $6e74: $80
	ret z                                            ; $6e75: $c8

	ret z                                            ; $6e76: $c8

	db $f4                                           ; $6e77: $f4
	call z, $f88c                                    ; $6e78: $cc $8c $f8
	ret c                                            ; $6e7b: $d8

	ld [hl], b                                       ; $6e7c: $70
	ld [hl], b                                       ; $6e7d: $70
	ld h, b                                          ; $6e7e: $60
	nop                                              ; $6e7f: $00
	nop                                              ; $6e80: $00
	add hl, sp                                       ; $6e81: $39
	rra                                              ; $6e82: $1f
	rla                                              ; $6e83: $17
	ld a, [hl-]                                      ; $6e84: $3a
	rla                                              ; $6e85: $17
	sbc l                                            ; $6e86: $9d
	inc c                                            ; $6e87: $0c
	rlca                                             ; $6e88: $07
	cp a                                             ; $6e89: $bf
	rra                                              ; $6e8a: $1f
	ccf                                              ; $6e8b: $3f
	add l                                            ; $6e8c: $85
	ld bc, $017f                                     ; $6e8d: $01 $7f $01
	rst $38                                          ; $6e90: $ff
	ld [bc], a                                       ; $6e91: $02
	push de                                          ; $6e92: $d5
	ld a, a                                          ; $6e93: $7f
	jp nc, $d47f                                     ; $6e94: $d2 $7f $d4

	ld a, a                                          ; $6e97: $7f
	and h                                            ; $6e98: $a4
	rst $38                                          ; $6e99: $ff
	or l                                             ; $6e9a: $b5
	rst AddAOntoHL                                          ; $6e9b: $ef
	ld a, c                                          ; $6e9c: $79
	rst GetHLinHL                                          ; $6e9d: $cf
	ld [$d25f], a                                    ; $6e9e: $ea $5f $d2
	cp a                                             ; $6ea1: $bf
	xor c                                            ; $6ea2: $a9
	rst $38                                          ; $6ea3: $ff
	xor d                                            ; $6ea4: $aa
	rst $38                                          ; $6ea5: $ff
	jp nc, $b27a                                     ; $6ea6: $d2 $7a $b2

	sbc b                                            ; $6ea9: $98
	ld [hl+], a                                      ; $6eaa: $22
	rst $38                                          ; $6eab: $ff
	inc h                                            ; $6eac: $24
	rst $38                                          ; $6ead: $ff
	ld b, l                                          ; $6eae: $45
	rst $38                                          ; $6eaf: $ff
	ld c, c                                          ; $6eb0: $49
	ld [hl], d                                       ; $6eb1: $72
	call z, $fe7f                                    ; $6eb2: $cc $7f $fe
	ld l, [hl]                                       ; $6eb5: $6e
	cp [hl]                                          ; $6eb6: $be
	ld a, a                                          ; $6eb7: $7f
	ldh a, [$9a]                                     ; $6eb8: $f0 $9a
	ld c, l                                          ; $6eba: $4d
	rst $38                                          ; $6ebb: $ff
	add sp, -$10                                     ; $6ebc: $e8 $f0
	cp $dc                                           ; $6ebe: $fe $dc
	rst $38                                          ; $6ec0: $ff
	sbc b                                            ; $6ec1: $98
	ccf                                              ; $6ec2: $3f
	rst $38                                          ; $6ec3: $ff
	jp $fc3f                                         ; $6ec4: $c3 $3f $fc


	add e                                            ; $6ec7: $83
	rst $38                                          ; $6ec8: $ff
	ld a, d                                          ; $6ec9: $7a
	db $fd                                           ; $6eca: $fd
	ld a, [hl]                                       ; $6ecb: $7e
	ld hl, sp-$63                                    ; $6ecc: $f8 $9d
	ld a, [$dbfc]                                    ; $6ece: $fa $fc $db
	rst $38                                          ; $6ed1: $ff
	ld [hl], a                                       ; $6ed2: $77
	db $ec                                           ; $6ed3: $ec
	ei                                               ; $6ed4: $fb
	ld a, h                                          ; $6ed5: $7c
	cp h                                             ; $6ed6: $bc
	sbc [hl]                                         ; $6ed7: $9e
	ei                                               ; $6ed8: $fb
	ld l, e                                          ; $6ed9: $6b
	db $ec                                           ; $6eda: $ec
	adc a                                            ; $6edb: $8f
	rst $38                                          ; $6edc: $ff
	rra                                              ; $6edd: $1f
	rst $38                                          ; $6ede: $ff
	ccf                                              ; $6edf: $3f
	cp [hl]                                          ; $6ee0: $be
	ld a, a                                          ; $6ee1: $7f

Call_058_6ee2:
	ld a, l                                          ; $6ee2: $7d
	cp $fb                                           ; $6ee3: $fe $fb
	db $fc                                           ; $6ee5: $fc
	rst FarCall                                          ; $6ee6: $f7
	ld hl, sp-$11                                    ; $6ee7: $f8 $ef
	ldh a, [$df]                                     ; $6ee9: $f0 $df
	ldh [$fd], a                                     ; $6eeb: $e0 $fd
	ld a, [hl]                                       ; $6eed: $7e
	ret nz                                           ; $6eee: $c0

	ld a, [hl]                                       ; $6eef: $7e
	push de                                          ; $6ef0: $d5
	adc h                                            ; $6ef1: $8c
	ld b, c                                          ; $6ef2: $41
	ccf                                              ; $6ef3: $3f

jr_058_6ef4:
	ld b, $ff                                        ; $6ef4: $06 $ff
	jr c, jr_058_6ef4                                ; $6ef6: $38 $fc

	pop de                                           ; $6ef8: $d1
	ldh [rAUD1LOW], a                                ; $6ef9: $e0 $13
	ld c, $43                                        ; $6efb: $0e $43
	ld a, $0f                                        ; $6efd: $3e $0f
	cp $37                                           ; $6eff: $fe $37
	ei                                               ; $6f01: $fb
	pop hl                                           ; $6f02: $e1
	pop bc                                           ; $6f03: $c1
	nop                                              ; $6f04: $00
	cp c                                             ; $6f05: $b9
	ld c, h                                          ; $6f06: $4c
	adc d                                            ; $6f07: $8a
	rst $38                                          ; $6f08: $ff
	rst $38                                          ; $6f09: $ff
	rst $38                                          ; $6f0a: $ff
	rst $38                                          ; $6f0b: $ff
	rst $38                                          ; $6f0c: $ff
	rst $38                                          ; $6f0d: $ff
	sbc l                                            ; $6f0e: $9d
	add b                                            ; $6f0f: $80
	ld a, a                                          ; $6f10: $7f
	ld a, d                                          ; $6f11: $7a
	and [hl]                                         ; $6f12: $a6
	ld a, a                                          ; $6f13: $7f
	jp hl                                            ; $6f14: $e9


	sbc [hl]                                         ; $6f15: $9e
	db $e3                                           ; $6f16: $e3
	or c                                             ; $6f17: $b1
	ldh a, [$f8]                                     ; $6f18: $f0 $f8
	db $fc                                           ; $6f1a: $fc
	db $fc                                           ; $6f1b: $fc
	cp $ff                                           ; $6f1c: $fe $ff
	ret z                                            ; $6f1e: $c8

	nop                                              ; $6f1f: $00
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	cp b                                             ; $6f28: $b8
	nop                                              ; $6f29: $00
	ld [$3018], sp                                   ; $6f2a: $08 $18 $30
	ld [hl], b                                       ; $6f2d: $70
	ldh [$08], a                                     ; $6f2e: $e0 $08
	rlca                                             ; $6f30: $07
	nop                                              ; $6f31: $00
	ld a, l                                          ; $6f32: $7d
	and b                                            ; $6f33: $a0
	ld h, c                                          ; $6f34: $61
	ld a, b                                          ; $6f35: $78
	rst SubAFromDE                                          ; $6f36: $df
	adc a                                            ; $6f37: $8f
	add b                                            ; $6f38: $80
	ldh a, [rIE]                                     ; $6f39: $f0 $ff
	adc a                                            ; $6f3b: $8f
	rst AddAOntoHL                                          ; $6f3c: $ef
	sbc h                                            ; $6f3d: $9c
	ret nc                                           ; $6f3e: $d0

	rst GetHLinHL                                          ; $6f3f: $cf
	db $fc                                           ; $6f40: $fc
	ld [hl], e                                       ; $6f41: $73
	ccf                                              ; $6f42: $3f
	inc a                                            ; $6f43: $3c
	ccf                                              ; $6f44: $3f
	ccf                                              ; $6f45: $3f
	rla                                              ; $6f46: $17
	rst $38                                          ; $6f47: $ff
	rst $38                                          ; $6f48: $ff
	ld d, a                                          ; $6f49: $57
	ld b, a                                          ; $6f4a: $47
	xor d                                            ; $6f4b: $aa
	and b                                            ; $6f4c: $a0
	ld e, l                                          ; $6f4d: $5d
	ld e, h                                          ; $6f4e: $5c
	ld d, d                                          ; $6f4f: $52
	ld [hl], d                                       ; $6f50: $72
	pop de                                           ; $6f51: $d1
	ld [hl], c                                       ; $6f52: $71
	ret c                                            ; $6f53: $d8

	ldh a, [$30]                                     ; $6f54: $f0 $30
	ldh [$a0], a                                     ; $6f56: $e0 $a0
	sbc e                                            ; $6f58: $9b
	add b                                            ; $6f59: $80
	ret nc                                           ; $6f5a: $d0

	add b                                            ; $6f5b: $80
	xor b                                            ; $6f5c: $a8
	cp l                                             ; $6f5d: $bd
	ld d, b                                          ; $6f5e: $50
	xor b                                            ; $6f5f: $a8
	ld b, b                                          ; $6f60: $40
	and b                                            ; $6f61: $a0
	sbc $80                                          ; $6f62: $de $80
	adc [hl]                                         ; $6f64: $8e
	ld e, h                                          ; $6f65: $5c
	ld a, [hl]                                       ; $6f66: $7e
	dec hl                                           ; $6f67: $2b
	ld l, $2e                                        ; $6f68: $2e $2e
	dec hl                                           ; $6f6a: $2b
	add hl, bc                                       ; $6f6b: $09
	dec bc                                           ; $6f6c: $0b
	dec c                                            ; $6f6d: $0d
	dec bc                                           ; $6f6e: $0b
	dec bc                                           ; $6f6f: $0b
	dec c                                            ; $6f70: $0d
	rlca                                             ; $6f71: $07
	dec b                                            ; $6f72: $05
	dec b                                            ; $6f73: $05
	rlca                                             ; $6f74: $07
	jp $07be                                         ; $6f75: $c3 $be $07


	rra                                              ; $6f78: $1f
	rst $38                                          ; $6f79: $ff
	ld a, l                                          ; $6f7a: $7d
	adc d                                            ; $6f7b: $8a
	add b                                            ; $6f7c: $80
	ld hl, sp+$5f                                    ; $6f7d: $f8 $5f
	ei                                               ; $6f7f: $fb
	ld a, l                                          ; $6f80: $7d
	db $fd                                           ; $6f81: $fd
	jp nz, $ffc3                                     ; $6f82: $c2 $c3 $ff

	dec b                                            ; $6f85: $05
	rst $38                                          ; $6f86: $ff
	ld a, [bc]                                       ; $6f87: $0a
	cp [hl]                                          ; $6f88: $be
	ld a, l                                          ; $6f89: $7d
	push af                                          ; $6f8a: $f5
	di                                               ; $6f8b: $f3
	ld [$a4e7], a                                    ; $6f8c: $ea $e7 $a4
	rst SubAFromDE                                          ; $6f8f: $df
	ld e, l                                          ; $6f90: $5d
	cp a                                             ; $6f91: $bf
	cp e                                             ; $6f92: $bb
	ld a, a                                          ; $6f93: $7f
	and h                                            ; $6f94: $a4
	ld a, a                                          ; $6f95: $7f
	ld c, l                                          ; $6f96: $4d
	rst $38                                          ; $6f97: $ff
	sbc c                                            ; $6f98: $99
	rst $38                                          ; $6f99: $ff
	ld a, [hl-]                                      ; $6f9a: $3a
	rst $38                                          ; $6f9b: $ff
	sbc h                                            ; $6f9c: $9c
	ld [hl], d                                       ; $6f9d: $72

jr_058_6f9e:
	rst $38                                          ; $6f9e: $ff
	db $e4                                           ; $6f9f: $e4
	ld a, c                                          ; $6fa0: $79
	ld a, [hl]                                       ; $6fa1: $7e
	adc [hl]                                         ; $6fa2: $8e
	di                                               ; $6fa3: $f3
	rst $38                                          ; $6fa4: $ff
	adc d                                            ; $6fa5: $8a
	rst $38                                          ; $6fa6: $ff
	ld [de], a                                       ; $6fa7: $12
	rst $38                                          ; $6fa8: $ff
	inc d                                            ; $6fa9: $14
	rst $38                                          ; $6faa: $ff
	add hl, hl                                       ; $6fab: $29
	rst $38                                          ; $6fac: $ff
	ld l, e                                          ; $6fad: $6b
	rst $38                                          ; $6fae: $ff
	sub $ff                                          ; $6faf: $d6 $ff
	or [hl]                                          ; $6fb1: $b6
	rst $38                                          ; $6fb2: $ff
	db $ed                                           ; $6fb3: $ed
	ld a, d                                          ; $6fb4: $7a
	adc $8f                                          ; $6fb5: $ce $8f
	sbc l                                            ; $6fb7: $9d
	rst $38                                          ; $6fb8: $ff
	sbc e                                            ; $6fb9: $9b
	cp $3b                                           ; $6fba: $fe $3b
	cp $3b                                           ; $6fbc: $fe $3b
	xor $77                                          ; $6fbe: $ee $77
	call c, $9df7                                    ; $6fc0: $dc $f7 $9d
	rst $38                                          ; $6fc3: $ff
	jr @+$01                                         ; $6fc4: $18 $ff

	add b                                            ; $6fc6: $80
	ld e, e                                          ; $6fc7: $5b
	cp $71                                           ; $6fc8: $fe $71
	nop                                              ; $6fca: $00
	ld c, h                                          ; $6fcb: $4c
	ld h, b                                          ; $6fcc: $60
	ld a, [hl]                                       ; $6fcd: $7e
	cp h                                             ; $6fce: $bc
	sbc l                                            ; $6fcf: $9d
	rst JumpTable                                          ; $6fd0: $c7
	ccf                                              ; $6fd1: $3f
	ld a, c                                          ; $6fd2: $79
	sub d                                            ; $6fd3: $92
	sub h                                            ; $6fd4: $94
	ld [bc], a                                       ; $6fd5: $02
	ei                                               ; $6fd6: $fb
	inc b                                            ; $6fd7: $04
	rst FarCall                                          ; $6fd8: $f7
	ld [$10ef], sp                                   ; $6fd9: $08 $ef $10
	rst SubAFromDE                                          ; $6fdc: $df
	jr nz, jr_058_6f9e                               ; $6fdd: $20 $bf

	ret nz                                           ; $6fdf: $c0

	ld [hl], h                                       ; $6fe0: $74
	ldh [c], a                                       ; $6fe1: $e2
	ld e, a                                          ; $6fe2: $5f
	cp $7d                                           ; $6fe3: $fe $7d
	cp d                                             ; $6fe5: $ba
	ld a, l                                          ; $6fe6: $7d
	cp h                                             ; $6fe7: $bc
	sbc [hl]                                         ; $6fe8: $9e
	ld sp, $04be                                     ; $6fe9: $31 $be $04
	adc b                                            ; $6fec: $88
	pop de                                           ; $6fed: $d1
	sbc c                                            ; $6fee: $99
	add b                                            ; $6fef: $80
	ld h, h                                          ; $6ff0: $64
	ld b, b                                          ; $6ff1: $40
	jr nc, jr_058_7014                               ; $6ff2: $30 $20

	add hl, bc                                       ; $6ff4: $09
	cp e                                             ; $6ff5: $bb
	ld c, e                                          ; $6ff6: $4b
	inc c                                            ; $6ff7: $0c
	ld bc, $1808                                     ; $6ff8: $01 $08 $18
	ld h, b                                          ; $6ffb: $60
	sub b                                            ; $6ffc: $90
	ld bc, $0387                                     ; $6ffd: $01 $87 $03
	ccf                                              ; $7000: $3f
	db $10                                           ; $7001: $10
	rra                                              ; $7002: $1f
	ld [$0ce7], sp                                   ; $7003: $08 $e7 $0c
	adc a                                            ; $7006: $8f
	inc b                                            ; $7007: $04
	ccf                                              ; $7008: $3f
	jr @+$01                                         ; $7009: $18 $ff

	ld h, b                                          ; $700b: $60
	ld l, a                                          ; $700c: $6f
	sbc [hl]                                         ; $700d: $9e
	ld c, a                                          ; $700e: $4f
	cp $7f                                           ; $700f: $fe $7f
	sub $9e                                          ; $7011: $d6 $9e
	add e                                            ; $7013: $83

jr_058_7014:
	cp a                                             ; $7014: $bf
	add e                                            ; $7015: $83
	jp Jump_058_4295                                 ; $7016: $c3 $95 $42


	push bc                                          ; $7019: $c5
	ld b, l                                          ; $701a: $45
	rst SubAFromBC                                          ; $701b: $e7
	add h                                            ; $701c: $84
	and $84                                          ; $701d: $e6 $84
	or $82                                           ; $701f: $f6 $82
	ldh [$bc], a                                     ; $7021: $e0 $bc
	ret nz                                           ; $7023: $c0

	ret nz                                           ; $7024: $c0

	add [hl]                                         ; $7025: $86
	sbc h                                            ; $7026: $9c
	ld hl, sp-$67                                    ; $7027: $f8 $99
	add b                                            ; $7029: $80
	ld [hl], b                                       ; $702a: $70
	ld b, b                                          ; $702b: $40
	jr nz, jr_058_704e                               ; $702c: $20 $20

	ld bc, $03b9                                     ; $702e: $01 $b9 $03
	ld b, $0c                                        ; $7031: $06 $0c
	inc e                                            ; $7033: $1c
	ld b, $03                                        ; $7034: $06 $03
	nop                                              ; $7036: $00
	dec bc                                           ; $7037: $0b

jr_058_7038:
	sbc c                                            ; $7038: $99
	inc d                                            ; $7039: $14
	dec bc                                           ; $703a: $0b
	inc b                                            ; $703b: $04
	ld b, a                                          ; $703c: $47
	inc b                                            ; $703d: $04
	add e                                            ; $703e: $83
	cp l                                             ; $703f: $bd
	ld de, $0723                                     ; $7040: $11 $23 $07
	rrca                                             ; $7043: $0f
	sub d                                            ; $7044: $92
	rrca                                             ; $7045: $0f
	ldh a, [$c0]                                     ; $7046: $f0 $c0
	ldh a, [rAUD4LEN]                                ; $7048: $f0 $20
	ld hl, sp+$20                                    ; $704a: $f8 $20
	ld hl, sp+$10                                    ; $704c: $f8 $10

jr_058_704e:
	db $fc                                           ; $704e: $fc
	db $10                                           ; $704f: $10
	cp $08                                           ; $7050: $fe $08
	halt                                             ; $7052: $76
	ld [hl], b                                       ; $7053: $70
	rst SubAFromDE                                          ; $7054: $df
	ld b, b                                          ; $7055: $40
	rst SubAFromDE                                          ; $7056: $df
	jr nz, jr_058_7038                               ; $7057: $20 $df

	db $10                                           ; $7059: $10
	rst SubAFromDE                                          ; $705a: $df
	rra                                              ; $705b: $1f
	sbc l                                            ; $705c: $9d
	dec c                                            ; $705d: $0d
	ld a, [bc]                                       ; $705e: $0a
	ld l, a                                          ; $705f: $6f
	cp $7e                                           ; $7060: $fe $7e
	adc $7f                                          ; $7062: $ce $7f
	cp $df                                           ; $7064: $fe $df
	inc bc                                           ; $7066: $03
	sbc $ff                                          ; $7067: $de $ff
	ld a, a                                          ; $7069: $7f
	db $fc                                           ; $706a: $fc
	ld a, l                                          ; $706b: $7d
	and d                                            ; $706c: $a2
	ld a, c                                          ; $706d: $79
	and b                                            ; $706e: $a0
	sub a                                            ; $706f: $97
	ld b, h                                          ; $7070: $44
	ld b, a                                          ; $7071: $47
	ld l, e                                          ; $7072: $6b
	ld l, a                                          ; $7073: $6f
	rst $38                                          ; $7074: $ff
	call c, Call_058_50ff                            ; $7075: $dc $ff $50
	ld h, a                                          ; $7078: $67
	ld [hl], d                                       ; $7079: $72
	sub e                                            ; $707a: $93
	call z, $10ff                                    ; $707b: $cc $ff $10
	rst $38                                          ; $707e: $ff
	ldh [$1f], a                                     ; $707f: $e0 $1f
	ldh a, [rIF]                                     ; $7081: $f0 $0f
	ld hl, sp+$07                                    ; $7083: $f8 $07
	cp $01                                           ; $7085: $fe $01
	ld [hl], a                                       ; $7087: $77
	ldh a, [$9c]                                     ; $7088: $f0 $9c
	ld e, h                                          ; $708a: $5c
	rst $38                                          ; $708b: $ff
	cp c                                             ; $708c: $b9
	ld h, e                                          ; $708d: $63
	ld d, a                                          ; $708e: $57
	ld a, a                                          ; $708f: $7f
	db $ec                                           ; $7090: $ec
	ld a, [hl]                                       ; $7091: $7e
	ldh a, [c]                                       ; $7092: $f2
	sbc d                                            ; $7093: $9a
	cp a                                             ; $7094: $bf
	or $7f                                           ; $7095: $f6 $7f
	ldh [$3f], a                                     ; $7097: $e0 $3f
	ld a, e                                          ; $7099: $7b
	cp $95                                           ; $709a: $fe $95
	rlca                                             ; $709c: $07
	ld hl, sp+$18                                    ; $709d: $f8 $18
	rst FarCall                                          ; $709f: $f7
	rra                                              ; $70a0: $1f
	ldh a, [$1f]                                     ; $70a1: $f0 $1f
	ldh a, [rIE]                                     ; $70a3: $f0 $ff
	jr nz, jr_058_710e                               ; $70a5: $20 $67

	ld b, [hl]                                       ; $70a7: $46
	ld a, [hl]                                       ; $70a8: $7e
	ld hl, sp-$65                                    ; $70a9: $f8 $9b
	add a                                            ; $70ab: $87
	ld a, b                                          ; $70ac: $78
	ld hl, sp+$07                                    ; $70ad: $f8 $07
	ld c, a                                          ; $70af: $4f
	ld [hl-], a                                      ; $70b0: $32
	ld l, [hl]                                       ; $70b1: $6e
	db $e4                                           ; $70b2: $e4
	ld d, d                                          ; $70b3: $52
	ret nc                                           ; $70b4: $d0

	sbc [hl]                                         ; $70b5: $9e
	ld b, b                                          ; $70b6: $40
	ld c, [hl]                                       ; $70b7: $4e
	ret nc                                           ; $70b8: $d0

	ld b, a                                          ; $70b9: $47
	cp $94                                           ; $70ba: $fe $94
	add hl, de                                       ; $70bc: $19
	db $10                                           ; $70bd: $10
	inc c                                            ; $70be: $0c
	ld [$f4f6], sp                                   ; $70bf: $08 $f6 $f4
	set 7, d                                         ; $70c2: $cb $fa
	db $eb                                           ; $70c4: $eb
	rst $38                                          ; $70c5: $ff
	rst $38                                          ; $70c6: $ff
	ld a, c                                          ; $70c7: $79
	ld l, [hl]                                       ; $70c8: $6e
	ld a, [hl]                                       ; $70c9: $7e
	and d                                            ; $70ca: $a2
	ld a, h                                          ; $70cb: $7c
	db $f4                                           ; $70cc: $f4
	ld l, $d6                                        ; $70cd: $2e $d6
	ld a, a                                          ; $70cf: $7f
	inc h                                            ; $70d0: $24
	ld l, l                                          ; $70d1: $6d
	sub b                                            ; $70d2: $90
	ld a, a                                          ; $70d3: $7f
	cp $9e                                           ; $70d4: $fe $9e
	di                                               ; $70d6: $f3
	cp l                                             ; $70d7: $bd

Call_058_70d8:
	pop hl                                           ; $70d8: $e1
	inc bc                                           ; $70d9: $03
	rlca                                             ; $70da: $07
	rra                                              ; $70db: $1f
	ld [hl], a                                       ; $70dc: $77
	jr nc, @-$67                                     ; $70dd: $30 $97

	nop                                              ; $70df: $00
	db $db                                           ; $70e0: $db
	add d                                            ; $70e1: $82
	rst GetHLinHL                                          ; $70e2: $cf
	adc l                                            ; $70e3: $8d
	res 0, a                                         ; $70e4: $cb $87
	pop bc                                           ; $70e6: $c1
	db $dd                                           ; $70e7: $dd
	add b                                            ; $70e8: $80
	cp a                                             ; $70e9: $bf
	add b                                            ; $70ea: $80
	ret nz                                           ; $70eb: $c0

	sub l                                            ; $70ec: $95
	add b                                            ; $70ed: $80
	jr nc, jr_058_7100                               ; $70ee: $30 $10

	adc h                                            ; $70f0: $8c
	inc c                                            ; $70f1: $0c
	add $02                                          ; $70f2: $c6 $02
	jp $c181                                         ; $70f4: $c3 $81 $c1


	ld h, c                                          ; $70f7: $61
	adc [hl]                                         ; $70f8: $8e
	cp [hl]                                          ; $70f9: $be
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	ld bc, $018b                                     ; $70fc: $01 $8b $01
	ld [bc], a                                       ; $70ff: $02

jr_058_7100:
	add d                                            ; $7100: $82
	add l                                            ; $7101: $85
	add l                                            ; $7102: $85
	adc d                                            ; $7103: $8a
	ld c, d                                          ; $7104: $4a
	ld d, l                                          ; $7105: $55
	ld a, [hl-]                                      ; $7106: $3a
	db $10                                           ; $7107: $10
	inc d                                            ; $7108: $14
	ld [hl], c                                       ; $7109: $71
	ld a, [hl-]                                      ; $710a: $3a
	pop de                                           ; $710b: $d1
	or h                                             ; $710c: $b4
	ld d, c                                          ; $710d: $51

jr_058_710e:
	ld a, [de]                                       ; $710e: $1a
	pop de                                           ; $710f: $d1
	sub h                                            ; $7110: $94
	ld d, c                                          ; $7111: $51
	ld [hl], a                                       ; $7112: $77
	ld hl, sp-$6a                                    ; $7113: $f8 $96
	rst SubAFromBC                                          ; $7115: $e7
	add b                                            ; $7116: $80
	ld h, b                                          ; $7117: $60
	ld b, b                                          ; $7118: $40
	jr nc, jr_058_714b                               ; $7119: $30 $30

	rrca                                             ; $711b: $0f
	ld [$7907], sp                                   ; $711c: $08 $07 $79
	ld e, c                                          ; $711f: $59
	db $fd                                           ; $7120: $fd
	ld a, [hl]                                       ; $7121: $7e
	adc $80                                          ; $7122: $ce $80
	ld a, [bc]                                       ; $7124: $0a
	rrca                                             ; $7125: $0f
	ld a, [de]                                       ; $7126: $1a
	rra                                              ; $7127: $1f
	inc [hl]                                         ; $7128: $34
	ccf                                              ; $7129: $3f
	add sp, -$01                                     ; $712a: $e8 $ff
	inc a                                            ; $712c: $3c
	ccf                                              ; $712d: $3f
	inc bc                                           ; $712e: $03
	ld b, e                                          ; $712f: $43
	nop                                              ; $7130: $00

jr_058_7131:
	add b                                            ; $7131: $80
	cp $05                                           ; $7132: $fe $05
	inc b                                            ; $7134: $04
	rst $38                                          ; $7135: $ff
	add hl, bc                                       ; $7136: $09
	cp $17                                           ; $7137: $fe $17
	ld hl, sp+$3f                                    ; $7139: $f8 $3f
	ldh [$78], a                                     ; $713b: $e0 $78
	rst JumpTable                                          ; $713d: $c7
	and a                                            ; $713e: $a7
	ret c                                            ; $713f: $d8

	rst SubAFromDE                                          ; $7140: $df
	and b                                            ; $7141: $a0
	rlca                                             ; $7142: $07
	ld a, a                                          ; $7143: $7f
	or $9e                                           ; $7144: $f6 $9e
	ret nz                                           ; $7146: $c0

	ld l, a                                          ; $7147: $6f

jr_058_7148:
	ld l, [hl]                                       ; $7148: $6e
	sbc c                                            ; $7149: $99
	rra                                              ; $714a: $1f

jr_058_714b:
	ldh [$e7], a                                     ; $714b: $e0 $e7
	jr jr_058_7148                                   ; $714d: $18 $f9

	ld b, $43                                        ; $714f: $06 $43
	ld e, b                                          ; $7151: $58
	sbc b                                            ; $7152: $98
	ld bc, $05fa                                     ; $7153: $01 $fa $05
	ei                                               ; $7156: $fb
	inc b                                            ; $7157: $04
	ld sp, hl                                        ; $7158: $f9
	ld b, $6f                                        ; $7159: $06 $6f
	cp $7e                                           ; $715b: $fe $7e
	ldh [rPCM12], a                                  ; $715d: $e0 $76
	and l                                            ; $715f: $a5
	ld d, a                                          ; $7160: $57
	cp $5b                                           ; $7161: $fe $5b
	call nc, $3c9a                                   ; $7163: $d4 $9a $3c
	jp $9942                                         ; $7166: $c3 $42 $99


	adc c                                            ; $7169: $89
	halt                                             ; $716a: $76
	cp h                                             ; $716b: $bc
	ld b, [hl]                                       ; $716c: $46
	ret nc                                           ; $716d: $d0

	ld [hl], $a8                                     ; $716e: $36 $a8
	rra                                              ; $7170: $1f
	db $ec                                           ; $7171: $ec
	ld a, [hl]                                       ; $7172: $7e
	ld [$7cf5], a                                    ; $7173: $ea $f5 $7c
	ld h, h                                          ; $7176: $64
	rst $38                                          ; $7177: $ff
	ld a, h                                          ; $7178: $7c
	add $7f                                          ; $7179: $c6 $7f
	inc sp                                           ; $717b: $33
	ld a, a                                          ; $717c: $7f
	db $fc                                           ; $717d: $fc
	ld a, a                                          ; $717e: $7f
	cp $7e                                           ; $717f: $fe $7e
	jp c, Jump_058_609e                              ; $7181: $da $9e $60

	or d                                             ; $7184: $b2
	rlca                                             ; $7185: $07
	rlca                                             ; $7186: $07
	rlca                                             ; $7187: $07
	rst JumpTable                                          ; $7188: $c7
	inc bc                                           ; $7189: $03
	inc bc                                           ; $718a: $03
	ld h, e                                          ; $718b: $63
	inc bc                                           ; $718c: $03
	rst $38                                          ; $718d: $ff
	rst $38                                          ; $718e: $ff
	cp $f0                                           ; $718f: $fe $f0
	add b                                            ; $7191: $80
	db $e3                                           ; $7192: $e3
	rst $38                                          ; $7193: $ff
	ld a, c                                          ; $7194: $79
	ldh a, [$9c]                                     ; $7195: $f0 $9c
	ldh a, [rLCDC]                                   ; $7197: $f0 $40
	cp $78                                           ; $7199: $fe $78
	ld a, [hl+]                                      ; $719b: $2a
	sub l                                            ; $719c: $95
	rra                                              ; $719d: $1f
	db $10                                           ; $719e: $10
	ld a, a                                          ; $719f: $7f
	ld c, $87                                        ; $71a0: $0e $87

jr_058_71a2:
	ld bc, $e0e1                                     ; $71a2: $01 $e1 $e0
	di                                               ; $71a5: $f3
	db $10                                           ; $71a6: $10
	db $fd                                           ; $71a7: $fd
	ld a, l                                          ; $71a8: $7d
	add b                                            ; $71a9: $80
	ld a, a                                          ; $71aa: $7f
	ldh [$7b], a                                     ; $71ab: $e0 $7b
	ret c                                            ; $71ad: $d8

	ld a, a                                          ; $71ae: $7f
	jr jr_058_7131                                   ; $71af: $18 $80

	ld sp, $0a9f                                     ; $71b1: $31 $9f $0a
	ld d, b                                          ; $71b4: $50
	ld b, b                                          ; $71b5: $40
	jr c, jr_058_71f0                                ; $71b6: $38 $38

	inc a                                            ; $71b8: $3c
	inc h                                            ; $71b9: $24
	ld a, d                                          ; $71ba: $7a
	ld b, [hl]                                       ; $71bb: $46
	rst FarCall                                          ; $71bc: $f7
	adc c                                            ; $71bd: $89
	rst AddAOntoHL                                          ; $71be: $ef
	sub b                                            ; $71bf: $90
	rst SubAFromDE                                          ; $71c0: $df
	jr nz, jr_058_71a2                               ; $71c1: $20 $df

	jr nz, jr_058_71df                               ; $71c3: $20 $1a

	ld [hl], c                                       ; $71c5: $71
	ld [hl], $71                                     ; $71c6: $36 $71
	dec a                                            ; $71c8: $3d
	ld d, d                                          ; $71c9: $52
	ld a, d                                          ; $71ca: $7a
	ld [hl], h                                       ; $71cb: $74
	jr nc, jr_058_720a                               ; $71cc: $30 $3c

	adc b                                            ; $71ce: $88
	cp c                                             ; $71cf: $b9
	sub a                                            ; $71d0: $97
	jp c, $ff7b                                      ; $71d1: $da $7b $ff

	ccf                                              ; $71d4: $3f
	nop                                              ; $71d5: $00
	rst $38                                          ; $71d6: $ff
	xor b                                            ; $71d7: $a8
	ld d, [hl]                                       ; $71d8: $56
	cp a                                             ; $71d9: $bf
	inc c                                            ; $71da: $0c
	ld a, b                                          ; $71db: $78
	sbc c                                            ; $71dc: $99
	ld d, b                                          ; $71dd: $50
	xor h                                            ; $71de: $ac

jr_058_71df:
	xor b                                            ; $71df: $a8

Call_058_71e0:
	ld d, [hl]                                       ; $71e0: $56

Jump_058_71e1:
	ld d, h                                          ; $71e1: $54
	xor e                                            ; $71e2: $ab
	ld a, e                                          ; $71e3: $7b
	xor l                                            ; $71e4: $ad
	sub l                                            ; $71e5: $95
	ld bc, $0203                                     ; $71e6: $01 $03 $02
	rlca                                             ; $71e9: $07
	ld b, $05                                        ; $71ea: $06 $05
	ld b, $06                                        ; $71ec: $06 $06
	dec b                                            ; $71ee: $05
	inc b                                            ; $71ef: $04

jr_058_71f0:
	sbc $07                                          ; $71f0: $de $07
	sub d                                            ; $71f2: $92
	dec a                                            ; $71f3: $3d
	cp [hl]                                          ; $71f4: $be
	dec sp                                           ; $71f5: $3b
	call nz, $2cd3                                   ; $71f6: $c4 $d3 $2c
	and a                                            ; $71f9: $a7
	ld e, b                                          ; $71fa: $58
	ld c, a                                          ; $71fb: $4f
	or b                                             ; $71fc: $b0
	sbc a                                            ; $71fd: $9f
	ld h, b                                          ; $71fe: $60
	rst $38                                          ; $71ff: $ff
	ld [hl], b                                       ; $7200: $70
	add $6d                                          ; $7201: $c6 $6d
	sbc d                                            ; $7203: $9a
	ld [hl], a                                       ; $7204: $77
	cp $77                                           ; $7205: $fe $77
	ld [de], a                                       ; $7207: $12
	sbc l                                            ; $7208: $9d
	sbc [hl]                                         ; $7209: $9e

jr_058_720a:
	ld h, c                                          ; $720a: $61
	ld [hl], a                                       ; $720b: $77
	jr c, jr_058_71a2                                ; $720c: $38 $94

	cp h                                             ; $720e: $bc
	ld b, e                                          ; $720f: $43
	ret nc                                           ; $7210: $d0

	cpl                                              ; $7211: $2f
	pop hl                                           ; $7212: $e1
	ld e, $d2                                        ; $7213: $1e $d2
	dec a                                            ; $7215: $3d
	sub b                                            ; $7216: $90
	ld a, a                                          ; $7217: $7f
	db $10                                           ; $7218: $10
	ld a, c                                          ; $7219: $79
	adc h                                            ; $721a: $8c
	ld a, [hl]                                       ; $721b: $7e
	rst GetHLinHL                                          ; $721c: $cf
	add b                                            ; $721d: $80

jr_058_721e:
	ld [hl], b                                       ; $721e: $70
	adc a                                            ; $721f: $8f
	ldh a, [rIF]                                     ; $7220: $f0 $0f
	ldh [$1f], a                                     ; $7222: $e0 $1f
	ld h, b                                          ; $7224: $60
	sbc a                                            ; $7225: $9f
	ldh [$1f], a                                     ; $7226: $e0 $1f
	ret nz                                           ; $7228: $c0

	ccf                                              ; $7229: $3f

jr_058_722a:
	rrca                                             ; $722a: $0f
	ld sp, hl                                        ; $722b: $f9
	ld c, $fa                                        ; $722c: $0e $fa
	inc e                                            ; $722e: $1c
	db $fc                                           ; $722f: $fc
	jr jr_058_722a                                   ; $7230: $18 $f8

	db $10                                           ; $7232: $10
	ld hl, sp+$20                                    ; $7233: $f8 $20
	ldh a, [$30]                                     ; $7235: $f0 $30
	ld hl, sp+$58                                    ; $7237: $f8 $58
	ret c                                            ; $7239: $d8

	dec [hl]                                         ; $723a: $35
	dec e                                            ; $723b: $1d
	and l                                            ; $723c: $a5
	sub l                                            ; $723d: $95
	cp l                                             ; $723e: $bd
	ld h, l                                          ; $723f: $65
	ld a, l                                          ; $7240: $7d
	dec h                                            ; $7241: $25
	ld a, l                                          ; $7242: $7d
	ld h, l                                          ; $7243: $65
	dec a                                            ; $7244: $3d
	ld h, l                                          ; $7245: $65
	dec a                                            ; $7246: $3d
	push de                                          ; $7247: $d5
	ld a, e                                          ; $7248: $7b
	cp $05                                           ; $7249: $fe $05
	and b                                            ; $724b: $a0
	ld b, [hl]                                       ; $724c: $46
	ld h, d                                          ; $724d: $62
	ld b, l                                          ; $724e: $45
	ld h, [hl]                                       ; $724f: $66
	adc [hl]                                         ; $7250: $8e

jr_058_7251:
	sub b                                            ; $7251: $90
	nop                                              ; $7252: $00
	ld hl, sp-$40                                    ; $7253: $f8 $c0
	or c                                             ; $7255: $b1
	ld h, b                                          ; $7256: $60
	ei                                               ; $7257: $fb
	jr jr_058_7251                                   ; $7258: $18 $f7

	inc c                                            ; $725a: $0c
	rst FarCall                                          ; $725b: $f7
	inc bc                                           ; $725c: $03
	ld e, [hl]                                       ; $725d: $5e
	and c                                            ; $725e: $a1
	ld h, a                                          ; $725f: $67
	sbc b                                            ; $7260: $98
	jr nz, jr_058_721e                               ; $7261: $20 $bb

	dec h                                            ; $7263: $25
	nop                                              ; $7264: $00
	and b                                            ; $7265: $a0
	ld [hl], b                                       ; $7266: $70
	ldh [$c0], a                                     ; $7267: $e0 $c0
	sbc e                                            ; $7269: $9b
	add b                                            ; $726a: $80
	ldh [rLCDC], a                                   ; $726b: $e0 $40
	ld b, e                                          ; $726d: $43
	cp c                                             ; $726e: $b9
	db $e3                                           ; $726f: $e3
	ld bc, $0101                                     ; $7270: $01 $01 $01
	ld bc, $0001                                     ; $7273: $01 $01 $00
	db $fc                                           ; $7276: $fc
	ld a, h                                          ; $7277: $7c
	db $ec                                           ; $7278: $ec
	add b                                            ; $7279: $80
	inc b                                            ; $727a: $04
	ldh a, [rP1]                                     ; $727b: $f0 $00
	ldh [rSB], a                                     ; $727d: $e0 $01
	pop af                                           ; $727f: $f1
	inc bc                                           ; $7280: $03
	rst AddAOntoHL                                          ; $7281: $ef
	rla                                              ; $7282: $17
	ld d, a                                          ; $7283: $57
	xor e                                            ; $7284: $ab
	xor d                                            ; $7285: $aa
	ld d, l                                          ; $7286: $55

jr_058_7287:
	ei                                               ; $7287: $fb
	ld [$9c6a], sp                                   ; $7288: $08 $6a $9c
	inc a                                            ; $728b: $3c
	ld e, b                                          ; $728c: $58
	jr nc, jr_058_7287                               ; $728d: $30 $f8

	ldh [$f1], a                                     ; $728f: $e0 $f1
	and b                                            ; $7291: $a0
	sbc $54                                          ; $7292: $de $54
	xor d                                            ; $7294: $aa
	and b                                            ; $7295: $a0
	ld e, [hl]                                       ; $7296: $5e
	dec e                                            ; $7297: $1d
	ld c, $8d                                        ; $7298: $0e $8d
	jr z, jr_058_72ab                                ; $729a: $28 $0f

	ld c, e                                          ; $729c: $4b
	rrca                                             ; $729d: $0f
	add h                                            ; $729e: $84
	rlca                                             ; $729f: $07
	ld e, $03                                        ; $72a0: $1e $03
	ccf                                              ; $72a2: $3f
	inc bc                                           ; $72a3: $03
	rra                                              ; $72a4: $1f
	inc bc                                           ; $72a5: $03
	ld e, a                                          ; $72a6: $5f
	inc bc                                           ; $72a7: $03
	cp h                                             ; $72a8: $bc
	ld b, e                                          ; $72a9: $43
	ld a, [hl]                                       ; $72aa: $7e

jr_058_72ab:
	add c                                            ; $72ab: $81
	ld [hl], a                                       ; $72ac: $77
	inc e                                            ; $72ad: $1c

Call_058_72ae:
	ld a, a                                          ; $72ae: $7f
	cp $7d                                           ; $72af: $fe $7d
	ret z                                            ; $72b1: $c8

	ld a, a                                          ; $72b2: $7f
	cp $7f                                           ; $72b3: $fe $7f
	dec l                                            ; $72b5: $2d
	adc e                                            ; $72b6: $8b
	rst $38                                          ; $72b7: $ff
	rra                                              ; $72b8: $1f
	rrca                                             ; $72b9: $0f
	rst $38                                          ; $72ba: $ff
	add a                                            ; $72bb: $87
	ld a, e                                          ; $72bc: $7b
	rst $38                                          ; $72bd: $ff
	ld bc, $07fb                                     ; $72be: $01 $fb $07
	or $0f                                           ; $72c1: $f6 $0f
	db $ec                                           ; $72c3: $ec
	rra                                              ; $72c4: $1f
	ret                                              ; $72c5: $c9


	ccf                                              ; $72c6: $3f
	add b                                            ; $72c7: $80
	add b                                            ; $72c8: $80
	pop af                                           ; $72c9: $f1
	pop af                                           ; $72ca: $f1
	db $dd                                           ; $72cb: $dd
	rst $38                                          ; $72cc: $ff
	sub l                                            ; $72cd: $95
	db $fd                                           ; $72ce: $fd
	rst $38                                          ; $72cf: $ff
	ld l, l                                          ; $72d0: $6d
	di                                               ; $72d1: $f3
	rst $38                                          ; $72d2: $ff
	rst JumpTable                                          ; $72d3: $c7
	ld a, c                                          ; $72d4: $79
	adc a                                            ; $72d5: $8f
	rst AddAOntoHL                                          ; $72d6: $ef
	ldh a, [$67]                                     ; $72d7: $f0 $67
	jr nc, jr_058_7352                               ; $72d9: $30 $77

	adc $7d                                          ; $72db: $ce $7d
	sbc h                                            ; $72dd: $9c
	ld h, a                                          ; $72de: $67
	ld c, b                                          ; $72df: $48
	ld a, a                                          ; $72e0: $7f
	cp $80                                           ; $72e1: $fe $80
	rst AddAOntoHL                                          ; $72e3: $ef
	ld de, $33cd                                     ; $72e4: $11 $cd $33
	db $dd                                           ; $72e7: $dd
	inc hl                                           ; $72e8: $23
	sbc h                                            ; $72e9: $9c
	ld h, e                                          ; $72ea: $63
	add hl, sp                                       ; $72eb: $39
	add $b2                                          ; $72ec: $c6 $b2
	call $dfa0                                       ; $72ee: $cd $a0 $df
	add d                                            ; $72f1: $82
	db $fd                                           ; $72f2: $fd
	dec b                                            ; $72f3: $05
	ld a, [$f50a]                                    ; $72f4: $fa $0a $f5
	dec d                                            ; $72f7: $15
	db $eb                                           ; $72f8: $eb
	sub c                                            ; $72f9: $91
	ld a, [hl]                                       ; $72fa: $7e
	ld de, $12fe                                     ; $72fb: $11 $fe $12
	db $fd                                           ; $72fe: $fd
	ld h, h                                          ; $72ff: $64
	cp e                                             ; $7300: $bb
	xor h                                            ; $7301: $ac
	sub [hl]                                         ; $7302: $96
	ld [hl], e                                       ; $7303: $73
	ld e, b                                          ; $7304: $58
	rst SubAFromBC                                          ; $7305: $e7
	or b                                             ; $7306: $b0
	rst GetHLinHL                                          ; $7307: $cf
	ld l, b                                          ; $7308: $68
	sub a                                            ; $7309: $97
	add b                                            ; $730a: $80
	ld a, a                                          ; $730b: $7f
	ld a, d                                          ; $730c: $7a
	dec hl                                           ; $730d: $2b
	adc c                                            ; $730e: $89
	cp $04                                           ; $730f: $fe $04
	db $fc                                           ; $7311: $fc
	add hl, bc                                       ; $7312: $09
	ld hl, sp+$13                                    ; $7313: $f8 $13
	pop af                                           ; $7315: $f1
	daa                                              ; $7316: $27
	db $e3                                           ; $7317: $e3
	ld c, [hl]                                       ; $7318: $4e
	rst JumpTable                                          ; $7319: $c7
	sbc e                                            ; $731a: $9b
	adc h                                            ; $731b: $8c
	ld a, [hl-]                                      ; $731c: $3a
	dec e                                            ; $731d: $1d
	ld a, a                                          ; $731e: $7f
	ccf                                              ; $731f: $3f
	db $e3                                           ; $7320: $e3
	ld a, [hl]                                       ; $7321: $7e
	jp nz, $81ff                                     ; $7322: $c2 $ff $81

	ld a, d                                          ; $7325: $7a
	ld de, $fe7f                                     ; $7326: $11 $7f $fe
	sub h                                            ; $7329: $94
	dec [hl]                                         ; $732a: $35
	db $fd                                           ; $732b: $fd
	push af                                          ; $732c: $f5
	db $dd                                           ; $732d: $dd
	push de                                          ; $732e: $d5
	dec a                                            ; $732f: $3d
	dec d                                            ; $7330: $15
	db $fd                                           ; $7331: $fd
	dec d                                            ; $7332: $15
	db $fd                                           ; $7333: $fd
	dec c                                            ; $7334: $0d
	ld a, e                                          ; $7335: $7b
	cp $7f                                           ; $7336: $fe $7f

jr_058_7338:
	ld [hl], h                                       ; $7338: $74
	ld c, [hl]                                       ; $7339: $4e
	ldh [$65], a                                     ; $733a: $e0 $65
	inc h                                            ; $733c: $24
	ld e, $d0                                        ; $733d: $1e $d0
	ld b, a                                          ; $733f: $47
	cp $7f                                           ; $7340: $fe $7f
	ldh [c], a                                       ; $7342: $e2
	sbc b                                            ; $7343: $98
	db $fc                                           ; $7344: $fc
	inc bc                                           ; $7345: $03
	rst SubAFromDE                                          ; $7346: $df
	jr nz, jr_058_7338                               ; $7347: $20 $ef

	db $10                                           ; $7349: $10
	ccf                                              ; $734a: $3f
	ld a, d                                          ; $734b: $7a
	ld [hl+], a                                      ; $734c: $22
	ld [hl], a                                       ; $734d: $77
	ldh [$7e], a                                     ; $734e: $e0 $7e
	ld e, e                                          ; $7350: $5b
	sub d                                            ; $7351: $92

jr_058_7352:
	db $ec                                           ; $7352: $ec

jr_058_7353:
	jr jr_058_7353                                   ; $7353: $18 $fe

	ld b, $fd                                        ; $7355: $06 $fd
	inc bc                                           ; $7357: $03
	rst AddAOntoHL                                          ; $7358: $ef
	db $10                                           ; $7359: $10
	rst FarCall                                          ; $735a: $f7
	ld [$06f9], sp                                   ; $735b: $08 $f9 $06
	cp $68                                           ; $735e: $fe $68
	ld a, d                                          ; $7360: $7a

Call_058_7361:
	ld a, b                                          ; $7361: $78
	ld h, [hl]                                       ; $7362: $66
	adc h                                            ; $7363: $8c
	ret nz                                           ; $7364: $c0

	or b                                             ; $7365: $b0
	ld h, b                                          ; $7366: $60
	ld hl, sp+$18                                    ; $7367: $f8 $18
	db $f4                                           ; $7369: $f4
	inc c                                            ; $736a: $0c
	ld d, l                                          ; $736b: $55
	xor d                                            ; $736c: $aa
	xor d                                            ; $736d: $aa
	ld d, l                                          ; $736e: $55
	ld d, l                                          ; $736f: $55
	xor d                                            ; $7370: $aa
	ld a, [hl+]                                      ; $7371: $2a
	ld d, l                                          ; $7372: $55
	ld d, l                                          ; $7373: $55
	ld a, [hl+]                                      ; $7374: $2a
	jr z, jr_058_73ce                                ; $7375: $28 $57

	ld [hl], a                                       ; $7377: $77
	db $fc                                           ; $7378: $fc
	halt                                             ; $7379: $76
	call z, $c87d                                    ; $737a: $cc $7d $c8
	ld a, a                                          ; $737d: $7f
	push bc                                          ; $737e: $c5
	ld a, a                                          ; $737f: $7f

Call_058_7380:
	db $ec                                           ; $7380: $ec
	ld a, a                                          ; $7381: $7f
	or e                                             ; $7382: $b3
	ld [hl], l                                       ; $7383: $75
	ret nz                                           ; $7384: $c0

	sub h                                            ; $7385: $94
	and a                                            ; $7386: $a7
	rlca                                             ; $7387: $07
	inc bc                                           ; $7388: $03
	rlca                                             ; $7389: $07
	rlca                                             ; $738a: $07
	rst $38                                          ; $738b: $ff
	rrca                                             ; $738c: $0f
	rst $38                                          ; $738d: $ff
	rlca                                             ; $738e: $07
	rst $38                                          ; $738f: $ff
	inc bc                                           ; $7390: $03
	ld [hl], h                                       ; $7391: $74
	ld hl, $ff88                                     ; $7392: $21 $88 $ff
	adc a                                            ; $7395: $8f
	ldh a, [$cf]                                     ; $7396: $f0 $cf
	ldh a, [$c7]                                     ; $7398: $f0 $c7
	ld hl, sp-$19                                    ; $739a: $f8 $e7
	ld hl, sp-$1d                                    ; $739c: $f8 $e3
	db $fc                                           ; $739e: $fc
	ldh a, [rIE]                                     ; $739f: $f0 $ff
	ldh a, [rIE]                                     ; $73a1: $f0 $ff
	ld hl, sp-$01                                    ; $73a3: $f8 $ff
	rst JumpTable                                          ; $73a5: $c7
	ld a, $8b                                        ; $73a6: $3e $8b
	ld a, h                                          ; $73a8: $7c
	cp a                                             ; $73a9: $bf
	ld [hl], b                                       ; $73aa: $70
	ld l, [hl]                                       ; $73ab: $6e
	ldh [$80], a                                     ; $73ac: $e0 $80
	rrca                                             ; $73ae: $0f
	ldh a, [rSB]                                     ; $73af: $f0 $01
	cp $f3                                           ; $73b1: $fe $f3
	dec e                                            ; $73b3: $1d
	db $e4                                           ; $73b4: $e4
	dec de                                           ; $73b5: $1b
	jp z, $8435                                      ; $73b6: $ca $35 $84

	ld a, e                                          ; $73b9: $7b
	adc d                                            ; $73ba: $8a
	ld [hl], l                                       ; $73bb: $75
	push de                                          ; $73bc: $d5
	ld l, d                                          ; $73bd: $6a
	jp z, Jump_058_5475                              ; $73be: $ca $75 $54

	db $eb                                           ; $73c1: $eb
	rra                                              ; $73c2: $1f
	ldh [$af], a                                     ; $73c3: $e0 $af
	ret nc                                           ; $73c5: $d0

	adc a                                            ; $73c6: $8f
	ldh a, [$af]                                     ; $73c7: $f0 $af
	ret nc                                           ; $73c9: $d0

	adc [hl]                                         ; $73ca: $8e
	pop af                                           ; $73cb: $f1
	ld h, [hl]                                       ; $73cc: $66
	add b                                            ; $73cd: $80

jr_058_73ce:
	reti                                             ; $73ce: $d9


	ld d, h                                          ; $73cf: $54
	db $eb                                           ; $73d0: $eb
	ld [$8df7], sp                                   ; $73d1: $08 $f7 $8d
	ld [hl], e                                       ; $73d4: $73
	xor [hl]                                         ; $73d5: $ae
	ld d, e                                          ; $73d6: $53
	ld e, $e3                                        ; $73d7: $1e $e3
	ld l, $d3                                        ; $73d9: $2e $d3
	ld a, [de]                                       ; $73db: $1a
	rst SubAFromBC                                          ; $73dc: $e7
	inc l                                            ; $73dd: $2c
	rst SubAFromHL                                          ; $73de: $d7
	ld e, l                                          ; $73df: $5d
	and a                                            ; $73e0: $a7
	xor [hl]                                         ; $73e1: $ae
	ld d, a                                          ; $73e2: $57
	ld a, [hl+]                                      ; $73e3: $2a
	rst SubAFromHL                                          ; $73e4: $d7
	inc e                                            ; $73e5: $1c
	rst AddAOntoHL                                          ; $73e6: $ef
	ld sp, $20de                                     ; $73e7: $31 $de $20
	rst $38                                          ; $73ea: $ff
	ld d, c                                          ; $73eb: $51
	xor $8c                                          ; $73ec: $ee $8c
	and d                                            ; $73ee: $a2
	db $dd                                           ; $73ef: $dd
	ld d, l                                          ; $73f0: $55
	xor d                                            ; $73f1: $aa
	and d                                            ; $73f2: $a2
	ld e, l                                          ; $73f3: $5d
	ret nc                                           ; $73f4: $d0

	cpl                                              ; $73f5: $2f
	adc c                                            ; $73f6: $89
	ld [hl], a                                       ; $73f7: $77
	ld d, d                                          ; $73f8: $52
	xor [hl]                                         ; $73f9: $ae
	adc h                                            ; $73fa: $8c
	ld [hl], h                                       ; $73fb: $74
	dec b                                            ; $73fc: $05
	db $fc                                           ; $73fd: $fc
	dec b                                            ; $73fe: $05
	db $fc                                           ; $73ff: $fc
	dec c                                            ; $7400: $0d
	ld a, e                                          ; $7401: $7b
	cp $90                                           ; $7402: $fe $90
	sbc h                                            ; $7404: $9c
	adc a                                            ; $7405: $8f
	jr c, jr_058_7427                                ; $7406: $38 $1f

	ld [hl], b                                       ; $7408: $70
	ccf                                              ; $7409: $3f
	ldh [$7f], a                                     ; $740a: $e0 $7f
	ret nz                                           ; $740c: $c0

	rst $38                                          ; $740d: $ff
	add b                                            ; $740e: $80
	rst $38                                          ; $740f: $ff
	add e                                            ; $7410: $83
	rst $38                                          ; $7411: $ff
	add l                                            ; $7412: $85
	ld h, c                                          ; $7413: $61
	ld d, c                                          ; $7414: $51
	add b                                            ; $7415: $80
	jr c, @+$01                                      ; $7416: $38 $ff

	add $ff                                          ; $7418: $c6 $ff
	ld [hl], c                                       ; $741a: $71
	adc a                                            ; $741b: $8f
	jp $083e                                         ; $741c: $c3 $3e $08


	rst $38                                          ; $741f: $ff
	sub a                                            ; $7420: $97
	rst $38                                          ; $7421: $ff
	xor h                                            ; $7422: $ac
	db $fc                                           ; $7423: $fc
	rst $38                                          ; $7424: $ff
	xor c                                            ; $7425: $a9
	cp a                                             ; $7426: $bf

jr_058_7427:
	db $ec                                           ; $7427: $ec
	rst AddAOntoHL                                          ; $7428: $ef
	rst SubAFromDE                                          ; $7429: $df
	adc $b9                                          ; $742a: $ce $b9
	sbc e                                            ; $742c: $9b
	ld [hl], a                                       ; $742d: $77
	rst JumpTable                                          ; $742e: $c7
	cp b                                             ; $742f: $b8
	ld a, b                                          ; $7430: $78
	ld b, a                                          ; $7431: $47
	ld a, a                                          ; $7432: $7f
	ld b, b                                          ; $7433: $40
	rst $38                                          ; $7434: $ff
	sub [hl]                                         ; $7435: $96
	ldh a, [$6f]                                     ; $7436: $f0 $6f
	inc a                                            ; $7438: $3c
	inc sp                                           ; $7439: $33
	ld e, $69                                        ; $743a: $1e $69
	rst $38                                          ; $743c: $ff
	add l                                            ; $743d: $85
	rst $38                                          ; $743e: $ff
	halt                                             ; $743f: $76
	ret nc                                           ; $7440: $d0

	sbc c                                            ; $7441: $99
	rla                                              ; $7442: $17
	add sp, -$1d                                     ; $7443: $e8 $e3
	inc e                                            ; $7445: $1c
	call c, $4e23                                    ; $7446: $dc $23 $4e
	ret nc                                           ; $7449: $d0

	ld a, a                                          ; $744a: $7f
	db $f4                                           ; $744b: $f4
	sbc e                                            ; $744c: $9b
	adc a                                            ; $744d: $8f
	ld [hl], b                                       ; $744e: $70
	pop af                                           ; $744f: $f1
	ld c, $5d                                        ; $7450: $0e $5d
	ld [bc], a                                       ; $7452: $02
	ld h, a                                          ; $7453: $67
	ld [$0055], a                                    ; $7454: $ea $55 $00
	call c, $9a77                                    ; $7457: $dc $77 $9a
	dec [hl]                                         ; $745a: $35
	ld d, l                                          ; $745b: $55
	ld d, l                                          ; $745c: $55
	ld h, [hl]                                       ; $745d: $66
	ld h, [hl]                                       ; $745e: $66
	ld e, a                                          ; $745f: $5f
	or $df                                           ; $7460: $f6 $df
	ld [hl+], a                                      ; $7462: $22
	ld e, a                                          ; $7463: $5f
	or $9c                                           ; $7464: $f6 $9c
	ld h, $66                                        ; $7466: $26 $66
	ld [hl], a                                       ; $7468: $77
	sbc $55                                          ; $7469: $de $55
	sbc b                                            ; $746b: $98
	ld h, [hl]                                       ; $746c: $66
	ld h, a                                          ; $746d: $67
	ld [hl+], a                                      ; $746e: $22
	ld [hl+], a                                      ; $746f: $22
	ld h, [hl]                                       ; $7470: $66
	ld h, d                                          ; $7471: $62
	ld h, d                                          ; $7472: $62

Call_058_7473:
	sbc $55                                          ; $7473: $de $55
	rst SubAFromDE                                          ; $7475: $df
	ld [hl], a                                       ; $7476: $77
	ld a, e                                          ; $7477: $7b
	or $99                                           ; $7478: $f6 $99
	ld h, h                                          ; $747a: $64
	ld b, d                                          ; $747b: $42
	ld d, l                                          ; $747c: $55
	ld d, l                                          ; $747d: $55
	ld d, e                                          ; $747e: $53
	ld h, [hl]                                       ; $747f: $66
	ld a, e                                          ; $7480: $7b
	or $9b                                           ; $7481: $f6 $9b
	ld d, [hl]                                       ; $7483: $56
	ld h, l                                          ; $7484: $65
	ld d, [hl]                                       ; $7485: $56
	inc sp                                           ; $7486: $33
	db $dd                                           ; $7487: $dd
	ld h, [hl]                                       ; $7488: $66
	rst SubAFromDE                                          ; $7489: $df
	ld [hl+], a                                      ; $748a: $22
	sbc h                                            ; $748b: $9c
	ld d, l                                          ; $748c: $55
	ld [hl+], a                                      ; $748d: $22
	ld d, [hl]                                       ; $748e: $56
	sbc $66                                          ; $748f: $de $66
	ld [hl], a                                       ; $7491: $77
	ldh [c], a                                       ; $7492: $e2
	sbc c                                            ; $7493: $99
	ld d, l                                          ; $7494: $55
	ld h, d                                          ; $7495: $62
	ld h, $66                                        ; $7496: $26 $66
	ld h, [hl]                                       ; $7498: $66
	ld h, d                                          ; $7499: $62
	ld [hl], a                                       ; $749a: $77
	or $7b                                           ; $749b: $f6 $7b
	ld hl, sp+$7b                                    ; $749d: $f8 $7b
	push hl                                          ; $749f: $e5
	ld [hl], a                                       ; $74a0: $77
	or $7f                                           ; $74a1: $f6 $7f
	call $ed7b                                       ; $74a3: $cd $7b $ed
	sbc h                                            ; $74a6: $9c
	ld [hl+], a                                      ; $74a7: $22
	ld h, a                                          ; $74a8: $67
	ld [hl], a                                       ; $74a9: $77
	dec [hl]                                         ; $74aa: $35
	adc b                                            ; $74ab: $88
	sbc l                                            ; $74ac: $9d
	nop                                              ; $74ad: $00
	add b                                            ; $74ae: $80
	ld [hl], a                                       ; $74af: $77
	cp $9d                                           ; $74b0: $fe $9d
	ld b, b                                          ; $74b2: $40
	and b                                            ; $74b3: $a0
	ld sp, hl                                        ; $74b4: $f9
	sub a                                            ; $74b5: $97
	ld [$2800], sp                                   ; $74b6: $08 $00 $28
	nop                                              ; $74b9: $00
	xor b                                            ; $74ba: $a8
	nop                                              ; $74bb: $00
	and c                                            ; $74bc: $a1
	ld d, b                                          ; $74bd: $50
	ld sp, hl                                        ; $74be: $f9
	sub e                                            ; $74bf: $93

jr_058_74c0:
	ld h, c                                          ; $74c0: $61
	and e                                            ; $74c1: $a3
	ld h, [hl]                                       ; $74c2: $66
	and $6c                                          ; $74c3: $e6 $6c
	call $c555                                       ; $74c5: $cd $55 $c5
	nop                                              ; $74c8: $00
	nop                                              ; $74c9: $00
	ld bc, $dd01                                     ; $74ca: $01 $01 $dd
	inc bc                                           ; $74cd: $03
	sub a                                            ; $74ce: $97
	cp e                                             ; $74cf: $bb
	ld b, l                                          ; $74d0: $45
	adc [hl]                                         ; $74d1: $8e
	inc d                                            ; $74d2: $14
	cp e                                             ; $74d3: $bb
	ld d, c                                          ; $74d4: $51
	and b                                            ; $74d5: $a0
	ld bc, $94fc                                     ; $74d6: $01 $fc $94
	inc b                                            ; $74d9: $04
	ld c, [hl]                                       ; $74da: $4e
	ld d, h                                          ; $74db: $54
	ld h, $29                                        ; $74dc: $26 $29
	add hl, hl                                       ; $74de: $29
	ld h, $2e                                        ; $74df: $26 $2e
	dec h                                            ; $74e1: $25
	add hl, hl                                       ; $74e2: $29
	jr nz, jr_058_74c0                               ; $74e3: $20 $db

	sub b                                            ; $74e5: $90
	sub c                                            ; $74e6: $91
	sub d                                            ; $74e7: $92
	sub l                                            ; $74e8: $95
	ld b, b                                          ; $74e9: $40
	nop                                              ; $74ea: $00
	ld b, b                                          ; $74eb: $40
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	ld c, b                                          ; $74ee: $48
	dec c                                            ; $74ef: $0d
	dec c                                            ; $74f0: $0d
	or b                                             ; $74f1: $b0
	ldh a, [$b0]                                     ; $74f2: $f0 $b0
	ldh a, [rPCM34]                                  ; $74f4: $f0 $77
	db $fd                                           ; $74f6: $fd
	sub l                                            ; $74f7: $95
	dec b                                            ; $74f8: $05
	inc b                                            ; $74f9: $04
	dec h                                            ; $74fa: $25
	inc h                                            ; $74fb: $24
	dec [hl]                                         ; $74fc: $35
	inc e                                            ; $74fd: $1c
	dec e                                            ; $74fe: $1d
	db $fc                                           ; $74ff: $fc
	ld [bc], a                                       ; $7500: $02
	inc bc                                           ; $7501: $03
	ld l, a                                          ; $7502: $6f
	cp $87                                           ; $7503: $fe $87
	ld d, h                                          ; $7505: $54
	adc d                                            ; $7506: $8a
	ld d, h                                          ; $7507: $54
	adc d                                            ; $7508: $8a
	ld d, b                                          ; $7509: $50
	adc b                                            ; $750a: $88
	inc d                                            ; $750b: $14
	adc b                                            ; $750c: $88
	xor e                                            ; $750d: $ab

jr_058_750e:
	ld [hl], l                                       ; $750e: $75
	xor e                                            ; $750f: $ab
	ld [hl], l                                       ; $7510: $75
	xor a                                            ; $7511: $af
	ld [hl], a                                       ; $7512: $77
	db $eb                                           ; $7513: $eb
	ld [hl], a                                       ; $7514: $77
	cp e                                             ; $7515: $bb
	ld b, l                                          ; $7516: $45
	ld c, $14                                        ; $7517: $0e $14
	or e                                             ; $7519: $b3
	ld d, b                                          ; $751a: $50
	and b                                            ; $751b: $a0
	add b                                            ; $751c: $80
	ld [hl], e                                       ; $751d: $73
	add h                                            ; $751e: $84
	sub l                                            ; $751f: $95
	dec b                                            ; $7520: $05
	ld c, [hl]                                       ; $7521: $4e
	ld d, l                                          ; $7522: $55
	or e                                             ; $7523: $b3
	ld b, l                                          ; $7524: $45
	ld c, $15                                        ; $7525: $0e $15
	dec sp                                           ; $7527: $3b
	ld d, c                                          ; $7528: $51
	nop                                              ; $7529: $00
	ld [hl], e                                       ; $752a: $73
	and b                                            ; $752b: $a0
	sbc e                                            ; $752c: $9b
	add b                                            ; $752d: $80
	inc b                                            ; $752e: $04
	xor $54                                          ; $752f: $ee $54
	ld l, e                                          ; $7531: $6b
	sub b                                            ; $7532: $90
	sbc [hl]                                         ; $7533: $9e
	inc bc                                           ; $7534: $03
	ld l, e                                          ; $7535: $6b
	sub b                                            ; $7536: $90
	sub [hl]                                         ; $7537: $96
	ld d, a                                          ; $7538: $57
	and b                                            ; $7539: $a0
	ld d, c                                          ; $753a: $51
	jp z, $a050                                      ; $753b: $ca $50 $a0

	ld b, b                                          ; $753e: $40
	jp Jump_058_7bc7                                 ; $753f: $c3 $c7 $7b


	di                                               ; $7542: $f3
	sub d                                            ; $7543: $92
	dec b                                            ; $7544: $05
	dec de                                           ; $7545: $1b
	dec d                                            ; $7546: $15
	rrca                                             ; $7547: $0f
	db $fc                                           ; $7548: $fc
	dec bc                                           ; $7549: $0b
	ld d, l                                          ; $754a: $55
	ld l, [hl]                                       ; $754b: $6e
	dec d                                            ; $754c: $15
	ld [bc], a                                       ; $754d: $02
	nop                                              ; $754e: $00
	ldh [$f8], a                                     ; $754f: $e0 $f8
	ld a, e                                          ; $7551: $7b
	jp nc, Jump_058_4095                             ; $7552: $d2 $95 $40

	cp c                                             ; $7555: $b9
	ld d, l                                          ; $7556: $55
	xor $1d                                          ; $7557: $ee $1d
	add d                                            ; $7559: $82
	ld b, d                                          ; $755a: $42
	add d                                            ; $755b: $82
	ld b, d                                          ; $755c: $42
	ld [hl+], a                                      ; $755d: $22
	sbc $02                                          ; $755e: $de $02
	db $dd                                           ; $7560: $dd
	add hl, bc                                       ; $7561: $09
	sbc e                                            ; $7562: $9b
	adc c                                            ; $7563: $89
	ld c, c                                          ; $7564: $49
	jp hl                                            ; $7565: $e9


	ld l, c                                          ; $7566: $69
	ld a, e                                          ; $7567: $7b
	and b                                            ; $7568: $a0
	sbc h                                            ; $7569: $9c
	sub h                                            ; $756a: $94
	or e                                             ; $756b: $b3
	ld [hl], b                                       ; $756c: $70
	ld h, e                                          ; $756d: $63
	and b                                            ; $756e: $a0
	sbc [hl]                                         ; $756f: $9e
	ld e, l                                          ; $7570: $5d
	dec hl                                           ; $7571: $2b
	and b                                            ; $7572: $a0
	ld h, e                                          ; $7573: $63
	jr nc, jr_058_750e                               ; $7574: $30 $98

	cp e                                             ; $7576: $bb
	ld b, c                                          ; $7577: $41
	add d                                            ; $7578: $82
	db $10                                           ; $7579: $10
	cp e                                             ; $757a: $bb
	ld d, l                                          ; $757b: $55
	ldh [c], a                                       ; $757c: $e2
	ld l, a                                          ; $757d: $6f
	ldh a, [$9d]                                     ; $757e: $f0 $9d
	nop                                              ; $7580: $00
	inc c                                            ; $7581: $0c
	ld [hl], e                                       ; $7582: $73
	ldh [$7f], a                                     ; $7583: $e0 $7f
	sub b                                            ; $7585: $90
	ld [hl], e                                       ; $7586: $73
	pop bc                                           ; $7587: $c1
	sub h                                            ; $7588: $94
	ld bc, $151b                                     ; $7589: $01 $1b $15
	ld l, [hl]                                       ; $758c: $6e
	ld d, l                                          ; $758d: $55
	sbc e                                            ; $758e: $9b
	ld b, e                                          ; $758f: $43
	xor $55                                          ; $7590: $ee $55
	inc sp                                           ; $7592: $33
	ld de, $94fb                                     ; $7593: $11 $fb $94
	adc b                                            ; $7596: $88
	ld b, h                                          ; $7597: $44
	xor $54                                          ; $7598: $ee $54
	ld c, b                                          ; $759a: $48
	and h                                            ; $759b: $a4
	ld b, b                                          ; $759c: $40
	add b                                            ; $759d: $80
	inc de                                           ; $759e: $13
	inc bc                                           ; $759f: $03
	ld l, b                                          ; $75a0: $68
	ld a, d                                          ; $75a1: $7a
	ldh [rIE], a                                     ; $75a2: $e0 $ff
	sub e                                            ; $75a4: $93
	jr nz, jr_058_75e3                               ; $75a5: $20 $3c

	db $10                                           ; $75a7: $10
	inc hl                                           ; $75a8: $23

Jump_058_75a9:
	ld hl, $2350                                     ; $75a9: $21 $50 $23
	ld a, a                                          ; $75ac: $7f
	ld de, $bf06                                     ; $75ad: $11 $06 $bf
	ret nz                                           ; $75b0: $c0

	db $fd                                           ; $75b1: $fd
	sub e                                            ; $75b2: $93
	xor $01                                          ; $75b3: $ee $01
	ld a, a                                          ; $75b5: $7f
	rst $38                                          ; $75b6: $ff
	ld c, l                                          ; $75b7: $4d
	sbc l                                            ; $75b8: $9d
	dec l                                            ; $75b9: $2d
	reti                                             ; $75ba: $d9


	ld [hl], d                                       ; $75bb: $72
	xor d                                            ; $75bc: $aa
	call nz, $de3c                                   ; $75bd: $c4 $3c $de
	inc bc                                           ; $75c0: $03
	add l                                            ; $75c1: $85
	rlca                                             ; $75c2: $07
	adc a                                            ; $75c3: $8f
	ld d, a                                          ; $75c4: $57
	rst $38                                          ; $75c5: $ff
	rst $38                                          ; $75c6: $ff
	nop                                              ; $75c7: $00
	nop                                              ; $75c8: $00
	ld a, a                                          ; $75c9: $7f
	ld a, [hl+]                                      ; $75ca: $2a
	nop                                              ; $75cb: $00
	ld a, [hl+]                                      ; $75cc: $2a
	nop                                              ; $75cd: $00
	xor d                                            ; $75ce: $aa
	rst $38                                          ; $75cf: $ff
	nop                                              ; $75d0: $00
	add b                                            ; $75d1: $80
	push de                                          ; $75d2: $d5
	rst $38                                          ; $75d3: $ff
	push de                                          ; $75d4: $d5
	rst $38                                          ; $75d5: $ff
	ld d, l                                          ; $75d6: $55
	nop                                              ; $75d7: $00
	ld h, b                                          ; $75d8: $60
	rst AddAOntoHL                                          ; $75d9: $ef
	xor d                                            ; $75da: $aa
	ld [$fe7b], sp                                   ; $75db: $08 $7b $fe
	sbc d                                            ; $75de: $9a
	rst $38                                          ; $75df: $ff
	db $10                                           ; $75e0: $10
	db $10                                           ; $75e1: $10
	ld d, l                                          ; $75e2: $55

jr_058_75e3:
	rst FarCall                                          ; $75e3: $f7
	ld a, e                                          ; $75e4: $7b
	cp $ff                                           ; $75e5: $fe $ff
	sbc h                                            ; $75e7: $9c
	rst $38                                          ; $75e8: $ff
	xor d                                            ; $75e9: $aa
	nop                                              ; $75ea: $00
	ld a, e                                          ; $75eb: $7b
	cp $7b                                           ; $75ec: $fe $7b
	rst SubAFromHL                                          ; $75ee: $d7
	sbc l                                            ; $75ef: $9d
	ld d, l                                          ; $75f0: $55
	rst $38                                          ; $75f1: $ff
	ld a, e                                          ; $75f2: $7b
	cp $03                                           ; $75f3: $fe $03
	ldh a, [$3b]                                     ; $75f5: $f0 $3b
	ldh a, [$9c]                                     ; $75f7: $f0 $9c
	inc bc                                           ; $75f9: $03
	xor d                                            ; $75fa: $aa
	dec d                                            ; $75fb: $15
	ld l, e                                          ; $75fc: $6b
	ldh a, [$80]                                     ; $75fd: $f0 $80

Call_058_75ff:
	ld [$ff55], a                                    ; $75ff: $ea $55 $ff
	inc d                                            ; $7602: $14
	ldh a, [$e5]                                     ; $7603: $f0 $e5
	ld c, d                                          ; $7605: $4a
	push de                                          ; $7606: $d5
	db $e4                                           ; $7607: $e4
	cp b                                             ; $7608: $b8
	inc c                                            ; $7609: $0c
	dec de                                           ; $760a: $1b
	cpl                                              ; $760b: $2f
	db $db                                           ; $760c: $db
	rst FarCall                                          ; $760d: $f7
	xor [hl]                                         ; $760e: $ae
	xor [hl]                                         ; $760f: $ae
	db $ed                                           ; $7610: $ed
	jr c, jr_058_7626                                ; $7611: $38 $13

	call nz, $172c                                   ; $7613: $c4 $2c $17
	ld h, d                                          ; $7616: $62
	cp e                                             ; $7617: $bb
	sub l                                            ; $7618: $95
	rst $38                                          ; $7619: $ff
	rst $38                                          ; $761a: $ff
	db $fd                                           ; $761b: $fd
	cp $fa                                           ; $761c: $fe $fa
	adc [hl]                                         ; $761e: $8e
	di                                               ; $761f: $f3
	pop de                                           ; $7620: $d1
	jp hl                                            ; $7621: $e9


	scf                                              ; $7622: $37
	jp z, Jump_058_6ab5                              ; $7623: $ca $b5 $6a

jr_058_7626:
	push de                                          ; $7626: $d5
	rst SubAFromBC                                          ; $7627: $e7
	ld d, d                                          ; $7628: $52
	add hl, hl                                       ; $7629: $29
	call z, $fbf6                                    ; $762a: $cc $f6 $fb
	db $dd                                           ; $762d: $dd
	ld l, [hl]                                       ; $762e: $6e
	ld a, [hl]                                       ; $762f: $7e
	ld [hl], a                                       ; $7630: $77
	ld h, b                                          ; $7631: $60
	ld a, a                                          ; $7632: $7f
	ret nz                                           ; $7633: $c0

	sbc e                                            ; $7634: $9b
	add b                                            ; $7635: $80
	ld [$ead4], a                                    ; $7636: $ea $d4 $ea
	ld a, e                                          ; $7639: $7b
	rst FarCall                                          ; $763a: $f7
	ld a, e                                          ; $763b: $7b
	ld h, d                                          ; $763c: $62
	sbc l                                            ; $763d: $9d
	ld l, e                                          ; $763e: $6b
	dec [hl]                                         ; $763f: $35
	inc bc                                           ; $7640: $03
	sub b                                            ; $7641: $90
	ld b, a                                          ; $7642: $47
	ldh a, [$9b]                                     ; $7643: $f0 $9b
	add hl, bc                                       ; $7645: $09
	ei                                               ; $7646: $fb
	xor d                                            ; $7647: $aa
	ld [bc], a                                       ; $7648: $02
	ld a, e                                          ; $7649: $7b
	cp $9a                                           ; $764a: $fe $9a
	rst $38                                          ; $764c: $ff
	inc b                                            ; $764d: $04
	inc b                                            ; $764e: $04
	ld d, l                                          ; $764f: $55
	db $fd                                           ; $7650: $fd
	ld a, e                                          ; $7651: $7b
	cp $07                                           ; $7652: $fe $07
	ret nc                                           ; $7654: $d0

	sbc h                                            ; $7655: $9c
	ld a, [hl]                                       ; $7656: $7e
	ld [hl], d                                       ; $7657: $72
	ld l, a                                          ; $7658: $6f
	sbc $7f                                          ; $7659: $de $7f
	sbc d                                            ; $765b: $9a
	ld [hl], l                                       ; $765c: $75
	ld l, d                                          ; $765d: $6a
	rst GetHLinHL                                          ; $765e: $cf
	db $fd                                           ; $765f: $fd
	ldh a, [$dc]                                     ; $7660: $f0 $dc
	ret nz                                           ; $7662: $c0

	sub [hl]                                         ; $7663: $96
	ld e, d                                          ; $7664: $5a
	rst $38                                          ; $7665: $ff
	cp $ff                                           ; $7666: $fe $ff
	rst $38                                          ; $7668: $ff
	xor e                                            ; $7669: $ab
	ld d, l                                          ; $766a: $55
	add b                                            ; $766b: $80
	and l                                            ; $766c: $a5
	ld l, [hl]                                       ; $766d: $6e
	ld e, l                                          ; $766e: $5d
	adc [hl]                                         ; $766f: $8e
	nop                                              ; $7670: $00
	add h                                            ; $7671: $84
	ld b, h                                          ; $7672: $44
	add d                                            ; $7673: $82
	ld b, d                                          ; $7674: $42
	and d                                            ; $7675: $a2
	ld b, d                                          ; $7676: $42
	and d                                            ; $7677: $a2
	jp nz, $bf7f                                     ; $7678: $c2 $7f $bf

	ld a, a                                          ; $767b: $7f
	cp a                                             ; $767c: $bf
	ld e, a                                          ; $767d: $5f
	cp a                                             ; $767e: $bf
	ld e, a                                          ; $767f: $5f
	ccf                                              ; $7680: $3f
	ld [hl], a                                       ; $7681: $77
	set 3, l                                         ; $7682: $cb $dd
	rst $38                                          ; $7684: $ff
	ld [hl], a                                       ; $7685: $77
	cp e                                             ; $7686: $bb
	db $fd                                           ; $7687: $fd
	sub h                                            ; $7688: $94
	ld h, l                                          ; $7689: $65
	rst AddAOntoHL                                          ; $768a: $ef
	ld h, l                                          ; $768b: $65
	rst AddAOntoHL                                          ; $768c: $ef
	rst SubAFromBC                                          ; $768d: $e7
	rst AddAOntoHL                                          ; $768e: $ef
	rst SubAFromBC                                          ; $768f: $e7
	rst SubAFromBC                                          ; $7690: $e7
	sub d                                            ; $7691: $92
	db $10                                           ; $7692: $10
	sub d                                            ; $7693: $92
	call c, Call_058_4710                            ; $7694: $dc $10 $47
	ldh [$03], a                                     ; $7697: $e0 $03
	ldh a, [$9e]                                     ; $7699: $f0 $9e
	rst $38                                          ; $769b: $ff
	ld a, d                                          ; $769c: $7a
	ld l, e                                          ; $769d: $6b
	ld [hl], e                                       ; $769e: $73
	ldh a, [$7d]                                     ; $769f: $f0 $7d
	ld a, [bc]                                       ; $76a1: $0a
	db $fd                                           ; $76a2: $fd
	sbc $ff                                          ; $76a3: $de $ff
	rst SubAFromDE                                          ; $76a5: $df
	cp $df                                           ; $76a6: $fe $df
	db $fd                                           ; $76a8: $fd
	sbc [hl]                                         ; $76a9: $9e
	ld a, [$01de]                                    ; $76aa: $fa $de $01
	ld a, d                                          ; $76ad: $7a
	ld c, [hl]                                       ; $76ae: $4e
	sub d                                            ; $76af: $92
	rlca                                             ; $76b0: $07
	rrca                                             ; $76b1: $0f
	dec hl                                           ; $76b2: $2b
	ld d, l                                          ; $76b3: $55
	ld d, l                                          ; $76b4: $55
	and d                                            ; $76b5: $a2
	xor e                                            ; $76b6: $ab
	db $d3                                           ; $76b7: $d3
	and a                                            ; $76b8: $a7
	rst $38                                          ; $76b9: $ff
	db $fd                                           ; $76ba: $fd
	ei                                               ; $76bb: $fb
	ei                                               ; $76bc: $fb
	ld a, e                                          ; $76bd: $7b
	and $7e                                          ; $76be: $e6 $7e
	call z, $ab87                                    ; $76c0: $cc $87 $ab
	jp hl                                            ; $76c3: $e9


	ld c, d                                          ; $76c4: $4a
	jp nc, wCharTilesDataDest+1                                     ; $76c5: $d2 $fd $d7

	rst SubAFromHL                                          ; $76c8: $d7
	rst $38                                          ; $76c9: $ff
	ld d, h                                          ; $76ca: $54
	ld d, [hl]                                       ; $76cb: $56
	rst SubAFromHL                                          ; $76cc: $d7
	rst SubAFromHL                                          ; $76cd: $d7
	ld d, a                                          ; $76ce: $57
	ld a, l                                          ; $76cf: $7d
	ld a, l                                          ; $76d0: $7d
	dec hl                                           ; $76d1: $2b
	xor c                                            ; $76d2: $a9
	sub l                                            ; $76d3: $95
	ld d, h                                          ; $76d4: $54
	ld c, d                                          ; $76d5: $4a
	ld a, [hl+]                                      ; $76d6: $2a
	sub a                                            ; $76d7: $97
	ret                                              ; $76d8: $c9


	rst FarCall                                          ; $76d9: $f7
	db $db                                           ; $76da: $db
	rst $38                                          ; $76db: $ff
	ld a, e                                          ; $76dc: $7b
	ld e, h                                          ; $76dd: $5c
	sub h                                            ; $76de: $94
	ld l, a                                          ; $76df: $6f
	or a                                             ; $76e0: $b7
	cp e                                             ; $76e1: $bb
	xor e                                            ; $76e2: $ab
	push de                                          ; $76e3: $d5
	ld d, a                                          ; $76e4: $57
	ld d, a                                          ; $76e5: $57
	or b                                             ; $76e6: $b0
	ret c                                            ; $76e7: $d8

	db $ec                                           ; $76e8: $ec
	xor $7b                                          ; $76e9: $ee $7b
	ld [hl], $7e                                     ; $76eb: $36 $7e
	rst $38                                          ; $76ed: $ff
	ld a, d                                          ; $76ee: $7a
	dec de                                           ; $76ef: $1b
	ld l, a                                          ; $76f0: $6f
	and b                                            ; $76f1: $a0
	ld a, [hl]                                       ; $76f2: $7e
	dec bc                                           ; $76f3: $0b
	inc bc                                           ; $76f4: $03
	ld [hl], b                                       ; $76f5: $70
	cp $9a                                           ; $76f6: $fe $9a
	ld e, d                                          ; $76f8: $5a
	ei                                               ; $76f9: $fb
	ld e, c                                          ; $76fa: $59
	ei                                               ; $76fb: $fb
	ld sp, hl                                        ; $76fc: $f9
	ld a, e                                          ; $76fd: $7b
	cp $9c                                           ; $76fe: $fe $9c
	and l                                            ; $7700: $a5
	inc b                                            ; $7701: $04
	and h                                            ; $7702: $a4
	call c, $0704                                    ; $7703: $dc $04 $07
	ret nc                                           ; $7706: $d0

	rst SubAFromDE                                          ; $7707: $df
	add b                                            ; $7708: $80
	sbc [hl]                                         ; $7709: $9e
	pop bc                                           ; $770a: $c1
	sbc $fc                                          ; $770b: $de $fc
	ld a, a                                          ; $770d: $7f
	ld l, b                                          ; $770e: $68
	sbc h                                            ; $770f: $9c
	ld b, b                                          ; $7710: $40
	ld b, e                                          ; $7711: $43
	ld a, $dd                                        ; $7712: $3e $dd
	ld [bc], a                                       ; $7714: $02
	ld a, [hl]                                       ; $7715: $7e
	res 2, l                                         ; $7716: $cb $95
	rlca                                             ; $7718: $07
	ret                                              ; $7719: $c9


	ldh [$60], a                                     ; $771a: $e0 $60
	ld h, b                                          ; $771c: $60
	jr nz, jr_058_773f                               ; $771d: $20 $20

	ld a, a                                          ; $771f: $7f
	ld hl, sp+$30                                    ; $7720: $f8 $30
	call c, $9310                                    ; $7722: $dc $10 $93
	ld bc, $e5c3                                     ; $7725: $01 $c3 $e5
	ldh [c], a                                       ; $7728: $e2
	push hl                                          ; $7729: $e5
	ld [$cae5], a                                    ; $772a: $ea $e5 $ca
	cp $3c                                           ; $772d: $fe $3c
	jr @+$1a                                         ; $772f: $18 $18

	sbc $10                                          ; $7731: $de $10
	sbc [hl]                                         ; $7733: $9e
	jr nz, jr_058_77b1                               ; $7734: $20 $7b

	ret nz                                           ; $7736: $c0

	sbc [hl]                                         ; $7737: $9e
	xor d                                            ; $7738: $aa
	ld [hl], a                                       ; $7739: $77
	cp $f9                                           ; $773a: $fe $f9
	sbc e                                            ; $773c: $9b

jr_058_773d:
	ld b, l                                          ; $773d: $45
	rst SubAFromBC                                          ; $773e: $e7

jr_058_773f:
	ld b, l                                          ; $773f: $45
	and d                                            ; $7740: $a2
	ld [hl], a                                       ; $7741: $77
	cp $d9                                           ; $7742: $fe $d9
	db $10                                           ; $7744: $10
	ld b, a                                          ; $7745: $47
	ldh [$03], a                                     ; $7746: $e0 $03
	ldh a, [rWX]                                     ; $7748: $f0 $4b
	ldh a, [$80]                                     ; $774a: $f0 $80
	ld e, e                                          ; $774c: $5b
	ei                                               ; $774d: $fb
	ld e, e                                          ; $774e: $5b
	xor a                                            ; $774f: $af
	ld d, l                                          ; $7750: $55
	xor e                                            ; $7751: $ab
	ld d, l                                          ; $7752: $55
	xor e                                            ; $7753: $ab
	ld c, $0e                                        ; $7754: $0e $0e
	rrca                                             ; $7756: $0f
	dec b                                            ; $7757: $05
	dec b                                            ; $7758: $05
	ld bc, $0001                                     ; $7759: $01 $01 $00
	rst GetHLinHL                                          ; $775c: $cf
	sbc $fb                                          ; $775d: $de $fb
	cp [hl]                                          ; $775f: $be
	db $eb                                           ; $7760: $eb
	db $ec                                           ; $7761: $ec
	add sp, -$02                                     ; $7762: $e8 $fe
	ei                                               ; $7764: $fb
	or [hl]                                          ; $7765: $b6
	cp e                                             ; $7766: $bb
	di                                               ; $7767: $f3
	ld sp, hl                                        ; $7768: $f9
	ld l, b                                          ; $7769: $68
	ld l, h                                          ; $776a: $6c
	sbc [hl]                                         ; $776b: $9e
	ld l, h                                          ; $776c: $6c
	ld a, d                                          ; $776d: $7a
	db $ed                                           ; $776e: $ed
	add b                                            ; $776f: $80
	ei                                               ; $7770: $fb
	ld b, [hl]                                       ; $7771: $46
	jr nc, jr_058_7774                               ; $7772: $30 $00

jr_058_7774:
	ld [$8028], sp                                   ; $7774: $08 $28 $80
	add e                                            ; $7777: $83
	add a                                            ; $7778: $87
	cp b                                             ; $7779: $b8
	jr nz, jr_058_777c                               ; $777a: $20 $00

jr_058_777c:
	jr c, @+$7f                                      ; $777c: $38 $7d

	db $fd                                           ; $777e: $fd
	cp l                                             ; $777f: $bd
	push de                                          ; $7780: $d5
	halt                                             ; $7781: $76
	ld a, [hl]                                       ; $7782: $7e
	db $f4                                           ; $7783: $f4
	push af                                          ; $7784: $f5
	rst SubAFromDE                                          ; $7785: $df
	rla                                              ; $7786: $17
	rst SubAFromHL                                          ; $7787: $d7
	rst FarCall                                          ; $7788: $f7
	rla                                              ; $7789: $17
	rla                                              ; $778a: $17
	rra                                              ; $778b: $1f
	ccf                                              ; $778c: $3f
	ld d, l                                          ; $778d: $55
	ld d, a                                          ; $778e: $57
	sub c                                            ; $778f: $91
	ld e, l                                          ; $7790: $5d
	ld e, d                                          ; $7791: $5a
	ld d, l                                          ; $7792: $55
	cp d                                             ; $7793: $ba
	or l                                             ; $7794: $b5
	ld l, d                                          ; $7795: $6a
	db $fd                                           ; $7796: $fd
	db $fc                                           ; $7797: $fc
	ld hl, sp-$08                                    ; $7798: $f8 $f8
	ldh a, [$f0]                                     ; $779a: $f0 $f0

Jump_058_779c:
	ldh [$c0], a                                     ; $779c: $e0 $c0
	inc bc                                           ; $779e: $03
	add b                                            ; $779f: $80
	ld c, e                                          ; $77a0: $4b
	ldh a, [$9b]                                     ; $77a1: $f0 $9b
	ld d, c                                          ; $77a3: $51
	ld sp, hl                                        ; $77a4: $f9
	ld d, c                                          ; $77a5: $51
	xor c                                            ; $77a6: $a9
	ld [hl], a                                       ; $77a7: $77
	cp $d9                                           ; $77a8: $fe $d9
	inc b                                            ; $77aa: $04
	rlca                                             ; $77ab: $07
	ret nc                                           ; $77ac: $d0

	sbc h                                            ; $77ad: $9c
	cp $54                                           ; $77ae: $fe $54

jr_058_77b0:
	nop                                              ; $77b0: $00

jr_058_77b1:
	ld a, c                                          ; $77b1: $79
	ld l, h                                          ; $77b2: $6c
	ld a, l                                          ; $77b3: $7d
	sub e                                            ; $77b4: $93
	ld a, e                                          ; $77b5: $7b
	ld d, l                                          ; $77b6: $55
	ld [hl], a                                       ; $77b7: $77
	ld sp, hl                                        ; $77b8: $f9
	sub h                                            ; $77b9: $94
	ld [bc], a                                       ; $77ba: $02
	jr nz, jr_058_773d                               ; $77bb: $20 $80

	ld [$4949], sp                                   ; $77bd: $08 $49 $49
	dec c                                            ; $77c0: $0d

Jump_058_77c1:
	adc c                                            ; $77c1: $89
	add hl, bc                                       ; $77c2: $09
	db $10                                           ; $77c3: $10
	db $10                                           ; $77c4: $10
	db $dd                                           ; $77c5: $dd
	sub b                                            ; $77c6: $90
	rst SubAFromDE                                          ; $77c7: $df
	inc d                                            ; $77c8: $14
	sbc e                                            ; $77c9: $9b
	ret nz                                           ; $77ca: $c0

	jp z, $cac0                                      ; $77cb: $ca $c0 $ca

	db $dd                                           ; $77ce: $dd
	add b                                            ; $77cf: $80
	db $dd                                           ; $77d0: $dd
	jr nz, jr_058_77b0                               ; $77d1: $20 $dd

	ld b, b                                          ; $77d3: $40
	ld [hl], l                                       ; $77d4: $75
	ld b, h                                          ; $77d5: $44
	db $f4                                           ; $77d6: $f4
	sbc [hl]                                         ; $77d7: $9e
	and d                                            ; $77d8: $a2
	ld a, e                                          ; $77d9: $7b
	cp $fe                                           ; $77da: $fe $fe
	reti                                             ; $77dc: $d9


	db $10                                           ; $77dd: $10
	ld b, e                                          ; $77de: $43
	ldh [$03], a                                     ; $77df: $e0 $03
	ldh a, [$33]                                     ; $77e1: $f0 $33
	ldh a, [$6d]                                     ; $77e3: $f0 $6d
	inc bc                                           ; $77e5: $03
	ld a, e                                          ; $77e6: $7b
	ld hl, sp-$80                                    ; $77e7: $f8 $80
	xor $ef                                          ; $77e9: $ee $ef
	rst FarCall                                          ; $77eb: $f7
	rst FarCall                                          ; $77ec: $f7
	push af                                          ; $77ed: $f5
	db $fc                                           ; $77ee: $fc
	cp $bf                                           ; $77ef: $fe $bf
	cp d                                             ; $77f1: $ba
	cp e                                             ; $77f2: $bb
	sbc l                                            ; $77f3: $9d
	cp a                                             ; $77f4: $bf
	db $dd                                           ; $77f5: $dd
	adc h                                            ; $77f6: $8c
	add [hl]                                         ; $77f7: $86
	rlca                                             ; $77f8: $07
	add hl, bc                                       ; $77f9: $09
	ld bc, $fec7                                     ; $77fa: $01 $c7 $fe
	ei                                               ; $77fd: $fb
	cp $a4                                           ; $77fe: $fe $a4
	and l                                            ; $7800: $a5
	stop                                             ; $7801: $10 $00
	add c                                            ; $7803: $81
	ld h, [hl]                                       ; $7804: $66
	sbc e                                            ; $7805: $9b
	cp $00                                           ; $7806: $fe $00
	add c                                            ; $7808: $81
	and l                                            ; $7809: $a5
	rst $38                                          ; $780a: $ff
	call c, $d8b8                                    ; $780b: $dc $b8 $d8
	xor b                                            ; $780e: $a8
	ld c, b                                          ; $780f: $48
	add c                                            ; $7810: $81
	ld b, a                                          ; $7811: $47
	ld a, a                                          ; $7812: $7f
	rst SubAFromDE                                          ; $7813: $df
	cp a                                             ; $7814: $bf
	rst SubAFromDE                                          ; $7815: $df
	cp a                                             ; $7816: $bf
	ld a, a                                          ; $7817: $7f
	cp $b8                                           ; $7818: $fe $b8
	ld hl, sp+$04                                    ; $781a: $f8 $04
	ld [bc], a                                       ; $781c: $02
	add hl, de                                       ; $781d: $19
	dec e                                            ; $781e: $1d
	sbc $de                                          ; $781f: $de $de
	cp a                                             ; $7821: $bf
	ld hl, sp-$04                                    ; $7822: $f8 $fc
	cp $e7                                           ; $7824: $fe $e7
	db $e3                                           ; $7826: $e3
	ld a, e                                          ; $7827: $7b
	ld c, l                                          ; $7828: $4d
	ld a, c                                          ; $7829: $79
	adc c                                            ; $782a: $89
	sbc [hl]                                         ; $782b: $9e
	ld [bc], a                                       ; $782c: $02
	ld a, c                                          ; $782d: $79
	db $db                                           ; $782e: $db
	ld a, a                                          ; $782f: $7f
	ld hl, sp+$6d                                    ; $7830: $f8 $6d
	db $d3                                           ; $7832: $d3
	ccf                                              ; $7833: $3f
	ld b, b                                          ; $7834: $40
	ld b, a                                          ; $7835: $47
	ldh a, [$7c]                                     ; $7836: $f0 $7c
	ld sp, hl                                        ; $7838: $f9
	ld [hl], b                                       ; $7839: $70
	rst FarCall                                          ; $783a: $f7
	reti                                             ; $783b: $d9


	inc b                                            ; $783c: $04
	inc bc                                           ; $783d: $03
	ret nc                                           ; $783e: $d0

	ld a, a                                          ; $783f: $7f
	and d                                            ; $7840: $a2
	rst $38                                          ; $7841: $ff
	sbc [hl]                                         ; $7842: $9e
	ld [$c77a], sp                                   ; $7843: $08 $7a $c7
	rst SubAFromDE                                          ; $7846: $df
	inc b                                            ; $7847: $04
	rst SubAFromDE                                          ; $7848: $df
	ld [$10de], sp                                   ; $7849: $08 $de $10
	sub [hl]                                         ; $784c: $96
	dec h                                            ; $784d: $25
	ld de, $4343                                     ; $784e: $11 $43 $43
	inc hl                                           ; $7851: $23
	add e                                            ; $7852: $83
	add e                                            ; $7853: $83
	add a                                            ; $7854: $87
	db $10                                           ; $7855: $10
	ld l, d                                          ; $7856: $6a
	ret nc                                           ; $7857: $d0

	sbc $80                                          ; $7858: $de $80
	db $fc                                           ; $785a: $fc
	ld l, a                                          ; $785b: $6f
	push af                                          ; $785c: $f5
	ld l, e                                          ; $785d: $6b
	di                                               ; $785e: $f3
	xor $62                                          ; $785f: $ee $62
	ret nz                                           ; $7861: $c0

	db $ec                                           ; $7862: $ec
	sbc l                                            ; $7863: $9d
	rlca                                             ; $7864: $07
	inc c                                            ; $7865: $0c
	ld l, e                                          ; $7866: $6b
	ld hl, sp-$6a                                    ; $7867: $f8 $96
	dec bc                                           ; $7869: $0b
	nop                                              ; $786a: $00

jr_058_786b:
	nop                                              ; $786b: $00
	inc bc                                           ; $786c: $03
	dec b                                            ; $786d: $05
	dec bc                                           ; $786e: $0b
	inc c                                            ; $786f: $0c
	sbc h                                            ; $7870: $9c
	ld [hl], b                                       ; $7871: $70
	ld a, e                                          ; $7872: $7b
	ld hl, sp-$6a                                    ; $7873: $f8 $96
	ld b, $0c                                        ; $7875: $06 $0c
	dec bc                                           ; $7877: $0b
	sbc e                                            ; $7878: $9b
	rst $38                                          ; $7879: $ff
	nop                                              ; $787a: $00
	ld hl, sp+$66                                    ; $787b: $f8 $66
	add c                                            ; $787d: $81
	db $fc                                           ; $787e: $fc
	sbc h                                            ; $787f: $9c
	ld hl, sp-$62                                    ; $7880: $f8 $9e
	ld a, a                                          ; $7882: $7f
	db $dd                                           ; $7883: $dd
	rst $38                                          ; $7884: $ff
	ld a, a                                          ; $7885: $7f
	ld [hl], a                                       ; $7886: $77
	ld a, a                                          ; $7887: $7f
	halt                                             ; $7888: $76
	sbc e                                            ; $7889: $9b
	add h                                            ; $788a: $84
	ld b, h                                          ; $788b: $44
	ld [hl+], a                                      ; $788c: $22
	ld [de], a                                       ; $788d: $12
	ld [hl], e                                       ; $788e: $73
	ld hl, sp-$6c                                    ; $788f: $f8 $94
	call nz, $f3e2                                   ; $7891: $c4 $e2 $f3
	ld l, h                                          ; $7894: $6c
	ld l, h                                          ; $7895: $6c
	db $ec                                           ; $7896: $ec
	push af                                          ; $7897: $f5
	push af                                          ; $7898: $f5
	cp $ff                                           ; $7899: $fe $ff
	ld a, a                                          ; $789b: $7f
	sbc $14                                          ; $789c: $de $14
	sub h                                            ; $789e: $94
	inc c                                            ; $789f: $0c
	rrca                                             ; $78a0: $0f
	rlca                                             ; $78a1: $07
	inc b                                            ; $78a2: $04
	add h                                            ; $78a3: $84
	cp $1a                                           ; $78a4: $fe $1a
	jr z, jr_058_786b                                ; $78a6: $28 $c3

	rrca                                             ; $78a8: $0f
	ccf                                              ; $78a9: $3f
	sbc $ff                                          ; $78aa: $de $ff
	adc b                                            ; $78ac: $88
	dec e                                            ; $78ad: $1d
	ld [hl], a                                       ; $78ae: $77
	db $fc                                           ; $78af: $fc
	ldh a, [$c0]                                     ; $78b0: $f0 $c0
	nop                                              ; $78b2: $00
	nop                                              ; $78b3: $00
	sbc a                                            ; $78b4: $9f
	inc a                                            ; $78b5: $3c
	ld [hl], c                                       ; $78b6: $71
	rst $38                                          ; $78b7: $ff
	cp $f8                                           ; $78b8: $fe $f8
	ldh a, [$e0]                                     ; $78ba: $f0 $e0
	ld h, b                                          ; $78bc: $60
	jp $008e                                         ; $78bd: $c3 $8e $00


	ld bc, $0f07                                     ; $78c0: $01 $07 $0f
	rra                                              ; $78c3: $1f
	sbc $3f                                          ; $78c4: $de $3f
	sbc d                                            ; $78c6: $9a
	ld a, a                                          ; $78c7: $7f
	ld a, e                                          ; $78c8: $7b
	ld e, e                                          ; $78c9: $5b
	dec a                                            ; $78ca: $3d
	inc a                                            ; $78cb: $3c
	db $dd                                           ; $78cc: $dd
	ret nz                                           ; $78cd: $c0

	adc l                                            ; $78ce: $8d
	call nz, $e2e4                                   ; $78cf: $c4 $e4 $e2
	db $e3                                           ; $78d2: $e3
	and b                                            ; $78d3: $a0
	ret nc                                           ; $78d4: $d0

	ret z                                            ; $78d5: $c8

	sbc h                                            ; $78d6: $9c
	ldh [c], a                                       ; $78d7: $e2
	ld sp, hl                                        ; $78d8: $f9
	ld hl, sp-$02                                    ; $78d9: $f8 $fe
	jr nz, @+$12                                     ; $78db: $20 $10

	ld [$1e64], sp                                   ; $78dd: $08 $64 $1e
	rlca                                             ; $78e0: $07
	ld h, [hl]                                       ; $78e1: $66
	ld l, c                                          ; $78e2: $69
	ld l, d                                          ; $78e3: $6a
	or b                                             ; $78e4: $b0
	ld h, e                                          ; $78e5: $63
	ld hl, sp-$11                                    ; $78e6: $f8 $ef
	ld h, d                                          ; $78e8: $62
	ret nz                                           ; $78e9: $c0

	ldh [c], a                                       ; $78ea: $e2
	sbc d                                            ; $78eb: $9a
	ld bc, $13d1                                     ; $78ec: $01 $d1 $13
	ld [hl+], a                                      ; $78ef: $22
	ld h, $7b                                        ; $78f0: $26 $7b
	jp c, $108d                                      ; $78f2: $da $8d $10

	ldh [$e0], a                                     ; $78f5: $e0 $e0
	pop bc                                           ; $78f7: $c1
	pop bc                                           ; $78f8: $c1
	ei                                               ; $78f9: $fb
	rlca                                             ; $78fa: $07
	ld h, e                                          ; $78fb: $63
	add a                                            ; $78fc: $87
	add [hl]                                         ; $78fd: $86
	ld b, $0e                                        ; $78fe: $06 $0e
	ld c, $2c                                        ; $7900: $0e $2c
	ld bc, $4002                                     ; $7902: $01 $02 $40
	ld b, c                                          ; $7905: $41
	sbc $c1                                          ; $7906: $de $c1
	sbc d                                            ; $7908: $9a
	jp nz, $81fc                                     ; $7909: $c2 $fc $81

	nop                                              ; $790c: $00
	rst $38                                          ; $790d: $ff

jr_058_790e:
	ld l, e                                          ; $790e: $6b
	sub [hl]                                         ; $790f: $96
	jp c, $67ff                                      ; $7910: $da $ff $67

	ldh a, [$7f]                                     ; $7913: $f0 $7f
	ld hl, sp+$4f                                    ; $7915: $f8 $4f
	ldh a, [$9e]                                     ; $7917: $f0 $9e
	db $10                                           ; $7919: $10
	dec hl                                           ; $791a: $2b
	ldh [hDisp0_BGP], a                                     ; $791b: $e0 $85
	jr @-$1e                                         ; $791d: $18 $e0

	jr z, jr_058_7951                                ; $791f: $28 $30

	jr z, jr_058_7973                                ; $7921: $28 $50

	ld h, b                                          ; $7923: $60
	ld d, b                                          ; $7924: $50
	rla                                              ; $7925: $17
	rst $38                                          ; $7926: $ff
	rst FarCall                                          ; $7927: $f7
	rst AddAOntoHL                                          ; $7928: $ef
	rst FarCall                                          ; $7929: $f7
	rst AddAOntoHL                                          ; $792a: $ef
	rst SubAFromDE                                          ; $792b: $df
	rst AddAOntoHL                                          ; $792c: $ef
	jr c, jr_058_7963                                ; $792d: $38 $34

	jr z, jr_058_79a1                                ; $792f: $28 $70

	ld l, b                                          ; $7931: $68
	ld [hl], b                                       ; $7932: $70
	ld l, b                                          ; $7933: $68
	ld d, b                                          ; $7934: $50
	rst FarCall                                          ; $7935: $f7
	ei                                               ; $7936: $fb
	ld [hl], a                                       ; $7937: $77
	ldh a, [$7f]                                     ; $7938: $f0 $7f
	cp $76                                           ; $793a: $fe $76
	ccf                                              ; $793c: $3f
	db $dd                                           ; $793d: $dd
	ld [bc], a                                       ; $793e: $02
	reti                                             ; $793f: $d9


	rst $38                                          ; $7940: $ff
	sbc e                                            ; $7941: $9b
	add hl, bc                                       ; $7942: $09
	rlca                                             ; $7943: $07
	inc bc                                           ; $7944: $03
	inc bc                                           ; $7945: $03
	ld [hl], h                                       ; $7946: $74
	db $f4                                           ; $7947: $f4
	sbc h                                            ; $7948: $9c
	ld sp, hl                                        ; $7949: $f9
	rst $38                                          ; $794a: $ff
	cp $dc                                           ; $794b: $fe $dc
	rst $38                                          ; $794d: $ff

jr_058_794e:
	sub l                                            ; $794e: $95
	scf                                              ; $794f: $37
	add hl, bc                                       ; $7950: $09

jr_058_7951:
	add [hl]                                         ; $7951: $86
	add b                                            ; $7952: $80
	ld b, b                                          ; $7953: $40
	or b                                             ; $7954: $b0
	cp h                                             ; $7955: $bc
	db $db                                           ; $7956: $db
	adc $f9                                          ; $7957: $ce $f9
	db $dd                                           ; $7959: $dd
	rst $38                                          ; $795a: $ff
	add b                                            ; $795b: $80
	rst SubAFromDE                                          ; $795c: $df
	rst SubAFromBC                                          ; $795d: $e7
	rst $38                                          ; $795e: $ff
	rst $38                                          ; $795f: $ff
	ld a, [hl]                                       ; $7960: $7e
	jr c, jr_058_79a1                                ; $7961: $38 $3e

jr_058_7963:
	rra                                              ; $7963: $1f
	rrca                                             ; $7964: $0f
	rst JumpTable                                          ; $7965: $c7
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	add c                                            ; $7968: $81
	rst JumpTable                                          ; $7969: $c7
	pop bc                                           ; $796a: $c1
	ldh [$f0], a                                     ; $796b: $e0 $f0
	ld hl, sp-$80                                    ; $796d: $f8 $80
	nop                                              ; $796f: $00
	ld bc, $0703                                     ; $7970: $01 $03 $07

jr_058_7973:
	rst GetHLinHL                                          ; $7973: $cf
	rst $38                                          ; $7974: $ff
	rst $38                                          ; $7975: $ff
	ld a, a                                          ; $7976: $7f
	rst $38                                          ; $7977: $ff
	cp $fc                                           ; $7978: $fe $fc
	ld hl, sp+$7c                                    ; $797a: $f8 $7c
	jr z, jr_058_790e                                ; $797c: $28 $90

	nop                                              ; $797e: $00
	rst AddAOntoHL                                          ; $797f: $ef

Call_058_7980:
	rst AddAOntoHL                                          ; $7980: $ef
	rst FarCall                                          ; $7981: $f7
	db $fd                                           ; $7982: $fd
	ldh a, [c]                                       ; $7983: $f2
	pop hl                                           ; $7984: $e1
	and b                                            ; $7985: $a0
	ld b, b                                          ; $7986: $40
	jr nc, jr_058_79b9                               ; $7987: $30 $30

	jr jr_058_79a9                                   ; $7989: $18 $1e

	rra                                              ; $798b: $1f
	ccf                                              ; $798c: $3f
	ld a, d                                          ; $798d: $7a
	ld l, l                                          ; $798e: $6d
	rst SubAFromDE                                          ; $798f: $df
	ld a, a                                          ; $7990: $7f
	sbc d                                            ; $7991: $9a
	ccf                                              ; $7992: $3f
	rra                                              ; $7993: $1f
	rrca                                             ; $7994: $0f
	adc [hl]                                         ; $7995: $8e
	sbc l                                            ; $7996: $9d
	ld a, c                                          ; $7997: $79
	add h                                            ; $7998: $84
	adc [hl]                                         ; $7999: $8e
	ret nz                                           ; $799a: $c0

	ldh [$f0], a                                     ; $799b: $e0 $f0
	pop af                                           ; $799d: $f1
	ldh [c], a                                       ; $799e: $e2
	and b                                            ; $799f: $a0
	rst $38                                          ; $79a0: $ff

jr_058_79a1:
	ld hl, sp-$04                                    ; $79a1: $f8 $fc
	ld a, [$fefe]                                    ; $79a3: $fa $fe $fe
	rst $38                                          ; $79a6: $ff
	jr nz, jr_058_79c8                               ; $79a7: $20 $1f

jr_058_79a9:
	rrca                                             ; $79a9: $0f
	rlca                                             ; $79aa: $07
	ld [hl], a                                       ; $79ab: $77
	sub l                                            ; $79ac: $95
	daa                                              ; $79ad: $27
	jr nc, jr_058_794e                               ; $79ae: $30 $9e

	inc b                                            ; $79b0: $04
	dec bc                                           ; $79b1: $0b
	db $10                                           ; $79b2: $10
	ld h, e                                          ; $79b3: $63
	ldh a, [$7d]                                     ; $79b4: $f0 $7d
	sbc d                                            ; $79b6: $9a
	sub l                                            ; $79b7: $95
	add a                                            ; $79b8: $87

jr_058_79b9:
	dec b                                            ; $79b9: $05
	rrca                                             ; $79ba: $0f
	ld a, $3e                                        ; $79bb: $3e $3e
	jp $3797                                         ; $79bd: $c3 $97 $37


	ld a, a                                          ; $79c0: $7f
	ldh a, [$7a]                                     ; $79c1: $f0 $7a
	cp l                                             ; $79c3: $bd
	sub [hl]                                         ; $79c4: $96
	ld b, $40                                        ; $79c5: $06 $40
	ld b, h                                          ; $79c7: $44

jr_058_79c8:
	ld b, l                                          ; $79c8: $45
	ld c, c                                          ; $79c9: $49
	ld b, l                                          ; $79ca: $45
	add d                                            ; $79cb: $82
	add b                                            ; $79cc: $80
	add c                                            ; $79cd: $81
	sbc $83                                          ; $79ce: $de $83
	sbc l                                            ; $79d0: $9d
	add [hl]                                         ; $79d1: $86
	add d                                            ; $79d2: $82
	ld [hl], d                                       ; $79d3: $72
	ld d, b                                          ; $79d4: $50
	sbc d                                            ; $79d5: $9a
	rst $38                                          ; $79d6: $ff
	xor d                                            ; $79d7: $aa
	db $f4                                           ; $79d8: $f4
	ld a, [hl+]                                      ; $79d9: $2a
	ld e, l                                          ; $79da: $5d
	db $dd                                           ; $79db: $dd
	rst $38                                          ; $79dc: $ff
	sbc e                                            ; $79dd: $9b
	ld d, l                                          ; $79de: $55
	dec bc                                           ; $79df: $0b
	push de                                          ; $79e0: $d5
	ld [hl+], a                                      ; $79e1: $22
	ld [hl], e                                       ; $79e2: $73
	ldh a, [rIE]                                     ; $79e3: $f0 $ff
	sbc [hl]                                         ; $79e5: $9e
	ld d, l                                          ; $79e6: $55
	ld [hl], e                                       ; $79e7: $73
	ldh a, [$df]                                     ; $79e8: $f0 $df
	rst $38                                          ; $79ea: $ff
	ld [hl], l                                       ; $79eb: $75
	inc [hl]                                         ; $79ec: $34
	ld a, a                                          ; $79ed: $7f
	ei                                               ; $79ee: $fb
	sbc h                                            ; $79ef: $9c
	rla                                              ; $79f0: $17
	ld a, [hl+]                                      ; $79f1: $2a
	ld e, a                                          ; $79f2: $5f
	ld [hl], e                                       ; $79f3: $73
	ldh a, [$9c]                                     ; $79f4: $f0 $9c
	add sp, -$2b                                     ; $79f6: $e8 $d5
	and b                                            ; $79f8: $a0
	ld e, a                                          ; $79f9: $5f
	and [hl]                                         ; $79fa: $a6
	ld a, e                                          ; $79fb: $7b
	and h                                            ; $79fc: $a4
	cp $7e                                           ; $79fd: $fe $7e
	add $94                                          ; $79ff: $c6 $94
	ld b, b                                          ; $7a01: $40
	ret nc                                           ; $7a02: $d0

Jump_058_7a03:
	ret nz                                           ; $7a03: $c0

	ret nz                                           ; $7a04: $c0

	add b                                            ; $7a05: $80
	add b                                            ; $7a06: $80
	rst SubAFromDE                                          ; $7a07: $df
	rst AddAOntoHL                                          ; $7a08: $ef
	rst $38                                          ; $7a09: $ff
	rst AddAOntoHL                                          ; $7a0a: $ef
	ld a, a                                          ; $7a0b: $7f
	ld a, e                                          ; $7a0c: $7b
	ld sp, $409d                                     ; $7a0d: $31 $9d $40
	ld d, b                                          ; $7a10: $50
	ld l, l                                          ; $7a11: $6d
	ld a, [hl+]                                      ; $7a12: $2a
	ld a, a                                          ; $7a13: $7f
	ldh a, [c]                                       ; $7a14: $f2
	db $db                                           ; $7a15: $db
	rst $38                                          ; $7a16: $ff
	ld a, l                                          ; $7a17: $7d
	sbc d                                            ; $7a18: $9a
	ld a, l                                          ; $7a19: $7d
	ld a, c                                          ; $7a1a: $79
	sbc e                                            ; $7a1b: $9b
	ld a, [bc]                                       ; $7a1c: $0a
	inc e                                            ; $7a1d: $1c
	ld a, [de]                                       ; $7a1e: $1a
	inc a                                            ; $7a1f: $3c
	ld d, a                                          ; $7a20: $57
	call z, Call_058_615b                            ; $7a21: $cc $5b $61
	ld a, a                                          ; $7a24: $7f
	ld bc, $027f                                     ; $7a25: $01 $7f $02
	sub d                                            ; $7a28: $92
	cpl                                              ; $7a29: $2f
	rra                                              ; $7a2a: $1f
	cpl                                              ; $7a2b: $2f
	rla                                              ; $7a2c: $17
	rrca                                             ; $7a2d: $0f
	ldh [$f0], a                                     ; $7a2e: $e0 $f0
	db $fc                                           ; $7a30: $fc
	rst $38                                          ; $7a31: $ff
	rst $38                                          ; $7a32: $ff
	db $fd                                           ; $7a33: $fd
	db $fd                                           ; $7a34: $fd
	db $fc                                           ; $7a35: $fc
	ld a, c                                          ; $7a36: $79
	add l                                            ; $7a37: $85
	sbc d                                            ; $7a38: $9a
	db $fd                                           ; $7a39: $fd
	cp e                                             ; $7a3a: $bb
	ld [hl], a                                       ; $7a3b: $77
	db $ed                                           ; $7a3c: $ed
	rst SubAFromDE                                          ; $7a3d: $df
	ld a, c                                          ; $7a3e: $79
	add l                                            ; $7a3f: $85
	adc b                                            ; $7a40: $88
	cp $c7                                           ; $7a41: $fe $c7
	ld hl, sp-$62                                    ; $7a43: $f8 $9e
	db $e3                                           ; $7a45: $e3
	cp $fc                                           ; $7a46: $fe $fc
	pop af                                           ; $7a48: $f1
	jp $b3cd                                         ; $7a49: $c3 $cd $b3


	rst AddAOntoHL                                          ; $7a4c: $ef
	di                                               ; $7a4d: $f3
	ld bc, $0f03                                     ; $7a4e: $01 $03 $0f
	dec a                                            ; $7a51: $3d
	di                                               ; $7a52: $f3
	ld a, [hl]                                       ; $7a53: $7e
	inc e                                            ; $7a54: $1c
	ld c, $40                                        ; $7a55: $0e $40
	add b                                            ; $7a57: $80
	ld [hl], e                                       ; $7a58: $73
	push bc                                          ; $7a59: $c5
	sbc [hl]                                         ; $7a5a: $9e
	ld hl, sp+$67                                    ; $7a5b: $f8 $67
	or h                                             ; $7a5d: $b4
	sbc e                                            ; $7a5e: $9b
	ld d, a                                          ; $7a5f: $57
	ccf                                              ; $7a60: $3f
	rra                                              ; $7a61: $1f
	rst FarCall                                          ; $7a62: $f7
	ld [hl], l                                       ; $7a63: $75
	ld d, d                                          ; $7a64: $52
	sbc e                                            ; $7a65: $9b
	db $ec                                           ; $7a66: $ec
	ld hl, sp-$10                                    ; $7a67: $f8 $f0
	ld hl, sp-$22                                    ; $7a69: $f8 $de
	ld [$1b94], sp                                   ; $7a6b: $08 $94 $1b
	db $fd                                           ; $7a6e: $fd
	db $fd                                           ; $7a6f: $fd
	ld sp, hl                                        ; $7a70: $f9
	ld sp, hl                                        ; $7a71: $f9
	db $fd                                           ; $7a72: $fd
	sbc a                                            ; $7a73: $9f
	ccf                                              ; $7a74: $3f
	rst $38                                          ; $7a75: $ff
	inc bc                                           ; $7a76: $03
	inc bc                                           ; $7a77: $03
	ld a, d                                          ; $7a78: $7a
	pop bc                                           ; $7a79: $c1
	sbc h                                            ; $7a7a: $9c
	ld h, d                                          ; $7a7b: $62
	jp nz, Jump_058_4782                             ; $7a7c: $c2 $82 $47

	ld d, b                                          ; $7a7f: $50
	ld l, e                                          ; $7a80: $6b
	ldh a, [$72]                                     ; $7a81: $f0 $72
	ld b, e                                          ; $7a83: $43
	ld [hl], l                                       ; $7a84: $75
	and c                                            ; $7a85: $a1
	ld [hl], e                                       ; $7a86: $73
	ldh a, [$9c]                                     ; $7a87: $f0 $9c
	ld a, [$aad5]                                    ; $7a89: $fa $d5 $aa
	ld [hl], e                                       ; $7a8c: $73
	ldh a, [$9c]                                     ; $7a8d: $f0 $9c
	dec b                                            ; $7a8f: $05
	ld a, [hl+]                                      ; $7a90: $2a
	ld d, l                                          ; $7a91: $55
	ld [hl], e                                       ; $7a92: $73
	ldh a, [$9d]                                     ; $7a93: $f0 $9d
	xor d                                            ; $7a95: $aa
	ld b, b                                          ; $7a96: $40
	ld l, a                                          ; $7a97: $6f
	ldh a, [$98]                                     ; $7a98: $f0 $98
	ld d, l                                          ; $7a9a: $55
	cp a                                             ; $7a9b: $bf
	ld d, l                                          ; $7a9c: $55
	ld a, [hl]                                       ; $7a9d: $7e
	rst $38                                          ; $7a9e: $ff

jr_058_7a9f:
	cp $01                                           ; $7a9f: $fe $01
	ld [hl], h                                       ; $7aa1: $74
	dec a                                            ; $7aa2: $3d
	ld a, l                                          ; $7aa3: $7d
	sub a                                            ; $7aa4: $97
	ld a, a                                          ; $7aa5: $7f
	ld sp, hl                                        ; $7aa6: $f9
	ld [hl], a                                       ; $7aa7: $77
	db $d3                                           ; $7aa8: $d3
	sbc [hl]                                         ; $7aa9: $9e
	ld a, h                                          ; $7aaa: $7c
	db $fc                                           ; $7aab: $fc
	sbc d                                            ; $7aac: $9a
	inc bc                                           ; $7aad: $03
	ld a, h                                          ; $7aae: $7c
	add b                                            ; $7aaf: $80
	rst $38                                          ; $7ab0: $ff
	rst SubAFromDE                                          ; $7ab1: $df
	ld [hl], d                                       ; $7ab2: $72
	sub l                                            ; $7ab3: $95
	sub e                                            ; $7ab4: $93
	ld a, [de]                                       ; $7ab5: $1a
	dec d                                            ; $7ab6: $15
	ld l, d                                          ; $7ab7: $6a
	nop                                              ; $7ab8: $00
	add b                                            ; $7ab9: $80
	rra                                              ; $7aba: $1f
	ldh [$03], a                                     ; $7abb: $e0 $03
	jr nz, jr_058_7a9f                               ; $7abd: $20 $e0

	db $10                                           ; $7abf: $10
	ldh [$fd], a                                     ; $7ac0: $e0 $fd
	sub a                                            ; $7ac2: $97
	xor d                                            ; $7ac3: $aa
	ld d, a                                          ; $7ac4: $57
	xor d                                            ; $7ac5: $aa
	nop                                              ; $7ac6: $00
	pop hl                                           ; $7ac7: $e1
	ld c, $70                                        ; $7ac8: $0e $70
	add b                                            ; $7aca: $80
	ld [hl], a                                       ; $7acb: $77
	or a                                             ; $7acc: $b7
	db $fd                                           ; $7acd: $fd
	sub [hl]                                         ; $7ace: $96
	xor e                                            ; $7acf: $ab
	rst $38                                          ; $7ad0: $ff
	xor e                                            ; $7ad1: $ab
	rla                                              ; $7ad2: $17
	ld h, b                                          ; $7ad3: $60
	ld bc, $0007                                     ; $7ad4: $01 $07 $00
	ld d, h                                          ; $7ad7: $54
	ld e, e                                          ; $7ad8: $5b
	add e                                            ; $7ad9: $83
	sbc e                                            ; $7ada: $9b
	ld a, [hl]                                       ; $7adb: $7e
	pop hl                                           ; $7adc: $e1
	ld bc, $6d19                                     ; $7add: $01 $19 $6d
	inc hl                                           ; $7ae0: $23
	rst SubAFromDE                                          ; $7ae1: $df
	ld bc, $80dd                                     ; $7ae2: $01 $dd $80
	sbc [hl]                                         ; $7ae5: $9e
	add c                                            ; $7ae6: $81
	sbc $01                                          ; $7ae7: $de $01
	reti                                             ; $7ae9: $d9


	rst $38                                          ; $7aea: $ff
	db $dd                                           ; $7aeb: $dd
	add b                                            ; $7aec: $80
	ld [hl], a                                       ; $7aed: $77
	add sp, -$27                                     ; $7aee: $e8 $d9
	rst $38                                          ; $7af0: $ff
	sub a                                            ; $7af1: $97
	ld a, [hl+]                                      ; $7af2: $2a
	ld e, h                                          ; $7af3: $5c
	ld l, [hl]                                       ; $7af4: $6e
	call c, Call_058_54ae                            ; $7af5: $dc $ae $54
	xor [hl]                                         ; $7af8: $ae
	ld d, [hl]                                       ; $7af9: $56
	ld h, $c0                                        ; $7afa: $26 $c0
	call c, $de0f                                    ; $7afc: $dc $0f $de

Call_058_7aff:
	rlca                                             ; $7aff: $07
	sbc h                                            ; $7b00: $9c
	ld a, [$fbf9]                                    ; $7b01: $fa $f9 $fb
	ld a, c                                          ; $7b04: $79
	ret                                              ; $7b05: $c9


	ld a, a                                          ; $7b06: $7f
	add hl, hl                                       ; $7b07: $29
	add d                                            ; $7b08: $82
	ld b, [hl]                                       ; $7b09: $46
	ccf                                              ; $7b0a: $3f
	sbc a                                            ; $7b0b: $9f
	ld l, h                                          ; $7b0c: $6c
	sbc [hl]                                         ; $7b0d: $9e
	add e                                            ; $7b0e: $83
	ccf                                              ; $7b0f: $3f
	call $e0f9                                       ; $7b10: $cd $f9 $e0
	ldh a, [$fb]                                     ; $7b13: $f0 $fb
	ld a, l                                          ; $7b15: $7d
	ld a, [hl]                                       ; $7b16: $7e
	rst $38                                          ; $7b17: $ff
	ei                                               ; $7b18: $fb
	db $e3                                           ; $7b19: $e3
	or d                                             ; $7b1a: $b2
	db $e3                                           ; $7b1b: $e3
	or $06                                           ; $7b1c: $f6 $06
	ld [bc], a                                       ; $7b1e: $02
	ld sp, hl                                        ; $7b1f: $f9
	add hl, bc                                       ; $7b20: $09
	sbc $7e                                          ; $7b21: $de $7e
	ld e, $0e                                        ; $7b23: $1e $0e
	db $fc                                           ; $7b25: $fc
	ld a, e                                          ; $7b26: $7b
	ld a, [bc]                                       ; $7b27: $0a
	ld a, [hl]                                       ; $7b28: $7e
	sbc d                                            ; $7b29: $9a
	sbc l                                            ; $7b2a: $9d
	adc a                                            ; $7b2b: $8f
	halt                                             ; $7b2c: $76
	ld h, h                                          ; $7b2d: $64
	ld e, d                                          ; $7b2e: $5a
	db $fd                                           ; $7b2f: $fd
	add b                                            ; $7b30: $80
	rra                                              ; $7b31: $1f
	ret nc                                           ; $7b32: $d0

	sbc l                                            ; $7b33: $9d
	rra                                              ; $7b34: $1f
	sub a                                            ; $7b35: $97
	inc e                                            ; $7b36: $1c
	rra                                              ; $7b37: $1f
	rra                                              ; $7b38: $1f
	ld d, $10                                        ; $7b39: $16 $10
	db $10                                           ; $7b3b: $10
	jr jr_058_7b5c                                   ; $7b3c: $18 $1e

	db $10                                           ; $7b3e: $10

jr_058_7b3f:
	ld [$ba0f], sp                                   ; $7b3f: $08 $0f $ba
	ld a, h                                          ; $7b42: $7c
	db $fc                                           ; $7b43: $fc
	db $f4                                           ; $7b44: $f4
	jr c, jr_058_7b3f                                ; $7b45: $38 $f8

	ld hl, sp+$68                                    ; $7b47: $f8 $68
	ld b, $04                                        ; $7b49: $06 $04
	inc b                                            ; $7b4b: $04
	inc c                                            ; $7b4c: $0c
	ld [$c808], sp                                   ; $7b4d: $08 $08 $c8
	sbc [hl]                                         ; $7b50: $9e
	sbc b                                            ; $7b51: $98
	ld h, e                                          ; $7b52: $63
	adc a                                            ; $7b53: $8f
	ld a, [$3f9d]                                    ; $7b54: $fa $9d $3f
	rlca                                             ; $7b57: $07
	di                                               ; $7b58: $f3
	rst SubAFromDE                                          ; $7b59: $df
	rst $38                                          ; $7b5a: $ff
	ld a, a                                          ; $7b5b: $7f

jr_058_7b5c:
	xor $9e                                          ; $7b5c: $ee $9e
	rrca                                             ; $7b5e: $0f
	ld d, e                                          ; $7b5f: $53
	ldh a, [$de]                                     ; $7b60: $f0 $de
	rst $38                                          ; $7b62: $ff
	sbc [hl]                                         ; $7b63: $9e
	ccf                                              ; $7b64: $3f
	ld e, a                                          ; $7b65: $5f
	sbc [hl]                                         ; $7b66: $9e
	sbc l                                            ; $7b67: $9d
	rrca                                             ; $7b68: $0f
	ldh a, [rPCM12]                                  ; $7b69: $f0 $76
	pop de                                           ; $7b6b: $d1
	sbc l                                            ; $7b6c: $9d
	inc e                                            ; $7b6d: $1c
	ld h, b                                          ; $7b6e: $60
	ld sp, hl                                        ; $7b6f: $f9
	ld a, a                                          ; $7b70: $7f
	inc hl                                           ; $7b71: $23
	sbc e                                            ; $7b72: $9b
	inc bc                                           ; $7b73: $03
	inc c                                            ; $7b74: $0c
	ld [hl], b                                       ; $7b75: $70
	add b                                            ; $7b76: $80
	rst FarCall                                          ; $7b77: $f7
	ld [hl], a                                       ; $7b78: $77
	di                                               ; $7b79: $f3
	sbc e                                            ; $7b7a: $9b
	inc bc                                           ; $7b7b: $03
	dec b                                            ; $7b7c: $05
	ld a, [de]                                       ; $7b7d: $1a
	inc h                                            ; $7b7e: $24
	rst FarCall                                          ; $7b7f: $f7
	sbc l                                            ; $7b80: $9d
	ld h, b                                          ; $7b81: $60
	pop bc                                           ; $7b82: $c1
	ld e, e                                          ; $7b83: $5b
	pop hl                                           ; $7b84: $e1
	ld a, e                                          ; $7b85: $7b
	cp a                                             ; $7b86: $bf
	sbc c                                            ; $7b87: $99
	ld [hl], e                                       ; $7b88: $73
	sub b                                            ; $7b89: $90
	rst GetHLinHL                                          ; $7b8a: $cf
	ccf                                              ; $7b8b: $3f
	jp hl                                            ; $7b8c: $e9


	ld b, $f9                                        ; $7b8d: $06 $f9
	sbc h                                            ; $7b8f: $9c
	ld [hl], e                                       ; $7b90: $73
	adc a                                            ; $7b91: $8f
	ld a, h                                          ; $7b92: $7c
	db $dd                                           ; $7b93: $dd
	db $fc                                           ; $7b94: $fc
	sbc h                                            ; $7b95: $9c
	ld a, c                                          ; $7b96: $79
	inc bc                                           ; $7b97: $03
	ld [bc], a                                       ; $7b98: $02
	db $dd                                           ; $7b99: $dd
	inc b                                            ; $7b9a: $04
	add l                                            ; $7b9b: $85
	dec bc                                           ; $7b9c: $0b
	ld [$c583], sp                                   ; $7b9d: $08 $83 $c5
	inc h                                            ; $7ba0: $24
	inc [hl]                                         ; $7ba1: $34
	inc a                                            ; $7ba2: $3c
	sbc l                                            ; $7ba3: $9d
	ld b, $5f                                        ; $7ba4: $06 $5f
	rst $38                                          ; $7ba6: $ff
	ld a, h                                          ; $7ba7: $7c
	inc a                                            ; $7ba8: $3c
	inc e                                            ; $7ba9: $1c
	db $fc                                           ; $7baa: $fc
	dec c                                            ; $7bab: $0d
	rlca                                             ; $7bac: $07
	ld b, $02                                        ; $7bad: $06 $02
	add e                                            ; $7baf: $83
	jp $d7e7                                         ; $7bb0: $c3 $e7 $d7


	adc h                                            ; $7bb3: $8c
	inc b                                            ; $7bb4: $04
	inc d                                            ; $7bb5: $14
	ld [hl], h                                       ; $7bb6: $74
	and a                                            ; $7bb7: $a7
	sub e                                            ; $7bb8: $93
	sbc a                                            ; $7bb9: $9f
	inc c                                            ; $7bba: $0c
	inc b                                            ; $7bbb: $04
	inc c                                            ; $7bbc: $0c
	xor [hl]                                         ; $7bbd: $ae
	ld d, a                                          ; $7bbe: $57

jr_058_7bbf:
	xor e                                            ; $7bbf: $ab
	ld d, l                                          ; $7bc0: $55
	xor e                                            ; $7bc1: $ab
	push de                                          ; $7bc2: $d5
	ld l, d                                          ; $7bc3: $6a
	dec [hl]                                         ; $7bc4: $35
	ld h, l                                          ; $7bc5: $65
	sub d                                            ; $7bc6: $92

Jump_058_7bc7:
	ld [hl], a                                       ; $7bc7: $77
	ld a, l                                          ; $7bc8: $7d
	sbc e                                            ; $7bc9: $9b
	ret nz                                           ; $7bca: $c0

	and b                                            ; $7bcb: $a0
	push de                                          ; $7bcc: $d5
	ld l, d                                          ; $7bcd: $6a
	reti                                             ; $7bce: $d9


	rst $38                                          ; $7bcf: $ff
	ld a, a                                          ; $7bd0: $7f
	ld b, e                                          ; $7bd1: $43
	sbc c                                            ; $7bd2: $99
	rlca                                             ; $7bd3: $07
	dec bc                                           ; $7bd4: $0b
	rla                                              ; $7bd5: $17
	dec hl                                           ; $7bd6: $2b
	ld d, l                                          ; $7bd7: $55
	xor e                                            ; $7bd8: $ab
	sbc $fc                                          ; $7bd9: $de $fc
	ld a, d                                          ; $7bdb: $7a
	jp nz, $ffdf                                     ; $7bdc: $c2 $df $ff

	add [hl]                                         ; $7bdf: $86
	reti                                             ; $7be0: $d9


	ld a, [hl+]                                      ; $7be1: $2a
	ld d, d                                          ; $7be2: $52
	and [hl]                                         ; $7be3: $a6
	ld [$d4da], a                                    ; $7be4: $ea $da $d4
	db $f4                                           ; $7be7: $f4
	scf                                              ; $7be8: $37
	rst FarCall                                          ; $7be9: $f7

Call_058_7bea:
	rst AddAOntoHL                                          ; $7bea: $ef
	rst SubAFromDE                                          ; $7beb: $df
	sbc a                                            ; $7bec: $9f
	cp a                                             ; $7bed: $bf
	ccf                                              ; $7bee: $3f
	ccf                                              ; $7bef: $3f
	jp nc, $a2bc                                     ; $7bf0: $d2 $bc $a2

	cp [hl]                                          ; $7bf3: $be
	and c                                            ; $7bf4: $a1
	or c                                             ; $7bf5: $b1
	ld e, [hl]                                       ; $7bf6: $5e
	ld d, c                                          ; $7bf7: $51
	cp $73                                           ; $7bf8: $fe $73
	pop hl                                           ; $7bfa: $e1
	ld a, a                                          ; $7bfb: $7f
	db $fd                                           ; $7bfc: $fd
	db $fd                                           ; $7bfd: $fd
	sbc e                                            ; $7bfe: $9b
	rlca                                             ; $7bff: $07
	ld [$1a17], sp                                   ; $7c00: $08 $17 $1a
	ld [hl], e                                       ; $7c03: $73
	ld hl, sp-$80                                    ; $7c04: $f8 $80
	rrca                                             ; $7c06: $0f
	rra                                              ; $7c07: $1f
	rra                                              ; $7c08: $1f
	db $10                                           ; $7c09: $10
	ld e, $11                                        ; $7c0a: $1e $11
	xor $01                                          ; $7c0c: $ee $01
	add b                                            ; $7c0e: $80
	nop                                              ; $7c0f: $00
	ldh [rAUD1SWEEP], a                              ; $7c10: $e0 $10
	ld e, $1f                                        ; $7c12: $1e $1f
	rst $38                                          ; $7c14: $ff
	rst GetHLinHL                                          ; $7c15: $cf
	di                                               ; $7c16: $f3
	di                                               ; $7c17: $f3
	rst $38                                          ; $7c18: $ff
	ldh a, [rSVBK]                                   ; $7c19: $f0 $70
	or b                                             ; $7c1b: $b0
	ld [hl], b                                       ; $7c1c: $70
	jr nz, jr_058_7bbf                               ; $7c1d: $20 $a0

	cp [hl]                                          ; $7c1f: $be
	rst $38                                          ; $7c20: $ff
	db $10                                           ; $7c21: $10
	db $10                                           ; $7c22: $10
	sub b                                            ; $7c23: $90
	ldh a, [$de]                                     ; $7c24: $f0 $de
	ldh [$79], a                                     ; $7c26: $e0 $79
	add hl, sp                                       ; $7c28: $39
	db $fc                                           ; $7c29: $fc
	halt                                             ; $7c2a: $76
	ld a, [$4ae7]                                    ; $7c2b: $fa $e7 $4a
	xor h                                            ; $7c2e: $ac
	ld a, [hl]                                       ; $7c2f: $7e
	cp e                                             ; $7c30: $bb
	ld e, [hl]                                       ; $7c31: $5e
	sbc d                                            ; $7c32: $9a
	ld l, e                                          ; $7c33: $6b
	cp a                                             ; $7c34: $bf
	sbc [hl]                                         ; $7c35: $9e
	inc bc                                           ; $7c36: $03
	ld hl, sp+$7d                                    ; $7c37: $f8 $7d

Jump_058_7c39:
	ld a, c                                          ; $7c39: $79
	sbc e                                            ; $7c3a: $9b
	inc c                                            ; $7c3b: $0c
	db $10                                           ; $7c3c: $10
	ld h, c                                          ; $7c3d: $61
	add d                                            ; $7c3e: $82
	ld [hl], l                                       ; $7c3f: $75
	ld l, l                                          ; $7c40: $6d
	db $fc                                           ; $7c41: $fc
	sbc h                                            ; $7c42: $9c
	ld c, b                                          ; $7c43: $48
	sub b                                            ; $7c44: $90
	jr nz, @+$7a                                     ; $7c45: $20 $78

	db $ed                                           ; $7c47: $ed
	rst SubAFromBC                                          ; $7c48: $e7
	sbc l                                            ; $7c49: $9d
	add hl, de                                       ; $7c4a: $19
	rlca                                             ; $7c4b: $07
	halt                                             ; $7c4c: $76
	ld [hl], h                                       ; $7c4d: $74
	sbc [hl]                                         ; $7c4e: $9e
	inc bc                                           ; $7c4f: $03
	ld l, d                                          ; $7c50: $6a
	ret nz                                           ; $7c51: $c0

	adc c                                            ; $7c52: $89
	inc bc                                           ; $7c53: $03
	inc b                                            ; $7c54: $04
	cp $d0                                           ; $7c55: $fe $d0
	sbc h                                            ; $7c57: $9c
	ld [hl], $79                                     ; $7c58: $36 $79
	sub $a0                                          ; $7c5a: $d6 $a0
	ld b, h                                          ; $7c5c: $44
	ld de, $1210                                     ; $7c5d: $11 $10 $12
	jr nz, @+$46                                     ; $7c60: $20 $44

	xor b                                            ; $7c62: $a8
	ld d, b                                          ; $7c63: $50
	nop                                              ; $7c64: $00
	inc e                                            ; $7c65: $1c
	ld a, $38                                        ; $7c66: $3e $38
	ld a, h                                          ; $7c68: $7c
	db $dd                                           ; $7c69: $dd
	ld a, b                                          ; $7c6a: $78
	ld a, [hl]                                       ; $7c6b: $7e
	db $10                                           ; $7c6c: $10
	ld a, d                                          ; $7c6d: $7a
	ld de, $08de                                     ; $7c6e: $11 $de $08
	sub l                                            ; $7c71: $95
	jr c, jr_058_7cdc                                ; $7c72: $38 $68

	ld [hl], b                                       ; $7c74: $70
	ldh a, [$f0]                                     ; $7c75: $f0 $f0
	add sp, -$08                                     ; $7c77: $e8 $f8
	ld hl, sp+$08                                    ; $7c79: $f8 $08
	jr @-$20                                         ; $7c7b: $18 $de

	db $10                                           ; $7c7d: $10
	sbc e                                            ; $7c7e: $9b
	jr jr_058_7c89                                   ; $7c7f: $18 $08

	ld [$731e], sp                                   ; $7c81: $08 $1e $73
	ret nz                                           ; $7c84: $c0

	ld a, c                                          ; $7c85: $79
	ret c                                            ; $7c86: $d8

	ld a, [hl]                                       ; $7c87: $7e
	reti                                             ; $7c88: $d9


jr_058_7c89:
	sub a                                            ; $7c89: $97
	dec d                                            ; $7c8a: $15
	ld a, [bc]                                       ; $7c8b: $0a
	dec d                                            ; $7c8c: $15
	ld a, [bc]                                       ; $7c8d: $0a
	dec b                                            ; $7c8e: $05
	push af                                          ; $7c8f: $f5
	cp $ff                                           ; $7c90: $fe $ff
	ld [hl], e                                       ; $7c92: $73
	rst AddAOntoHL                                          ; $7c93: $ef
	db $dd                                           ; $7c94: $dd
	rst $38                                          ; $7c95: $ff
	sbc b                                            ; $7c96: $98
	xor a                                            ; $7c97: $af
	rst $38                                          ; $7c98: $ff
	xor d                                            ; $7c99: $aa
	ld d, l                                          ; $7c9a: $55
	ld d, l                                          ; $7c9b: $55
	xor e                                            ; $7c9c: $ab
	rst $38                                          ; $7c9d: $ff
	ld [hl], e                                       ; $7c9e: $73
	rst AddAOntoHL                                          ; $7c9f: $ef
	db $db                                           ; $7ca0: $db
	rst $38                                          ; $7ca1: $ff
	sub h                                            ; $7ca2: $94
	xor a                                            ; $7ca3: $af
	ld a, a                                          ; $7ca4: $7f
	call nc, $1494                                   ; $7ca5: $d4 $94 $14
	inc d                                            ; $7ca8: $14
	sbc a                                            ; $7ca9: $9f
	push de                                          ; $7caa: $d5
	sbc $fd                                          ; $7cab: $de $fd
	ld a, a                                          ; $7cad: $7f
	jp c, $97ff                                      ; $7cae: $da $ff $97

	ld d, c                                          ; $7cb1: $51
	ld e, c                                          ; $7cb2: $59
	ld d, a                                          ; $7cb3: $57
	ld d, c                                          ; $7cb4: $51
	ret nc                                           ; $7cb5: $d0

	ld c, b                                          ; $7cb6: $48
	ret                                              ; $7cb7: $c9


	ld e, a                                          ; $7cb8: $5f
	jp c, $9aff                                      ; $7cb9: $da $ff $9a

	cp $f5                                           ; $7cbc: $fe $f5
	ld a, [rIE]                                    ; $7cbe: $fa $ff $ff
	ld a, d                                          ; $7cc1: $7a
	jp hl                                            ; $7cc2: $e9


	ld a, h                                          ; $7cc3: $7c
	call $887e                                       ; $7cc4: $cd $7e $88
	ld a, [hl]                                       ; $7cc7: $7e
	ld [hl], a                                       ; $7cc8: $77
	ld a, e                                          ; $7cc9: $7b
	ld b, a                                          ; $7cca: $47
	sbc h                                            ; $7ccb: $9c
	rlca                                             ; $7ccc: $07
	ccf                                              ; $7ccd: $3f
	rst $38                                          ; $7cce: $ff
	ld [hl], d                                       ; $7ccf: $72
	db $e4                                           ; $7cd0: $e4
	ld a, h                                          ; $7cd1: $7c
	ld l, $6f                                        ; $7cd2: $2e $6f
	ld d, $7b                                        ; $7cd4: $16 $7b
	ldh [c], a                                       ; $7cd6: $e2
	db $f4                                           ; $7cd7: $f4
	sbc [hl]                                         ; $7cd8: $9e
	cp $e0                                           ; $7cd9: $fe $e0
	pop de                                           ; $7cdb: $d1

jr_058_7cdc:
	ld e, [hl]                                       ; $7cdc: $5e
	sub $fc                                          ; $7cdd: $d6 $fc
	ld d, e                                          ; $7cdf: $53
	nop                                              ; $7ce0: $00
	sbc e                                            ; $7ce1: $9b
	ld h, [hl]                                       ; $7ce2: $66
	ld h, a                                          ; $7ce3: $67
	ld [hl], e                                       ; $7ce4: $73
	inc sp                                           ; $7ce5: $33
	db $db                                           ; $7ce6: $db
	ld [hl], a                                       ; $7ce7: $77
	sbc l                                            ; $7ce8: $9d
	ld h, [hl]                                       ; $7ce9: $66
	ld h, e                                          ; $7cea: $63
	sbc $33                                          ; $7ceb: $de $33
	sbc l                                            ; $7ced: $9d
	ld d, l                                          ; $7cee: $55
	ld d, e                                          ; $7cef: $53
	sbc $33                                          ; $7cf0: $de $33
	ld [hl], a                                       ; $7cf2: $77
	or $9c                                           ; $7cf3: $f6 $9c
	dec [hl]                                         ; $7cf5: $35
	ld d, l                                          ; $7cf6: $55
	ld d, l                                          ; $7cf7: $55
	jp c, Jump_058_5f33                              ; $7cf8: $da $33 $5f

	or $9c                                           ; $7cfb: $f6 $9c
	inc sp                                           ; $7cfd: $33
	ld b, l                                          ; $7cfe: $45
	ld [hl], a                                       ; $7cff: $77
	reti                                             ; $7d00: $d9


	inc sp                                           ; $7d01: $33
	rst SubAFromDE                                          ; $7d02: $df
	ld [hl], a                                       ; $7d03: $77
	ld a, a                                          ; $7d04: $7f
	ret                                              ; $7d05: $c9


	rst SubAFromDE                                          ; $7d06: $df
	inc sp                                           ; $7d07: $33
	rst SubAFromDE                                          ; $7d08: $df
	ld [hl+], a                                      ; $7d09: $22
	ld a, e                                          ; $7d0a: $7b
	or $df                                           ; $7d0b: $f6 $df
	ld [hl], d                                       ; $7d0d: $72
	call c, $df22                                    ; $7d0e: $dc $22 $df
	inc sp                                           ; $7d11: $33
	sbc h                                            ; $7d12: $9c
	daa                                              ; $7d13: $27
	ld [hl], d                                       ; $7d14: $72
	daa                                              ; $7d15: $27
	call c, $9b22                                    ; $7d16: $dc $22 $9b
	inc hl                                           ; $7d19: $23
	inc sp                                           ; $7d1a: $33
	daa                                              ; $7d1b: $27
	ld [hl], h                                       ; $7d1c: $74
	sbc $22                                          ; $7d1d: $de $22
	sbc l                                            ; $7d1f: $9d
	ld b, h                                          ; $7d20: $44
	ld b, d                                          ; $7d21: $42
	ld a, e                                          ; $7d22: $7b
	db $eb                                           ; $7d23: $eb
	sbc h                                            ; $7d24: $9c
	daa                                              ; $7d25: $27
	ld [hl], l                                       ; $7d26: $75
	ld d, d                                          ; $7d27: $52
	db $dd                                           ; $7d28: $dd
	ld b, h                                          ; $7d29: $44
	ld a, e                                          ; $7d2a: $7b
	or $9a                                           ; $7d2b: $f6 $9a
	scf                                              ; $7d2d: $37
	ld [hl], d                                       ; $7d2e: $72
	ld [hl+], a                                      ; $7d2f: $22
	inc h                                            ; $7d30: $24
	ld b, h                                          ; $7d31: $44
	db $dd                                           ; $7d32: $dd
	dec bc                                           ; $7d33: $0b
	cp c                                             ; $7d34: $b9
	rst $38                                          ; $7d35: $ff
	rst $38                                          ; $7d36: $ff
	rst $38                                          ; $7d37: $ff
	rst $38                                          ; $7d38: $ff
	rst $38                                          ; $7d39: $ff
	rst $38                                          ; $7d3a: $ff
	rst $38                                          ; $7d3b: $ff
	rst $38                                          ; $7d3c: $ff
	sub [hl]                                         ; $7d3d: $96
	ld bc, $03ff                                     ; $7d3e: $01 $ff $03
	cp $03                                           ; $7d41: $fe $03
	cp $07                                           ; $7d43: $fe $07
	db $fc                                           ; $7d45: $fc
	ld b, $73                                        ; $7d46: $06 $73
	cp $80                                           ; $7d48: $fe $80
	rrca                                             ; $7d4a: $0f
	ld a, [$9364]                                    ; $7d4b: $fa $64 $93
	ld h, d                                          ; $7d4e: $62
	sbc c                                            ; $7d4f: $99
	or e                                             ; $7d50: $b3
	ld c, l                                          ; $7d51: $4d
	ld a, [hl-]                                      ; $7d52: $3a
	ld b, a                                          ; $7d53: $47
	ld d, a                                          ; $7d54: $57
	inc l                                            ; $7d55: $2c
	add hl, bc                                       ; $7d56: $09
	inc a                                            ; $7d57: $3c
	inc sp                                           ; $7d58: $33
	jr jr_058_7dbe                                   ; $7d59: $18 $63

	jr nc, jr_058_7d81                               ; $7d5b: $30 $24

	jp rIE                                         ; $7d5d: $c3 $ff $ff


	ld a, h                                          ; $7d60: $7c
	add e                                            ; $7d61: $83
	ld hl, sp+$07                                    ; $7d62: $f8 $07
	ldh a, [rIF]                                     ; $7d64: $f0 $0f
	rst SubAFromBC                                          ; $7d66: $e7
	rra                                              ; $7d67: $1f
	sbc b                                            ; $7d68: $98
	sbc c                                            ; $7d69: $99
	ld a, a                                          ; $7d6a: $7f
	ld h, b                                          ; $7d6b: $60
	rst $38                                          ; $7d6c: $ff
	dec b                                            ; $7d6d: $05
	cp $fe                                           ; $7d6e: $fe $fe
	ld a, e                                          ; $7d70: $7b
	call z, $c87f                                    ; $7d71: $cc $7f $c8
	rst SubAFromDE                                          ; $7d74: $df
	rst $38                                          ; $7d75: $ff
	ld a, a                                          ; $7d76: $7f
	db $fc                                           ; $7d77: $fc
	add b                                            ; $7d78: $80
	rra                                              ; $7d79: $1f
	rst $38                                          ; $7d7a: $ff
	ld [hl], h                                       ; $7d7b: $74
	rst $38                                          ; $7d7c: $ff
	dec l                                            ; $7d7d: $2d
	di                                               ; $7d7e: $f3
	ld [hl+], a                                      ; $7d7f: $22
	rst $38                                          ; $7d80: $ff

jr_058_7d81:
	ld c, a                                          ; $7d81: $4f
	rst $38                                          ; $7d82: $ff
	rst SubAFromDE                                          ; $7d83: $df
	ld hl, sp-$19                                    ; $7d84: $f8 $e7
	rst $38                                          ; $7d86: $ff
	cpl                                              ; $7d87: $2f
	ld hl, sp-$10                                    ; $7d88: $f8 $f0
	ldh a, [$a0]                                     ; $7d8a: $f0 $a0
	ret nz                                           ; $7d8c: $c0

	add $3f                                          ; $7d8d: $c6 $3f
	sbc c                                            ; $7d8f: $99
	rlca                                             ; $7d90: $07
	xor [hl]                                         ; $7d91: $ae
	pop bc                                           ; $7d92: $c1
	ld a, e                                          ; $7d93: $7b
	db $fc                                           ; $7d94: $fc
	xor [hl]                                         ; $7d95: $ae
	ld [hl], a                                       ; $7d96: $77
	db $dd                                           ; $7d97: $dd
	add b                                            ; $7d98: $80
	or c                                             ; $7d99: $b1
	db $ec                                           ; $7d9a: $ec
	ld e, b                                          ; $7d9b: $58
	ld a, l                                          ; $7d9c: $7d
	jr z, @-$59                                      ; $7d9d: $28 $a5

	ld e, $fa                                        ; $7d9f: $1e $fa
	rst JumpTable                                          ; $7da1: $c7
	and l                                            ; $7da2: $a5
	ei                                               ; $7da3: $fb

jr_058_7da4:
	ld a, e                                          ; $7da4: $7b
	db $dd                                           ; $7da5: $dd
	cp l                                             ; $7da6: $bd
	ld h, [hl]                                       ; $7da7: $66
	sbc [hl]                                         ; $7da8: $9e
	di                                               ; $7da9: $f3
	pop de                                           ; $7daa: $d1
	ld a, a                                          ; $7dab: $7f
	xor a                                            ; $7dac: $af
	rst $38                                          ; $7dad: $ff
	ldh a, [c]                                       ; $7dae: $f2
	rrca                                             ; $7daf: $0f
	ldh a, [c]                                       ; $7db0: $f2
	rrca                                             ; $7db1: $0f
	ld [hl], d                                       ; $7db2: $72
	adc a                                            ; $7db3: $8f

jr_058_7db4:
	ld [hl], d                                       ; $7db4: $72
	adc a                                            ; $7db5: $8f
	and e                                            ; $7db6: $a3
	rst SubAFromDE                                          ; $7db7: $df
	add b                                            ; $7db8: $80
	add l                                            ; $7db9: $85
	rst $38                                          ; $7dba: $ff
	ld h, l                                          ; $7dbb: $65
	rst $38                                          ; $7dbc: $ff
	push af                                          ; $7dbd: $f5

jr_058_7dbe:
	rst SubAFromDE                                          ; $7dbe: $df
	and e                                            ; $7dbf: $a3
	cp $ab                                           ; $7dc0: $fe $ab
	rst FarCall                                          ; $7dc2: $f7
	ld d, l                                          ; $7dc3: $55
	ei                                               ; $7dc4: $fb
	ld e, d                                          ; $7dc5: $5a
	db $fd                                           ; $7dc6: $fd
	ld e, c                                          ; $7dc7: $59
	cp $54                                           ; $7dc8: $fe $54
	rst $38                                          ; $7dca: $ff
	ld e, d                                          ; $7dcb: $5a
	rst $38                                          ; $7dcc: $ff
	ld d, l                                          ; $7dcd: $55
	rst $38                                          ; $7dce: $ff
	and b                                            ; $7dcf: $a0
	ld h, b                                          ; $7dd0: $60
	ret nc                                           ; $7dd1: $d0

	jr nc, jr_058_7da4                               ; $7dd2: $30 $d0

	or b                                             ; $7dd4: $b0
	xor b                                            ; $7dd5: $a8
	ret c                                            ; $7dd6: $d8

	ld e, b                                          ; $7dd7: $58
	add a                                            ; $7dd8: $87
	add sp, -$08                                     ; $7dd9: $e8 $f8

jr_058_7ddb:
	ld l, b                                          ; $7ddb: $68
	xor h                                            ; $7ddc: $ac
	ld [hl], h                                       ; $7ddd: $74
	ld l, h                                          ; $7dde: $6c
	or h                                             ; $7ddf: $b4
	jr c, jr_058_7df2                                ; $7de0: $38 $10

	ld [$1c18], sp                                   ; $7de2: $08 $18 $1c
	ld [$0c08], sp                                   ; $7de5: $08 $08 $0c
	inc c                                            ; $7de8: $0c
	inc b                                            ; $7de9: $04
	ld b, $04                                        ; $7dea: $06 $04
	ld [bc], a                                       ; $7dec: $02
	ld b, $06                                        ; $7ded: $06 $06
	ld [bc], a                                       ; $7def: $02
	jr @+$79                                         ; $7df0: $18 $77

jr_058_7df2:
	push af                                          ; $7df2: $f5
	ld a, e                                          ; $7df3: $7b
	db $fd                                           ; $7df4: $fd
	ld [hl], a                                       ; $7df5: $77
	db $f4                                           ; $7df6: $f4
	sub [hl]                                         ; $7df7: $96
	inc bc                                           ; $7df8: $03
	ld [bc], a                                       ; $7df9: $02
	ld bc, $0c03                                     ; $7dfa: $01 $03 $0c
	ld [$0c04], sp                                   ; $7dfd: $08 $04 $0c
	inc b                                            ; $7e00: $04
	ld l, a                                          ; $7e01: $6f
	ldh a, [c]                                       ; $7e02: $f2
	sub a                                            ; $7e03: $97
	inc bc                                           ; $7e04: $03
	ld bc, $0103                                     ; $7e05: $01 $03 $01
	ld bc, $0406                                     ; $7e08: $01 $06 $04
	ld b, $de                                        ; $7e0b: $06 $de
	ld [bc], a                                       ; $7e0d: $02
	ld [hl], a                                       ; $7e0e: $77
	or $99                                           ; $7e0f: $f6 $99
	nop                                              ; $7e11: $00
	ld bc, $0003                                     ; $7e12: $01 $03 $00
	adc l                                            ; $7e15: $8d
	add b                                            ; $7e16: $80
	ld a, e                                          ; $7e17: $7b
	rst FarCall                                          ; $7e18: $f7
	sbc e                                            ; $7e19: $9b
	ld bc, $0102                                     ; $7e1a: $01 $02 $01
	inc c                                            ; $7e1d: $0c
	cp a                                             ; $7e1e: $bf
	inc sp                                           ; $7e1f: $33
	adc $8a                                          ; $7e20: $ce $8a
	add c                                            ; $7e22: $81
	cp c                                             ; $7e23: $b9
	add [hl]                                         ; $7e24: $86
	rst SubAFromBC                                          ; $7e25: $e7
	jr jr_058_7ddb                                   ; $7e26: $18 $b3

	nop                                              ; $7e28: $00
	ld c, [hl]                                       ; $7e29: $4e
	add c                                            ; $7e2a: $81
	jr c, jr_058_7db4                                ; $7e2b: $38 $87

	push hl                                          ; $7e2d: $e5
	ld a, [de]                                       ; $7e2e: $1a
	adc d                                            ; $7e2f: $8a
	ld [hl], l                                       ; $7e30: $75
	ld d, l                                          ; $7e31: $55
	xor d                                            ; $7e32: $aa
	xor d                                            ; $7e33: $aa
	ld d, l                                          ; $7e34: $55
	ld d, l                                          ; $7e35: $55
	xor d                                            ; $7e36: $aa
	ld h, a                                          ; $7e37: $67
	ld hl, sp+$2f                                    ; $7e38: $f8 $2f
	db $fc                                           ; $7e3a: $fc
	sbc l                                            ; $7e3b: $9d
	ld d, b                                          ; $7e3c: $50
	xor a                                            ; $7e3d: $af
	ld l, a                                          ; $7e3e: $6f
	ld hl, sp-$6b                                    ; $7e3f: $f8 $95
	ld d, h                                          ; $7e41: $54
	xor e                                            ; $7e42: $ab
	and d                                            ; $7e43: $a2
	ld e, h                                          ; $7e44: $5c
	ld c, c                                          ; $7e45: $49
	or b                                             ; $7e46: $b0
	ld h, $c1                                        ; $7e47: $26 $c1
	sbc c                                            ; $7e49: $99
	ld b, $b9                                        ; $7e4a: $06 $b9
	cp $fd                                           ; $7e4c: $fe $fd
	ld a, [$a8d4]                                    ; $7e4e: $fa $d4 $a8
	ld d, b                                          ; $7e51: $50
	add b                                            ; $7e52: $80
	dec b                                            ; $7e53: $05
	add b                                            ; $7e54: $80
	rrca                                             ; $7e55: $0f
	xor d                                            ; $7e56: $aa
	rrca                                             ; $7e57: $0f
	ld a, [de]                                       ; $7e58: $1a
	rrca                                             ; $7e59: $0f
	add hl, hl                                       ; $7e5a: $29
	rrca                                             ; $7e5b: $0f
	ld e, c                                          ; $7e5c: $59
	ld c, $2a                                        ; $7e5d: $0e $2a
	rrca                                             ; $7e5f: $0f
	ld e, h                                          ; $7e60: $5c
	rrca                                             ; $7e61: $0f
	cp c                                             ; $7e62: $b9
	ld c, $7a                                        ; $7e63: $0e $7a
	push hl                                          ; $7e65: $e5
	ld b, e                                          ; $7e66: $43
	jp z, $8e87                                      ; $7e67: $ca $87 $8e

	inc e                                            ; $7e6a: $1c
	ld e, c                                          ; $7e6b: $59
	inc a                                            ; $7e6c: $3c
	jp hl                                            ; $7e6d: $e9


	ld a, b                                          ; $7e6e: $78
	sub e                                            ; $7e6f: $93
	ld hl, sp-$65                                    ; $7e70: $f8 $9b
	ld [hl], b                                       ; $7e72: $70
	ld h, $80                                        ; $7e73: $26 $80
	ld [hl], c                                       ; $7e75: $71
	cp c                                             ; $7e76: $b9
	rst JumpTable                                          ; $7e77: $c7
	di                                               ; $7e78: $f3
	rrca                                             ; $7e79: $0f
	rst AddAOntoHL                                          ; $7e7a: $ef
	rra                                              ; $7e7b: $1f
	jp c, $b33f                                      ; $7e7c: $da $3f $b3

	ld a, [hl]                                       ; $7e7f: $7e
	ld l, a                                          ; $7e80: $6f
	or $7e                                           ; $7e81: $f6 $7e
	rst SubAFromBC                                          ; $7e83: $e7
	xor [hl]                                         ; $7e84: $ae
	rst SubAFromBC                                          ; $7e85: $e7
	adc e                                            ; $7e86: $8b
	db $fd                                           ; $7e87: $fd
	ld e, l                                          ; $7e88: $5d
	cp e                                             ; $7e89: $bb
	rst SubAFromDE                                          ; $7e8a: $df
	ld a, [hl-]                                      ; $7e8b: $3a
	cpl                                              ; $7e8c: $2f
	ld a, d                                          ; $7e8d: $7a
	dec sp                                           ; $7e8e: $3b
	ld l, d                                          ; $7e8f: $6a
	cp a                                             ; $7e90: $bf
	ld l, d                                          ; $7e91: $6a
	db $db                                           ; $7e92: $db
	ld l, [hl]                                       ; $7e93: $6e
	sbc h                                            ; $7e94: $9c
	ld [hl], l                                       ; $7e95: $75
	rst GetHLinHL                                          ; $7e96: $cf
	ret nz                                           ; $7e97: $c0

	cp c                                             ; $7e98: $b9
	add b                                            ; $7e99: $80
	add b                                            ; $7e9a: $80
	add b                                            ; $7e9b: $80
	ret nz                                           ; $7e9c: $c0

	ret nz                                           ; $7e9d: $c0

	ret nz                                           ; $7e9e: $c0

	ldh [$3f], a                                     ; $7e9f: $e0 $3f
	sub a                                            ; $7ea1: $97
	add hl, de                                       ; $7ea2: $19
	ld e, $0b                                        ; $7ea3: $1e $0b
	rra                                              ; $7ea5: $1f
	dec bc                                           ; $7ea6: $0b
	rrca                                             ; $7ea7: $0f
	ld [$bd0f], sp                                   ; $7ea8: $08 $0f $bd
	rlca                                             ; $7eab: $07
	rlca                                             ; $7eac: $07
	rlca                                             ; $7ead: $07
	ld l, e                                          ; $7eae: $6b
	sbc d                                            ; $7eaf: $9a
	db $fc                                           ; $7eb0: $fc
	rst $38                                          ; $7eb1: $ff
	ret nc                                           ; $7eb2: $d0

	rst $38                                          ; $7eb3: $ff
	db $10                                           ; $7eb4: $10
	ld e, [hl]                                       ; $7eb5: $5e
	ld c, a                                          ; $7eb6: $4f
	sub d                                            ; $7eb7: $92
	ld sp, hl                                        ; $7eb8: $f9
	ld e, a                                          ; $7eb9: $5f

jr_058_7eba:
	ld sp, hl                                        ; $7eba: $f9
	ld c, a                                          ; $7ebb: $4f
	or l                                             ; $7ebc: $b5
	ld c, a                                          ; $7ebd: $4f
	rst $38                                          ; $7ebe: $ff
	rlca                                             ; $7ebf: $07
	ld a, [$fe07]                                    ; $7ec0: $fa $07 $fe
	inc bc                                           ; $7ec3: $03
	db $fd                                           ; $7ec4: $fd
	ld a, e                                          ; $7ec5: $7b
	cp $80                                           ; $7ec6: $fe $80
	ld e, e                                          ; $7ec8: $5b
	rst $38                                          ; $7ec9: $ff
	jp c, $f5ff                                      ; $7eca: $da $ff $f5

	rst $38                                          ; $7ecd: $ff
	ld l, e                                          ; $7ece: $6b
	cp a                                             ; $7ecf: $bf
	ld [hl], $df                                     ; $7ed0: $36 $df
	pop de                                           ; $7ed2: $d1
	rst $38                                          ; $7ed3: $ff
	add hl, sp                                       ; $7ed4: $39
	rst AddAOntoHL                                          ; $7ed5: $ef
	ld a, e                                          ; $7ed6: $7b
	db $ed                                           ; $7ed7: $ed
	ld d, h                                          ; $7ed8: $54
	cp h                                             ; $7ed9: $bc
	or d                                             ; $7eda: $b2
	sbc $ba                                          ; $7edb: $de $ba
	sbc $6a                                          ; $7edd: $de $6a
	sbc $59                                          ; $7edf: $de $59
	rst AddAOntoHL                                          ; $7ee1: $ef
	ld e, l                                          ; $7ee2: $5d
	rst AddAOntoHL                                          ; $7ee3: $ef
	cp l                                             ; $7ee4: $bd

jr_058_7ee5:
	ld l, a                                          ; $7ee5: $6f
	cp l                                             ; $7ee6: $bd
	sbc h                                            ; $7ee7: $9c
	ld l, a                                          ; $7ee8: $6f
	inc bc                                           ; $7ee9: $03
	ld [bc], a                                       ; $7eea: $02
	halt                                             ; $7eeb: $76
	cp $7e                                           ; $7eec: $fe $7e
	db $f4                                           ; $7eee: $f4
	ld a, a                                          ; $7eef: $7f
	db $fd                                           ; $7ef0: $fd
	ei                                               ; $7ef1: $fb
	ld a, a                                          ; $7ef2: $7f
	ldh a, [c]                                       ; $7ef3: $f2
	ld a, a                                          ; $7ef4: $7f
	db $f4                                           ; $7ef5: $f4
	sbc l                                            ; $7ef6: $9d
	add c                                            ; $7ef7: $81
	nop                                              ; $7ef8: $00
	db $dd                                           ; $7ef9: $dd
	add b                                            ; $7efa: $80
	sbc c                                            ; $7efb: $99
	pop bc                                           ; $7efc: $c1
	ret nz                                           ; $7efd: $c0

	add $40                                          ; $7efe: $c6 $40
	ld a, c                                          ; $7f00: $79
	ld b, b                                          ; $7f01: $40
	ld a, e                                          ; $7f02: $7b
	ldh a, [c]                                       ; $7f03: $f2
	sub l                                            ; $7f04: $95
	add b                                            ; $7f05: $80
	add e                                            ; $7f06: $83
	add b                                            ; $7f07: $80
	call z, Call_058_7380                            ; $7f08: $cc $80 $73
	ret nz                                           ; $7f0b: $c0

	rst GetHLinHL                                          ; $7f0c: $cf
	ld b, b                                          ; $7f0d: $40
	ld a, a                                          ; $7f0e: $7f
	cp a                                             ; $7f0f: $bf
	rst $38                                          ; $7f10: $ff
	or e                                             ; $7f11: $b3
	sub h                                            ; $7f12: $94
	add b                                            ; $7f13: $80
	adc $41                                          ; $7f14: $ce $41
	ld sp, hl                                        ; $7f16: $f9
	ld b, [hl]                                       ; $7f17: $46
	rst SubAFromBC                                          ; $7f18: $e7
	jr jr_058_7eba                                   ; $7f19: $18 $9f

	ld h, b                                          ; $7f1b: $60
	ld a, a                                          ; $7f1c: $7f
	add b                                            ; $7f1d: $80

Call_058_7f1e:
	ld [hl], a                                       ; $7f1e: $77
	sub b                                            ; $7f1f: $90
	sbc l                                            ; $7f20: $9d
	sbc [hl]                                         ; $7f21: $9e
	ld h, c                                          ; $7f22: $61
	ld l, a                                          ; $7f23: $6f
	ld hl, sp+$67                                    ; $7f24: $f8 $67
	cp $8f                                           ; $7f26: $fe $8f
	ei                                               ; $7f28: $fb
	inc b                                            ; $7f29: $04
	rst FarCall                                          ; $7f2a: $f7
	ld [$11ee], sp                                   ; $7f2b: $08 $ee $11
	rst $38                                          ; $7f2e: $ff
	nop                                              ; $7f2f: $00
	cp $01                                           ; $7f30: $fe $01
	db $fd                                           ; $7f32: $fd
	ld [bc], a                                       ; $7f33: $02
	ld a, [$d005]                                    ; $7f34: $fa $05 $d0
	cpl                                              ; $7f37: $2f
	ld h, [hl]                                       ; $7f38: $66
	ret c                                            ; $7f39: $d8

	ld a, [hl]                                       ; $7f3a: $7e
	ldh [$9d], a                                     ; $7f3b: $e0 $9d
	add hl, bc                                       ; $7f3d: $09
	ldh a, [rPCM12]                                  ; $7f3e: $f0 $76
	ldh [$66], a                                     ; $7f40: $e0 $66
	ret c                                            ; $7f42: $d8

	adc a                                            ; $7f43: $8f
	ld h, a                                          ; $7f44: $67
	jr jr_058_7ee5                                   ; $7f45: $18 $9e

	ld h, c                                          ; $7f47: $61

Jump_058_7f48:
	ld a, h                                          ; $7f48: $7c
	add e                                            ; $7f49: $83
	ldh a, [rIF]                                     ; $7f4a: $f0 $0f
	ld h, [hl]                                       ; $7f4c: $66
	add hl, de                                       ; $7f4d: $19
	sbc b                                            ; $7f4e: $98
	ld h, a                                          ; $7f4f: $67
	ld [hl], b                                       ; $7f50: $70
	adc a                                            ; $7f51: $8f
	ret nz                                           ; $7f52: $c0

	ccf                                              ; $7f53: $3f
	ld [hl], l                                       ; $7f54: $75
	sub [hl]                                         ; $7f55: $96
	sbc e                                            ; $7f56: $9b
	rlca                                             ; $7f57: $07
	rst $38                                          ; $7f58: $ff
	inc e                                            ; $7f59: $1c
	cp $b9                                           ; $7f5a: $fe $b9
	dec bc                                           ; $7f5c: $0b
	ld d, a                                          ; $7f5d: $57
	cp a                                             ; $7f5e: $bf
	rst $38                                          ; $7f5f: $ff
	rst $38                                          ; $7f60: $ff
	rst $38                                          ; $7f61: $ff
	xor a                                            ; $7f62: $af
	rst $38                                          ; $7f63: $ff
	sub e                                            ; $7f64: $93
	rra                                              ; $7f65: $1f
	db $f4                                           ; $7f66: $f4
	ccf                                              ; $7f67: $3f
	db $ec                                           ; $7f68: $ec
	scf                                              ; $7f69: $37
	db $fc                                           ; $7f6a: $fc
	ld h, a                                          ; $7f6b: $67
	cp $47                                           ; $7f6c: $fe $47
	db $fd                                           ; $7f6e: $fd
	rlca                                             ; $7f6f: $07
	db $fc                                           ; $7f70: $fc
	ld a, c                                          ; $7f71: $79
	halt                                             ; $7f72: $76
	add b                                            ; $7f73: $80
	rst $38                                          ; $7f74: $ff
	ld [hl], l                                       ; $7f75: $75
	inc hl                                           ; $7f76: $23
	ld b, d                                          ; $7f77: $42

Call_058_7f78:
	rst SubAFromBC                                          ; $7f78: $e7
	ld l, d                                          ; $7f79: $6a
	rst JumpTable                                          ; $7f7a: $c7
	call nc, $884f                                   ; $7f7b: $d4 $4f $88
	rst SubAFromDE                                          ; $7f7e: $df
	ld hl, sp-$61                                    ; $7f7f: $f8 $9f
	ret nc                                           ; $7f81: $d0

	cp a                                             ; $7f82: $bf
	db $fc                                           ; $7f83: $fc
	inc sp                                           ; $7f84: $33
	and [hl]                                         ; $7f85: $a6
	rst AddAOntoHL                                          ; $7f86: $ef
	or l                                             ; $7f87: $b5
	rst AddAOntoHL                                          ; $7f88: $ef
	rst FarCall                                          ; $7f89: $f7
	xor l                                            ; $7f8a: $ad
	and $bd                                          ; $7f8b: $e6 $bd
	rst FarCall                                          ; $7f8d: $f7
	cp h                                             ; $7f8e: $bc
	sub $bc                                          ; $7f8f: $d6 $bc
	sub d                                            ; $7f91: $92
	cp [hl]                                          ; $7f92: $be
	add d                                            ; $7f93: $82
	sbc e                                            ; $7f94: $9b
	cp a                                             ; $7f95: $bf
	ld [hl], l                                       ; $7f96: $75
	rst JumpTable                                          ; $7f97: $c7
	ld d, d                                          ; $7f98: $52
	jp $cf5f                                         ; $7f99: $c3 $5f $cf


	and e                                            ; $7f9c: $a3
	cp $af                                           ; $7f9d: $fe $af
	db $fc                                           ; $7f9f: $fc
	rst $38                                          ; $7fa0: $ff
	ld [hl], b                                       ; $7fa1: $70
	ccf                                              ; $7fa2: $3f
	ldh a, [$7f]                                     ; $7fa3: $f0 $7f
	call z, JoypadTransitionInterrupt                ; $7fa5: $cc $60 $00
	or b                                             ; $7fa8: $b0
	add b                                            ; $7fa9: $80
	ld e, b                                          ; $7faa: $58
	ret nz                                           ; $7fab: $c0

	db $ec                                           ; $7fac: $ec

jr_058_7fad:
	ldh [$fe], a                                     ; $7fad: $e0 $fe
	jr c, jr_058_7fad                                ; $7faf: $38 $fc

	or h                                             ; $7fb1: $b4
	db $fc                                           ; $7fb2: $fc
	cp $07                                           ; $7fb3: $fe $07
	inc bc                                           ; $7fb5: $03
	inc bc                                           ; $7fb6: $03
	ld bc, $0000                                     ; $7fb7: $01 $00 $00
	nop                                              ; $7fba: $00
	nop                                              ; $7fbb: $00
	db $e3                                           ; $7fbc: $e3
	pop bc                                           ; $7fbd: $c1
	jp nz, $0187                                     ; $7fbe: $c2 $87 $01

	add e                                            ; $7fc1: $83
	inc b                                            ; $7fc2: $04
	add a                                            ; $7fc3: $87
	dec bc                                           ; $7fc4: $0b
	rrca                                             ; $7fc5: $0f
	rlca                                             ; $7fc6: $07
	rrca                                             ; $7fc7: $0f
	ld e, $08                                        ; $7fc8: $1e $08
	inc e                                            ; $7fca: $1c
	rst $38                                          ; $7fcb: $ff
	ld bc, $05fb                                     ; $7fcc: $01 $fb $05
	halt                                             ; $7fcf: $76
	adc l                                            ; $7fd0: $8d
	cp [hl]                                          ; $7fd1: $be
	ld a, c                                          ; $7fd2: $79
	xor $f1                                          ; $7fd3: $ee $f1
	rst GetHLinHL                                          ; $7fd5: $cf
	add b                                            ; $7fd6: $80
	rra                                              ; $7fd7: $1f
	cp a                                             ; $7fd8: $bf
	rra                                              ; $7fd9: $1f
	cp c                                             ; $7fda: $b9
	add b                                            ; $7fdb: $80
	rst AddAOntoHL                                          ; $7fdc: $ef
	cp e                                             ; $7fdd: $bb
	db $ed                                           ; $7fde: $ed
	cp e                                             ; $7fdf: $bb
	db $ed                                           ; $7fe0: $ed
	db $db                                           ; $7fe1: $db
	db $ed                                           ; $7fe2: $ed
	cp e                                             ; $7fe3: $bb
	call $9aad                                       ; $7fe4: $cd $ad $9a
	push de                                          ; $7fe7: $d5
	cp d                                             ; $7fe8: $ba
	ld h, l                                          ; $7fe9: $65
	ld a, [$ff26]                                    ; $7fea: $fa $26 $ff

jr_058_7fed:
	ld h, $ff                                        ; $7fed: $26 $ff
	dec h                                            ; $7fef: $25

Jump_058_7ff0:
	db $fd                                           ; $7ff0: $fd
	inc h                                            ; $7ff1: $24
	db $fc                                           ; $7ff2: $fc
	jr z, jr_058_7fed                                ; $7ff3: $28 $f8

	add hl, hl                                       ; $7ff5: $29
	ld hl, sp-$42                                    ; $7ff6: $f8 $be
	ld hl, sp-$47                                    ; $7ff8: $f8 $b9
	ldh a, [$df]                                     ; $7ffa: $f0 $df
	add b                                            ; $7ffc: $80
	ld a, [hl]                                       ; $7ffd: $7e
	ldh [hDisp1_WX], a                                     ; $7ffe: $e0 $96
