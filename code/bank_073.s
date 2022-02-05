; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $073", ROMX[$4000], BANK[$73]

	and a                                            ; $4000: $a7
	and a                                            ; $4001: $a7
	ld b, a                                          ; $4002: $47
	adc a                                            ; $4003: $8f
	rrca                                             ; $4004: $0f
	ei                                               ; $4005: $fb
	call c, $dff8                                    ; $4006: $dc $f8 $df
	ldh a, [hDisp1_WX]                                     ; $4009: $f0 $96
	add hl, sp                                       ; $400b: $39
	di                                               ; $400c: $f3
	jp $0103                                         ; $400d: $c3 $03 $01


	ld bc, $ffc3                                     ; $4010: $01 $c3 $ff
	ret nz                                           ; $4013: $c0

	push hl                                          ; $4014: $e5
	sbc l                                            ; $4015: $9d
	ld hl, sp-$80                                    ; $4016: $f8 $80
	ld [hl], a                                       ; $4018: $77
	ld h, b                                          ; $4019: $60
	ld [hl], a                                       ; $401a: $77
	ld hl, sp-$80                                    ; $401b: $f8 $80
	db $fc                                           ; $401d: $fc
	or e                                             ; $401e: $b3
	ld l, [hl]                                       ; $401f: $6e
	sbc e                                            ; $4020: $9b
	cp $39                                           ; $4021: $fe $39
	call z, $9d72                                    ; $4023: $cc $72 $9d
	rst GetHLinHL                                          ; $4026: $cf
	pop af                                           ; $4027: $f1
	ld a, h                                          ; $4028: $7c
	rst $38                                          ; $4029: $ff
	rst $38                                          ; $402a: $ff
	ccf                                              ; $402b: $3f
	adc a                                            ; $402c: $8f
	db $e3                                           ; $402d: $e3
	ld l, [hl]                                       ; $402e: $6e
	or $bb                                           ; $402f: $f6 $bb
	dec e                                            ; $4031: $1d
	xor $f6                                          ; $4032: $ee $f6
	call c, $f132                                    ; $4034: $dc $32 $f1
	ld sp, hl                                        ; $4037: $f9
	call nz, $11e2                                   ; $4038: $c4 $e2 $11
	add hl, bc                                       ; $403b: $09
	sub l                                            ; $403c: $95
	rst SubAFromBC                                          ; $403d: $e7
	rst $38                                          ; $403e: $ff
	ld c, $e1                                        ; $403f: $0e $e1
	rra                                              ; $4041: $1f
	ld [bc], a                                       ; $4042: $02
	pop af                                           ; $4043: $f1
	ld sp, hl                                        ; $4044: $f9
	ld hl, sp-$04                                    ; $4045: $f8 $fc
	call c, Call_073_7dff                            ; $4047: $dc $ff $7d
	add b                                            ; $404a: $80
	sub l                                            ; $404b: $95
	rst GetHLinHL                                          ; $404c: $cf
	cp h                                             ; $404d: $bc
	cp [hl]                                          ; $404e: $be
	sbc a                                            ; $404f: $9f
	rst SubAFromDE                                          ; $4050: $df
	db $fd                                           ; $4051: $fd
	db $f4                                           ; $4052: $f4
	ld d, l                                          ; $4053: $55
	ld d, l                                          ; $4054: $55
	rst AddAOntoHL                                          ; $4055: $ef
	sbc $ff                                          ; $4056: $de $ff
	rst SubAFromDE                                          ; $4058: $df
	ld e, a                                          ; $4059: $5f
	rst SubAFromDE                                          ; $405a: $df
	rst SubAFromDE                                          ; $405b: $df
	sbc $d2                                          ; $405c: $de $d2
	sub [hl]                                         ; $405e: $96
	db $d3                                           ; $405f: $d3
	rst SubAFromHL                                          ; $4060: $d7
	db $dd                                           ; $4061: $dd
	pop af                                           ; $4062: $f1
	pop af                                           ; $4063: $f1
	rst SubAFromDE                                          ; $4064: $df
	rst SubAFromDE                                          ; $4065: $df
	ld e, a                                          ; $4066: $5f
	ld e, a                                          ; $4067: $5f
	sbc $7f                                          ; $4068: $de $7f
	sbc [hl]                                         ; $406a: $9e
	rst $38                                          ; $406b: $ff
	sbc $30                                          ; $406c: $de $30
	sbc d                                            ; $406e: $9a
	ld sp, $f83e                                     ; $406f: $31 $3e $f8
	jr jr_073_408c                                   ; $4072: $18 $18

	reti                                             ; $4074: $d9


	rst $38                                          ; $4075: $ff
	sbc h                                            ; $4076: $9c
	inc e                                            ; $4077: $1c
	rst GetHLinHL                                          ; $4078: $cf
	rst AddAOntoHL                                          ; $4079: $ef
	sbc $e7                                          ; $407a: $de $e7
	sub e                                            ; $407c: $93
	rst FarCall                                          ; $407d: $f7
	di                                               ; $407e: $f3
	rst $38                                          ; $407f: $ff
	inc a                                            ; $4080: $3c

Jump_073_4081:
	inc e                                            ; $4081: $1c
	inc e                                            ; $4082: $1c
	ld e, $1e                                        ; $4083: $1e $1e
	ld c, $0e                                        ; $4085: $0e $0e
	di                                               ; $4087: $f3
	di                                               ; $4088: $f3
	call c, Call_073_7ffb                            ; $4089: $dc $fb $7f

jr_073_408c:
	xor b                                            ; $408c: $a8
	sbc [hl]                                         ; $408d: $9e
	ld c, $de                                        ; $408e: $0e $de
	ld b, $74                                        ; $4090: $06 $74
	cp e                                             ; $4092: $bb
	add a                                            ; $4093: $87
	add b                                            ; $4094: $80
	ld b, b                                          ; $4095: $40
	and b                                            ; $4096: $a0
	ld d, b                                          ; $4097: $50
	xor b                                            ; $4098: $a8
	ld c, b                                          ; $4099: $48
	inc h                                            ; $409a: $24
	nop                                              ; $409b: $00
	add b                                            ; $409c: $80
	ret nz                                           ; $409d: $c0

	ld h, b                                          ; $409e: $60
	or b                                             ; $409f: $b0
	ret c                                            ; $40a0: $d8

	ld hl, sp-$04                                    ; $40a1: $f8 $fc
	sub h                                            ; $40a3: $94
	ld c, d                                          ; $40a4: $4a
	ld a, [hl+]                                      ; $40a5: $2a
	ld h, $17                                        ; $40a6: $26 $17
	sub e                                            ; $40a8: $93
	adc e                                            ; $40a9: $8b
	ld c, e                                          ; $40aa: $4b
	db $fc                                           ; $40ab: $fc
	sbc $fe                                          ; $40ac: $de $fe
	db $dd                                           ; $40ae: $dd
	rst $38                                          ; $40af: $ff
	sub a                                            ; $40b0: $97
	ld b, l                                          ; $40b1: $45
	and l                                            ; $40b2: $a5
	dec h                                            ; $40b3: $25
	dec h                                            ; $40b4: $25
	inc de                                           ; $40b5: $13
	inc de                                           ; $40b6: $13
	sub e                                            ; $40b7: $93
	sub e                                            ; $40b8: $93
	reti                                             ; $40b9: $d9


	rst $38                                          ; $40ba: $ff
	rst SubAFromDE                                          ; $40bb: $df
	ld c, e                                          ; $40bc: $4b
	rst SubAFromDE                                          ; $40bd: $df
	dec hl                                           ; $40be: $2b
	sbc e                                            ; $40bf: $9b

Jump_073_40c0:
	sbc e                                            ; $40c0: $9b
	ld e, e                                          ; $40c1: $5b
	cpl                                              ; $40c2: $2f
	sbc c                                            ; $40c3: $99
	jp c, $91ff                                      ; $40c4: $da $ff $91

	ld sp, hl                                        ; $40c7: $f9
	db $d3                                           ; $40c8: $d3
	db $e4                                           ; $40c9: $e4
	ld sp, hl                                        ; $40ca: $f9
	ld [de], a                                       ; $40cb: $12
	ld e, l                                          ; $40cc: $5d
	ld c, a                                          ; $40cd: $4f
	ld c, a                                          ; $40ce: $4f
	add a                                            ; $40cf: $87
	di                                               ; $40d0: $f3
	db $e4                                           ; $40d1: $e4
	ld sp, hl                                        ; $40d2: $f9
	ldh a, [c]                                       ; $40d3: $f2
	db $fd                                           ; $40d4: $fd
	sbc $fe                                          ; $40d5: $de $fe
	sub a                                            ; $40d7: $97
	and a                                            ; $40d8: $a7

jr_073_40d9:
	cp a                                             ; $40d9: $bf
	and b                                            ; $40da: $a0
	ret nz                                           ; $40db: $c0

	ld h, b                                          ; $40dc: $60
	ld h, b                                          ; $40dd: $60
	jr nz, jr_073_4100                               ; $40de: $20 $20

	reti                                             ; $40e0: $d9


	rst $38                                          ; $40e1: $ff
	sbc d                                            ; $40e2: $9a
	jr nz, jr_073_40f5                               ; $40e3: $20 $10

	sub b                                            ; $40e5: $90
	di                                               ; $40e6: $f3
	rst FarCall                                          ; $40e7: $f7
	ld a, c                                          ; $40e8: $79
	push af                                          ; $40e9: $f5
	rst SubAFromDE                                          ; $40ea: $df
	rst $38                                          ; $40eb: $ff
	sbc b                                            ; $40ec: $98
	ld a, a                                          ; $40ed: $7f
	inc e                                            ; $40ee: $1c
	ld [$0700], sp                                   ; $40ef: $08 $00 $07
	rrca                                             ; $40f2: $0f
	ldh a, [$de]                                     ; $40f3: $f0 $de

jr_073_40f5:
	ldh [$9a], a                                     ; $40f5: $e0 $9a
	ldh a, [$f8]                                     ; $40f7: $f0 $f8
	ld hl, sp-$04                                    ; $40f9: $f8 $fc
	rrca                                             ; $40fb: $0f
	sbc $1f                                          ; $40fc: $de $1f
	sbc c                                            ; $40fe: $99
	rrca                                             ; $40ff: $0f

jr_073_4100:
	rlca                                             ; $4100: $07
	rlca                                             ; $4101: $07
	inc bc                                           ; $4102: $03
	add b                                            ; $4103: $80
	add b                                            ; $4104: $80
	db $db                                           ; $4105: $db
	rst $38                                          ; $4106: $ff
	ld a, e                                          ; $4107: $7b
	ld hl, sp+$7f                                    ; $4108: $f8 $7f
	call c, $bb9c                                    ; $410a: $dc $9c $bb
	sub h                                            ; $410d: $94
	ld c, d                                          ; $410e: $4a
	sbc $ff                                          ; $410f: $de $ff
	sub [hl]                                         ; $4111: $96
	ccf                                              ; $4112: $3f
	rra                                              ; $4113: $1f
	rlca                                             ; $4114: $07
	ld bc, $4900                                     ; $4115: $01 $00 $49
	and h                                            ; $4118: $a4
	db $e4                                           ; $4119: $e4
	ldh a, [c]                                       ; $411a: $f2
	ld [hl], a                                       ; $411b: $77
	ld a, a                                          ; $411c: $7f
	ld a, d                                          ; $411d: $7a
	add hl, sp                                       ; $411e: $39
	ld a, l                                          ; $411f: $7d
	cp $97                                           ; $4120: $fe $97
	ld bc, $0402                                     ; $4122: $01 $02 $04
	rst $38                                          ; $4125: $ff
	rst $38                                          ; $4126: $ff
	rrca                                             ; $4127: $0f
	ld bc, $de07                                     ; $4128: $01 $07 $de
	rst $38                                          ; $412b: $ff
	sub d                                            ; $412c: $92
	ld [$2111], sp                                   ; $412d: $08 $11 $21
	dec h                                            ; $4130: $25
	ld b, l                                          ; $4131: $45
	ld b, h                                          ; $4132: $44
	add h                                            ; $4133: $84
	add h                                            ; $4134: $84
	rst $38                                          ; $4135: $ff
	cp $fe                                           ; $4136: $fe $fe
	ld a, [$defa]                                    ; $4138: $fa $fa $de
	ei                                               ; $413b: $fb
	ld a, e                                          ; $413c: $7b
	ccf                                              ; $413d: $3f
	sbc l                                            ; $413e: $9d

jr_073_413f:
	db $fc                                           ; $413f: $fc
	ret nz                                           ; $4140: $c0

	ld a, e                                          ; $4141: $7b
	dec sp                                           ; $4142: $3b
	ld l, e                                          ; $4143: $6b
	ld hl, sp-$6c                                    ; $4144: $f8 $94
	ret nz                                           ; $4146: $c0

	jr nz, jr_073_40d9                               ; $4147: $20 $90

	sub b                                            ; $4149: $90
	ld c, b                                          ; $414a: $48
	ld c, b                                          ; $414b: $48
	jr z, @-$52                                      ; $414c: $28 $ac

	ld h, h                                          ; $414e: $64
	ldh [$f0], a                                     ; $414f: $e0 $f0
	ld a, e                                          ; $4151: $7b
	sbc d                                            ; $4152: $9a
	ld a, a                                          ; $4153: $7f
	sbc c                                            ; $4154: $99
	sub [hl]                                         ; $4155: $96
	db $fc                                           ; $4156: $fc
	inc e                                            ; $4157: $1c
	ld c, $06                                        ; $4158: $0e $06
	ld a, $e2                                        ; $415a: $3e $e2
	ld [hl+], a                                      ; $415c: $22
	ld [hl+], a                                      ; $415d: $22
	ld [de], a                                       ; $415e: $12
	ld [hl], a                                       ; $415f: $77
	jr nc, jr_073_413f                               ; $4160: $30 $dd

	cp $df                                           ; $4162: $fe $df
	pop de                                           ; $4164: $d1
	sbc $e9                                          ; $4165: $de $e9
	sbc $f5                                          ; $4167: $de $f5
	rst SubAFromDE                                          ; $4169: $df
	ccf                                              ; $416a: $3f
	ld [hl], a                                       ; $416b: $77
	ld a, a                                          ; $416c: $7f
	rst SubAFromDE                                          ; $416d: $df
	rrca                                             ; $416e: $0f
	daa                                              ; $416f: $27
	nop                                              ; $4170: $00
	sub e                                            ; $4171: $93
	adc b                                            ; $4172: $88
	sbc c                                            ; $4173: $99
	sbc c                                            ; $4174: $99
	adc b                                            ; $4175: $88
	nop                                              ; $4176: $00
	sbc c                                            ; $4177: $99
	ld [hl+], a                                      ; $4178: $22
	ld b, h                                          ; $4179: $44
	nop                                              ; $417a: $00
	sbc c                                            ; $417b: $99
	ld de, $7baa                                     ; $417c: $11 $aa $7b
	rst FarCall                                          ; $417f: $f7
	sbc h                                            ; $4180: $9c
	ld de, $bb99                                     ; $4181: $11 $99 $bb
	ld [hl], a                                       ; $4184: $77
	ei                                               ; $4185: $fb
	sbc c                                            ; $4186: $99
	sbc c                                            ; $4187: $99
	nop                                              ; $4188: $00
	sbc c                                            ; $4189: $99
	sbc c                                            ; $418a: $99
	ld [hl+], a                                      ; $418b: $22
	nop                                              ; $418c: $00
	ld a, e                                          ; $418d: $7b
	or $99                                           ; $418e: $f6 $99
	ld [hl], a                                       ; $4190: $77
	nop                                              ; $4191: $00
	rst $38                                          ; $4192: $ff
	nop                                              ; $4193: $00
	sbc c                                            ; $4194: $99
	adc b                                            ; $4195: $88
	add sp, -$80                                     ; $4196: $e8 $80
	sbc e                                            ; $4198: $9b
	ret c                                            ; $4199: $d8

	inc e                                            ; $419a: $1c
	ret c                                            ; $419b: $d8

	cp b                                             ; $419c: $b8
	sbc $b7                                          ; $419d: $de $b7
	add e                                            ; $419f: $83
	sbc e                                            ; $41a0: $9b
	daa                                              ; $41a1: $27
	db $e3                                           ; $41a2: $e3
	xor a                                            ; $41a3: $af
	ld l, a                                          ; $41a4: $6f
	ld l, a                                          ; $41a5: $6f
	ld l, h                                          ; $41a6: $6c
	ld l, h                                          ; $41a7: $6c
	or $da                                           ; $41a8: $f6 $da
	ld sp, hl                                        ; $41aa: $f9
	ld sp, hl                                        ; $41ab: $f9
	db $fc                                           ; $41ac: $fc
	ld a, a                                          ; $41ad: $7f
	ld a, c                                          ; $41ae: $79
	or c                                             ; $41af: $b1
	ldh [$f7], a                                     ; $41b0: $e0 $f7
	or a                                             ; $41b2: $b7
	sbc a                                            ; $41b3: $9f
	adc a                                            ; $41b4: $8f
	rst GetHLinHL                                          ; $41b5: $cf
	reti                                             ; $41b6: $d9


	pop af                                           ; $41b7: $f1
	ldh [$b1], a                                     ; $41b8: $e0 $b1
	add hl, bc                                       ; $41ba: $09
	nop                                              ; $41bb: $00
	db $dd                                           ; $41bc: $dd
	add b                                            ; $41bd: $80
	sbc l                                            ; $41be: $9d
	ld b, b                                          ; $41bf: $40
	or b                                             ; $41c0: $b0
	ld l, a                                          ; $41c1: $6f
	ld hl, sp-$7a                                    ; $41c2: $f8 $86
	ret nz                                           ; $41c4: $c0

	ld b, c                                          ; $41c5: $41
	ld b, d                                          ; $41c6: $42
	ld b, l                                          ; $41c7: $45
	ld c, e                                          ; $41c8: $4b
	sbc e                                            ; $41c9: $9b
	cp e                                             ; $41ca: $bb
	xor e                                            ; $41cb: $ab
	ei                                               ; $41cc: $fb
	pop bc                                           ; $41cd: $c1
	jp $ccc6                                         ; $41ce: $c3 $c6 $cc


	sbc h                                            ; $41d1: $9c
	cp h                                             ; $41d2: $bc
	cp h                                             ; $41d3: $bc
	call z, Call_073_619e                            ; $41d4: $cc $9e $61
	jr @+$08                                         ; $41d7: $18 $06

	jp $bfff                                         ; $41d9: $c3 $ff $bf


	ld a, a                                          ; $41dc: $7f
	call c, $84ff                                    ; $41dd: $dc $ff $84
	ccf                                              ; $41e0: $3f
	ld h, b                                          ; $41e1: $60
	ret nz                                           ; $41e2: $c0

	rst $38                                          ; $41e3: $ff
	rst AddAOntoHL                                          ; $41e4: $ef
	call c, Call_073_70b8                            ; $41e5: $dc $b8 $70
	cp $87                                           ; $41e8: $fe $87
	nop                                              ; $41ea: $00
	add h                                            ; $41eb: $84
	jr c, jr_073_4266                                ; $41ec: $38 $78

	ldh a, [$e0]                                     ; $41ee: $f0 $e0
	ld hl, sp+$06                                    ; $41f0: $f8 $06
	nop                                              ; $41f2: $00
	rrca                                             ; $41f3: $0f
	rst $38                                          ; $41f4: $ff
	ld [hl], b                                       ; $41f5: $70
	ld c, $f1                                        ; $41f6: $0e $f1
	rst $38                                          ; $41f8: $ff
	cp $fe                                           ; $41f9: $fe $fe
	call c, $9aff                                    ; $41fb: $dc $ff $9a
	adc a                                            ; $41fe: $8f
	db $e3                                           ; $41ff: $e3
	inc sp                                           ; $4200: $33
	cp $3e                                           ; $4201: $fe $3e
	sbc $3f                                          ; $4203: $de $3f
	rst SubAFromDE                                          ; $4205: $df
	rra                                              ; $4206: $1f
	sbc d                                            ; $4207: $9a
	rrca                                             ; $4208: $0f
	inc bc                                           ; $4209: $03
	inc bc                                           ; $420a: $03
	ld [bc], a                                       ; $420b: $02
	ld [bc], a                                       ; $420c: $02
	sbc $01                                          ; $420d: $de $01
	sbc [hl]                                         ; $420f: $9e
	nop                                              ; $4210: $00
	sbc $07                                          ; $4211: $de $07
	rst SubAFromDE                                          ; $4213: $df
	rrca                                             ; $4214: $0f
	adc b                                            ; $4215: $88
	sbc a                                            ; $4216: $9f
	rst $38                                          ; $4217: $ff
	rst $38                                          ; $4218: $ff
	nop                                              ; $4219: $00
	nop                                              ; $421a: $00
	ld bc, $0402                                     ; $421b: $01 $02 $04
	ld [$fd98], sp                                   ; $421e: $08 $98 $fd
	cp $a0                                           ; $4221: $fe $a0
	xor e                                            ; $4223: $ab
	xor a                                            ; $4224: $af
	and [hl]                                         ; $4225: $a6
	ld h, b                                          ; $4226: $60
	ld e, a                                          ; $4227: $5f
	ld d, b                                          ; $4228: $50
	rst $38                                          ; $4229: $ff
	rst $38                                          ; $422a: $ff
	jp hl                                            ; $422b: $e9


	jp hl                                            ; $422c: $e9


	db $dd                                           ; $422d: $dd
	rst $38                                          ; $422e: $ff
	ld c, e                                          ; $422f: $4b
	and b                                            ; $4230: $a0
	sbc d                                            ; $4231: $9a
	jp nz, $d7ef                                     ; $4232: $c2 $ef $d7

	cp h                                             ; $4235: $bc
	ld hl, sp+$77                                    ; $4236: $f8 $77
	and b                                            ; $4238: $a0
	sbc d                                            ; $4239: $9a
	cp h                                             ; $423a: $bc
	ld [hl], h                                       ; $423b: $74
	ld hl, sp+$50                                    ; $423c: $f8 $50
	ret nz                                           ; $423e: $c0

	ld a, e                                          ; $423f: $7b
	and b                                            ; $4240: $a0
	inc bc                                           ; $4241: $03
	ldh [rVBK], a                                    ; $4242: $e0 $4f
	ldh [$9b], a                                     ; $4244: $e0 $9b
	call z, $f7ff                                    ; $4246: $cc $ff $f7
	call z, $e073                                    ; $4249: $cc $73 $e0
	sbc h                                            ; $424c: $9c
	sbc h                                            ; $424d: $9c
	inc a                                            ; $424e: $3c
	ret z                                            ; $424f: $c8

	ld [hl], e                                       ; $4250: $73
	ldh [hDisp0_BGP], a                                     ; $4251: $e0 $85
	dec sp                                           ; $4253: $3b
	push bc                                          ; $4254: $c5
	inc sp                                           ; $4255: $33
	dec c                                            ; $4256: $0d
	ld b, $07                                        ; $4257: $06 $07
	ccf                                              ; $4259: $3f
	add $c6                                          ; $425a: $c6 $c6
	cp $3c                                           ; $425c: $fe $3c
	ld c, $07                                        ; $425e: $0e $07
	inc bc                                           ; $4260: $03
	dec sp                                           ; $4261: $3b
	ei                                               ; $4262: $fb
	ld b, $0e                                        ; $4263: $06 $0e
	inc c                                            ; $4265: $0c

jr_073_4266:
	inc c                                            ; $4266: $0c

jr_073_4267:
	inc e                                            ; $4267: $1c
	jr jr_073_4282                                   ; $4268: $18 $18

	jr nc, jr_073_4267                               ; $426a: $30 $fb

	ei                                               ; $426c: $fb
	sbc $f7                                          ; $426d: $de $f7
	rst SubAFromDE                                          ; $426f: $df
	rst AddAOntoHL                                          ; $4270: $ef
	sbc [hl]                                         ; $4271: $9e
	rst $38                                          ; $4272: $ff
	inc bc                                           ; $4273: $03
	ldh [$9d], a                                     ; $4274: $e0 $9d
	call $0b3f                                       ; $4276: $cd $3f $0b
	ldh [$9e], a                                     ; $4279: $e0 $9e
	scf                                              ; $427b: $37
	inc de                                           ; $427c: $13
	ldh [$f7], a                                     ; $427d: $e0 $f7
	nop                                              ; $427f: $00
	add b                                            ; $4280: $80
	ret c                                            ; $4281: $d8

jr_073_4282:
	daa                                              ; $4282: $27
	inc e                                            ; $4283: $1c
	db $e3                                           ; $4284: $e3
	ret c                                            ; $4285: $d8

	xor a                                            ; $4286: $af
	cp b                                             ; $4287: $b8
	ld l, a                                          ; $4288: $6f
	or a                                             ; $4289: $b7
	ld l, a                                          ; $428a: $6f
	or a                                             ; $428b: $b7
	ld l, h                                          ; $428c: $6c
	or a                                             ; $428d: $b7
	ld l, h                                          ; $428e: $6c
	sbc d                                            ; $428f: $9a
	rst FarCall                                          ; $4290: $f7
	db $db                                           ; $4291: $db
	rst FarCall                                          ; $4292: $f7
	ld sp, hl                                        ; $4293: $f9
	or a                                             ; $4294: $b7
	ld sp, hl                                        ; $4295: $f9
	sbc a                                            ; $4296: $9f
	db $fc                                           ; $4297: $fc
	adc a                                            ; $4298: $8f
	ld a, a                                          ; $4299: $7f
	rst GetHLinHL                                          ; $429a: $cf
	ld a, c                                          ; $429b: $79
	reti                                             ; $429c: $d9


	or c                                             ; $429d: $b1
	pop af                                           ; $429e: $f1
	ldh [$98], a                                     ; $429f: $e0 $98
	ldh [$b1], a                                     ; $42a1: $e0 $b1
	or b                                             ; $42a3: $b0
	add hl, bc                                       ; $42a4: $09
	add hl, bc                                       ; $42a5: $09
	nop                                              ; $42a6: $00
	nop                                              ; $42a7: $00
	reti                                             ; $42a8: $d9


	add b                                            ; $42a9: $80
	add b                                            ; $42aa: $80
	ld b, b                                          ; $42ab: $40
	ret nz                                           ; $42ac: $c0

	ld b, c                                          ; $42ad: $41
	pop bc                                           ; $42ae: $c1
	ld b, d                                          ; $42af: $42
	jp $c645                                         ; $42b0: $c3 $45 $c6


	ld c, e                                          ; $42b3: $4b
	call z, $9c9b                                    ; $42b4: $cc $9b $9c
	cp e                                             ; $42b7: $bb
	cp h                                             ; $42b8: $bc
	xor e                                            ; $42b9: $ab
	cp h                                             ; $42ba: $bc
	ei                                               ; $42bb: $fb
	call z, $ff9e                                    ; $42bc: $cc $9e $ff
	ld h, c                                          ; $42bf: $61
	rst $38                                          ; $42c0: $ff
	jr @+$01                                         ; $42c1: $18 $ff

	ld b, $ff                                        ; $42c3: $06 $ff
	db $e3                                           ; $42c5: $e3
	rst $38                                          ; $42c6: $ff
	rst $38                                          ; $42c7: $ff
	rra                                              ; $42c8: $1f
	rst $38                                          ; $42c9: $ff
	adc e                                            ; $42ca: $8b
	ld [hl], b                                       ; $42cb: $70
	xor a                                            ; $42cc: $af
	sbc $df                                          ; $42cd: $de $df
	inc a                                            ; $42cf: $3c
	or a                                             ; $42d0: $b7
	ld a, h                                          ; $42d1: $7c
	call z, $f888                                    ; $42d2: $cc $88 $f8
	ret nc                                           ; $42d5: $d0

	ld [hl], b                                       ; $42d6: $70
	ret nz                                           ; $42d7: $c0

	cp $f8                                           ; $42d8: $fe $f8
	add a                                            ; $42da: $87
	ld b, $00                                        ; $42db: $06 $00
	nop                                              ; $42dd: $00
	rrca                                             ; $42de: $0f
	sbc $ff                                          ; $42df: $de $ff
	adc l                                            ; $42e1: $8d
	ld [hl], b                                       ; $42e2: $70
	rst $38                                          ; $42e3: $ff
	ld c, $ff                                        ; $42e4: $0e $ff
	pop af                                           ; $42e6: $f1
	rst $38                                          ; $42e7: $ff
	rst $38                                          ; $42e8: $ff
	adc a                                            ; $42e9: $8f
	cp $e3                                           ; $42ea: $fe $e3
	cp $33                                           ; $42ec: $fe $33
	cp $03                                           ; $42ee: $fe $03
	ld a, $03                                        ; $42f0: $3e $03
	ccf                                              ; $42f2: $3f
	ld [bc], a                                       ; $42f3: $02
	ld a, e                                          ; $42f4: $7b
	cp $9d                                           ; $42f5: $fe $9d
	ld bc, $7b1f                                     ; $42f7: $01 $1f $7b
	cp $9c                                           ; $42fa: $fe $9c
	rrca                                             ; $42fc: $0f
	nop                                              ; $42fd: $00
	rlca                                             ; $42fe: $07
	ld [hl], a                                       ; $42ff: $77
	cp $7f                                           ; $4300: $fe $7f
	ld hl, sp-$7a                                    ; $4302: $f8 $86
	ld [bc], a                                       ; $4304: $02
	rrca                                             ; $4305: $0f
	inc b                                            ; $4306: $04
	sbc a                                            ; $4307: $9f
	ld [$98ff], sp                                   ; $4308: $08 $ff $98
	rst $38                                          ; $430b: $ff
	db $fd                                           ; $430c: $fd
	cp $ff                                           ; $430d: $fe $ff
	and b                                            ; $430f: $a0
	rst $38                                          ; $4310: $ff
	xor e                                            ; $4311: $ab
	jp hl                                            ; $4312: $e9


	xor a                                            ; $4313: $af
	jp hl                                            ; $4314: $e9


	and [hl]                                         ; $4315: $a6
	rst $38                                          ; $4316: $ff
	ld h, b                                          ; $4317: $60
	rst $38                                          ; $4318: $ff
	ld e, a                                          ; $4319: $5f
	rst $38                                          ; $431a: $ff
	ld d, b                                          ; $431b: $50
	rst $38                                          ; $431c: $ff
	rlca                                             ; $431d: $07
	and b                                            ; $431e: $a0
	ld c, a                                          ; $431f: $4f
	ldh [$97], a                                     ; $4320: $e0 $97
	or a                                             ; $4322: $b7
	adc $ef                                          ; $4323: $ce $ef
	inc e                                            ; $4325: $1c
	rst SubAFromHL                                          ; $4326: $d7
	inc a                                            ; $4327: $3c
	db $ec                                           ; $4328: $ec
	xor b                                            ; $4329: $a8
	daa                                              ; $432a: $27
	ldh [$97], a                                     ; $432b: $e0 $97
	cp e                                             ; $432d: $bb
	adc $f7                                          ; $432e: $ce $f7
	inc a                                            ; $4330: $3c
	rst GetHLinHL                                          ; $4331: $cf
	inc a                                            ; $4332: $3c
	cp h                                             ; $4333: $bc
	ld hl, sp+$5f                                    ; $4334: $f8 $5f
	ldh [$67], a                                     ; $4336: $e0 $67
	add b                                            ; $4338: $80
	sbc [hl]                                         ; $4339: $9e
	adc a                                            ; $433a: $8f
	dec hl                                           ; $433b: $2b
	add b                                            ; $433c: $80
	add b                                            ; $433d: $80
	ccf                                              ; $433e: $3f
	ret nz                                           ; $433f: $c0

	push bc                                          ; $4340: $c5
	cp $33                                           ; $4341: $fe $33
	inc a                                            ; $4343: $3c
	dec c                                            ; $4344: $0d
	ld c, $06                                        ; $4345: $0e $06
	rlca                                             ; $4347: $07
	rlca                                             ; $4348: $07

jr_073_4349:
	inc bc                                           ; $4349: $03
	ccf                                              ; $434a: $3f

jr_073_434b:
	dec sp                                           ; $434b: $3b
	add $fb                                          ; $434c: $c6 $fb
	ld b, $fb                                        ; $434e: $06 $fb
	ld c, $fb                                        ; $4350: $0e $fb
	inc c                                            ; $4352: $0c
	rst FarCall                                          ; $4353: $f7
	inc c                                            ; $4354: $0c
	rst FarCall                                          ; $4355: $f7
	inc e                                            ; $4356: $1c
	rst FarCall                                          ; $4357: $f7
	jr jr_073_4349                                   ; $4358: $18 $ef

	jr jr_073_434b                                   ; $435a: $18 $ef

	jr nc, jr_073_43d9                               ; $435c: $30 $7b

	ldh [$9c], a                                     ; $435e: $e0 $9c
	call $3bfe                                       ; $4360: $cd $fe $3b
	inc de                                           ; $4363: $13
	ldh [$9b], a                                     ; $4364: $e0 $9b
	adc $ff                                          ; $4366: $ce $ff
	ld a, $3f                                        ; $4368: $3e $3f
	rrca                                             ; $436a: $0f
	ldh [$df], a                                     ; $436b: $e0 $df
	ccf                                              ; $436d: $3f
	sbc e                                            ; $436e: $9b
	dec c                                            ; $436f: $0d
	rrca                                             ; $4370: $0f
	rlca                                             ; $4371: $07
	ld b, $2f                                        ; $4372: $06 $2f
	ldh [$57], a                                     ; $4374: $e0 $57
	add e                                            ; $4376: $83
	add a                                            ; $4377: $87
	jr nc, @+$01                                     ; $4378: $30 $ff

	ld h, [hl]                                       ; $437a: $66
	inc sp                                           ; $437b: $33
	add hl, de                                       ; $437c: $19
	inc c                                            ; $437d: $0c
	ld b, $03                                        ; $437e: $06 $03
	rst GetHLinHL                                          ; $4380: $cf
	nop                                              ; $4381: $00
	ld e, c                                          ; $4382: $59
	inc l                                            ; $4383: $2c
	ld d, $0b                                        ; $4384: $16 $0b
	dec b                                            ; $4386: $05
	ld [bc], a                                       ; $4387: $02
	ld bc, $0300                                     ; $4388: $01 $00 $03
	rlca                                             ; $438b: $07
	rra                                              ; $438c: $1f
	rra                                              ; $438d: $1f
	ccf                                              ; $438e: $3f
	ccf                                              ; $438f: $3f
	ld a, e                                          ; $4390: $7b
	ld hl, sp-$80                                    ; $4391: $f8 $80
	inc b                                            ; $4393: $04
	rra                                              ; $4394: $1f
	db $10                                           ; $4395: $10
	jr nc, @+$41                                     ; $4396: $30 $3f

	nop                                              ; $4398: $00
	ld bc, $0702                                     ; $4399: $01 $02 $07
	ld bc, $0603                                     ; $439c: $01 $03 $06
	ld c, $00                                        ; $439f: $0e $00
	ld bc, $0703                                     ; $43a1: $01 $03 $07
	ld bc, $0502                                     ; $43a4: $01 $02 $05
	add hl, bc                                       ; $43a7: $09
	dec c                                            ; $43a8: $0d
	dec e                                            ; $43a9: $1d
	ld e, $3a                                        ; $43aa: $1e $3a
	ld a, [hl-]                                      ; $43ac: $3a
	ld [hl], l                                       ; $43ad: $75
	ld a, l                                          ; $43ae: $7d
	ld l, l                                          ; $43af: $6d
	dec bc                                           ; $43b0: $0b
	inc de                                           ; $43b1: $13
	adc b                                            ; $43b2: $88
	inc de                                           ; $43b3: $13
	daa                                              ; $43b4: $27
	daa                                              ; $43b5: $27
	ld c, [hl]                                       ; $43b6: $4e
	ld c, [hl]                                       ; $43b7: $4e
	ld e, [hl]                                       ; $43b8: $5e
	ld a, l                                          ; $43b9: $7d
	ld [hl], l                                       ; $43ba: $75
	ld [hl], l                                       ; $43bb: $75
	dec [hl]                                         ; $43bc: $35
	dec a                                            ; $43bd: $3d
	dec e                                            ; $43be: $1d
	dec b                                            ; $43bf: $05
	dec b                                            ; $43c0: $05
	ld e, [hl]                                       ; $43c1: $5e
	ld d, [hl]                                       ; $43c2: $56
	ld d, [hl]                                       ; $43c3: $56
	ld [hl], $3e                                     ; $43c4: $36 $3e
	ld e, $06                                        ; $43c6: $1e $06
	ld b, $05                                        ; $43c8: $06 $05
	sbc $02                                          ; $43ca: $de $02
	rst SubAFromDE                                          ; $43cc: $df
	ld bc, $7fff                                     ; $43cd: $01 $ff $7f
	xor [hl]                                         ; $43d0: $ae
	rst SubAFromDE                                          ; $43d1: $df
	inc bc                                           ; $43d2: $03
	ld [hl], a                                       ; $43d3: $77
	ld hl, sp-$80                                    ; $43d4: $f8 $80
	ldh [rIE], a                                     ; $43d6: $e0 $ff
	inc bc                                           ; $43d8: $03

jr_073_43d9:
	ld [de], a                                       ; $43d9: $12
	dec b                                            ; $43da: $05
	adc d                                            ; $43db: $8a
	call nc, $1fe8                                   ; $43dc: $d4 $e8 $1f
	nop                                              ; $43df: $00
	ld hl, sp-$14                                    ; $43e0: $f8 $ec
	ld sp, hl                                        ; $43e2: $f9
	ld [hl], d                                       ; $43e3: $72
	inc h                                            ; $43e4: $24
	ld [$e0d0], sp                                   ; $43e5: $08 $d0 $e0
	ld hl, sp-$04                                    ; $43e8: $f8 $fc
	db $fd                                           ; $43ea: $fd
	db $fd                                           ; $43eb: $fd
	ei                                               ; $43ec: $fb
	db $e3                                           ; $43ed: $e3
	db $10                                           ; $43ee: $10
	and b                                            ; $43ef: $a0
	cp b                                             ; $43f0: $b8
	ld h, h                                          ; $43f1: $64
	push hl                                          ; $43f2: $e5
	and l                                            ; $43f3: $a5
	ld h, a                                          ; $43f4: $67
	sbc [hl]                                         ; $43f5: $9e
	ld a, $ec                                        ; $43f6: $3e $ec
	sbc h                                            ; $43f8: $9c
	add hl, de                                       ; $43f9: $19
	dec h                                            ; $43fa: $25
	ld [hl], e                                       ; $43fb: $73
	ld l, a                                          ; $43fc: $6f
	ld hl, sp-$7c                                    ; $43fd: $f8 $84
	dec a                                            ; $43ff: $3d
	ld c, a                                          ; $4400: $4f
	adc e                                            ; $4401: $8b
	ld b, l                                          ; $4402: $45
	add hl, sp                                       ; $4403: $39
	ret nc                                           ; $4404: $d0

	ld b, h                                          ; $4405: $44
	cp $80                                           ; $4406: $fe $80
	rst $38                                          ; $4408: $ff
	rst JumpTable                                          ; $4409: $c7
	add e                                            ; $440a: $83
	rst JumpTable                                          ; $440b: $c7
	rst AddAOntoHL                                          ; $440c: $ef
	inc bc                                           ; $440d: $03
	ld a, a                                          ; $440e: $7f
	rst $38                                          ; $440f: $ff
	add b                                            ; $4410: $80
	ld b, d                                          ; $4411: $42
	jp z, $9a8a                                      ; $4412: $ca $8a $9a

	sub [hl]                                         ; $4415: $96
	or h                                             ; $4416: $b4
	xor l                                            ; $4417: $ad
	jp hl                                            ; $4418: $e9


	add b                                            ; $4419: $80
	sbc $04                                          ; $441a: $de $04
	add b                                            ; $441c: $80
	ld [$120a], sp                                   ; $441d: $08 $0a $12
	ld d, $eb                                        ; $4420: $16 $eb
	db $db                                           ; $4422: $db
	db $d3                                           ; $4423: $d3
	db $d3                                           ; $4424: $d3
	rst SubAFromHL                                          ; $4425: $d7
	rst SubAFromHL                                          ; $4426: $d7
	rst JumpTable                                          ; $4427: $c7
	and a                                            ; $4428: $a7
	ld d, $27                                        ; $4429: $16 $27
	cpl                                              ; $442b: $2f
	ld l, $2e                                        ; $442c: $2e $2e
	inc l                                            ; $442e: $2c
	ccf                                              ; $442f: $3f
	ld a, h                                          ; $4430: $7c
	and a                                            ; $4431: $a7
	or e                                             ; $4432: $b3
	xor e                                            ; $4433: $ab
	and a                                            ; $4434: $a7
	ld hl, $9020                                     ; $4435: $21 $20 $90
	sub b                                            ; $4438: $90
	ld a, h                                          ; $4439: $7c
	ld a, [hl]                                       ; $443a: $7e
	ld l, [hl]                                       ; $443b: $6e
	adc [hl]                                         ; $443c: $8e
	ld h, a                                          ; $443d: $67
	pop hl                                           ; $443e: $e1
	ldh [$f0], a                                     ; $443f: $e0 $f0
	ldh a, [$50]                                     ; $4441: $f0 $50
	jr z, jr_073_446d                                ; $4443: $28 $28

	inc d                                            ; $4445: $14
	inc c                                            ; $4446: $0c
	ld b, $02                                        ; $4447: $06 $02
	ld bc, $3870                                     ; $4449: $01 $70 $38
	jr c, jr_073_446a                                ; $444c: $38 $1c

	ld [hl], a                                       ; $444e: $77
	ld hl, sp-$06                                    ; $444f: $f8 $fa
	ld h, e                                          ; $4451: $63
	ld hl, sp-$80                                    ; $4452: $f8 $80
	db $e3                                           ; $4454: $e3
	rst SubAFromBC                                          ; $4455: $e7
	ld e, c                                          ; $4456: $59
	sub [hl]                                         ; $4457: $96
	inc e                                            ; $4458: $1c
	inc sp                                           ; $4459: $33
	jr c, jr_073_4498                                ; $445a: $38 $3c

	inc bc                                           ; $445c: $03
	rlca                                             ; $445d: $07
	ld e, a                                          ; $445e: $5f
	sbc c                                            ; $445f: $99
	rra                                              ; $4460: $1f
	ccf                                              ; $4461: $3f
	scf                                              ; $4462: $37
	inc sp                                           ; $4463: $33
	ld e, [hl]                                       ; $4464: $5e
	ld e, a                                          ; $4465: $5f
	rst SubAFromDE                                          ; $4466: $df
	sbc a                                            ; $4467: $9f
	ld e, [hl]                                       ; $4468: $5e
	ld e, [hl]                                       ; $4469: $5e

jr_073_446a:
	call c, Call_073_71dc                            ; $446a: $dc $dc $71

jr_073_446d:
	ld [hl], b                                       ; $446d: $70
	ldh a, [$f0]                                     ; $446e: $f0 $f0
	or c                                             ; $4470: $b1
	or c                                             ; $4471: $b1
	inc sp                                           ; $4472: $33
	sbc [hl]                                         ; $4473: $9e
	inc sp                                           ; $4474: $33
	ei                                               ; $4475: $fb
	sbc l                                            ; $4476: $9d
	inc c                                            ; $4477: $0c
	jr jr_073_44e1                                   ; $4478: $18 $67

	ld hl, sp-$80                                    ; $447a: $f8 $80
	jr c, jr_073_44ce                                ; $447c: $38 $50

	ld d, b                                          ; $447e: $50
	sub e                                            ; $447f: $93
	rst SubAFromHL                                          ; $4480: $d7
	ld e, a                                          ; $4481: $5f
	sbc $dd                                          ; $4482: $de $dd
	jr c, jr_073_44f6                                ; $4484: $38 $70

	ld [hl], b                                       ; $4486: $70
	di                                               ; $4487: $f3
	or h                                             ; $4488: $b4
	cp b                                             ; $4489: $b8
	ld sp, $9933                                     ; $448a: $31 $33 $99
	sub d                                            ; $448d: $92
	dec b                                            ; $448e: $05
	jp $3807                                         ; $448f: $c3 $07 $38


	add e                                            ; $4492: $83
	nop                                              ; $4493: $00
	daa                                              ; $4494: $27
	cpl                                              ; $4495: $2f
	cp [hl]                                          ; $4496: $be
	cp h                                             ; $4497: $bc

jr_073_4498:
	rst $38                                          ; $4498: $ff
	rst JumpTable                                          ; $4499: $c7
	nop                                              ; $449a: $00
	adc [hl]                                         ; $449b: $8e
	nop                                              ; $449c: $00
	inc b                                            ; $449d: $04
	ld a, [bc]                                       ; $449e: $0a
	dec c                                            ; $449f: $0d
	add $ea                                          ; $44a0: $c6 $ea
	ld [hl], l                                       ; $44a2: $75
	halt                                             ; $44a3: $76
	cp a                                             ; $44a4: $bf
	ld [$1204], sp                                   ; $44a5: $08 $04 $12
	add hl, de                                       ; $44a8: $19
	dec d                                            ; $44a9: $15
	adc d                                            ; $44aa: $8a
	adc c                                            ; $44ab: $89
	ld b, l                                          ; $44ac: $45
	ldh [$c1], a                                     ; $44ad: $e0 $c1
	rst SubAFromDE                                          ; $44af: $df
	adc a                                            ; $44b0: $8f
	adc c                                            ; $44b1: $89
	sbc a                                            ; $44b2: $9f
	db $ed                                           ; $44b3: $ed
	adc l                                            ; $44b4: $8d
	ld hl, sp-$26                                    ; $44b5: $f8 $da
	db $d3                                           ; $44b7: $d3
	ld [$0f08], sp                                   ; $44b8: $08 $08 $0f
	sbc b                                            ; $44bb: $98
	ld hl, sp-$10                                    ; $44bc: $f8 $f0
	jr nc, jr_073_44f0                               ; $44be: $30 $30

	or c                                             ; $44c0: $b1
	or l                                             ; $44c1: $b5
	and a                                            ; $44c2: $a7
	ld h, d                                          ; $44c3: $62
	ld l, d                                          ; $44c4: $6a
	ld c, [hl]                                       ; $44c5: $4e
	push bc                                          ; $44c6: $c5
	push de                                          ; $44c7: $d5
	sbc $61                                          ; $44c8: $de $61
	sbc $c2                                          ; $44ca: $de $c2
	rst SubAFromDE                                          ; $44cc: $df
	add l                                            ; $44cd: $85

jr_073_44ce:
	pop af                                           ; $44ce: $f1
	add b                                            ; $44cf: $80
	inc bc                                           ; $44d0: $03
	inc e                                            ; $44d1: $1c
	ld sp, hl                                        ; $44d2: $f9
	rst SubAFromBC                                          ; $44d3: $e7
	sbc c                                            ; $44d4: $99
	ld h, a                                          ; $44d5: $67
	add b                                            ; $44d6: $80
	rst $38                                          ; $44d7: $ff
	inc bc                                           ; $44d8: $03
	rra                                              ; $44d9: $1f
	rst SubAFromBC                                          ; $44da: $e7
	rra                                              ; $44db: $1f
	ld a, [hl]                                       ; $44dc: $7e
	ld hl, sp-$01                                    ; $44dd: $f8 $ff
	rst $38                                          ; $44df: $ff
	and c                                            ; $44e0: $a1

jr_073_44e1:
	pop bc                                           ; $44e1: $c1
	cp a                                             ; $44e2: $bf
	pop bc                                           ; $44e3: $c1
	ld c, [hl]                                       ; $44e4: $4e
	ret nc                                           ; $44e5: $d0

	ld [hl], $48                                     ; $44e6: $36 $48
	jp $0000                                        ; $44e8: $c3 $00 $00


	ld a, $81                                        ; $44eb: $3e $81
	ldh [$f8], a                                     ; $44ed: $e0 $f8
	ld a, a                                          ; $44ef: $7f

jr_073_44f0:
	ld e, $90                                        ; $44f0: $1e $90
	ld a, [de]                                       ; $44f2: $1a
	add hl, bc                                       ; $44f3: $09
	db $ec                                           ; $44f4: $ec
	sbc [hl]                                         ; $44f5: $9e

jr_073_44f6:
	ld b, b                                          ; $44f6: $40
	jr c, jr_073_4538                                ; $44f7: $38 $3f

	rrca                                             ; $44f9: $0f
	rlca                                             ; $44fa: $07
	rlca                                             ; $44fb: $07
	inc bc                                           ; $44fc: $03
	pop hl                                           ; $44fd: $e1
	rst $38                                          ; $44fe: $ff
	rst $38                                          ; $44ff: $ff
	rst SubAFromDE                                          ; $4500: $df
	ldh [$c1], a                                     ; $4501: $e0 $c1
	sub d                                            ; $4503: $92
	rst $38                                          ; $4504: $ff
	rst AddAOntoHL                                          ; $4505: $ef
	ld d, e                                          ; $4506: $53
	ld e, e                                          ; $4507: $5b
	call c, $b4a4                                    ; $4508: $dc $a4 $b4
	cp b                                             ; $450b: $b8
	ld a, [hl]                                       ; $450c: $7e
	ld [$5051], a                                    ; $450d: $ea $51 $50
	ld d, b                                          ; $4510: $50
	sbc $a0                                          ; $4511: $de $a0
	sub a                                            ; $4513: $97
	ld c, e                                          ; $4514: $4b
	ld l, b                                          ; $4515: $68
	ld [hl], b                                       ; $4516: $70
	sub b                                            ; $4517: $90
	ret nc                                           ; $4518: $d0

	ldh [rAUD4LEN], a                                ; $4519: $e0 $20
	and b                                            ; $451b: $a0
	sbc $40                                          ; $451c: $de $40
	sbc $80                                          ; $451e: $de $80
	dec sp                                           ; $4520: $3b
	ret nc                                           ; $4521: $d0

	add b                                            ; $4522: $80
	inc c                                            ; $4523: $0c
	ret nz                                           ; $4524: $c0

	rst $38                                          ; $4525: $ff
	ld hl, sp-$39                                    ; $4526: $f8 $c7
	jr c, @-$37                                      ; $4528: $38 $c7

	rst $38                                          ; $452a: $ff
	db $fc                                           ; $452b: $fc
	ret nz                                           ; $452c: $c0

	rst $38                                          ; $452d: $ff
	rlca                                             ; $452e: $07
	ccf                                              ; $452f: $3f
	rst $38                                          ; $4530: $ff
	ld hl, sp-$60                                    ; $4531: $f8 $a0
	ld l, b                                          ; $4533: $68
	sbc d                                            ; $4534: $9a
	and $01                                          ; $4535: $e6 $01
	ld e, a                                          ; $4537: $5f

jr_073_4538:
	inc l                                            ; $4538: $2c
	di                                               ; $4539: $f3
	pop bc                                           ; $453a: $c1
	ldh a, [$7c]                                     ; $453b: $f0 $7c
	rra                                              ; $453d: $1f
	rst $38                                          ; $453e: $ff
	ccf                                              ; $453f: $3f
	rra                                              ; $4540: $1f
	rrca                                             ; $4541: $0f

jr_073_4542:
	adc a                                            ; $4542: $8f
	add b                                            ; $4543: $80
	ld [hl], b                                       ; $4544: $70
	ld c, $a7                                        ; $4545: $0e $a7
	ld c, d                                          ; $4547: $4a
	dec h                                            ; $4548: $25
	ld a, [de]                                       ; $4549: $1a
	ld b, $ff                                        ; $454a: $06 $ff
	rst $38                                          ; $454c: $ff
	cp a                                             ; $454d: $bf
	rst GetHLinHL                                          ; $454e: $cf
	rst SubAFromBC                                          ; $454f: $e7
	di                                               ; $4550: $f3
	db $fd                                           ; $4551: $fd
	rst $38                                          ; $4552: $ff
	ldh [$c1], a                                     ; $4553: $e0 $c1
	add e                                            ; $4555: $83
	dec a                                            ; $4556: $3d
	db $fd                                           ; $4557: $fd
	ei                                               ; $4558: $fb
	ld a, [$74f6]                                    ; $4559: $fa $f6 $74
	ld c, h                                          ; $455c: $4c
	adc b                                            ; $455d: $88
	dec b                                            ; $455e: $05
	add hl, bc                                       ; $455f: $09
	ld a, [bc]                                       ; $4560: $0a
	sub d                                            ; $4561: $92
	ld [hl], h                                       ; $4562: $74
	inc b                                            ; $4563: $04
	ld [$1808], sp                                   ; $4564: $08 $08 $18
	db $10                                           ; $4567: $10
	jr nc, jr_073_458b                               ; $4568: $30 $21

	ld h, e                                          ; $456a: $63
	ld b, a                                          ; $456b: $47
	rst GetHLinHL                                          ; $456c: $cf
	cp a                                             ; $456d: $bf
	db $10                                           ; $456e: $10
	db $10                                           ; $456f: $10
	jr nz, jr_073_4592                               ; $4570: $20 $20

	ld [hl], a                                       ; $4572: $77
	ld e, l                                          ; $4573: $5d
	pop af                                           ; $4574: $f1
	sbc [hl]                                         ; $4575: $9e
	ret nz                                           ; $4576: $c0

	ld a, c                                          ; $4577: $79
	ld c, l                                          ; $4578: $4d
	sbc e                                            ; $4579: $9b
	jr c, jr_073_4542                                ; $457a: $38 $c6

	ld a, b                                          ; $457c: $78
	adc h                                            ; $457d: $8c
	ld [hl], a                                       ; $457e: $77
	ld hl, sp-$80                                    ; $457f: $f8 $80
	ld hl, sp-$02                                    ; $4581: $f8 $fe
	ld hl, sp+$7c                                    ; $4583: $f8 $7c
	db $e3                                           ; $4585: $e3
	db $fc                                           ; $4586: $fc
	dec de                                           ; $4587: $1b
	push hl                                          ; $4588: $e5
	cp d                                             ; $4589: $ba
	db $fd                                           ; $458a: $fd

jr_073_458b:
	ld a, [hl]                                       ; $458b: $7e
	ld h, a                                          ; $458c: $67
	rst $38                                          ; $458d: $ff
	rra                                              ; $458e: $1f
	ld h, a                                          ; $458f: $67
	dec de                                           ; $4590: $1b
	push bc                                          ; $4591: $c5

jr_073_4592:
	ldh [c], a                                       ; $4592: $e2
	db $fd                                           ; $4593: $fd
	sbc b                                            ; $4594: $98
	cp e                                             ; $4595: $bb
	ld e, [hl]                                       ; $4596: $5e
	dec l                                            ; $4597: $2d
	sub [hl]                                         ; $4598: $96
	ld l, e                                          ; $4599: $6b
	dec e                                            ; $459a: $1d
	and [hl]                                         ; $459b: $a6
	ld e, d                                          ; $459c: $5a
	call nz, $f3e3                                   ; $459d: $c4 $e3 $f3
	sub a                                            ; $45a0: $97
	ld sp, hl                                        ; $45a1: $f9
	db $fc                                           ; $45a2: $fc
	cp $df                                           ; $45a3: $fe $df
	rst SubAFromBC                                          ; $45a5: $e7
	rst SubAFromBC                                          ; $45a6: $e7
	ld sp, hl                                        ; $45a7: $f9
	rst $38                                          ; $45a8: $ff
	call c, $9afe                                    ; $45a9: $dc $fe $9a
	ld hl, sp+$7e                                    ; $45ac: $f8 $7e
	adc a                                            ; $45ae: $8f
	ld [hl], a                                       ; $45af: $77
	and e                                            ; $45b0: $a3
	sbc $b3                                          ; $45b1: $de $b3
	rst SubAFromDE                                          ; $45b3: $df
	db $fc                                           ; $45b4: $fc
	rst SubAFromDE                                          ; $45b5: $df
	db $f4                                           ; $45b6: $f4
	sbc d                                            ; $45b7: $9a
	push af                                          ; $45b8: $f5
	rst FarCall                                          ; $45b9: $f7
	or $f5                                           ; $45ba: $f6 $f5
	ld d, a                                          ; $45bc: $57
	sbc $5f                                          ; $45bd: $de $5f
	rst SubAFromDE                                          ; $45bf: $df
	rst SubAFromDE                                          ; $45c0: $df
	ld a, l                                          ; $45c1: $7d
	ret c                                            ; $45c2: $d8

	sbc l                                            ; $45c3: $9d
	or $fa                                           ; $45c4: $f6 $fa
	sbc $fb                                          ; $45c6: $de $fb
	sbc c                                            ; $45c8: $99
	db $fd                                           ; $45c9: $fd
	push de                                          ; $45ca: $d5
	push de                                          ; $45cb: $d5
	sbc $de                                          ; $45cc: $de $de
	rst SubAFromDE                                          ; $45ce: $df
	sbc $bf                                          ; $45cf: $de $bf
	rst SubAFromDE                                          ; $45d1: $df
	ld e, a                                          ; $45d2: $5f
	add a                                            ; $45d3: $87
	db $d3                                           ; $45d4: $d3
	db $e3                                           ; $45d5: $e3
	db $e3                                           ; $45d6: $e3
	pop bc                                           ; $45d7: $c1
	reti                                             ; $45d8: $d9


	call c, $9fbe                                    ; $45d9: $dc $be $9f
	ld e, a                                          ; $45dc: $5f
	ld a, a                                          ; $45dd: $7f
	ld a, a                                          ; $45de: $7f
	rst $38                                          ; $45df: $ff
	rst SubAFromBC                                          ; $45e0: $e7
	db $e3                                           ; $45e1: $e3
	pop bc                                           ; $45e2: $c1
	ret nz                                           ; $45e3: $c0

	sbc a                                            ; $45e4: $9f
	adc a                                            ; $45e5: $8f
	add a                                            ; $45e6: $87
	add e                                            ; $45e7: $83
	add d                                            ; $45e8: $82
	ld a, a                                          ; $45e9: $7f
	ld a, b                                          ; $45ea: $78
	ld e, a                                          ; $45eb: $5f
	db $dd                                           ; $45ec: $dd
	ret nz                                           ; $45ed: $c0

	add e                                            ; $45ee: $83
	pop bc                                           ; $45ef: $c1
	ld c, a                                          ; $45f0: $4f
	ld a, a                                          ; $45f1: $7f
	ld h, a                                          ; $45f2: $67
	ld l, a                                          ; $45f3: $6f
	db $ed                                           ; $45f4: $ed
	ldh a, [c]                                       ; $45f5: $f2
	push af                                          ; $45f6: $f5
	db $eb                                           ; $45f7: $eb
	sub $ad                                          ; $45f8: $d6 $ad
	sbc $71                                          ; $45fa: $de $71
	inc sp                                           ; $45fc: $33
	ccf                                              ; $45fd: $3f

jr_073_45fe:
	ld e, $1c                                        ; $45fe: $1e $1c
	jr c, @+$73                                      ; $4600: $38 $71

	and $00                                          ; $4602: $e6 $00
	add b                                            ; $4604: $80
	add b                                            ; $4605: $80
	ret nz                                           ; $4606: $c0

	ret nz                                           ; $4607: $c0

	ld h, b                                          ; $4608: $60
	and b                                            ; $4609: $a0
	jr nz, jr_073_467f                               ; $460a: $20 $73

	ld hl, sp-$69                                    ; $460c: $f8 $97
	ldh [$60], a                                     ; $460e: $e0 $60
	ldh [hDisp1_SCY], a                                     ; $4610: $e0 $90
	sub b                                            ; $4612: $90
	db $10                                           ; $4613: $10
	sub b                                            ; $4614: $90
	sub b                                            ; $4615: $90
	sbc $50                                          ; $4616: $de $50
	rst SubAFromDE                                          ; $4618: $df
	ld [hl], b                                       ; $4619: $70
	db $db                                           ; $461a: $db
	ldh a, [$df]                                     ; $461b: $f0 $df
	jr nc, jr_073_45fe                               ; $461d: $30 $df

	or b                                             ; $461f: $b0
	sbc $a0                                          ; $4620: $de $a0
	sbc [hl]                                         ; $4622: $9e
	ret nz                                           ; $4623: $c0

	sbc $f0                                          ; $4624: $de $f0
	sbc [hl]                                         ; $4626: $9e
	ld [hl], b                                       ; $4627: $70
	sbc $60                                          ; $4628: $de $60
	ld l, [hl]                                       ; $462a: $6e
	adc c                                            ; $462b: $89
	ld a, a                                          ; $462c: $7f
	push de                                          ; $462d: $d5
	sbc h                                            ; $462e: $9c
	ld b, b                                          ; $462f: $40
	ret nz                                           ; $4630: $c0

	ret nz                                           ; $4631: $c0

	ld l, a                                          ; $4632: $6f
	ld hl, sp-$65                                    ; $4633: $f8 $9b
	ld b, b                                          ; $4635: $40
	ldh [$f0], a                                     ; $4636: $e0 $f0
	db $fc                                           ; $4638: $fc
	db $dd                                           ; $4639: $dd
	rst $38                                          ; $463a: $ff
	ld a, e                                          ; $463b: $7b
	ld hl, sp-$72                                    ; $463c: $f8 $8e
	cp h                                             ; $463e: $bc
	ld d, e                                          ; $463f: $53
	xor b                                            ; $4640: $a8
	call nc, Call_073_7fca                           ; $4641: $d4 $ca $7f
	ccf                                              ; $4644: $3f
	sbc a                                            ; $4645: $9f
	add a                                            ; $4646: $87
	pop bc                                           ; $4647: $c1
	ret nz                                           ; $4648: $c0

	ld h, b                                          ; $4649: $60
	ld h, b                                          ; $464a: $60
	ret                                              ; $464b: $c9


	db $e4                                           ; $464c: $e4
	ld a, [$ddfe]                                    ; $464d: $fa $fe $dd
	rst $38                                          ; $4650: $ff
	add b                                            ; $4651: $80
	or b                                             ; $4652: $b0
	cp [hl]                                          ; $4653: $be
	xor a                                            ; $4654: $af
	and a                                            ; $4655: $a7
	daa                                              ; $4656: $27
	rst SubAFromBC                                          ; $4657: $e7
	rlca                                             ; $4658: $07
	ccf                                              ; $4659: $3f
	ld a, a                                          ; $465a: $7f
	ld a, c                                          ; $465b: $79
	ld a, b                                          ; $465c: $78
	ld a, h                                          ; $465d: $7c
	db $fc                                           ; $465e: $fc
	ld a, [$c1fa]                                    ; $465f: $fa $fa $c1
	or c                                             ; $4662: $b1
	ld h, c                                          ; $4663: $61
	pop bc                                           ; $4664: $c1
	add h                                            ; $4665: $84
	inc e                                            ; $4666: $1c
	ld h, h                                          ; $4667: $64
	add h                                            ; $4668: $84
	inc b                                            ; $4669: $04
	pop bc                                           ; $466a: $c1
	add c                                            ; $466b: $81
	ld bc, $1e04                                     ; $466c: $01 $04 $1e
	ld h, [hl]                                       ; $466f: $66
	add [hl]                                         ; $4670: $86
	sbc [hl]                                         ; $4671: $9e
	ld b, $6e                                        ; $4672: $06 $6e
	db $eb                                           ; $4674: $eb
	ld a, a                                          ; $4675: $7f
	jp $f86f                                         ; $4676: $c3 $6f $f8


	add b                                            ; $4679: $80
	jr nz, jr_073_468c                               ; $467a: $20 $10

	ld hl, sp-$04                                    ; $467c: $f8 $fc
	db $fc                                           ; $467e: $fc

jr_073_467f:
	cp $fe                                           ; $467f: $fe $fe
	ld a, a                                          ; $4681: $7f
	rra                                              ; $4682: $1f
	rlca                                             ; $4683: $07
	adc b                                            ; $4684: $88
	ld b, h                                          ; $4685: $44
	inc h                                            ; $4686: $24
	ld [de], a                                       ; $4687: $12
	adc d                                            ; $4688: $8a
	jp hl                                            ; $4689: $e9


	db $fd                                           ; $468a: $fd
	rst $38                                          ; $468b: $ff

jr_073_468c:
	ld bc, $8000                                     ; $468c: $01 $00 $80
	ldh [$e1], a                                     ; $468f: $e0 $e1
	db $e3                                           ; $4691: $e3
	rst AddAOntoHL                                          ; $4692: $ef
	ld a, a                                          ; $4693: $7f
	rst $38                                          ; $4694: $ff
	rst $38                                          ; $4695: $ff
	ld a, a                                          ; $4696: $7f
	rra                                              ; $4697: $1f
	ld e, $81                                        ; $4698: $1e $81
	inc e                                            ; $469a: $1c
	stop                                             ; $469b: $10 $00
	rlca                                             ; $469d: $07
	rrca                                             ; $469e: $0f
	ld e, $3e                                        ; $469f: $1e $3e
	inc a                                            ; $46a1: $3c
	ld a, l                                          ; $46a2: $7d
	ld a, e                                          ; $46a3: $7b
	ld a, e                                          ; $46a4: $7b
	add hl, bc                                       ; $46a5: $09
	ld de, $4323                                     ; $46a6: $11 $23 $43
	ld b, a                                          ; $46a9: $47
	add [hl]                                         ; $46aa: $86
	adc h                                            ; $46ab: $8c
	adc h                                            ; $46ac: $8c
	add b                                            ; $46ad: $80
	ldh [rAUD2LOW], a                                ; $46ae: $e0 $18
	inc c                                            ; $46b0: $0c
	ld a, $46                                        ; $46b1: $3e $46
	sbc d                                            ; $46b3: $9a
	cp d                                             ; $46b4: $ba
	add b                                            ; $46b5: $80
	ldh [$f8], a                                     ; $46b6: $e0 $f8
	ld a, e                                          ; $46b8: $7b
	rst JumpTable                                          ; $46b9: $c7
	sub b                                            ; $46ba: $90
	and $c6                                          ; $46bb: $e6 $c6
	ld [hl-], a                                      ; $46bd: $32
	ld [hl], d                                       ; $46be: $72
	ld h, d                                          ; $46bf: $62
	pop hl                                           ; $46c0: $e1
	pop bc                                           ; $46c1: $c1
	pop bc                                           ; $46c2: $c1
	pop af                                           ; $46c3: $f1
	ld sp, hl                                        ; $46c4: $f9
	adc $8e                                          ; $46c5: $ce $8e
	sbc [hl]                                         ; $46c7: $9e
	rra                                              ; $46c8: $1f
	ccf                                              ; $46c9: $3f
	ld a, c                                          ; $46ca: $79
	ld a, d                                          ; $46cb: $7a
	inc hl                                           ; $46cc: $23
	nop                                              ; $46cd: $00
	sub c                                            ; $46ce: $91
	db $dd                                           ; $46cf: $dd
	sbc c                                            ; $46d0: $99
	sbc c                                            ; $46d1: $99
	db $dd                                           ; $46d2: $dd
	sbc c                                            ; $46d3: $99
	ld de, $9999                                     ; $46d4: $11 $99 $99
	call z, $1199                                    ; $46d7: $cc $99 $11
	rst $38                                          ; $46da: $ff
	rst $38                                          ; $46db: $ff
	nop                                              ; $46dc: $00
	ld a, e                                          ; $46dd: $7b
	or $73                                           ; $46de: $f6 $73
	ei                                               ; $46e0: $fb
	sbc [hl]                                         ; $46e1: $9e
	sbc c                                            ; $46e2: $99
	ld a, e                                          ; $46e3: $7b
	ei                                               ; $46e4: $fb
	sbc c                                            ; $46e5: $99
	ld [hl+], a                                      ; $46e6: $22
	nop                                              ; $46e7: $00
	nop                                              ; $46e8: $00
	sbc c                                            ; $46e9: $99
	sbc c                                            ; $46ea: $99
	cp e                                             ; $46eb: $bb
	cp a                                             ; $46ec: $bf
	cp e                                             ; $46ed: $bb
	adc b                                            ; $46ee: $88
	ld de, $8001                                     ; $46ef: $11 $01 $80
	ld h, h                                          ; $46f2: $64
	rst SubAFromDE                                          ; $46f3: $df
	ld [hl], d                                       ; $46f4: $72
	rst AddAOntoHL                                          ; $46f5: $ef
	ld [hl], e                                       ; $46f6: $73
	rst AddAOntoHL                                          ; $46f7: $ef
	reti                                             ; $46f8: $d9


	rst FarCall                                          ; $46f9: $f7
	ld e, c                                          ; $46fa: $59
	rst FarCall                                          ; $46fb: $f7
	inc c                                            ; $46fc: $0c
	ei                                               ; $46fd: $fb
	or $fd                                           ; $46fe: $f6 $fd
	dec de                                           ; $4700: $1b
	cp $f9                                           ; $4701: $fe $f9
	rst $38                                          ; $4703: $ff
	cp h                                             ; $4704: $bc
	rst FarCall                                          ; $4705: $f7
	ld l, h                                          ; $4706: $6c
	cp a                                             ; $4707: $bf
	ld [hl], d                                       ; $4708: $72
	adc l                                            ; $4709: $8d
	cp [hl]                                          ; $470a: $be
	pop bc                                           ; $470b: $c1
	ld a, [hl]                                       ; $470c: $7e
	ld b, c                                          ; $470d: $41
	ld e, [hl]                                       ; $470e: $5e
	ld h, e                                          ; $470f: $63
	ccf                                              ; $4710: $3f
	add e                                            ; $4711: $83
	ld hl, $ceff                                     ; $4712: $21 $ff $ce
	rst $38                                          ; $4715: $ff
	or e                                             ; $4716: $b3
	rst $38                                          ; $4717: $ff
	ld c, l                                          ; $4718: $4d
	rst FarCall                                          ; $4719: $f7
	rst JumpTable                                          ; $471a: $c7
	rst AddAOntoHL                                          ; $471b: $ef
	ld l, b                                          ; $471c: $68
	ei                                               ; $471d: $fb

jr_073_471e:
	or c                                             ; $471e: $b1
	push bc                                          ; $471f: $c5
	add a                                            ; $4720: $87
	db $ed                                           ; $4721: $ed
	ld c, l                                          ; $4722: $4d
	di                                               ; $4723: $f3
	jr nz, jr_073_471e                               ; $4724: $20 $f8

jr_073_4726:
	ret nc                                           ; $4726: $d0

	db $fc                                           ; $4727: $fc
	jr c, jr_073_4726                                ; $4728: $38 $fc

	inc c                                            ; $472a: $0c
	db $e3                                           ; $472b: $e3
	ld [bc], a                                       ; $472c: $02
	pop hl                                           ; $472d: $e1
	cp [hl]                                          ; $472e: $be
	ret nz                                           ; $472f: $c0

	add b                                            ; $4730: $80
	rst $38                                          ; $4731: $ff

jr_073_4732:
	adc l                                            ; $4732: $8d
	pop hl                                           ; $4733: $e1
	rst $38                                          ; $4734: $ff
	inc e                                            ; $4735: $1c
	rst $38                                          ; $4736: $ff
	di                                               ; $4737: $f3
	rst $38                                          ; $4738: $ff
	pop bc                                           ; $4739: $c1
	rst $38                                          ; $473a: $ff
	ld hl, $f8ff                                     ; $473b: $21 $ff $f8
	rst GetHLinHL                                          ; $473e: $cf
	ret nc                                           ; $473f: $d0

	rst $38                                          ; $4740: $ff
	jr nz, jr_073_4732                               ; $4741: $20 $ef

	ret nz                                           ; $4743: $c0

	rrca                                             ; $4744: $0f
	cp h                                             ; $4745: $bc
	rrca                                             ; $4746: $0f
	rra                                              ; $4747: $1f
	rra                                              ; $4748: $1f
	sbc a                                            ; $4749: $9f
	rra                                              ; $474a: $1f
	adc h                                            ; $474b: $8c
	ld bc, $031f                                     ; $474c: $01 $1f $03
	ccf                                              ; $474f: $3f
	rlca                                             ; $4750: $07
	inc a                                            ; $4751: $3c
	rrca                                             ; $4752: $0f
	jr c, jr_073_4774                                ; $4753: $38 $1f

	ld [hl], b                                       ; $4755: $70
	ccf                                              ; $4756: $3f
	ld b, [hl]                                       ; $4757: $46
	ld a, c                                          ; $4758: $79
	sbc a                                            ; $4759: $9f
	db $e3                                           ; $475a: $e3
	db $fd                                           ; $475b: $fd
	dec c                                            ; $475c: $0d
	pop af                                           ; $475d: $f1
	pop af                                           ; $475e: $f1
	db $dd                                           ; $475f: $dd
	ld bc, $03df                                     ; $4760: $01 $df $03
	rst SubAFromDE                                          ; $4763: $df
	db $fc                                           ; $4764: $fc
	sub a                                            ; $4765: $97
	cp $86                                           ; $4766: $fe $86
	adc $02                                          ; $4768: $ce $02

jr_073_476a:
	cp [hl]                                          ; $476a: $be
	add d                                            ; $476b: $82
	cp $04                                           ; $476c: $fe $04
	inc bc                                           ; $476e: $03
	add b                                            ; $476f: $80
	inc bc                                           ; $4770: $03
	add b                                            ; $4771: $80
	rrca                                             ; $4772: $0f
	add b                                            ; $4773: $80

jr_073_4774:
	ld c, a                                          ; $4774: $4f
	and b                                            ; $4775: $a0
	sbc c                                            ; $4776: $99
	dec bc                                           ; $4777: $0b
	cp $79                                           ; $4778: $fe $79
	rst $38                                          ; $477a: $ff
	db $fc                                           ; $477b: $fc
	rst $38                                          ; $477c: $ff
	dec hl                                           ; $477d: $2b
	and b                                            ; $477e: $a0
	sbc h                                            ; $477f: $9c
	or b                                             ; $4780: $b0
	rst JumpTable                                          ; $4781: $c7
	add e                                            ; $4782: $83
	dec de                                           ; $4783: $1b
	and b                                            ; $4784: $a0
	sbc h                                            ; $4785: $9c
	ld bc, $78ff                                     ; $4786: $01 $ff $78
	ld a, e                                          ; $4789: $7b
	and b                                            ; $478a: $a0
	sbc [hl]                                         ; $478b: $9e
	and b                                            ; $478c: $a0
	rlca                                             ; $478d: $07
	and b                                            ; $478e: $a0
	ld a, a                                          ; $478f: $7f
	reti                                             ; $4790: $d9


	sbc h                                            ; $4791: $9c
	db $f4                                           ; $4792: $f4
	rst $38                                          ; $4793: $ff
	ld a, b                                          ; $4794: $78
	daa                                              ; $4795: $27
	and b                                            ; $4796: $a0
	sbc d                                            ; $4797: $9a
	add b                                            ; $4798: $80
	rst AddAOntoHL                                          ; $4799: $ef
	ld c, a                                          ; $479a: $4f
	di                                               ; $479b: $f3
	inc hl                                           ; $479c: $23
	inc hl                                           ; $479d: $23
	and b                                            ; $479e: $a0
	ld a, a                                          ; $479f: $7f
	db $f4                                           ; $47a0: $f4
	sbc h                                            ; $47a1: $9c
	jr @+$01                                         ; $47a2: $18 $ff

jr_073_47a4:
	or b                                             ; $47a4: $b0
	ld b, a                                          ; $47a5: $47
	and b                                            ; $47a6: $a0
	sub e                                            ; $47a7: $93
	cpl                                              ; $47a8: $2f
	jr nc, jr_073_47c1                               ; $47a9: $30 $16

	add hl, de                                       ; $47ab: $19
	dec bc                                           ; $47ac: $0b
	inc c                                            ; $47ad: $0c
	dec b                                            ; $47ae: $05
	ld b, $02                                        ; $47af: $06 $02
	inc bc                                           ; $47b1: $03
	ld bc, $fd01                                     ; $47b2: $01 $01 $fd
	ld [hl], a                                       ; $47b5: $77

jr_073_47b6:
	ld a, [$0fdf]                                    ; $47b6: $fa $df $0f
	add b                                            ; $47b9: $80
	ld [$1b0f], sp                                   ; $47ba: $08 $0f $1b
	inc e                                            ; $47bd: $1c
	ld l, b                                          ; $47be: $68
	ld a, a                                          ; $47bf: $7f
	sbc b                                            ; $47c0: $98

jr_073_47c1:
	rst AddAOntoHL                                          ; $47c1: $ef
	ld a, b                                          ; $47c2: $78

Jump_073_47c3:
	adc a                                            ; $47c3: $8f
	rst SubAFromDE                                          ; $47c4: $df
	jr nc, jr_073_47b6                               ; $47c5: $30 $ef

	or b                                             ; $47c7: $b0
	rst SubAFromDE                                          ; $47c8: $df
	jr nz, jr_073_476a                               ; $47c9: $20 $9f

	ld h, b                                          ; $47cb: $60
	rst $38                                          ; $47cc: $ff
	nop                                              ; $47cd: $00
	cp [hl]                                          ; $47ce: $be

Call_073_47cf:
	pop bc                                           ; $47cf: $c1
	ld h, e                                          ; $47d0: $63
	ld a, a                                          ; $47d1: $7f
	ccf                                              ; $47d2: $3f
	ccf                                              ; $47d3: $3f
	rst $38                                          ; $47d4: $ff
	ret nc                                           ; $47d5: $d0

	rst $38                                          ; $47d6: $ff
	adc b                                            ; $47d7: $88
	rst $38                                          ; $47d8: $ff
	sub h                                            ; $47d9: $94
	ret z                                            ; $47da: $c8

	ld a, a                                          ; $47db: $7f
	db $e4                                           ; $47dc: $e4
	ccf                                              ; $47dd: $3f
	rst SubAFromBC                                          ; $47de: $e7
	cp [hl]                                          ; $47df: $be
	ld a, a                                          ; $47e0: $7f
	ld [hl], e                                       ; $47e1: $73
	rst AddAOntoHL                                          ; $47e2: $ef
	ld h, $ff                                        ; $47e3: $26 $ff
	inc bc                                           ; $47e5: $03
	ret nz                                           ; $47e6: $c0

	ld a, a                                          ; $47e7: $7f
	ret nz                                           ; $47e8: $c0

	sbc h                                            ; $47e9: $9c
	ldh a, [$df]                                     ; $47ea: $f0 $df
	ld h, b                                          ; $47ec: $60
	inc bc                                           ; $47ed: $03
	ret nz                                           ; $47ee: $c0

	inc hl                                           ; $47ef: $23
	ret nz                                           ; $47f0: $c0

	sbc h                                            ; $47f1: $9c
	rst $38                                          ; $47f2: $ff
	jr nc, jr_073_47a4                               ; $47f3: $30 $af

	inc bc                                           ; $47f5: $03
	ret nz                                           ; $47f6: $c0

	rrca                                             ; $47f7: $0f
	ret nz                                           ; $47f8: $c0

	sbc e                                            ; $47f9: $9b
	cp a                                             ; $47fa: $bf
	ldh a, [$ef]                                     ; $47fb: $f0 $ef
	ld [hl], b                                       ; $47fd: $70
	rra                                              ; $47fe: $1f
	ret nz                                           ; $47ff: $c0

	cp e                                             ; $4800: $bb
	ld [bc], a                                       ; $4801: $02
	db $fd                                           ; $4802: $fd
	db $db                                           ; $4803: $db
	ld bc, $039d                                     ; $4804: $01 $9d $03
	ld [bc], a                                       ; $4807: $02
	ld a, e                                          ; $4808: $7b
	cp $de                                           ; $4809: $fe $de
	inc bc                                           ; $480b: $03
	ld a, e                                          ; $480c: $7b
	ei                                               ; $480d: $fb
	ld a, e                                          ; $480e: $7b
	or $9b                                           ; $480f: $f6 $9b
	dec b                                            ; $4811: $05
	ld b, $07                                        ; $4812: $06 $07
	inc b                                            ; $4814: $04
	ld e, a                                          ; $4815: $5f
	cp $7f                                           ; $4816: $fe $7f
	ldh a, [c]                                       ; $4818: $f2
	ld [hl], e                                       ; $4819: $73
	ldh [c], a                                       ; $481a: $e2
	rst SubAFromDE                                          ; $481b: $df
	ld [bc], a                                       ; $481c: $02
	sbc [hl]                                         ; $481d: $9e
	inc bc                                           ; $481e: $03
	db $dd                                           ; $481f: $dd
	ld bc, $ddf3                                     ; $4820: $01 $f3 $dd
	ld bc, $e87f                                     ; $4823: $01 $7f $e8
	ld l, a                                          ; $4826: $6f
	ret nc                                           ; $4827: $d0

	sub l                                            ; $4828: $95
	dec bc                                           ; $4829: $0b
	inc c                                            ; $482a: $0c
	dec bc                                           ; $482b: $0b
	inc c                                            ; $482c: $0c

jr_073_482d:
	add hl, bc                                       ; $482d: $09
	ld c, $0d                                        ; $482e: $0e $0d
	ld a, [bc]                                       ; $4830: $0a
	dec c                                            ; $4831: $0d
	ld a, [bc]                                       ; $4832: $0a
	ld a, e                                          ; $4833: $7b
	rst FarCall                                          ; $4834: $f7
	sbc d                                            ; $4835: $9a
	dec bc                                           ; $4836: $0b
	ld d, $19                                        ; $4837: $16 $19
	ld d, $19                                        ; $4839: $16 $19
	db $ed                                           ; $483b: $ed
	rst SubAFromDE                                          ; $483c: $df
	rlca                                             ; $483d: $07
	add b                                            ; $483e: $80
	dec de                                           ; $483f: $1b
	inc e                                            ; $4840: $1c
	cpl                                              ; $4841: $2f
	jr nc, jr_073_48c0                               ; $4842: $30 $7c

	ld a, a                                          ; $4844: $7f
	adc a                                            ; $4845: $8f
	adc a                                            ; $4846: $8f
	scf                                              ; $4847: $37
	jr c, jr_073_482d                                ; $4848: $38 $e3

	ret nz                                           ; $484a: $c0

	call z, $b383                                    ; $484b: $cc $83 $b3
	rrca                                             ; $484e: $0f
	ld a, a                                          ; $484f: $7f
	ld e, $e6                                        ; $4850: $1e $e6
	inc a                                            ; $4852: $3c
	db $f4                                           ; $4853: $f4
	ld c, h                                          ; $4854: $4c
	ld sp, hl                                        ; $4855: $f9
	adc h                                            ; $4856: $8c
	call c, $ab09                                    ; $4857: $dc $09 $ab
	add hl, de                                       ; $485a: $19
	ld sp, $1e1b                                     ; $485b: $31 $1b $1e
	sub h                                            ; $485e: $94
	inc sp                                           ; $485f: $33
	ld e, a                                          ; $4860: $5f
	ld [hl-], a                                      ; $4861: $32
	inc sp                                           ; $4862: $33
	halt                                             ; $4863: $76
	and l                                            ; $4864: $a5
	halt                                             ; $4865: $76
	push af                                          ; $4866: $f5
	ld h, h                                          ; $4867: $64
	push hl                                          ; $4868: $e5
	ld h, h                                          ; $4869: $64
	ldh [$c1], a                                     ; $486a: $e0 $c1
	sbc e                                            ; $486c: $9b
	rst GetHLinHL                                          ; $486d: $cf
	ret nz                                           ; $486e: $c0

	rst GetHLinHL                                          ; $486f: $cf
	add b                                            ; $4870: $80
	ld a, e                                          ; $4871: $7b
	cp $9e                                           ; $4872: $fe $9e
	add c                                            ; $4874: $81
	ld b, e                                          ; $4875: $43
	cp $77                                           ; $4876: $fe $77
	ld [$fe7b], a                                    ; $4878: $ea $7b $fe
	ld d, a                                          ; $487b: $57
	jr c, @-$1f                                      ; $487c: $38 $df

	ld [bc], a                                       ; $487e: $02
	rst SubAFromDE                                          ; $487f: $df
	ld b, $80                                        ; $4880: $06 $80
	ld c, $0a                                        ; $4882: $0e $0a
	rrca                                             ; $4884: $0f
	dec bc                                           ; $4885: $0b
	set 1, a                                         ; $4886: $cb $cf
	ld a, [$fb37]                                    ; $4888: $fa $37 $fb
	ld d, $7f                                        ; $488b: $16 $7f
	sub h                                            ; $488d: $94
	or [hl]                                          ; $488e: $b6
	db $dd                                           ; $488f: $dd
	ld d, l                                          ; $4890: $55
	rst $38                                          ; $4891: $ff
	cp a                                             ; $4892: $bf
	ld a, a                                          ; $4893: $7f
	rst $38                                          ; $4894: $ff
	rst $38                                          ; $4895: $ff
	xor $1f                                          ; $4896: $ee $1f
	ld d, l                                          ; $4898: $55
	ccf                                              ; $4899: $3f
	and a                                            ; $489a: $a7
	ld a, l                                          ; $489b: $7d
	ld [hl], h                                       ; $489c: $74
	db $ed                                           ; $489d: $ed
	push af                                          ; $489e: $f5
	db $ec                                           ; $489f: $ec
	call nz, $ec8e                                   ; $48a0: $c4 $8e $ec
	ld h, h                                          ; $48a3: $64
	call z, $cc66                                    ; $48a4: $cc $66 $cc
	ld b, l                                          ; $48a7: $45
	adc $47                                          ; $48a8: $ce $47
	adc $46                                          ; $48aa: $ce $46
	rst GetHLinHL                                          ; $48ac: $cf
	push bc                                          ; $48ad: $c5
	call $ecc5                                       ; $48ae: $cd $c5 $ec
	and h                                            ; $48b1: $a4
	db $ec                                           ; $48b2: $ec
	ldh [$c1], a                                     ; $48b3: $e0 $c1
	sbc l                                            ; $48b5: $9d
	xor a                                            ; $48b6: $af
	cp b                                             ; $48b7: $b8
	ld [hl], a                                       ; $48b8: $77
	cp $8c                                           ; $48b9: $fe $8c
	ccf                                              ; $48bb: $3f
	or c                                             ; $48bc: $b1
	ccf                                              ; $48bd: $3f
	ld [hl], c                                       ; $48be: $71
	ld e, a                                          ; $48bf: $5f

jr_073_48c0:
	ld [hl], c                                       ; $48c0: $71
	ld e, a                                          ; $48c1: $5f
	ld [hl], e                                       ; $48c2: $73
	ld e, a                                          ; $48c3: $5f
	ld [hl], d                                       ; $48c4: $72
	ld a, h                                          ; $48c5: $7c
	ld h, h                                          ; $48c6: $64
	ld a, [hl]                                       ; $48c7: $7e
	ld h, h                                          ; $48c8: $64
	ld a, a                                          ; $48c9: $7f
	db $e4                                           ; $48ca: $e4
	ld a, a                                          ; $48cb: $7f
	ret z                                            ; $48cc: $c8

	rst $38                                          ; $48cd: $ff
	ld [hl], a                                       ; $48ce: $77
	cp $9c                                           ; $48cf: $fe $9c
	adc b                                            ; $48d1: $88
	rst $38                                          ; $48d2: $ff
	adc b                                            ; $48d3: $88
	ld e, [hl]                                       ; $48d4: $5e
	call z, $1e80                                    ; $48d5: $cc $80 $1e
	add hl, de                                       ; $48d8: $19
	dec a                                            ; $48d9: $3d
	inc hl                                           ; $48da: $23
	ld a, d                                          ; $48db: $7a
	ld b, [hl]                                       ; $48dc: $46
	rst FarCall                                          ; $48dd: $f7
	adc a                                            ; $48de: $8f
	ld l, b                                          ; $48df: $68
	sbc a                                            ; $48e0: $9f
	db $d3                                           ; $48e1: $d3
	ccf                                              ; $48e2: $3f
	xor h                                            ; $48e3: $ac
	ld a, a                                          ; $48e4: $7f
	cp a                                             ; $48e5: $bf
	ld a, a                                          ; $48e6: $7f
	ld [hl], c                                       ; $48e7: $71
	rst $38                                          ; $48e8: $ff
	sbc a                                            ; $48e9: $9f
	ldh [rIE], a                                     ; $48ea: $e0 $ff
	add b                                            ; $48ec: $80
	pop af                                           ; $48ed: $f1
	cp $8c                                           ; $48ee: $fe $8c
	rst $38                                          ; $48f0: $ff
	ld a, e                                          ; $48f1: $7b
	rst SubAFromBC                                          ; $48f2: $e7
	db $dd                                           ; $48f3: $dd
	inc sp                                           ; $48f4: $33
	xor [hl]                                         ; $48f5: $ae
	adc b                                            ; $48f6: $88
	add hl, de                                       ; $48f7: $19
	add [hl]                                         ; $48f8: $86
	sbc h                                            ; $48f9: $9c
	sub e                                            ; $48fa: $93
	adc $6a                                          ; $48fb: $ce $6a
	rst JumpTable                                          ; $48fd: $c7
	and l                                            ; $48fe: $a5
	ld h, e                                          ; $48ff: $63
	ld h, d                                          ; $4900: $62
	ld sp, $3851                                     ; $4901: $31 $51 $38
	jr z, jr_073_4922                                ; $4904: $28 $1c

	xor h                                            ; $4906: $ac
	ld e, $16                                        ; $4907: $1e $16
	adc a                                            ; $4909: $8f
	rst SubAFromHL                                          ; $490a: $d7
	adc a                                            ; $490b: $8f
	db $eb                                           ; $490c: $eb
	ld b, a                                          ; $490d: $47
	ldh [$c1], a                                     ; $490e: $e0 $c1
	sbc l                                            ; $4910: $9d
	ld b, b                                          ; $4911: $40
	ret nz                                           ; $4912: $c0

	db $dd                                           ; $4913: $dd
	add b                                            ; $4914: $80
	ei                                               ; $4915: $fb
	rst SubAFromDE                                          ; $4916: $df
	ret nz                                           ; $4917: $c0

	adc l                                            ; $4918: $8d
	ldh a, [$30]                                     ; $4919: $f0 $30
	ld a, b                                          ; $491b: $78
	ld [$071f], sp                                   ; $491c: $08 $1f $07
	adc a                                            ; $491f: $8f
	ld [bc], a                                       ; $4920: $02
	rst SubAFromBC                                          ; $4921: $e7

jr_073_4922:
	ld [bc], a                                       ; $4922: $02

jr_073_4923:
	rst FarCall                                          ; $4923: $f7
	inc b                                            ; $4924: $04
	rst $38                                          ; $4925: $ff
	ld [$10ff], sp                                   ; $4926: $08 $ff $10
	rst $38                                          ; $4929: $ff
	jr nz, jr_073_4923                               ; $492a: $20 $f7

	rst SubAFromDE                                          ; $492c: $df
	ret nz                                           ; $492d: $c0

	rst SubAFromDE                                          ; $492e: $df
	ldh [$df], a                                     ; $492f: $e0 $df
	db $10                                           ; $4931: $10
	rst SubAFromDE                                          ; $4932: $df
	add b                                            ; $4933: $80
	rst SubAFromDE                                          ; $4934: $df
	db $fc                                           ; $4935: $fc
	add b                                            ; $4936: $80
	cp a                                             ; $4937: $bf
	jp $1cec                                         ; $4938: $c3 $ec $1c


	rst $38                                          ; $493b: $ff
	rst $38                                          ; $493c: $ff
	sbc $e7                                          ; $493d: $de $e7
	or l                                             ; $493f: $b5
	ld a, e                                          ; $4940: $7b
	rst AddAOntoHL                                          ; $4941: $ef
	inc e                                            ; $4942: $1c
	ld a, [bc]                                       ; $4943: $0a
	rlca                                             ; $4944: $07
	dec h                                            ; $4945: $25
	jp $f0e9                                         ; $4946: $c3 $e9 $f0


	ld e, $fc                                        ; $4949: $1e $fc
	or a                                             ; $494b: $b7
	rst GetHLinHL                                          ; $494c: $cf
	ld [$5577], a                                    ; $494d: $ea $77 $55
	dec sp                                           ; $4950: $3b
	dec hl                                           ; $4951: $2b
	dec e                                            ; $4952: $1d
	ld d, $8f                                        ; $4953: $16 $8f
	adc l                                            ; $4955: $8d
	sub d                                            ; $4956: $92
	jp $e053                                         ; $4957: $c3 $53 $e0


	db $e4                                           ; $495a: $e4
	ld a, b                                          ; $495b: $78
	ld a, c                                          ; $495c: $79
	ld a, $b7                                        ; $495d: $3e $b7
	rra                                              ; $495f: $1f
	ld e, b                                          ; $4960: $58
	adc a                                            ; $4961: $8f
	cp l                                             ; $4962: $bd
	add $e0                                          ; $4963: $c6 $e0
	pop bc                                           ; $4965: $c1
	add l                                            ; $4966: $85
	ld a, [de]                                       ; $4967: $1a
	ld [de], a                                       ; $4968: $12
	ld d, $12                                        ; $4969: $16 $12
	ld d, $14                                        ; $496b: $16 $14
	ld [hl], $24                                     ; $496d: $36 $24
	dec a                                            ; $496f: $3d
	inc h                                            ; $4970: $24
	dec a                                            ; $4971: $3d
	dec h                                            ; $4972: $25
	dec a                                            ; $4973: $3d
	add hl, hl                                       ; $4974: $29
	ld a, a                                          ; $4975: $7f
	ld c, c                                          ; $4976: $49
	rst $38                                          ; $4977: $ff
	ret                                              ; $4978: $c9


	ld a, [hl]                                       ; $4979: $7e
	bit 7, [hl]                                      ; $497a: $cb $7e
	db $d3                                           ; $497c: $d3
	ld a, [hl]                                       ; $497d: $7e
	db $d3                                           ; $497e: $d3
	db $fc                                           ; $497f: $fc
	sub a                                            ; $4980: $97
	ld a, e                                          ; $4981: $7b
	cp $9c                                           ; $4982: $fe $9c
	and a                                            ; $4984: $a7
	ld hl, sp-$51                                    ; $4985: $f8 $af
	rst SubAFromBC                                          ; $4987: $e7
	rst SubAFromDE                                          ; $4988: $df
	ret nz                                           ; $4989: $c0

	add b                                            ; $498a: $80
	or b                                             ; $498b: $b0
	ld [hl], b                                       ; $498c: $70
	db $ec                                           ; $498d: $ec
	sbc h                                            ; $498e: $9c
	or $4e                                           ; $498f: $f6 $4e
	cp e                                             ; $4991: $bb
	rst SubAFromBC                                          ; $4992: $e7
	ld e, l                                          ; $4993: $5d
	di                                               ; $4994: $f3
	cp [hl]                                          ; $4995: $be
	ld a, c                                          ; $4996: $79
	rst SubAFromDE                                          ; $4997: $df
	inc a                                            ; $4998: $3c
	db $ed                                           ; $4999: $ed
	sbc $37                                          ; $499a: $de $37
	xor $5b                                          ; $499c: $ee $5b
	cp [hl]                                          ; $499e: $be
	or a                                             ; $499f: $b7
	rst SubAFromDE                                          ; $49a0: $df
	rst AddAOntoHL                                          ; $49a1: $ef
	reti                                             ; $49a2: $d9


	ld e, d                                          ; $49a3: $5a
	db $ed                                           ; $49a4: $ed
	or a                                             ; $49a5: $b7
	ld a, h                                          ; $49a6: $7c
	db $ed                                           ; $49a7: $ed
	ld e, $bb                                        ; $49a8: $1e $bb
	adc c                                            ; $49aa: $89
	add $7f                                          ; $49ab: $c6 $7f
	rst $38                                          ; $49ad: $ff
	db $d3                                           ; $49ae: $d3
	ld a, [hl]                                       ; $49af: $7e
	sub $7b                                          ; $49b0: $d6 $7b
	db $ed                                           ; $49b2: $ed
	ei                                               ; $49b3: $fb
	ld a, a                                          ; $49b4: $7f
	ld sp, hl                                        ; $49b5: $f9
	cp e                                             ; $49b6: $bb
	db $ed                                           ; $49b7: $ed
	or a                                             ; $49b8: $b7
	ld l, l                                          ; $49b9: $6d
	cp a                                             ; $49ba: $bf
	ld h, l                                          ; $49bb: $65
	cp a                                             ; $49bc: $bf
	ld h, l                                          ; $49bd: $65
	adc a                                            ; $49be: $8f
	ld h, l                                          ; $49bf: $65
	adc l                                            ; $49c0: $8d
	ld a, e                                          ; $49c1: $7b
	cp $9e                                           ; $49c2: $fe $9e
	dec b                                            ; $49c4: $05
	ld a, e                                          ; $49c5: $7b
	cp $80                                           ; $49c6: $fe $80
	dec h                                            ; $49c8: $25
	ld b, l                                          ; $49c9: $45
	dec h                                            ; $49ca: $25
	ld b, l                                          ; $49cb: $45
	dec l                                            ; $49cc: $2d
	ld b, l                                          ; $49cd: $45
	rst JumpTable                                          ; $49ce: $c7
	ld c, l                                          ; $49cf: $4d
	rst JumpTable                                          ; $49d0: $c7
	ld c, l                                          ; $49d1: $4d
	add $4d                                          ; $49d2: $c6 $4d
	ld d, a                                          ; $49d4: $57
	call z, $ce55                                    ; $49d5: $cc $55 $ce
	dec e                                            ; $49d8: $1d
	adc $4d                                          ; $49d9: $ce $4d
	sbc [hl]                                         ; $49db: $9e
	call $bd9e                                       ; $49dc: $cd $9e $bd
	sbc [hl]                                         ; $49df: $9e
	sub l                                            ; $49e0: $95
	cp [hl]                                          ; $49e1: $be
	dec d                                            ; $49e2: $15
	cp [hl]                                          ; $49e3: $be
	ld d, l                                          ; $49e4: $55
	cp [hl]                                          ; $49e5: $be
	push hl                                          ; $49e6: $e5
	add b                                            ; $49e7: $80
	ld a, $a5                                        ; $49e8: $3e $a5
	ld a, [hl]                                       ; $49ea: $7e
	and a                                            ; $49eb: $a7
	ld a, [hl]                                       ; $49ec: $7e
	or $7f                                           ; $49ed: $f6 $7f
	or $7f                                           ; $49ef: $f6 $7f
	ld c, a                                          ; $49f1: $4f
	rst $38                                          ; $49f2: $ff
	ld b, a                                          ; $49f3: $47
	rst $38                                          ; $49f4: $ff
	add e                                            ; $49f5: $83
	rst $38                                          ; $49f6: $ff
	add c                                            ; $49f7: $81
	rst $38                                          ; $49f8: $ff
	add b                                            ; $49f9: $80
	rst $38                                          ; $49fa: $ff
	ld bc, $07fe                                     ; $49fb: $01 $fe $07
	ld hl, sp+$1f                                    ; $49fe: $f8 $1f
	ldh [$3f], a                                     ; $4a00: $e0 $3f
	ret nz                                           ; $4a02: $c0

	ld a, a                                          ; $4a03: $7f
	add b                                            ; $4a04: $80
	ld a, a                                          ; $4a05: $7f
	add b                                            ; $4a06: $80
	sub [hl]                                         ; $4a07: $96
	cp $00                                           ; $4a08: $fe $00
	db $fc                                           ; $4a0a: $fc
	nop                                              ; $4a0b: $00
	ld sp, hl                                        ; $4a0c: $f9
	nop                                              ; $4a0d: $00
	di                                               ; $4a0e: $f3
	nop                                              ; $4a0f: $00
	rst SubAFromBC                                          ; $4a10: $e7
	ld [hl], b                                       ; $4a11: $70
	or h                                             ; $4a12: $b4
	rst SubAFromDE                                          ; $4a13: $df
	add b                                            ; $4a14: $80
	add b                                            ; $4a15: $80
	ret nz                                           ; $4a16: $c0

	ld b, b                                          ; $4a17: $40
	ldh [$a0], a                                     ; $4a18: $e0 $a0
	ld h, b                                          ; $4a1a: $60
	and b                                            ; $4a1b: $a0
	ldh a, [$50]                                     ; $4a1c: $f0 $50
	or b                                             ; $4a1e: $b0
	ld d, b                                          ; $4a1f: $50
	ld hl, sp+$28                                    ; $4a20: $f8 $28
	ld a, b                                          ; $4a22: $78
	xor b                                            ; $4a23: $a8
	call nc, $fcac                                   ; $4a24: $d4 $ac $fc
	sub h                                            ; $4a27: $94
	ld a, [$7e96]                                    ; $4a28: $fa $96 $7e
	jp nc, $daee                                     ; $4a2b: $d2 $ee $da

	db $fd                                           ; $4a2e: $fd
	ld c, e                                          ; $4a2f: $4b
	db $dd                                           ; $4a30: $dd
	ld l, e                                          ; $4a31: $6b
	db $dd                                           ; $4a32: $dd
	ld l, e                                          ; $4a33: $6b
	call c, $6b94                                    ; $4a34: $dc $94 $6b
	cp [hl]                                          ; $4a37: $be
	ld l, c                                          ; $4a38: $69
	cp [hl]                                          ; $4a39: $be
	ld l, c                                          ; $4a3a: $69
	ld a, [$772d]                                    ; $4a3b: $fa $2d $77
	dec l                                            ; $4a3e: $2d
	ld l, a                                          ; $4a3f: $6f
	dec h                                            ; $4a40: $25
	ld [hl], a                                       ; $4a41: $77
	cp $80                                           ; $4a42: $fe $80
	ld c, l                                          ; $4a44: $4d
	daa                                              ; $4a45: $27
	ld bc, $9726                                     ; $4a46: $01 $26 $97
	ld [hl+], a                                      ; $4a49: $22
	add a                                            ; $4a4a: $87
	ld [hl-], a                                      ; $4a4b: $32
	and a                                            ; $4a4c: $a7
	ld [de], a                                       ; $4a4d: $12
	inc hl                                           ; $4a4e: $23
	sub d                                            ; $4a4f: $92
	inc hl                                           ; $4a50: $23
	sub d                                            ; $4a51: $92
	inc bc                                           ; $4a52: $03
	sub d                                            ; $4a53: $92
	dec de                                           ; $4a54: $1b
	add d                                            ; $4a55: $82
	reti                                             ; $4a56: $d9


	add d                                            ; $4a57: $82
	ret c                                            ; $4a58: $d8

	add e                                            ; $4a59: $83
	sub e                                            ; $4a5a: $93
	ret                                              ; $4a5b: $c9


	sub c                                            ; $4a5c: $91
	ret                                              ; $4a5d: $c9


	ld bc, $25c9                                     ; $4a5e: $01 $c9 $25
	ret                                              ; $4a61: $c9


	and c                                            ; $4a62: $a1
	sbc d                                            ; $4a63: $9a
	ld c, l                                          ; $4a64: $4d
	pop bc                                           ; $4a65: $c1
	ld l, l                                          ; $4a66: $6d
	db $db                                           ; $4a67: $db
	ld h, l                                          ; $4a68: $65
	ld [hl], a                                       ; $4a69: $77
	cp $98                                           ; $4a6a: $fe $98
	xor e                                            ; $4a6c: $ab
	ld [hl], a                                       ; $4a6d: $77
	xor e                                            ; $4a6e: $ab
	ld [hl], a                                       ; $4a6f: $77
	inc hl                                           ; $4a70: $23
	rst $38                                          ; $4a71: $ff
	ld de, $fe73                                     ; $4a72: $11 $73 $fe
	adc e                                            ; $4a75: $8b
	adc c                                            ; $4a76: $89
	rst $38                                          ; $4a77: $ff
	ret z                                            ; $4a78: $c8

	ld a, a                                          ; $4a79: $7f
	db $e4                                           ; $4a7a: $e4
	ccf                                              ; $4a7b: $3f
	db $f4                                           ; $4a7c: $f4
	rra                                              ; $4a7d: $1f
	adc $0f                                          ; $4a7e: $ce $0f
	sbc [hl]                                         ; $4a80: $9e
	rlca                                             ; $4a81: $07
	ld a, $0b                                        ; $4a82: $3e $0b
	ld a, a                                          ; $4a84: $7f
	ld de, $21ff                                     ; $4a85: $11 $ff $21
	rst $38                                          ; $4a88: $ff
	ld b, b                                          ; $4a89: $40
	ld a, e                                          ; $4a8a: $7b
	ld l, e                                          ; $4a8b: $6b
	db $fc                                           ; $4a8c: $fc
	reti                                             ; $4a8d: $d9


	add b                                            ; $4a8e: $80
	ld a, a                                          ; $4a8f: $7f
	ld a, d                                          ; $4a90: $7a
	ld h, a                                          ; $4a91: $67
	cp $7f                                           ; $4a92: $fe $7f
	ld [hl], d                                       ; $4a94: $72
	ld c, a                                          ; $4a95: $4f
	cp $9b                                           ; $4a96: $fe $9b
	ldh a, [hDisp1_SCY]                                     ; $4a98: $f0 $90
	ldh a, [$50]                                     ; $4a9a: $f0 $50
	ld l, a                                          ; $4a9c: $6f
	cp $95                                           ; $4a9d: $fe $95
	add sp, $58                                      ; $4a9f: $e8 $58
	ld hl, sp+$48                                    ; $4aa1: $f8 $48
	ret c                                            ; $4aa3: $d8

	ld l, b                                          ; $4aa4: $68
	cp b                                             ; $4aa5: $b8
	ld l, b                                          ; $4aa6: $68
	ld hl, sp+$28                                    ; $4aa7: $f8 $28
	ld e, a                                          ; $4aa9: $5f
	cp $97                                           ; $4aaa: $fe $97
	db $f4                                           ; $4aac: $f4
	inc l                                            ; $4aad: $2c
	db $fc                                           ; $4aae: $fc
	inc h                                            ; $4aaf: $24
	ld e, h                                          ; $4ab0: $5c
	or h                                             ; $4ab1: $b4
	db $fc                                           ; $4ab2: $fc
	sub h                                            ; $4ab3: $94
	ld l, a                                          ; $4ab4: $6f
	cp $9d                                           ; $4ab5: $fe $9d
	cp h                                             ; $4ab7: $bc
	call nc, $fe57                                   ; $4ab8: $d4 $57 $fe
	ld hl, $df00                                     ; $4abb: $21 $00 $df
	db $dd                                           ; $4abe: $dd
	sbc c                                            ; $4abf: $99
	xor d                                            ; $4ac0: $aa
	db $dd                                           ; $4ac1: $dd
	ld de, $9999                                     ; $4ac2: $11 $99 $99
	ld [hl+], a                                      ; $4ac5: $22
	ld [hl], a                                       ; $4ac6: $77
	ei                                               ; $4ac7: $fb
	sbc l                                            ; $4ac8: $9d
	ld b, h                                          ; $4ac9: $44
	sbc c                                            ; $4aca: $99
	ld [hl], a                                       ; $4acb: $77
	or $77                                           ; $4acc: $f6 $77
	ei                                               ; $4ace: $fb
	sbc d                                            ; $4acf: $9a
	inc sp                                           ; $4ad0: $33
	sbc c                                            ; $4ad1: $99
	sbc c                                            ; $4ad2: $99
	ld de, $7b11                                     ; $4ad3: $11 $11 $7b
	or $9d                                           ; $4ad6: $f6 $9d
	ld de, $de44                                     ; $4ad8: $11 $44 $de
	sbc c                                            ; $4adb: $99
	sbc b                                            ; $4adc: $98
	add c                                            ; $4add: $81
	sub a                                            ; $4ade: $97
	or [hl]                                          ; $4adf: $b6
	or a                                             ; $4ae0: $b7
	cp e                                             ; $4ae1: $bb
	cp l                                             ; $4ae2: $bd
	cp l                                             ; $4ae3: $bd
	cp [hl]                                          ; $4ae4: $be
	cp a                                             ; $4ae5: $bf
	xor [hl]                                         ; $4ae6: $ae
	sbc $ad                                          ; $4ae7: $de $ad
	db $dd                                           ; $4ae9: $dd
	xor e                                            ; $4aea: $ab
	sbc [hl]                                         ; $4aeb: $9e
	cp e                                             ; $4aec: $bb
	sbc $aa                                          ; $4aed: $de $aa
	rst SubAFromDE                                          ; $4aef: $df
	xor e                                            ; $4af0: $ab
	sbc h                                            ; $4af1: $9c
	ld e, e                                          ; $4af2: $5b
	ld e, d                                          ; $4af3: $5a
	ld a, [de]                                       ; $4af4: $1a
	call c, $9cbf                                    ; $4af5: $dc $bf $9c
	ld e, a                                          ; $4af8: $5f
	ld e, [hl]                                       ; $4af9: $5e
	ld e, $de                                        ; $4afa: $1e $de
	ld a, [bc]                                       ; $4afc: $0a
	rst SubAFromDE                                          ; $4afd: $df
	ld b, $9c                                        ; $4afe: $06 $9c
	ld [bc], a                                       ; $4b00: $02
	inc bc                                           ; $4b01: $03
	ld bc, $0ede                                     ; $4b02: $01 $de $0e
	ld [hl], e                                       ; $4b05: $73
	ld hl, sp-$21                                    ; $4b06: $f8 $df
	ld bc, $9efc                                     ; $4b08: $01 $fc $9e
	ccf                                              ; $4b0b: $3f
	ld h, a                                          ; $4b0c: $67
	ld hl, sp-$62                                    ; $4b0d: $f8 $9e
	db $ec                                           ; $4b0f: $ec
	sbc $f6                                          ; $4b10: $de $f6
	add b                                            ; $4b12: $80
	ld a, [$fffb]                                    ; $4b13: $fa $fb $ff
	rst $38                                          ; $4b16: $ff
	and h                                            ; $4b17: $a4
	ld [hl+], a                                      ; $4b18: $22
	ld [de], a                                       ; $4b19: $12
	ld [de], a                                       ; $4b1a: $12
	ld [hl-], a                                      ; $4b1b: $32
	ret                                              ; $4b1c: $c9


	add hl, bc                                       ; $4b1d: $09
	dec b                                            ; $4b1e: $05
	rst SubAFromDE                                          ; $4b1f: $df
	ld a, a                                          ; $4b20: $7f
	rst GetHLinHL                                          ; $4b21: $cf
	cp l                                             ; $4b22: $bd
	sbc b                                            ; $4b23: $98
	db $eb                                           ; $4b24: $eb
	rst $38                                          ; $4b25: $ff
	adc $3a                                          ; $4b26: $ce $3a
	ld a, [$39d9]                                    ; $4b28: $fa $d9 $39
	jr c, @+$3a                                      ; $4b2b: $38 $38

	add b                                            ; $4b2d: $80
	add b                                            ; $4b2e: $80
	scf                                              ; $4b2f: $37
	dec de                                           ; $4b30: $1b
	dec c                                            ; $4b31: $0d
	sbc [hl]                                         ; $4b32: $9e
	rlca                                             ; $4b33: $07
	sbc $3f                                          ; $4b34: $de $3f
	add [hl]                                         ; $4b36: $86
	sbc a                                            ; $4b37: $9f
	ld hl, $0811                                     ; $4b38: $21 $11 $08
	inc b                                            ; $4b3b: $04
	ld a, [de]                                       ; $4b3c: $1a
	rlca                                             ; $4b3d: $07
	nop                                              ; $4b3e: $00
	nop                                              ; $4b3f: $00
	sbc a                                            ; $4b40: $9f
	adc a                                            ; $4b41: $8f
	jp nz, $c3c3                                     ; $4b42: $c2 $c3 $c3

	rst JumpTable                                          ; $4b45: $c7
	rst $38                                          ; $4b46: $ff
	rra                                              ; $4b47: $1f
	add [hl]                                         ; $4b48: $86
	sbc a                                            ; $4b49: $9f
	ld [bc], a                                       ; $4b4a: $02
	ld b, e                                          ; $4b4b: $43
	jp $2041                                         ; $4b4c: $c3 $41 $20


	nop                                              ; $4b4f: $00
	jp c, $91ff                                      ; $4b50: $da $ff $91

	cp $33                                           ; $4b53: $fe $33
	adc c                                            ; $4b55: $89
	add [hl]                                         ; $4b56: $86
	ld b, e                                          ; $4b57: $43
	ld b, d                                          ; $4b58: $42
	ld [hl+], a                                      ; $4b59: $22
	jp nc, $fe3a                                     ; $4b5a: $d2 $3a $fe

	cp $7e                                           ; $4b5d: $fe $7e
	sbc $5e                                          ; $4b5f: $de $5e
	sbc $fe                                          ; $4b61: $de $fe
	sub a                                            ; $4b63: $97
	ld c, $c2                                        ; $4b64: $0e $c2
	ld a, [$c2f2]                                    ; $4b66: $fa $f2 $c2
	add d                                            ; $4b69: $82
	ld [bc], a                                       ; $4b6a: $02
	ld [bc], a                                       ; $4b6b: $02
	sbc $fe                                          ; $4b6c: $de $fe
	call c, $defc                                    ; $4b6e: $dc $fc $de
	ld [bc], a                                       ; $4b71: $02
	adc [hl]                                         ; $4b72: $8e
	ld b, $0c                                        ; $4b73: $06 $0c
	dec e                                            ; $4b75: $1d
	dec a                                            ; $4b76: $3d
	db $fd                                           ; $4b77: $fd
	db $fc                                           ; $4b78: $fc
	ld hl, sp-$07                                    ; $4b79: $f8 $f9
	ei                                               ; $4b7b: $fb
	ld sp, hl                                        ; $4b7c: $f9
	ld a, c                                          ; $4b7d: $79
	ld a, [de]                                       ; $4b7e: $1a
	inc de                                           ; $4b7f: $13
	push af                                          ; $4b80: $f5
	call $090d                                       ; $4b81: $cd $0d $09
	sbc $0b                                          ; $4b84: $de $0b
	sbc [hl]                                         ; $4b86: $9e
	ld a, [de]                                       ; $4b87: $1a
	rlca                                             ; $4b88: $07
	ld b, b                                          ; $4b89: $40
	ld d, e                                          ; $4b8a: $53
	ld h, b                                          ; $4b8b: $60
	sub b                                            ; $4b8c: $90
	ld c, c                                          ; $4b8d: $49
	adc c                                            ; $4b8e: $89
	dec b                                            ; $4b8f: $05
	rst $38                                          ; $4b90: $ff
	or a                                             ; $4b91: $b7
	ld a, a                                          ; $4b92: $7f
	call $fbb8                                       ; $4b93: $cd $b8 $fb
	rst $38                                          ; $4b96: $ff
	adc $02                                          ; $4b97: $ce $02
	ld a, d                                          ; $4b99: $7a
	ld sp, hl                                        ; $4b9a: $f9
	reti                                             ; $4b9b: $d9


	ccf                                              ; $4b9c: $3f
	ld h, b                                          ; $4b9d: $60
	ld a, a                                          ; $4b9e: $7f
	dec hl                                           ; $4b9f: $2b
	ld a, a                                          ; $4ba0: $7f
	ld h, b                                          ; $4ba1: $60
	sbc l                                            ; $4ba2: $9d
	rst GetHLinHL                                          ; $4ba3: $cf
	call nz, Call_073_6077                           ; $4ba4: $c4 $77 $60
	sbc e                                            ; $4ba7: $9b
	add b                                            ; $4ba8: $80
	add a                                            ; $4ba9: $87
	rra                                              ; $4baa: $1f
	ld b, l                                          ; $4bab: $45
	cpl                                              ; $4bac: $2f
	ld h, b                                          ; $4bad: $60
	ld a, e                                          ; $4bae: $7b
	ld e, [hl]                                       ; $4baf: $5e
	ld [hl], a                                       ; $4bb0: $77
	ld h, b                                          ; $4bb1: $60
	sbc e                                            ; $4bb2: $9b
	ld [bc], a                                       ; $4bb3: $02
	ldh [c], a                                       ; $4bb4: $e2
	ld a, [$7bd2]                                    ; $4bb5: $fa $d2 $7b
	ld h, b                                          ; $4bb8: $60
	inc bc                                           ; $4bb9: $03
	add b                                            ; $4bba: $80
	ld e, e                                          ; $4bbb: $5b
	add b                                            ; $4bbc: $80
	sbc l                                            ; $4bbd: $9d
	ld [de], a                                       ; $4bbe: $12
	ld l, c                                          ; $4bbf: $69
	ld a, e                                          ; $4bc0: $7b
	add b                                            ; $4bc1: $80
	sbc e                                            ; $4bc2: $9b
	rst $38                                          ; $4bc3: $ff
	rst SubAFromDE                                          ; $4bc4: $df
	db $fd                                           ; $4bc5: $fd
	add sp, $77                                      ; $4bc6: $e8 $77
	add b                                            ; $4bc8: $80
	sbc e                                            ; $4bc9: $9b
	ld [bc], a                                       ; $4bca: $02
	ld sp, $f879                                     ; $4bcb: $31 $79 $f8
	ld c, e                                          ; $4bce: $4b
	add b                                            ; $4bcf: $80
	sbc h                                            ; $4bd0: $9c
	ld [de], a                                       ; $4bd1: $12
	dec c                                            ; $4bd2: $0d
	inc bc                                           ; $4bd3: $03
	ld [hl], a                                       ; $4bd4: $77
	add b                                            ; $4bd5: $80
	ld a, a                                          ; $4bd6: $7f
	ld a, a                                          ; $4bd7: $7f
	ld [hl], a                                       ; $4bd8: $77
	add b                                            ; $4bd9: $80
	sbc d                                            ; $4bda: $9a
	add b                                            ; $4bdb: $80
	inc bc                                           ; $4bdc: $03
	ld e, a                                          ; $4bdd: $5f
	rst GetHLinHL                                          ; $4bde: $cf
	ld b, e                                          ; $4bdf: $43
	cpl                                              ; $4be0: $2f
	add b                                            ; $4be1: $80
	db $dd                                           ; $4be2: $dd
	cp $7f                                           ; $4be3: $fe $7f
	add b                                            ; $4be5: $80
	sbc e                                            ; $4be6: $9b
	ld [bc], a                                       ; $4be7: $02
	jp nz, $c2fa                                     ; $4be8: $c2 $fa $c2

	inc bc                                           ; $4beb: $03
	add b                                            ; $4bec: $80
	ld c, a                                          ; $4bed: $4f
	add b                                            ; $4bee: $80
	sbc l                                            ; $4bef: $9d
	add hl, hl                                       ; $4bf0: $29
	ret                                              ; $4bf1: $c9


	ld a, e                                          ; $4bf2: $7b
	add b                                            ; $4bf3: $80
	sbc e                                            ; $4bf4: $9b
	rst $38                                          ; $4bf5: $ff
	db $fd                                           ; $4bf6: $fd
	add sp, -$45                                     ; $4bf7: $e8 $bb
	ld [hl], a                                       ; $4bf9: $77
	add b                                            ; $4bfa: $80
	rst SubAFromDE                                          ; $4bfb: $df
	ld bc, $fc9d                                     ; $4bfc: $01 $9d $fc
	ld a, b                                          ; $4bff: $78
	ld c, a                                          ; $4c00: $4f
	add b                                            ; $4c01: $80
	sbc l                                            ; $4c02: $9d
	ld [bc], a                                       ; $4c03: $02
	dec e                                            ; $4c04: $1d
	ld l, a                                          ; $4c05: $6f
	add b                                            ; $4c06: $80
	sbc l                                            ; $4c07: $9d
	adc $c3                                          ; $4c08: $ce $c3
	ld [hl], a                                       ; $4c0a: $77
	add b                                            ; $4c0b: $80
	sbc e                                            ; $4c0c: $9b
	nop                                              ; $4c0d: $00
	ld b, b                                          ; $4c0e: $40
	rst SubAFromDE                                          ; $4c0f: $df
	ld b, a                                          ; $4c10: $47
	rla                                              ; $4c11: $17
	nop                                              ; $4c12: $00
	rst SubAFromDE                                          ; $4c13: $df
	ld [bc], a                                       ; $4c14: $02
	ld [hl], a                                       ; $4c15: $77
	add b                                            ; $4c16: $80
	add [hl]                                         ; $4c17: $86
	add [hl]                                         ; $4c18: $86
	ret nz                                           ; $4c19: $c0

	ldh [$e1], a                                     ; $4c1a: $e0 $e1
	or b                                             ; $4c1c: $b0
	ret c                                            ; $4c1d: $d8

	call c, $86d4                                    ; $4c1e: $dc $d4 $86
	ret nz                                           ; $4c21: $c0

	ret nz                                           ; $4c22: $c0

	pop hl                                           ; $4c23: $e1
	ldh [$b0], a                                     ; $4c24: $e0 $b0
	cp b                                             ; $4c26: $b8
	cp h                                             ; $4c27: $bc
	jp nc, $d5d3                                     ; $4c28: $d2 $d3 $d5

	call nc, $e5e4                                   ; $4c2b: $d4 $e4 $e5
	rst AddAOntoHL                                          ; $4c2e: $ef
	rst AddAOntoHL                                          ; $4c2f: $ef
	cp [hl]                                          ; $4c30: $be
	jp c, $ffbf                                      ; $4c31: $da $bf $ff

	sbc d                                            ; $4c34: $9a
	ld bc, $8321                                     ; $4c35: $01 $21 $83
	jp Jump_073_7a07                                 ; $4c38: $c3 $07 $7a


	ld b, $9d                                        ; $4c3b: $06 $9d
	nop                                              ; $4c3d: $00
	ld h, b                                          ; $4c3e: $60
	db $fd                                           ; $4c3f: $fd
	sub l                                            ; $4c40: $95
	rrca                                             ; $4c41: $0f
	sbc a                                            ; $4c42: $9f
	rst $38                                          ; $4c43: $ff
	ld [hl], a                                       ; $4c44: $77
	ld sp, $f0f0                                     ; $4c45: $31 $f0 $f0
	ret nc                                           ; $4c48: $d0

jr_073_4c49:
	inc bc                                           ; $4c49: $03
	rrca                                             ; $4c4a: $0f
	db $db                                           ; $4c4b: $db
	ldh a, [$03]                                     ; $4c4c: $f0 $03
	ret nz                                           ; $4c4e: $c0

	ld a, a                                          ; $4c4f: $7f
	ret nz                                           ; $4c50: $c0

	sbc e                                            ; $4c51: $9b
	ld h, c                                          ; $4c52: $61
	jp $c783                                         ; $4c53: $c3 $83 $c7


	ld [hl], a                                       ; $4c56: $77
	ret nz                                           ; $4c57: $c0

	sbc l                                            ; $4c58: $9d
	ldh [$c0], a                                     ; $4c59: $e0 $c0
	inc bc                                           ; $4c5b: $03
	ret nz                                           ; $4c5c: $c0

	cpl                                              ; $4c5d: $2f
	ret nz                                           ; $4c5e: $c0

	sbc e                                            ; $4c5f: $9b
	db $e3                                           ; $4c60: $e3
	inc bc                                           ; $4c61: $03
	rlca                                             ; $4c62: $07
	rst JumpTable                                          ; $4c63: $c7
	ld [hl], e                                       ; $4c64: $73
	ret nz                                           ; $4c65: $c0

	ld a, e                                          ; $4c66: $7b
	cp a                                             ; $4c67: $bf
	rla                                              ; $4c68: $17
	ret nz                                           ; $4c69: $c0

	ld a, a                                          ; $4c6a: $7f
	rst FarCall                                          ; $4c6b: $f7
	inc sp                                           ; $4c6c: $33
	ret nz                                           ; $4c6d: $c0

	sbc h                                            ; $4c6e: $9c
	pop hl                                           ; $4c6f: $e1
	db $e3                                           ; $4c70: $e3
	jp $c01f                                         ; $4c71: $c3 $1f $c0


	and e                                            ; $4c74: $a3
	ld bc, $b694                                     ; $4c75: $01 $94 $b6
	xor l                                            ; $4c78: $ad
	or a                                             ; $4c79: $b7
	xor l                                            ; $4c7a: $ad
	cp e                                             ; $4c7b: $bb
	xor l                                            ; $4c7c: $ad
	cp l                                             ; $4c7d: $bd
	xor e                                            ; $4c7e: $ab
	cp l                                             ; $4c7f: $bd
	xor e                                            ; $4c80: $ab
	cp [hl]                                          ; $4c81: $be
	ld a, e                                          ; $4c82: $7b
	cp $9b                                           ; $4c83: $fe $9b
	xor [hl]                                         ; $4c85: $ae
	cp e                                             ; $4c86: $bb
	xor d                                            ; $4c87: $aa
	cp a                                             ; $4c88: $bf
	ld [hl], a                                       ; $4c89: $77
	cp $9e                                           ; $4c8a: $fe $9e
	xor e                                            ; $4c8c: $ab
	ld a, e                                          ; $4c8d: $7b
	cp $97                                           ; $4c8e: $fe $97
	ld e, e                                          ; $4c90: $5b
	ld e, a                                          ; $4c91: $5f
	ld e, d                                          ; $4c92: $5a
	ld e, [hl]                                       ; $4c93: $5e
	ld a, [de]                                       ; $4c94: $1a
	ld e, $0a                                        ; $4c95: $1e $0a
	ld c, $77                                        ; $4c97: $0e $77
	cp $dd                                           ; $4c99: $fe $dd
	ld b, $df                                        ; $4c9b: $06 $df
	ld [bc], a                                       ; $4c9d: $02
	rst SubAFromDE                                          ; $4c9e: $df
	inc bc                                           ; $4c9f: $03
	db $db                                           ; $4ca0: $db
	ld bc, $dff7                                     ; $4ca1: $01 $f7 $df
	ccf                                              ; $4ca4: $3f
	add b                                            ; $4ca5: $80
	db $ec                                           ; $4ca6: $ec
	and h                                            ; $4ca7: $a4
	or $22                                           ; $4ca8: $f6 $22
	or $12                                           ; $4caa: $f6 $12
	or $12                                           ; $4cac: $f6 $12
	ld a, [$fbd2]                                    ; $4cae: $fa $d2 $fb
	add hl, hl                                       ; $4cb1: $29
	rst $38                                          ; $4cb2: $ff
	add hl, bc                                       ; $4cb3: $09
	rst $38                                          ; $4cb4: $ff
	dec b                                            ; $4cb5: $05
	rst FarCall                                          ; $4cb6: $f7
	ld a, d                                          ; $4cb7: $7a
	rst GetHLinHL                                          ; $4cb8: $cf
	ld a, [$59df]                                    ; $4cb9: $fa $df $59
	cp l                                             ; $4cbc: $bd
	add hl, sp                                       ; $4cbd: $39
	sub b                                            ; $4cbe: $90
	jr c, @-$14                                      ; $4cbf: $38 $ea

	jr c, jr_073_4c49                                ; $4cc1: $38 $86

	add b                                            ; $4cc3: $80
	adc [hl]                                         ; $4cc4: $8e
	add b                                            ; $4cc5: $80
	add b                                            ; $4cc6: $80
	scf                                              ; $4cc7: $37
	ld hl, $111b                                     ; $4cc8: $21 $1b $11
	dec c                                            ; $4ccb: $0d
	ld [$0c0f], sp                                   ; $4ccc: $08 $0f $0c
	ccf                                              ; $4ccf: $3f
	ld [de], a                                       ; $4cd0: $12
	ccf                                              ; $4cd1: $3f
	ld bc, $003f                                     ; $4cd2: $01 $3f $00
	sbc a                                            ; $4cd5: $9f
	nop                                              ; $4cd6: $00
	sbc a                                            ; $4cd7: $9f
	add a                                            ; $4cd8: $87
	adc [hl]                                         ; $4cd9: $8e
	sbc a                                            ; $4cda: $9f
	jp nz, $c302                                     ; $4cdb: $c2 $02 $c3

	ld b, e                                          ; $4cde: $43
	jp nz, Jump_073_47c3                             ; $4cdf: $c2 $c3 $47

	ld b, c                                          ; $4ce2: $41
	jr nz, jr_073_4d05                               ; $4ce3: $20 $20

	rst $38                                          ; $4ce5: $ff
	add b                                            ; $4ce6: $80
	rst $38                                          ; $4ce7: $ff
	inc sp                                           ; $4ce8: $33
	rst $38                                          ; $4ce9: $ff
	adc c                                            ; $4cea: $89
	rst $38                                          ; $4ceb: $ff
	add [hl]                                         ; $4cec: $86
	rst $38                                          ; $4ced: $ff
	ld h, e                                          ; $4cee: $63
	rst $38                                          ; $4cef: $ff
	ld b, d                                          ; $4cf0: $42
	rst $38                                          ; $4cf1: $ff
	ld [hl+], a                                      ; $4cf2: $22

Call_073_4cf3:
	rst $38                                          ; $4cf3: $ff
	jp nc, $3afe                                     ; $4cf4: $d2 $fe $3a

	cp $8e                                           ; $4cf7: $fe $8e
	cp $fa                                           ; $4cf9: $fe $fa
	ld a, [hl]                                       ; $4cfb: $7e
	jp nc, $c2fe                                     ; $4cfc: $d2 $fe $c2

	ld e, [hl]                                       ; $4cff: $5e
	jp nz, $82fe                                     ; $4d00: $c2 $fe $82

	ld a, $02                                        ; $4d03: $3e $02

jr_073_4d05:
	ld a, [hl]                                       ; $4d05: $7e
	sbc l                                            ; $4d06: $9d
	ld [bc], a                                       ; $4d07: $02
	cp $73                                           ; $4d08: $fe $73
	cp $85                                           ; $4d0a: $fe $85
	db $fc                                           ; $4d0c: $fc
	ld b, $fc                                        ; $4d0d: $06 $fc
	inc c                                            ; $4d0f: $0c
	db $fc                                           ; $4d10: $fc
	dec e                                            ; $4d11: $1d
	db $fc                                           ; $4d12: $fc
	dec a                                            ; $4d13: $3d
	db $fc                                           ; $4d14: $fc
	db $fd                                           ; $4d15: $fd
	db $fc                                           ; $4d16: $fc
	push af                                          ; $4d17: $f5
	ld hl, sp-$33                                    ; $4d18: $f8 $cd
	ld sp, hl                                        ; $4d1a: $f9
	dec c                                            ; $4d1b: $0d
	ei                                               ; $4d1c: $fb
	add hl, bc                                       ; $4d1d: $09
	ld sp, hl                                        ; $4d1e: $f9
	dec bc                                           ; $4d1f: $0b
	ld a, c                                          ; $4d20: $79
	dec bc                                           ; $4d21: $0b
	ld a, [de]                                       ; $4d22: $1a
	dec bc                                           ; $4d23: $0b
	inc de                                           ; $4d24: $13
	ld a, [de]                                       ; $4d25: $1a
	rlca                                             ; $4d26: $07
	ld b, b                                          ; $4d27: $40
	ld b, a                                          ; $4d28: $47
	ld h, b                                          ; $4d29: $60
	sub h                                            ; $4d2a: $94
	rst $38                                          ; $4d2b: $ff
	ld [bc], a                                       ; $4d2c: $02
	or a                                             ; $4d2d: $b7
	ld a, d                                          ; $4d2e: $7a
	ld a, a                                          ; $4d2f: $7f

jr_073_4d30:
	ld sp, hl                                        ; $4d30: $f9
	call $b8d9                                       ; $4d31: $cd $d9 $b8
	jr c, jr_073_4d30                                ; $4d34: $38 $fa

	cpl                                              ; $4d36: $2f
	ld h, b                                          ; $4d37: $60
	sub a                                            ; $4d38: $97
	add b                                            ; $4d39: $80
	adc a                                            ; $4d3a: $8f
	add a                                            ; $4d3b: $87
	call $c41f                                       ; $4d3c: $cd $1f $c4
	ld b, l                                          ; $4d3f: $45
	jp Jump_073_604f                                 ; $4d40: $c3 $4f $60


	sbc h                                            ; $4d43: $9c
	ld b, e                                          ; $4d44: $43
	rst $38                                          ; $4d45: $ff
	ld h, d                                          ; $4d46: $62
	ld l, e                                          ; $4d47: $6b
	ld h, b                                          ; $4d48: $60
	sbc d                                            ; $4d49: $9a
	ld c, $fe                                        ; $4d4a: $0e $fe
	add d                                            ; $4d4c: $82
	cp $e2                                           ; $4d4d: $fe $e2
	ld [hl], e                                       ; $4d4f: $73
	ld e, h                                          ; $4d50: $5c
	ld [hl], e                                       ; $4d51: $73
	ld h, b                                          ; $4d52: $60
	inc bc                                           ; $4d53: $03
	add b                                            ; $4d54: $80
	ld h, a                                          ; $4d55: $67
	add b                                            ; $4d56: $80
	sbc h                                            ; $4d57: $9c
	sub d                                            ; $4d58: $92
	ei                                               ; $4d59: $fb
	ld l, c                                          ; $4d5a: $69
	ld l, a                                          ; $4d5b: $6f
	add b                                            ; $4d5c: $80
	ld a, a                                          ; $4d5d: $7f
	cp $99                                           ; $4d5e: $fe $99
	rst SubAFromDE                                          ; $4d60: $df
	ld sp, $79fd                                     ; $4d61: $31 $fd $79
	add sp, -$08                                     ; $4d64: $e8 $f8
	ld d, a                                          ; $4d66: $57
	add b                                            ; $4d67: $80
	sbc c                                            ; $4d68: $99
	rlca                                             ; $4d69: $07
	inc b                                            ; $4d6a: $04
	ccf                                              ; $4d6b: $3f
	ld b, $3f                                        ; $4d6c: $06 $3f
	add hl, de                                       ; $4d6e: $19
	ld l, e                                          ; $4d6f: $6b
	add b                                            ; $4d70: $80
	sub [hl]                                         ; $4d71: $96
	add b                                            ; $4d72: $80
	rst GetHLinHL                                          ; $4d73: $cf
	inc bc                                           ; $4d74: $03
	rst GetHLinHL                                          ; $4d75: $cf
	ld e, a                                          ; $4d76: $5f
	call nz, Call_073_47cf                           ; $4d77: $c4 $cf $47
	ld b, e                                          ; $4d7a: $43
	ld d, e                                          ; $4d7b: $53
	add b                                            ; $4d7c: $80
	ld h, [hl]                                       ; $4d7d: $66
	ldh [$7f], a                                     ; $4d7e: $e0 $7f
	add b                                            ; $4d80: $80
	halt                                             ; $4d81: $76
	xor $7e                                          ; $4d82: $ee $7e
	ldh [c], a                                       ; $4d84: $e2
	sbc h                                            ; $4d85: $9c
	ld a, [$c2fe]                                    ; $4d86: $fa $fe $c2
	ld c, a                                          ; $4d89: $4f
	add b                                            ; $4d8a: $80
	ld a, a                                          ; $4d8b: $7f
	adc l                                            ; $4d8c: $8d
	inc de                                           ; $4d8d: $13
	add b                                            ; $4d8e: $80
	sbc h                                            ; $4d8f: $9c
	ld [de], a                                       ; $4d90: $12
	ei                                               ; $4d91: $fb
	jp hl                                            ; $4d92: $e9


	ld h, a                                          ; $4d93: $67
	add b                                            ; $4d94: $80
	sub a                                            ; $4d95: $97
	rst $38                                          ; $4d96: $ff
	ld bc, $01fd                                     ; $4d97: $01 $fd $01
	add sp, -$04                                     ; $4d9a: $e8 $fc
	cp d                                             ; $4d9c: $ba
	ld a, b                                          ; $4d9d: $78
	ld d, e                                          ; $4d9e: $53
	add b                                            ; $4d9f: $80
	sbc h                                            ; $4da0: $9c
	ld [bc], a                                       ; $4da1: $02
	ccf                                              ; $4da2: $3f
	dec e                                            ; $4da3: $1d
	ld h, e                                          ; $4da4: $63
	add b                                            ; $4da5: $80
	sbc b                                            ; $4da6: $98
	nop                                              ; $4da7: $00
	rst GetHLinHL                                          ; $4da8: $cf
	ld b, b                                          ; $4da9: $40
	adc $df                                          ; $4daa: $ce $df
	ld b, e                                          ; $4dac: $43
	ld b, a                                          ; $4dad: $47
	dec de                                           ; $4dae: $1b
	add b                                            ; $4daf: $80
	ld a, a                                          ; $4db0: $7f
	add [hl]                                         ; $4db1: $86
	ld l, e                                          ; $4db2: $6b
	add b                                            ; $4db3: $80
	rst SubAFromDE                                          ; $4db4: $df
	add [hl]                                         ; $4db5: $86
	rst SubAFromDE                                          ; $4db6: $df
	ret nz                                           ; $4db7: $c0

	add [hl]                                         ; $4db8: $86
	ldh [$c0], a                                     ; $4db9: $e0 $c0

Call_073_4dbb:
	pop hl                                           ; $4dbb: $e1
	pop hl                                           ; $4dbc: $e1
	or b                                             ; $4dbd: $b0
	ldh [$d8], a                                     ; $4dbe: $e0 $d8
	or b                                             ; $4dc0: $b0
	call c, $d4b8                                    ; $4dc1: $dc $b8 $d4
	cp h                                             ; $4dc4: $bc
	jp nc, $d3be                                     ; $4dc5: $d2 $be $d3

	cp a                                             ; $4dc8: $bf
	push de                                          ; $4dc9: $d5
	cp a                                             ; $4dca: $bf
	call nc, $e4bf                                   ; $4dcb: $d4 $bf $e4
	cp a                                             ; $4dce: $bf
	push hl                                          ; $4dcf: $e5
	cp a                                             ; $4dd0: $bf
	rst AddAOntoHL                                          ; $4dd1: $ef
	ld a, e                                          ; $4dd2: $7b
	cp $fd                                           ; $4dd3: $fe $fd
	ld a, l                                          ; $4dd5: $7d
	rst GetHLinHL                                          ; $4dd6: $cf
	sbc b                                            ; $4dd7: $98
	ld hl, $8360                                     ; $4dd8: $21 $60 $83
	nop                                              ; $4ddb: $00
	jp $0700                                         ; $4ddc: $c3 $00 $07


	ld a, e                                          ; $4ddf: $7b
	cp $96                                           ; $4de0: $fe $96
	rrca                                             ; $4de2: $0f
	inc bc                                           ; $4de3: $03
	sbc a                                            ; $4de4: $9f
	rrca                                             ; $4de5: $0f
	rst $38                                          ; $4de6: $ff
	ldh a, [rPCM34]                                  ; $4de7: $f0 $77
	ldh a, [$31]                                     ; $4de9: $f0 $31

jr_073_4deb:
	call c, $9df0                                    ; $4deb: $dc $f0 $9d
	ret nc                                           ; $4dee: $d0

	ldh a, [$03]                                     ; $4def: $f0 $03
	ret nz                                           ; $4df1: $c0

	ld l, a                                          ; $4df2: $6f
	ret nz                                           ; $4df3: $c0

	sbc c                                            ; $4df4: $99
	ldh [$c3], a                                     ; $4df5: $e0 $c3
	ret nz                                           ; $4df7: $c0

	add e                                            ; $4df8: $83
	nop                                              ; $4df9: $00
	rst JumpTable                                          ; $4dfa: $c7
	dec de                                           ; $4dfb: $1b
	ret nz                                           ; $4dfc: $c0

	sbc [hl]                                         ; $4dfd: $9e
	or c                                             ; $4dfe: $b1
	inc de                                           ; $4dff: $13
	ret nz                                           ; $4e00: $c0

	sbc b                                            ; $4e01: $98
	pop hl                                           ; $4e02: $e1
	ldh [$e3], a                                     ; $4e03: $e0 $e3
	ret nz                                           ; $4e05: $c0

	ld b, e                                          ; $4e06: $43
	add b                                            ; $4e07: $80
	rlca                                             ; $4e08: $07
	ld a, e                                          ; $4e09: $7b
	cp [hl]                                          ; $4e0a: $be
	inc hl                                           ; $4e0b: $23
	add b                                            ; $4e0c: $80
	sbc [hl]                                         ; $4e0d: $9e
	pop hl                                           ; $4e0e: $e1
	rrca                                             ; $4e0f: $0f
	ret nz                                           ; $4e10: $c0

	sbc [hl]                                         ; $4e11: $9e
	jp Jump_073_7e7b                                 ; $4e12: $c3 $7b $7e


	scf                                              ; $4e15: $37
	ret nz                                           ; $4e16: $c0

	adc c                                            ; $4e17: $89
	ld bc, $b68d                                     ; $4e18: $01 $8d $b6
	xor l                                            ; $4e1b: $ad
	or a                                             ; $4e1c: $b7
	xor l                                            ; $4e1d: $ad
	cp e                                             ; $4e1e: $bb
	xor l                                            ; $4e1f: $ad
	cp l                                             ; $4e20: $bd
	xor e                                            ; $4e21: $ab
	cp l                                             ; $4e22: $bd
	xor e                                            ; $4e23: $ab
	cp [hl]                                          ; $4e24: $be
	xor e                                            ; $4e25: $ab
	cp a                                             ; $4e26: $bf
	xor e                                            ; $4e27: $ab
	xor [hl]                                         ; $4e28: $ae
	cp e                                             ; $4e29: $bb
	xor d                                            ; $4e2a: $aa
	cp a                                             ; $4e2b: $bf
	ld [hl], a                                       ; $4e2c: $77
	cp $7b                                           ; $4e2d: $fe $7b
	push af                                          ; $4e2f: $f5
	sub [hl]                                         ; $4e30: $96
	cp a                                             ; $4e31: $bf
	ld e, e                                          ; $4e32: $5b
	ld e, a                                          ; $4e33: $5f
	ld e, d                                          ; $4e34: $5a
	ld e, [hl]                                       ; $4e35: $5e
	ld a, [de]                                       ; $4e36: $1a
	ld e, $0a                                        ; $4e37: $1e $0a
	ld c, $77                                        ; $4e39: $0e $77
	cp $dd                                           ; $4e3b: $fe $dd
	ld b, $df                                        ; $4e3d: $06 $df
	ld [bc], a                                       ; $4e3f: $02
	rst SubAFromDE                                          ; $4e40: $df
	inc bc                                           ; $4e41: $03
	db $db                                           ; $4e42: $db
	ld bc, $dff7                                     ; $4e43: $01 $f7 $df
	ccf                                              ; $4e46: $3f
	add b                                            ; $4e47: $80
	db $ec                                           ; $4e48: $ec
	and h                                            ; $4e49: $a4
	or $22                                           ; $4e4a: $f6 $22
	or $12                                           ; $4e4c: $f6 $12
	or $12                                           ; $4e4e: $f6 $12
	ld a, [$fb12]                                    ; $4e50: $fa $12 $fb
	jp hl                                            ; $4e53: $e9


	rst $38                                          ; $4e54: $ff
	add hl, bc                                       ; $4e55: $09
	rst $38                                          ; $4e56: $ff
	dec b                                            ; $4e57: $05
	or a                                             ; $4e58: $b7
	ld a, d                                          ; $4e59: $7a
	ld a, a                                          ; $4e5a: $7f
	ld a, [$d9cf]                                    ; $4e5b: $fa $cf $d9
	cp l                                             ; $4e5e: $bd
	add hl, sp                                       ; $4e5f: $39
	sbc b                                            ; $4e60: $98
	jr c, @-$14                                      ; $4e61: $38 $ea

	jr c, jr_073_4deb                                ; $4e63: $38 $86

	add b                                            ; $4e65: $80
	adc [hl]                                         ; $4e66: $8e
	add b                                            ; $4e67: $80
	add b                                            ; $4e68: $80
	scf                                              ; $4e69: $37
	ld hl, $111b                                     ; $4e6a: $21 $1b $11
	dec c                                            ; $4e6d: $0d
	ld [$0407], sp                                   ; $4e6e: $08 $07 $04
	ccf                                              ; $4e71: $3f
	ld e, $3f                                        ; $4e72: $1e $3f
	ld bc, $003f                                     ; $4e74: $01 $3f $00
	sbc a                                            ; $4e77: $9f
	nop                                              ; $4e78: $00
	sbc a                                            ; $4e79: $9f
	add a                                            ; $4e7a: $87
	adc a                                            ; $4e7b: $8f
	sbc a                                            ; $4e7c: $9f
	jp nz, $c302                                     ; $4e7d: $c2 $02 $c3

	ld b, e                                          ; $4e80: $43
	jp nz, Jump_073_47c3                             ; $4e81: $c2 $c3 $47

	ld b, c                                          ; $4e84: $41
	jr nz, jr_073_4ea7                               ; $4e85: $20 $20

	rst $38                                          ; $4e87: $ff
	add b                                            ; $4e88: $80
	rst $38                                          ; $4e89: $ff
	inc sp                                           ; $4e8a: $33
	rst $38                                          ; $4e8b: $ff
	adc c                                            ; $4e8c: $89
	rst $38                                          ; $4e8d: $ff
	add [hl]                                         ; $4e8e: $86
	rst $38                                          ; $4e8f: $ff
	ld b, e                                          ; $4e90: $43
	rst $38                                          ; $4e91: $ff
	ld b, d                                          ; $4e92: $42
	rst $38                                          ; $4e93: $ff
	ld [hl+], a                                      ; $4e94: $22
	rst $38                                          ; $4e95: $ff
	jp nc, $3afe                                     ; $4e96: $d2 $fe $3a

	cp $0e                                           ; $4e99: $fe $0e
	cp $e2                                           ; $4e9b: $fe $e2
	ld a, [hl]                                       ; $4e9d: $7e
	ld a, [$d2fe]                                    ; $4e9e: $fa $fe $d2
	ld e, [hl]                                       ; $4ea1: $5e
	jp nz, $82fe                                     ; $4ea2: $c2 $fe $82

	ld a, $02                                        ; $4ea5: $3e $02

jr_073_4ea7:
	ld a, [hl]                                       ; $4ea7: $7e
	sbc l                                            ; $4ea8: $9d
	ld [bc], a                                       ; $4ea9: $02
	cp $73                                           ; $4eaa: $fe $73
	cp $85                                           ; $4eac: $fe $85
	db $fc                                           ; $4eae: $fc
	ld b, $fc                                        ; $4eaf: $06 $fc
	inc c                                            ; $4eb1: $0c
	db $fc                                           ; $4eb2: $fc
	dec e                                            ; $4eb3: $1d
	db $fc                                           ; $4eb4: $fc
	dec a                                            ; $4eb5: $3d
	db $fc                                           ; $4eb6: $fc
	db $fd                                           ; $4eb7: $fd
	db $fc                                           ; $4eb8: $fc
	push af                                          ; $4eb9: $f5
	ld hl, sp-$33                                    ; $4eba: $f8 $cd
	ld sp, hl                                        ; $4ebc: $f9
	dec c                                            ; $4ebd: $0d
	ei                                               ; $4ebe: $fb
	add hl, bc                                       ; $4ebf: $09
	ld sp, hl                                        ; $4ec0: $f9
	dec bc                                           ; $4ec1: $0b
	ld a, c                                          ; $4ec2: $79
	dec bc                                           ; $4ec3: $0b
	ld a, [de]                                       ; $4ec4: $1a
	dec bc                                           ; $4ec5: $0b
	inc de                                           ; $4ec6: $13
	ld a, [de]                                       ; $4ec7: $1a
	rlca                                             ; $4ec8: $07
	ld b, b                                          ; $4ec9: $40
	ld b, a                                          ; $4eca: $47
	ld h, b                                          ; $4ecb: $60
	sbc l                                            ; $4ecc: $9d
	rst $38                                          ; $4ecd: $ff
	ld [bc], a                                       ; $4ece: $02
	ld a, e                                          ; $4ecf: $7b
	ld e, [hl]                                       ; $4ed0: $5e
	sbc c                                            ; $4ed1: $99

jr_073_4ed2:
	ld sp, hl                                        ; $4ed2: $f9
	call $b8d9                                       ; $4ed3: $cd $d9 $b8
	jr c, jr_073_4ed2                                ; $4ed6: $38 $fa

	cpl                                              ; $4ed8: $2f
	ld h, b                                          ; $4ed9: $60
	sub a                                            ; $4eda: $97
	add b                                            ; $4edb: $80
	adc a                                            ; $4edc: $8f
	add a                                            ; $4edd: $87
	rst GetHLinHL                                          ; $4ede: $cf
	rra                                              ; $4edf: $1f
	jp nz, $c342                                     ; $4ee0: $c2 $42 $c3

	rra                                              ; $4ee3: $1f
	ld h, b                                          ; $4ee4: $60
	ld a, a                                          ; $4ee5: $7f
	ld [hl], b                                       ; $4ee6: $70
	sbc d                                            ; $4ee7: $9a
	ldh [c], a                                       ; $4ee8: $e2
	cp $fa                                           ; $4ee9: $fe $fa
	ld a, [hl]                                       ; $4eeb: $7e
	jp nc, Jump_073_606f                             ; $4eec: $d2 $6f $60

	inc bc                                           ; $4eef: $03
	add b                                            ; $4ef0: $80
	ld e, a                                          ; $4ef1: $5f
	add b                                            ; $4ef2: $80
	sbc h                                            ; $4ef3: $9c
	ret                                              ; $4ef4: $c9


	rst $38                                          ; $4ef5: $ff
	add hl, hl                                       ; $4ef6: $29
	ld [hl], a                                       ; $4ef7: $77
	add b                                            ; $4ef8: $80
	ld a, a                                          ; $4ef9: $7f
	cp $99                                           ; $4efa: $fe $99
	rst SubAFromDE                                          ; $4efc: $df
	ld sp, $79fd                                     ; $4efd: $31 $fd $79
	add sp, -$08                                     ; $4f00: $e8 $f8
	ld c, e                                          ; $4f02: $4b
	add b                                            ; $4f03: $80
	sbc h                                            ; $4f04: $9c
	ld c, $3f                                        ; $4f05: $0e $3f
	ld de, $806b                                     ; $4f07: $11 $6b $80
	sub [hl]                                         ; $4f0a: $96
	add b                                            ; $4f0b: $80
	rst GetHLinHL                                          ; $4f0c: $cf
	inc bc                                           ; $4f0d: $03
	rst GetHLinHL                                          ; $4f0e: $cf
	ld e, a                                          ; $4f0f: $5f
	call nz, Call_073_47cf                           ; $4f10: $c4 $cf $47
	ld b, e                                          ; $4f13: $43
	inc hl                                           ; $4f14: $23
	add b                                            ; $4f15: $80
	ld a, a                                          ; $4f16: $7f
	cp $7e                                           ; $4f17: $fe $7e
	ldh [c], a                                       ; $4f19: $e2
	ld a, [hl]                                       ; $4f1a: $7e
	call c, $c29e                                    ; $4f1b: $dc $9e $c2
	inc bc                                           ; $4f1e: $03
	add b                                            ; $4f1f: $80
	dec hl                                           ; $4f20: $2b
	add b                                            ; $4f21: $80
	sub a                                            ; $4f22: $97
	rst $38                                          ; $4f23: $ff
	ld bc, $01fd                                     ; $4f24: $01 $fd $01
	add sp, -$04                                     ; $4f27: $e8 $fc
	cp d                                             ; $4f29: $ba
	ld a, b                                          ; $4f2a: $78
	ld d, e                                          ; $4f2b: $53
	add b                                            ; $4f2c: $80
	sbc h                                            ; $4f2d: $9c
	ld b, $3f                                        ; $4f2e: $06 $3f
	add hl, de                                       ; $4f30: $19
	ld h, e                                          ; $4f31: $63
	add b                                            ; $4f32: $80
	sbc b                                            ; $4f33: $98
	nop                                              ; $4f34: $00
	rst GetHLinHL                                          ; $4f35: $cf
	ld b, b                                          ; $4f36: $40
	adc $df                                          ; $4f37: $ce $df
	ld b, e                                          ; $4f39: $43
	ld b, a                                          ; $4f3a: $47
	dec de                                           ; $4f3b: $1b
	add b                                            ; $4f3c: $80
	ld a, a                                          ; $4f3d: $7f
	add [hl]                                         ; $4f3e: $86
	ld l, e                                          ; $4f3f: $6b
	add b                                            ; $4f40: $80
	rst SubAFromDE                                          ; $4f41: $df
	add [hl]                                         ; $4f42: $86
	rst SubAFromDE                                          ; $4f43: $df
	ret nz                                           ; $4f44: $c0

	add [hl]                                         ; $4f45: $86
	ldh [$c0], a                                     ; $4f46: $e0 $c0
	pop hl                                           ; $4f48: $e1
	pop hl                                           ; $4f49: $e1
	or b                                             ; $4f4a: $b0
	ldh [$d8], a                                     ; $4f4b: $e0 $d8
	or b                                             ; $4f4d: $b0
	call c, $d4b8                                    ; $4f4e: $dc $b8 $d4
	cp h                                             ; $4f51: $bc
	jp nc, $d3be                                     ; $4f52: $d2 $be $d3

	cp a                                             ; $4f55: $bf
	push de                                          ; $4f56: $d5
	cp a                                             ; $4f57: $bf
	call nc, $e4bf                                   ; $4f58: $d4 $bf $e4
	cp a                                             ; $4f5b: $bf
	push hl                                          ; $4f5c: $e5
	cp a                                             ; $4f5d: $bf
	rst AddAOntoHL                                          ; $4f5e: $ef
	ld a, e                                          ; $4f5f: $7b
	cp $fd                                           ; $4f60: $fe $fd
	ld a, l                                          ; $4f62: $7d
	rst GetHLinHL                                          ; $4f63: $cf
	sbc b                                            ; $4f64: $98
	ld hl, $0360                                     ; $4f65: $21 $60 $03
	nop                                              ; $4f68: $00
	jp $0700                                         ; $4f69: $c3 $00 $07


	ld a, e                                          ; $4f6c: $7b
	cp $96                                           ; $4f6d: $fe $96
	rrca                                             ; $4f6f: $0f
	inc bc                                           ; $4f70: $03
	sbc a                                            ; $4f71: $9f
	rrca                                             ; $4f72: $0f
	rst $38                                          ; $4f73: $ff
	ldh a, [rPCM34]                                  ; $4f74: $f0 $77
	ldh a, [$31]                                     ; $4f76: $f0 $31
	call c, $9df0                                    ; $4f78: $dc $f0 $9d
	ret nc                                           ; $4f7b: $d0

	ldh a, [$03]                                     ; $4f7c: $f0 $03
	ret nz                                           ; $4f7e: $c0

	ld l, a                                          ; $4f7f: $6f
	ret nz                                           ; $4f80: $c0

	sbc l                                            ; $4f81: $9d
	ldh [hDisp0_SCY], a                                     ; $4f82: $e0 $83
	inc bc                                           ; $4f84: $03
	ret nz                                           ; $4f85: $c0

	rla                                              ; $4f86: $17
	ret nz                                           ; $4f87: $c0

	sbc b                                            ; $4f88: $98
	ld h, c                                          ; $4f89: $61
	ldh [hDisp0_SCY], a                                     ; $4f8a: $e0 $83
	ret nz                                           ; $4f8c: $c0

	inc bc                                           ; $4f8d: $03
	nop                                              ; $4f8e: $00
	rst JumpTable                                          ; $4f8f: $c7
	inc bc                                           ; $4f90: $03
	ret nz                                           ; $4f91: $c0

	daa                                              ; $4f92: $27
	ret nz                                           ; $4f93: $c0

	sbc b                                            ; $4f94: $98
	pop hl                                           ; $4f95: $e1
	ldh [$c3], a                                     ; $4f96: $e0 $c3
	ret nz                                           ; $4f98: $c0

	jp $0740                                         ; $4f99: $c3 $40 $07


	ld a, e                                          ; $4f9c: $7b
	cp [hl]                                          ; $4f9d: $be
	ld b, a                                          ; $4f9e: $47
	ret nz                                           ; $4f9f: $c0

	sbc h                                            ; $4fa0: $9c
	ld bc, $b694                                     ; $4fa1: $01 $94 $b6
	xor l                                            ; $4fa4: $ad
	or a                                             ; $4fa5: $b7
	xor l                                            ; $4fa6: $ad
	cp e                                             ; $4fa7: $bb
	xor l                                            ; $4fa8: $ad
	cp l                                             ; $4fa9: $bd
	xor e                                            ; $4faa: $ab
	cp l                                             ; $4fab: $bd
	xor e                                            ; $4fac: $ab
	cp [hl]                                          ; $4fad: $be
	ld a, e                                          ; $4fae: $7b
	cp $9b                                           ; $4faf: $fe $9b
	xor [hl]                                         ; $4fb1: $ae
	cp e                                             ; $4fb2: $bb
	xor d                                            ; $4fb3: $aa
	cp a                                             ; $4fb4: $bf
	ld [hl], a                                       ; $4fb5: $77
	cp $9e                                           ; $4fb6: $fe $9e
	xor e                                            ; $4fb8: $ab
	ld a, e                                          ; $4fb9: $7b
	cp $97                                           ; $4fba: $fe $97
	ld e, e                                          ; $4fbc: $5b
	ld e, a                                          ; $4fbd: $5f
	ld e, d                                          ; $4fbe: $5a
	ld e, [hl]                                       ; $4fbf: $5e
	ld a, [de]                                       ; $4fc0: $1a
	ld e, $0a                                        ; $4fc1: $1e $0a
	ld c, $77                                        ; $4fc3: $0e $77
	cp $dd                                           ; $4fc5: $fe $dd
	ld b, $df                                        ; $4fc7: $06 $df
	ld [bc], a                                       ; $4fc9: $02
	rst SubAFromDE                                          ; $4fca: $df
	inc bc                                           ; $4fcb: $03
	db $db                                           ; $4fcc: $db
	ld bc, $dff7                                     ; $4fcd: $01 $f7 $df
	ccf                                              ; $4fd0: $3f
	add b                                            ; $4fd1: $80
	db $ec                                           ; $4fd2: $ec
	and h                                            ; $4fd3: $a4
	or $22                                           ; $4fd4: $f6 $22
	or $12                                           ; $4fd6: $f6 $12
	or $12                                           ; $4fd8: $f6 $12
	ld a, [$fbd2]                                    ; $4fda: $fa $d2 $fb
	add hl, hl                                       ; $4fdd: $29
	rst $38                                          ; $4fde: $ff
	add hl, bc                                       ; $4fdf: $09
	rst $38                                          ; $4fe0: $ff
	dec b                                            ; $4fe1: $05
	rst SubAFromDE                                          ; $4fe2: $df
	ld a, [hl-]                                      ; $4fe3: $3a
	ld a, a                                          ; $4fe4: $7f
	ld a, [$d9cf]                                    ; $4fe5: $fa $cf $d9
	cp l                                             ; $4fe8: $bd
	add hl, sp                                       ; $4fe9: $39
	sbc b                                            ; $4fea: $98
	jr c, @-$14                                      ; $4feb: $38 $ea

	jr c, @-$78                                      ; $4fed: $38 $86

	add b                                            ; $4fef: $80
	adc [hl]                                         ; $4ff0: $8e
	add b                                            ; $4ff1: $80
	add b                                            ; $4ff2: $80
	scf                                              ; $4ff3: $37
	ld hl, $111b                                     ; $4ff4: $21 $1b $11
	dec c                                            ; $4ff7: $0d
	ld [$0407], sp                                   ; $4ff8: $08 $07 $04
	ccf                                              ; $4ffb: $3f
	ld c, $3f                                        ; $4ffc: $0e $3f
	ld de, $003f                                     ; $4ffe: $11 $3f $00
	sbc a                                            ; $5001: $9f
	nop                                              ; $5002: $00
	sbc a                                            ; $5003: $9f
	add [hl]                                         ; $5004: $86
	adc a                                            ; $5005: $8f
	sbc a                                            ; $5006: $9f
	jp nz, $c302                                     ; $5007: $c2 $02 $c3

	ld b, e                                          ; $500a: $43
	jp Jump_073_47c3                                 ; $500b: $c3 $c3 $47


	ld b, c                                          ; $500e: $41
	jr nz, jr_073_5031                               ; $500f: $20 $20

	rst $38                                          ; $5011: $ff
	add b                                            ; $5012: $80
	rst $38                                          ; $5013: $ff
	inc sp                                           ; $5014: $33
	rst $38                                          ; $5015: $ff
	adc c                                            ; $5016: $89
	rst $38                                          ; $5017: $ff
	add [hl]                                         ; $5018: $86
	rst $38                                          ; $5019: $ff
	ld b, e                                          ; $501a: $43
	rst $38                                          ; $501b: $ff
	ld b, d                                          ; $501c: $42
	rst $38                                          ; $501d: $ff
	ld [hl+], a                                      ; $501e: $22
	rst $38                                          ; $501f: $ff
	jp nc, $3afe                                     ; $5020: $d2 $fe $3a

	cp $0e                                           ; $5023: $fe $0e
	cp $c2                                           ; $5025: $fe $c2
	cp $fa                                           ; $5027: $fe $fa
	sbc $f2                                          ; $5029: $de $f2
	ld e, [hl]                                       ; $502b: $5e
	jp nz, $82fe                                     ; $502c: $c2 $fe $82

	ld a, $02                                        ; $502f: $3e $02

jr_073_5031:
	ld a, [hl]                                       ; $5031: $7e
	sbc l                                            ; $5032: $9d
	ld [bc], a                                       ; $5033: $02
	cp $73                                           ; $5034: $fe $73
	cp $85                                           ; $5036: $fe $85
	db $fc                                           ; $5038: $fc
	ld b, $fc                                        ; $5039: $06 $fc
	inc c                                            ; $503b: $0c
	db $fc                                           ; $503c: $fc
	dec e                                            ; $503d: $1d
	db $fc                                           ; $503e: $fc
	dec a                                            ; $503f: $3d
	db $fc                                           ; $5040: $fc
	db $fd                                           ; $5041: $fd
	db $fc                                           ; $5042: $fc
	push af                                          ; $5043: $f5
	ld hl, sp-$33                                    ; $5044: $f8 $cd
	ld sp, hl                                        ; $5046: $f9
	dec c                                            ; $5047: $0d
	ei                                               ; $5048: $fb
	add hl, bc                                       ; $5049: $09
	ld sp, hl                                        ; $504a: $f9
	dec bc                                           ; $504b: $0b
	ld a, c                                          ; $504c: $79
	dec bc                                           ; $504d: $0b
	ld a, [de]                                       ; $504e: $1a
	dec bc                                           ; $504f: $0b
	inc de                                           ; $5050: $13
	ld a, [de]                                       ; $5051: $1a
	rlca                                             ; $5052: $07
	ld b, b                                          ; $5053: $40
	ld h, e                                          ; $5054: $63
	ld h, b                                          ; $5055: $60
	sbc h                                            ; $5056: $9c
	sub d                                            ; $5057: $92
	ei                                               ; $5058: $fb
	ld l, c                                          ; $5059: $69
	ld [hl], a                                       ; $505a: $77
	ld h, b                                          ; $505b: $60
	sub h                                            ; $505c: $94
	rst $38                                          ; $505d: $ff
	ld [bc], a                                       ; $505e: $02
	or a                                             ; $505f: $b7
	ld a, d                                          ; $5060: $7a
	ld a, a                                          ; $5061: $7f

jr_073_5062:
	ld sp, hl                                        ; $5062: $f9
	call $b8d9                                       ; $5063: $cd $d9 $b8
	jr c, jr_073_5062                                ; $5066: $38 $fa

	ld c, a                                          ; $5068: $4f
	ld h, b                                          ; $5069: $60
	sbc h                                            ; $506a: $9c
	ld b, $3f                                        ; $506b: $06 $3f
	add hl, de                                       ; $506d: $19
	ld [hl], e                                       ; $506e: $73
	ld h, b                                          ; $506f: $60
	sbc b                                            ; $5070: $98
	add b                                            ; $5071: $80
	adc a                                            ; $5072: $8f
	add a                                            ; $5073: $87
	rst GetHLinHL                                          ; $5074: $cf
	rra                                              ; $5075: $1f
	call nz, $1b45                                   ; $5076: $c4 $45 $1b
	ld h, b                                          ; $5079: $60
	ld a, a                                          ; $507a: $7f
	ld [hl], b                                       ; $507b: $70
	sbc d                                            ; $507c: $9a
	ldh [c], a                                       ; $507d: $e2
	cp $fa                                           ; $507e: $fe $fa
	ld a, [hl]                                       ; $5080: $7e
	jp nc, Jump_073_606f                             ; $5081: $d2 $6f $60

	inc bc                                           ; $5084: $03
	add b                                            ; $5085: $80
	ld e, a                                          ; $5086: $5f
	add b                                            ; $5087: $80
	sbc h                                            ; $5088: $9c
	ld c, c                                          ; $5089: $49
	rst $38                                          ; $508a: $ff
	add hl, hl                                       ; $508b: $29
	ld [hl], a                                       ; $508c: $77
	add b                                            ; $508d: $80
	ld a, a                                          ; $508e: $7f
	cp $99                                           ; $508f: $fe $99
	rst SubAFromDE                                          ; $5091: $df
	ld sp, $79fd                                     ; $5092: $31 $fd $79
	add sp, -$08                                     ; $5095: $e8 $f8
	ld b, e                                          ; $5097: $43
	add b                                            ; $5098: $80
	sbc h                                            ; $5099: $9c
	add hl, bc                                       ; $509a: $09
	ccf                                              ; $509b: $3f
	db $10                                           ; $509c: $10
	ld [hl], e                                       ; $509d: $73
	add b                                            ; $509e: $80
	sub [hl]                                         ; $509f: $96
	add b                                            ; $50a0: $80
	rst GetHLinHL                                          ; $50a1: $cf
	inc bc                                           ; $50a2: $03
	rst GetHLinHL                                          ; $50a3: $cf
	ld e, a                                          ; $50a4: $5f
	call nz, Call_073_47cf                           ; $50a5: $c4 $cf $47
	ld b, e                                          ; $50a8: $43
	inc hl                                           ; $50a9: $23
	add b                                            ; $50aa: $80
	ld a, a                                          ; $50ab: $7f
	cp $7a                                           ; $50ac: $fe $7a
	call c, $fc7f                                    ; $50ae: $dc $7f $fc
	ld c, a                                          ; $50b1: $4f
	add b                                            ; $50b2: $80
	ld a, a                                          ; $50b3: $7f
	adc l                                            ; $50b4: $8d
	inc de                                           ; $50b5: $13
	add b                                            ; $50b6: $80
	sbc h                                            ; $50b7: $9c
	ld [de], a                                       ; $50b8: $12
	ei                                               ; $50b9: $fb
	ret                                              ; $50ba: $c9


	ld h, a                                          ; $50bb: $67
	add b                                            ; $50bc: $80
	sub a                                            ; $50bd: $97
	rst $38                                          ; $50be: $ff
	ld bc, $01fd                                     ; $50bf: $01 $fd $01
	add sp, -$04                                     ; $50c2: $e8 $fc
	cp d                                             ; $50c4: $ba
	ld a, b                                          ; $50c5: $78
	ld d, e                                          ; $50c6: $53
	add b                                            ; $50c7: $80
	sbc h                                            ; $50c8: $9c
	ld [bc], a                                       ; $50c9: $02
	ccf                                              ; $50ca: $3f
	dec c                                            ; $50cb: $0d
	ld h, e                                          ; $50cc: $63
	add b                                            ; $50cd: $80
	sbc b                                            ; $50ce: $98
	nop                                              ; $50cf: $00
	rst GetHLinHL                                          ; $50d0: $cf
	ld b, b                                          ; $50d1: $40
	adc $df                                          ; $50d2: $ce $df
	ld b, e                                          ; $50d4: $43
	ld b, a                                          ; $50d5: $47
	dec de                                           ; $50d6: $1b
	add b                                            ; $50d7: $80
	ld a, a                                          ; $50d8: $7f
	add [hl]                                         ; $50d9: $86
	ld l, e                                          ; $50da: $6b
	add b                                            ; $50db: $80
	rst SubAFromDE                                          ; $50dc: $df
	add [hl]                                         ; $50dd: $86
	rst SubAFromDE                                          ; $50de: $df
	ret nz                                           ; $50df: $c0

	add [hl]                                         ; $50e0: $86
	ldh [$c0], a                                     ; $50e1: $e0 $c0
	pop hl                                           ; $50e3: $e1
	pop hl                                           ; $50e4: $e1
	or b                                             ; $50e5: $b0
	ldh [$d8], a                                     ; $50e6: $e0 $d8
	or b                                             ; $50e8: $b0
	call c, $d4b8                                    ; $50e9: $dc $b8 $d4
	cp h                                             ; $50ec: $bc
	jp nc, $d3be                                     ; $50ed: $d2 $be $d3

	cp a                                             ; $50f0: $bf
	push de                                          ; $50f1: $d5
	cp a                                             ; $50f2: $bf
	call nc, $e4bf                                   ; $50f3: $d4 $bf $e4
	cp a                                             ; $50f6: $bf
	push hl                                          ; $50f7: $e5
	cp a                                             ; $50f8: $bf
	rst AddAOntoHL                                          ; $50f9: $ef
	ld a, e                                          ; $50fa: $7b
	cp $fd                                           ; $50fb: $fe $fd
	ld a, l                                          ; $50fd: $7d
	rst GetHLinHL                                          ; $50fe: $cf
	sbc b                                            ; $50ff: $98
	pop bc                                           ; $5100: $c1
	ld b, b                                          ; $5101: $40
	inc bc                                           ; $5102: $03
	nop                                              ; $5103: $00
	jp $0700                                         ; $5104: $c3 $00 $07


	ld a, e                                          ; $5107: $7b
	cp $96                                           ; $5108: $fe $96
	rrca                                             ; $510a: $0f
	inc bc                                           ; $510b: $03
	sbc a                                            ; $510c: $9f
	rrca                                             ; $510d: $0f
	rst $38                                          ; $510e: $ff
	ldh a, [rPCM34]                                  ; $510f: $f0 $77
	ldh a, [$31]                                     ; $5111: $f0 $31
	call c, $9df0                                    ; $5113: $dc $f0 $9d
	ret nc                                           ; $5116: $d0

	ldh a, [$03]                                     ; $5117: $f0 $03
	ret nz                                           ; $5119: $c0

	ld [hl], e                                       ; $511a: $73
	ret nz                                           ; $511b: $c0

	sbc b                                            ; $511c: $98
	ld b, c                                          ; $511d: $41
	ret nz                                           ; $511e: $c0

	add e                                            ; $511f: $83
	add b                                            ; $5120: $80
	inc bc                                           ; $5121: $03
	nop                                              ; $5122: $00
	rst JumpTable                                          ; $5123: $c7
	inc bc                                           ; $5124: $03
	ret nz                                           ; $5125: $c0

	rra                                              ; $5126: $1f
	ret nz                                           ; $5127: $c0

	sbc l                                            ; $5128: $9d
	jp $0bc0                                         ; $5129: $c3 $c0 $0b


	ret nz                                           ; $512c: $c0

	sbc [hl]                                         ; $512d: $9e
	pop hl                                           ; $512e: $e1
	inc de                                           ; $512f: $13
	ld b, b                                          ; $5130: $40
	sbc l                                            ; $5131: $9d
	ret nz                                           ; $5132: $c0

	db $e3                                           ; $5133: $e3
	ld a, e                                          ; $5134: $7b
	cp $7f                                           ; $5135: $fe $7f
	jp nz, $be7f                                     ; $5137: $c2 $7f $be

	ld b, a                                          ; $513a: $47
	ret nz                                           ; $513b: $c0

	sbc h                                            ; $513c: $9c
	ld bc, $b68d                                     ; $513d: $01 $8d $b6
	xor l                                            ; $5140: $ad
	or a                                             ; $5141: $b7
	xor l                                            ; $5142: $ad
	cp e                                             ; $5143: $bb
	xor l                                            ; $5144: $ad
	cp l                                             ; $5145: $bd
	xor e                                            ; $5146: $ab
	cp l                                             ; $5147: $bd
	xor e                                            ; $5148: $ab
	cp [hl]                                          ; $5149: $be
	xor e                                            ; $514a: $ab
	cp a                                             ; $514b: $bf
	xor e                                            ; $514c: $ab
	xor [hl]                                         ; $514d: $ae
	cp e                                             ; $514e: $bb
	xor d                                            ; $514f: $aa
	cp a                                             ; $5150: $bf
	ld [hl], a                                       ; $5151: $77
	cp $7b                                           ; $5152: $fe $7b
	push af                                          ; $5154: $f5
	sub [hl]                                         ; $5155: $96
	cp a                                             ; $5156: $bf
	ld e, e                                          ; $5157: $5b
	ld e, a                                          ; $5158: $5f
	ld e, d                                          ; $5159: $5a
	ld e, [hl]                                       ; $515a: $5e
	ld a, [de]                                       ; $515b: $1a
	ld e, $0a                                        ; $515c: $1e $0a
	ld c, $77                                        ; $515e: $0e $77
	cp $dd                                           ; $5160: $fe $dd
	ld b, $df                                        ; $5162: $06 $df
	ld [bc], a                                       ; $5164: $02
	rst SubAFromDE                                          ; $5165: $df
	inc bc                                           ; $5166: $03
	db $db                                           ; $5167: $db
	ld bc, $dff7                                     ; $5168: $01 $f7 $df
	ccf                                              ; $516b: $3f
	add b                                            ; $516c: $80
	db $ec                                           ; $516d: $ec
	and h                                            ; $516e: $a4
	or $22                                           ; $516f: $f6 $22
	or $12                                           ; $5171: $f6 $12
	or $12                                           ; $5173: $f6 $12
	ld a, [$fb32]                                    ; $5175: $fa $32 $fb
	ret                                              ; $5178: $c9


	rst $38                                          ; $5179: $ff
	add hl, bc                                       ; $517a: $09
	rst $38                                          ; $517b: $ff
	dec b                                            ; $517c: $05
	rst SubAFromDE                                          ; $517d: $df
	ld a, [hl-]                                      ; $517e: $3a
	ld a, a                                          ; $517f: $7f
	ld a, [$d9cf]                                    ; $5180: $fa $cf $d9
	cp l                                             ; $5183: $bd
	add hl, sp                                       ; $5184: $39
	sbc b                                            ; $5185: $98
	jr c, @-$14                                      ; $5186: $38 $ea

	jr c, @-$78                                      ; $5188: $38 $86

	add b                                            ; $518a: $80
	adc [hl]                                         ; $518b: $8e
	add b                                            ; $518c: $80
	add b                                            ; $518d: $80
	scf                                              ; $518e: $37
	ld hl, $111b                                     ; $518f: $21 $1b $11
	dec c                                            ; $5192: $0d
	ld [$0407], sp                                   ; $5193: $08 $07 $04
	ccf                                              ; $5196: $3f
	ld a, [de]                                       ; $5197: $1a
	ccf                                              ; $5198: $3f
	rlca                                             ; $5199: $07
	ccf                                              ; $519a: $3f
	nop                                              ; $519b: $00
	sbc a                                            ; $519c: $9f
	nop                                              ; $519d: $00
	sbc a                                            ; $519e: $9f
	add [hl]                                         ; $519f: $86
	adc a                                            ; $51a0: $8f
	sbc a                                            ; $51a1: $9f
	jp nz, $c302                                     ; $51a2: $c2 $02 $c3

	ld b, e                                          ; $51a5: $43
	jp Jump_073_47c3                                 ; $51a6: $c3 $c3 $47


	ld b, c                                          ; $51a9: $41
	jr nz, jr_073_51cc                               ; $51aa: $20 $20

	rst $38                                          ; $51ac: $ff
	add b                                            ; $51ad: $80
	rst $38                                          ; $51ae: $ff
	inc sp                                           ; $51af: $33
	rst $38                                          ; $51b0: $ff
	adc c                                            ; $51b1: $89
	rst $38                                          ; $51b2: $ff
	add [hl]                                         ; $51b3: $86
	rst $38                                          ; $51b4: $ff
	ld b, e                                          ; $51b5: $43
	rst $38                                          ; $51b6: $ff
	ld b, d                                          ; $51b7: $42
	rst $38                                          ; $51b8: $ff
	ld [hl+], a                                      ; $51b9: $22
	rst $38                                          ; $51ba: $ff
	jp nc, $3afe                                     ; $51bb: $d2 $fe $3a

	cp $0e                                           ; $51be: $fe $0e
	cp $c2                                           ; $51c0: $fe $c2
	ld a, [hl]                                       ; $51c2: $7e
	ld a, [$f2de]                                    ; $51c3: $fa $de $f2
	ld e, [hl]                                       ; $51c6: $5e
	jp nz, $82fe                                     ; $51c7: $c2 $fe $82

	ld a, $02                                        ; $51ca: $3e $02

jr_073_51cc:
	ld a, [hl]                                       ; $51cc: $7e
	sbc l                                            ; $51cd: $9d
	ld [bc], a                                       ; $51ce: $02
	cp $73                                           ; $51cf: $fe $73
	cp $85                                           ; $51d1: $fe $85
	db $fc                                           ; $51d3: $fc
	ld b, $fc                                        ; $51d4: $06 $fc
	inc c                                            ; $51d6: $0c
	db $fc                                           ; $51d7: $fc
	dec e                                            ; $51d8: $1d
	db $fc                                           ; $51d9: $fc
	dec a                                            ; $51da: $3d
	db $fc                                           ; $51db: $fc
	db $fd                                           ; $51dc: $fd
	db $fc                                           ; $51dd: $fc
	push af                                          ; $51de: $f5
	ld hl, sp-$33                                    ; $51df: $f8 $cd
	ld sp, hl                                        ; $51e1: $f9
	dec c                                            ; $51e2: $0d
	ei                                               ; $51e3: $fb
	add hl, bc                                       ; $51e4: $09
	ld sp, hl                                        ; $51e5: $f9
	dec bc                                           ; $51e6: $0b
	ld a, c                                          ; $51e7: $79
	dec bc                                           ; $51e8: $0b
	ld a, [de]                                       ; $51e9: $1a
	dec bc                                           ; $51ea: $0b
	inc de                                           ; $51eb: $13
	ld a, [de]                                       ; $51ec: $1a
	rlca                                             ; $51ed: $07
	ld b, b                                          ; $51ee: $40
	ld e, e                                          ; $51ef: $5b
	ld h, b                                          ; $51f0: $60
	sbc [hl]                                         ; $51f1: $9e
	ld c, c                                          ; $51f2: $49
	ld a, e                                          ; $51f3: $7b
	sub [hl]                                         ; $51f4: $96
	sub e                                            ; $51f5: $93
	dec b                                            ; $51f6: $05
	rst $38                                          ; $51f7: $ff
	ld [bc], a                                       ; $51f8: $02
	or a                                             ; $51f9: $b7
	ld a, d                                          ; $51fa: $7a
	ld a, a                                          ; $51fb: $7f

jr_073_51fc:
	ld sp, hl                                        ; $51fc: $f9
	call $b8d9                                       ; $51fd: $cd $d9 $b8
	jr c, jr_073_51fc                                ; $5200: $38 $fa

	ccf                                              ; $5202: $3f
	ld h, b                                          ; $5203: $60
	sbc [hl]                                         ; $5204: $9e
	ld bc, $607b                                     ; $5205: $01 $7b $60
	sbc b                                            ; $5208: $98
	add b                                            ; $5209: $80
	adc a                                            ; $520a: $8f
	add a                                            ; $520b: $87
	rst GetHLinHL                                          ; $520c: $cf
	rra                                              ; $520d: $1f
	call nz, $1b45                                   ; $520e: $c4 $45 $1b
	ld h, b                                          ; $5211: $60
	ld a, a                                          ; $5212: $7f
	ld [hl], b                                       ; $5213: $70
	sbc d                                            ; $5214: $9a
	ldh [c], a                                       ; $5215: $e2
	cp $fa                                           ; $5216: $fe $fa
	ld a, [hl]                                       ; $5218: $7e
	jp nc, Jump_073_606f                             ; $5219: $d2 $6f $60

	inc bc                                           ; $521c: $03
	add b                                            ; $521d: $80
	ld h, a                                          ; $521e: $67
	add b                                            ; $521f: $80
	sbc h                                            ; $5220: $9c
	ld [de], a                                       ; $5221: $12
	ei                                               ; $5222: $fb
	ld l, c                                          ; $5223: $69
	ld l, a                                          ; $5224: $6f
	add b                                            ; $5225: $80
	ld a, a                                          ; $5226: $7f
	cp $99                                           ; $5227: $fe $99
	rst SubAFromDE                                          ; $5229: $df
	ld sp, $79fd                                     ; $522a: $31 $fd $79
	add sp, -$08                                     ; $522d: $e8 $f8
	ld c, e                                          ; $522f: $4b
	add b                                            ; $5230: $80
	sbc d                                            ; $5231: $9a
	ld [de], a                                       ; $5232: $12
	ccf                                              ; $5233: $3f
	dec c                                            ; $5234: $0d
	ccf                                              ; $5235: $3f
	inc bc                                           ; $5236: $03
	ld [hl], e                                       ; $5237: $73
	add b                                            ; $5238: $80
	sub [hl]                                         ; $5239: $96
	add b                                            ; $523a: $80
	rst GetHLinHL                                          ; $523b: $cf
	inc bc                                           ; $523c: $03
	rst GetHLinHL                                          ; $523d: $cf
	ld e, a                                          ; $523e: $5f
	call nz, Call_073_47cf                           ; $523f: $c4 $cf $47
	ld b, e                                          ; $5242: $43
	inc hl                                           ; $5243: $23
	add b                                            ; $5244: $80
	ld a, a                                          ; $5245: $7f
	cp $7e                                           ; $5246: $fe $7e
	ldh [c], a                                       ; $5248: $e2
	sbc h                                            ; $5249: $9c
	ld a, [$c2fe]                                    ; $524a: $fa $fe $c2
	inc bc                                           ; $524d: $03
	add b                                            ; $524e: $80
	ld c, a                                          ; $524f: $4f
	add b                                            ; $5250: $80
	sbc h                                            ; $5251: $9c
	add hl, hl                                       ; $5252: $29
	rst $38                                          ; $5253: $ff
	ret                                              ; $5254: $c9


	ld l, a                                          ; $5255: $6f
	add b                                            ; $5256: $80
	sub a                                            ; $5257: $97
	rst $38                                          ; $5258: $ff
	ld bc, $01fd                                     ; $5259: $01 $fd $01
	add sp, -$04                                     ; $525c: $e8 $fc
	cp d                                             ; $525e: $ba
	ld a, b                                          ; $525f: $78
	ld d, e                                          ; $5260: $53
	add b                                            ; $5261: $80
	sbc h                                            ; $5262: $9c
	ld [bc], a                                       ; $5263: $02
	ccf                                              ; $5264: $3f
	dec e                                            ; $5265: $1d
	ld h, e                                          ; $5266: $63
	add b                                            ; $5267: $80
	sbc b                                            ; $5268: $98
	nop                                              ; $5269: $00
	rst GetHLinHL                                          ; $526a: $cf
	ld b, b                                          ; $526b: $40
	adc $df                                          ; $526c: $ce $df
	ld b, e                                          ; $526e: $43
	ld b, a                                          ; $526f: $47
	dec de                                           ; $5270: $1b
	add b                                            ; $5271: $80
	ld a, a                                          ; $5272: $7f
	add [hl]                                         ; $5273: $86
	ld l, e                                          ; $5274: $6b
	add b                                            ; $5275: $80
	rst SubAFromDE                                          ; $5276: $df
	add [hl]                                         ; $5277: $86
	rst SubAFromDE                                          ; $5278: $df
	ret nz                                           ; $5279: $c0

	add [hl]                                         ; $527a: $86
	ldh [$c0], a                                     ; $527b: $e0 $c0
	pop hl                                           ; $527d: $e1
	pop hl                                           ; $527e: $e1
	or b                                             ; $527f: $b0
	ldh [$d8], a                                     ; $5280: $e0 $d8
	or b                                             ; $5282: $b0
	call c, $d4b8                                    ; $5283: $dc $b8 $d4
	cp h                                             ; $5286: $bc
	jp nc, $d3be                                     ; $5287: $d2 $be $d3

	cp a                                             ; $528a: $bf
	push de                                          ; $528b: $d5
	cp a                                             ; $528c: $bf
	call nc, $e4bf                                   ; $528d: $d4 $bf $e4
	cp a                                             ; $5290: $bf
	push hl                                          ; $5291: $e5
	cp a                                             ; $5292: $bf
	rst AddAOntoHL                                          ; $5293: $ef
	ld a, e                                          ; $5294: $7b
	cp $fd                                           ; $5295: $fe $fd
	ld a, l                                          ; $5297: $7d
	rst GetHLinHL                                          ; $5298: $cf
	sbc b                                            ; $5299: $98
	pop bc                                           ; $529a: $c1
	ld b, b                                          ; $529b: $40
	inc bc                                           ; $529c: $03
	nop                                              ; $529d: $00
	jp $0700                                         ; $529e: $c3 $00 $07


	ld a, e                                          ; $52a1: $7b
	cp $96                                           ; $52a2: $fe $96
	rrca                                             ; $52a4: $0f
	inc bc                                           ; $52a5: $03
	sbc a                                            ; $52a6: $9f
	rrca                                             ; $52a7: $0f
	rst $38                                          ; $52a8: $ff
	ldh a, [rPCM34]                                  ; $52a9: $f0 $77
	ldh a, [$31]                                     ; $52ab: $f0 $31
	call c, $9df0                                    ; $52ad: $dc $f0 $9d
	ret nc                                           ; $52b0: $d0

	ldh a, [$03]                                     ; $52b1: $f0 $03
	ret nz                                           ; $52b3: $c0

	ld [hl], e                                       ; $52b4: $73
	ret nz                                           ; $52b5: $c0

	sbc b                                            ; $52b6: $98
	ld b, c                                          ; $52b7: $41
	ret nz                                           ; $52b8: $c0

	jp $0380                                         ; $52b9: $c3 $80 $03


	nop                                              ; $52bc: $00
	rst JumpTable                                          ; $52bd: $c7
	inc bc                                           ; $52be: $03
	ret nz                                           ; $52bf: $c0

	dec de                                           ; $52c0: $1b
	ret nz                                           ; $52c1: $c0

	sbc [hl]                                         ; $52c2: $9e
	ret nz                                           ; $52c3: $c0

	rla                                              ; $52c4: $17
	ret nz                                           ; $52c5: $c0

	sbc e                                            ; $52c6: $9b
	ldh [$e1], a                                     ; $52c7: $e0 $e1
	or c                                             ; $52c9: $b1
	pop hl                                           ; $52ca: $e1
	inc de                                           ; $52cb: $13
	ld b, b                                          ; $52cc: $40
	sbc c                                            ; $52cd: $99
	ret nz                                           ; $52ce: $c0

	db $e3                                           ; $52cf: $e3
	ret nz                                           ; $52d0: $c0

	add e                                            ; $52d1: $83
	ret nz                                           ; $52d2: $c0

	rlca                                             ; $52d3: $07
	ld a, e                                          ; $52d4: $7b
	cp [hl]                                          ; $52d5: $be
	ld b, a                                          ; $52d6: $47
	ret nz                                           ; $52d7: $c0

	ld [hl], c                                       ; $52d8: $71
	ld [bc], a                                       ; $52d9: $02
	rst $38                                          ; $52da: $ff
	rst SubAFromDE                                          ; $52db: $df
	ld bc, $0383                                     ; $52dc: $01 $83 $03
	ld [bc], a                                       ; $52df: $02
	rlca                                             ; $52e0: $07
	dec b                                            ; $52e1: $05
	dec c                                            ; $52e2: $0d
	ld a, [bc]                                       ; $52e3: $0a
	ld [$180f], sp                                   ; $52e4: $08 $0f $18
	rla                                              ; $52e7: $17
	db $10                                           ; $52e8: $10
	rra                                              ; $52e9: $1f
	db $10                                           ; $52ea: $10
	rra                                              ; $52eb: $1f
	ld sp, $212e                                     ; $52ec: $31 $2e $21
	ld a, $61                                        ; $52ef: $3e $61
	ld e, [hl]                                       ; $52f1: $5e
	ld b, c                                          ; $52f2: $41
	ld a, [hl]                                       ; $52f3: $7e
	ld b, b                                          ; $52f4: $40
	ld a, a                                          ; $52f5: $7f
	ret nz                                           ; $52f6: $c0

	cp a                                             ; $52f7: $bf
	adc h                                            ; $52f8: $8c
	di                                               ; $52f9: $f3
	rst SubAFromBC                                          ; $52fa: $e7
	rst SubAFromDE                                          ; $52fb: $df
	inc bc                                           ; $52fc: $03
	sub [hl]                                         ; $52fd: $96
	rra                                              ; $52fe: $1f
	inc e                                            ; $52ff: $1c
	ld a, [hl]                                       ; $5300: $7e
	ld h, c                                          ; $5301: $61
	adc $80                                          ; $5302: $ce $80
	adc [hl]                                         ; $5304: $8e
	nop                                              ; $5305: $00
	adc h                                            ; $5306: $8c
	ld a, e                                          ; $5307: $7b
	cp $87                                           ; $5308: $fe $87
	add h                                            ; $530a: $84
	adc b                                            ; $530b: $88
	add h                                            ; $530c: $84
	adc b                                            ; $530d: $88
	ld c, b                                          ; $530e: $48
	add h                                            ; $530f: $84
	jp z, Jump_073_6244                              ; $5310: $ca $44 $62

	ld b, h                                          ; $5313: $44
	ld b, h                                          ; $5314: $44
	ld h, d                                          ; $5315: $62
	ld [hl], c                                       ; $5316: $71
	ld [hl+], a                                      ; $5317: $22
	ldh a, [c]                                       ; $5318: $f2
	ld hl, $a178                                     ; $5319: $21 $78 $a1
	ld a, h                                          ; $531c: $7c
	and c                                            ; $531d: $a1
	xor l                                            ; $531e: $ad
	ld [hl], b                                       ; $531f: $70
	sbc [hl]                                         ; $5320: $9e
	ld [hl], b                                       ; $5321: $70
	rst FarCall                                          ; $5322: $f7
	ld a, e                                          ; $5323: $7b
	sbc b                                            ; $5324: $98
	sub a                                            ; $5325: $97
	inc bc                                           ; $5326: $03
	inc c                                            ; $5327: $0c
	rrca                                             ; $5328: $0f
	ccf                                              ; $5329: $3f
	ccf                                              ; $532a: $3f
	ld bc, $0202                                     ; $532b: $01 $02 $02
	sbc $03                                          ; $532e: $de $03
	sbc e                                            ; $5330: $9b
	ld b, $07                                        ; $5331: $06 $07
	dec b                                            ; $5333: $05
	ld b, $77                                        ; $5334: $06 $77
	cp $7f                                           ; $5336: $fe $7f
	db $f4                                           ; $5338: $f4
	ld [hl], a                                       ; $5339: $77
	cp $d7                                           ; $533a: $fe $d7
	ld bc, $dbe0                                     ; $533c: $01 $e0 $db
	rst SubAFromDE                                          ; $533f: $df
	ld bc, $1f9a                                     ; $5340: $01 $9a $1f
	ld e, $f8                                        ; $5343: $1e $f8
	rst SubAFromBC                                          ; $5345: $e7
	jr jr_073_53c3                                   ; $5346: $18 $7b

	cp $88                                           ; $5348: $fe $88
	ld [$0810], sp                                   ; $534a: $08 $10 $08
	db $10                                           ; $534d: $10
	db $10                                           ; $534e: $10
	ld [$0801], sp                                   ; $534f: $08 $01 $08
	dec b                                            ; $5352: $05
	add hl, bc                                       ; $5353: $09
	rlca                                             ; $5354: $07
	add hl, bc                                       ; $5355: $09
	dec bc                                           ; $5356: $0b
	dec b                                            ; $5357: $05
	inc bc                                           ; $5358: $03
	dec b                                            ; $5359: $05
	dec b                                            ; $535a: $05
	inc bc                                           ; $535b: $03
	ld bc, $0302                                     ; $535c: $01 $02 $03
	nop                                              ; $535f: $00
	ld bc, $fe7b                                     ; $5360: $01 $7b $fe
	sbc d                                            ; $5363: $9a
	add b                                            ; $5364: $80
	nop                                              ; $5365: $00
	nop                                              ; $5366: $00
	add b                                            ; $5367: $80
	ld b, b                                          ; $5368: $40
	ld a, e                                          ; $5369: $7b
	ei                                               ; $536a: $fb
	rla                                              ; $536b: $17
	ld a, $7f                                        ; $536c: $3e $7f
	add b                                            ; $536e: $80
	add b                                            ; $536f: $80
	dec de                                           ; $5370: $1b
	inc e                                            ; $5371: $1c
	cpl                                              ; $5372: $2f
	jr nc, @+$61                                     ; $5373: $30 $5f

	ld h, b                                          ; $5375: $60
	or e                                             ; $5376: $b3
	rst GetHLinHL                                          ; $5377: $cf
	db $ed                                           ; $5378: $ed
	sbc [hl]                                         ; $5379: $9e
	rst AddAOntoHL                                          ; $537a: $ef
	ldh a, [$7b]                                     ; $537b: $f0 $7b
	add a                                            ; $537d: $87
	ld a, a                                          ; $537e: $7f
	rst $38                                          ; $537f: $ff
	ldh [rIE], a                                     ; $5380: $e0 $ff
	ld a, h                                          ; $5382: $7c
	db $e3                                           ; $5383: $e3
	reti                                             ; $5384: $d9


	rst SubAFromBC                                          ; $5385: $e7
	ld [hl], e                                       ; $5386: $73
	rst GetHLinHL                                          ; $5387: $cf
	ld h, l                                          ; $5388: $65
	rst SubAFromDE                                          ; $5389: $df
	ld a, [hl+]                                      ; $538a: $2a
	rst SubAFromDE                                          ; $538b: $df
	di                                               ; $538c: $f3
	sbc a                                            ; $538d: $9f
	xor $9e                                          ; $538e: $ee $9e
	or a                                             ; $5390: $b7
	ldh [$c1], a                                     ; $5391: $e0 $c1
	sbc d                                            ; $5393: $9a
	rst JumpTable                                          ; $5394: $c7
	ld b, c                                          ; $5395: $41
	add $81                                          ; $5396: $c6 $81
	add [hl]                                         ; $5398: $86
	ld a, e                                          ; $5399: $7b
	cp $94                                           ; $539a: $fe $94
	ld b, $01                                        ; $539c: $06 $01
	ld [bc], a                                       ; $539e: $02

jr_073_539f:
	dec b                                            ; $539f: $05
	ld e, $3f                                        ; $53a0: $1e $3f
	ld h, c                                          ; $53a2: $61
	rst $38                                          ; $53a3: $ff
	rst $38                                          ; $53a4: $ff
	add b                                            ; $53a5: $80
	pop bc                                           ; $53a6: $c1
	ld a, e                                          ; $53a7: $7b
	ld h, [hl]                                       ; $53a8: $66
	sub [hl]                                         ; $53a9: $96
	add c                                            ; $53aa: $81
	nop                                              ; $53ab: $00
	add c                                            ; $53ac: $81
	ld bc, $01c1                                     ; $53ad: $01 $c1 $01
	ld b, c                                          ; $53b0: $41
	nop                                              ; $53b1: $00
	jr nz, jr_073_53ef                               ; $53b2: $20 $3b

	ld h, $df                                        ; $53b4: $26 $df
	inc e                                            ; $53b6: $1c
	add b                                            ; $53b7: $80
	dec bc                                           ; $53b8: $0b
	rrca                                             ; $53b9: $0f
	dec b                                            ; $53ba: $05
	ld b, $3f                                        ; $53bb: $06 $3f
	ccf                                              ; $53bd: $3f
	sbc $e1                                          ; $53be: $de $e1
	inc bc                                           ; $53c0: $03
	db $fc                                           ; $53c1: $fc
	ld sp, hl                                        ; $53c2: $f9

jr_073_53c3:
	rlca                                             ; $53c3: $07
	add e                                            ; $53c4: $83
	nop                                              ; $53c5: $00
	ld l, $1f                                        ; $53c6: $2e $1f
	push af                                          ; $53c8: $f5
	ld a, e                                          ; $53c9: $7b
	and d                                            ; $53ca: $a2
	pop bc                                           ; $53cb: $c1
	adc b                                            ; $53cc: $88
	rlca                                             ; $53cd: $07
	jr nz, jr_073_53ef                               ; $53ce: $20 $1f

	rst $38                                          ; $53d0: $ff
	rst $38                                          ; $53d1: $ff
	pop af                                           ; $53d2: $f1
	jp $c7eb                                         ; $53d3: $c3 $eb $c7


	rst SubAFromHL                                          ; $53d6: $d7
	sub e                                            ; $53d7: $93
	adc a                                            ; $53d8: $8f
	sbc [hl]                                         ; $53d9: $9e
	cp d                                             ; $53da: $ba
	cp a                                             ; $53db: $bf
	ld h, d                                          ; $53dc: $62
	ld a, d                                          ; $53dd: $7a
	jp $81e1                                         ; $53de: $c3 $e1 $81


	pop bc                                           ; $53e1: $c1
	ld bc, $e081                                     ; $53e2: $01 $81 $e0
	ret nz                                           ; $53e5: $c0

	add b                                            ; $53e6: $80
	or b                                             ; $53e7: $b0
	ld c, a                                          ; $53e8: $4f
	ld hl, sp-$79                                    ; $53e9: $f8 $87
	ld hl, sp-$79                                    ; $53eb: $f8 $87
	db $fc                                           ; $53ed: $fc
	add e                                            ; $53ee: $83

jr_073_53ef:
	ld a, h                                          ; $53ef: $7c
	ld b, e                                          ; $53f0: $43
	ld e, [hl]                                       ; $53f1: $5e
	ld h, c                                          ; $53f2: $61
	ld b, [hl]                                       ; $53f3: $46
	ld a, c                                          ; $53f4: $79
	daa                                              ; $53f5: $27
	jr c, jr_073_539f                                ; $53f6: $38 $a7

	cp b                                             ; $53f8: $b8
	ld [hl], e                                       ; $53f9: $73
	ld l, h                                          ; $53fa: $6c
	inc sp                                           ; $53fb: $33
	cp h                                             ; $53fc: $bc
	db $d3                                           ; $53fd: $d3
	call c, $fd32                                    ; $53fe: $dc $32 $fd
	ld sp, $dbfe                                     ; $5401: $31 $fe $db
	push de                                          ; $5404: $d5
	rrca                                             ; $5405: $0f
	sbc [hl]                                         ; $5406: $9e
	ei                                               ; $5407: $fb
	pop af                                           ; $5408: $f1
	rst SubAFromDE                                          ; $5409: $df
	ret nz                                           ; $540a: $c0

	add b                                            ; $540b: $80
	ldh a, [$b0]                                     ; $540c: $f0 $b0
	db $fc                                           ; $540e: $fc
	adc h                                            ; $540f: $8c
	ld e, e                                          ; $5410: $5b
	rst SubAFromBC                                          ; $5411: $e7
	ld [$fb37], a                                    ; $5412: $ea $37 $fb
	or $93                                           ; $5415: $f6 $93
	ld a, a                                          ; $5417: $7f
	ei                                               ; $5418: $fb
	rst $38                                          ; $5419: $ff
	cp [hl]                                          ; $541a: $be
	rst SubAFromDE                                          ; $541b: $df
	db $fc                                           ; $541c: $fc
	rst JumpTable                                          ; $541d: $c7
	call $f7e7                                       ; $541e: $cd $e7 $f7
	rst SubAFromBC                                          ; $5421: $e7
	ld h, [hl]                                       ; $5422: $66
	rst FarCall                                          ; $5423: $f7
	rra                                              ; $5424: $1f
	rst FarCall                                          ; $5425: $f7
	db $ec                                           ; $5426: $ec
	rst $38                                          ; $5427: $ff
	cp a                                             ; $5428: $bf
	cp a                                             ; $5429: $bf
	dec a                                            ; $542a: $3d
	rst SubAFromDE                                          ; $542b: $df
	ld a, [hl]                                       ; $542c: $7e
	sub [hl]                                         ; $542d: $96
	rst GetHLinHL                                          ; $542e: $cf
	rst AddAOntoHL                                          ; $542f: $ef
	add e                                            ; $5430: $83
	jp $c181                                         ; $5431: $c3 $81 $c1


	add c                                            ; $5434: $81
	add c                                            ; $5435: $81
	ld bc, $fe77                                     ; $5436: $01 $77 $fe
	ldh [$c1], a                                     ; $5439: $e0 $c1
	add b                                            ; $543b: $80
	ccf                                              ; $543c: $3f
	pop bc                                           ; $543d: $c1
	ld a, a                                          ; $543e: $7f
	add c                                            ; $543f: $81
	ld a, a                                          ; $5440: $7f
	add c                                            ; $5441: $81
	ld a, [hl]                                       ; $5442: $7e
	add d                                            ; $5443: $82
	cp $03                                           ; $5444: $fe $03
	db $f4                                           ; $5446: $f4
	dec c                                            ; $5447: $0d
	add h                                            ; $5448: $84
	ld a, a                                          ; $5449: $7f
	inc c                                            ; $544a: $0c
	rst FarCall                                          ; $544b: $f7
	add hl, de                                       ; $544c: $19
	db $eb                                           ; $544d: $eb
	ld a, [de]                                       ; $544e: $1a
	ld [$d630], a                                    ; $544f: $ea $30 $d6
	ld h, b                                          ; $5452: $60
	xor h                                            ; $5453: $ac
	ret nz                                           ; $5454: $c0

	ld e, c                                          ; $5455: $59
	add b                                            ; $5456: $80
	or a                                             ; $5457: $b7
	nop                                              ; $5458: $00
	ld l, a                                          ; $5459: $6f
	nop                                              ; $545a: $00
	sbc [hl]                                         ; $545b: $9e
	rst $38                                          ; $545c: $ff
	db $ed                                           ; $545d: $ed
	rst SubAFromDE                                          ; $545e: $df
	db $fc                                           ; $545f: $fc
	add b                                            ; $5460: $80
	ld d, b                                          ; $5461: $50
	or b                                             ; $5462: $b0
	and b                                            ; $5463: $a0
	ld h, b                                          ; $5464: $60
	ld a, [hl]                                       ; $5465: $7e
	cp $dd                                           ; $5466: $fe $dd
	db $e3                                           ; $5468: $e3
	ld a, a                                          ; $5469: $7f
	add b                                            ; $546a: $80
	dec d                                            ; $546b: $15
	ldh [c], a                                       ; $546c: $e2
	ld h, d                                          ; $546d: $62
	pop bc                                           ; $546e: $c1
	pop bc                                           ; $546f: $c1
	add b                                            ; $5470: $80
	cp [hl]                                          ; $5471: $be
	nop                                              ; $5472: $00
	ld [hl], l                                       ; $5473: $75
	db $e3                                           ; $5474: $e3
	jp nz, $2181                                     ; $5475: $c2 $81 $21

	ret nz                                           ; $5478: $c0

	ld hl, sp-$01                                    ; $5479: $f8 $ff
	rst GetHLinHL                                          ; $547b: $cf
	add a                                            ; $547c: $87
	rst SubAFromBC                                          ; $547d: $e7
	ld b, e                                          ; $547e: $43
	ld d, e                                          ; $547f: $53
	sub h                                            ; $5480: $94
	ld h, c                                          ; $5481: $61
	ld l, e                                          ; $5482: $6b
	ld [hl], c                                       ; $5483: $71
	ld [hl], a                                       ; $5484: $77
	ld e, c                                          ; $5485: $59
	ei                                               ; $5486: $fb
	ld c, l                                          ; $5487: $4d
	ei                                               ; $5488: $fb
	ld c, l                                          ; $5489: $4d
	db $fd                                           ; $548a: $fd
	ld b, a                                          ; $548b: $47
	ldh [$c1], a                                     ; $548c: $e0 $c1
	sbc d                                            ; $548e: $9a
	ld c, b                                          ; $548f: $48
	cp a                                             ; $5490: $bf
	add h                                            ; $5491: $84
	ccf                                              ; $5492: $3f
	inc b                                            ; $5493: $04
	ld [hl], e                                       ; $5494: $73
	cp $92                                           ; $5495: $fe $92
	ld b, h                                          ; $5497: $44
	ccf                                              ; $5498: $3f
	ldh [c], a                                       ; $5499: $e2
	ld a, a                                          ; $549a: $7f
	sub d                                            ; $549b: $92

jr_073_549c:
	rst $38                                          ; $549c: $ff
	ld a, [bc]                                       ; $549d: $0a
	rst $38                                          ; $549e: $ff
	halt                                             ; $549f: $76
	adc a                                            ; $54a0: $8f
	cp $01                                           ; $54a1: $fe $01
	ret nz                                           ; $54a3: $c0

	ld l, [hl]                                       ; $54a4: $6e
	inc [hl]                                         ; $54a5: $34
	sbc l                                            ; $54a6: $9d
	nop                                              ; $54a7: $00
	ld [bc], a                                       ; $54a8: $02
	inc de                                           ; $54a9: $13
	nop                                              ; $54aa: $00
	rst SubAFromDE                                          ; $54ab: $df
	add b                                            ; $54ac: $80
	add b                                            ; $54ad: $80
	ld h, b                                          ; $54ae: $60
	ldh [$d0], a                                     ; $54af: $e0 $d0
	jr nc, @+$6a                                     ; $54b1: $30 $68

	sbc b                                            ; $54b3: $98
	sub h                                            ; $54b4: $94
	ld l, h                                          ; $54b5: $6c
	jp nz, $ea3e                                     ; $54b6: $c2 $3e $ea

	ld e, $f5                                        ; $54b9: $1e $f5
	rst GetHLinHL                                          ; $54bb: $cf
	xor a                                            ; $54bc: $af
	ld [hl], e                                       ; $54bd: $73
	db $db                                           ; $54be: $db
	dec a                                            ; $54bf: $3d
	push hl                                          ; $54c0: $e5
	cp $7f                                           ; $54c1: $fe $7f
	rst $38                                          ; $54c3: $ff
	add hl, de                                       ; $54c4: $19
	rst $38                                          ; $54c5: $ff
	ld a, [hl+]                                      ; $54c6: $2a
	db $dd                                           ; $54c7: $dd
	inc [hl]                                         ; $54c8: $34
	rst GetHLinHL                                          ; $54c9: $cf
	sbc h                                            ; $54ca: $9c
	rst SubAFromBC                                          ; $54cb: $e7
	ld l, d                                          ; $54cc: $6a
	sbc e                                            ; $54cd: $9b
	rst FarCall                                          ; $54ce: $f7
	dec de                                           ; $54cf: $1b
	rst $38                                          ; $54d0: $ff
	dec c                                            ; $54d1: $0d
	ld a, e                                          ; $54d2: $7b
	cp $9c                                           ; $54d3: $fe $9c
	add hl, bc                                       ; $54d5: $09
	rst $38                                          ; $54d6: $ff
	sbc c                                            ; $54d7: $99
	ld a, e                                          ; $54d8: $7b
	cp $8d                                           ; $54d9: $fe $8d
	ld a, d                                          ; $54db: $7a
	cp $6a                                           ; $54dc: $fe $6a
	cp $da                                           ; $54de: $fe $da
	cp $f4                                           ; $54e0: $fe $f4
	db $f4                                           ; $54e2: $f4
	db $e4                                           ; $54e3: $e4
	db $e4                                           ; $54e4: $e4
	ldh [rAUD4LEN], a                                ; $54e5: $e0 $20
	ldh [rAUD4LEN], a                                ; $54e7: $e0 $20
	ret nz                                           ; $54e9: $c0

	ld b, b                                          ; $54ea: $40
	ret nz                                           ; $54eb: $c0

	ld b, b                                          ; $54ec: $40

jr_073_54ed:
	db $dd                                           ; $54ed: $dd
	add b                                            ; $54ee: $80

Call_073_54ef:
	push hl                                          ; $54ef: $e5
	rst SubAFromDE                                          ; $54f0: $df
	ret nz                                           ; $54f1: $c0

	sbc e                                            ; $54f2: $9b
	jr c, jr_073_54ed                                ; $54f3: $38 $f8

	rlca                                             ; $54f5: $07
	rst $38                                          ; $54f6: $ff
	ld a, d                                          ; $54f7: $7a
	call c, $fe6b                                    ; $54f8: $dc $6b $fe
	adc e                                            ; $54fb: $8b
	rlca                                             ; $54fc: $07
	ld hl, sp+$02                                    ; $54fd: $f8 $02
	add c                                            ; $54ff: $81
	inc b                                            ; $5500: $04
	inc bc                                           ; $5501: $03
	ld [$1107], sp                                   ; $5502: $08 $07 $11
	ld c, $26                                        ; $5505: $0e $26
	jr jr_073_5551                                   ; $5507: $18 $48

	jr nc, jr_073_549c                               ; $5509: $30 $91

	ld h, b                                          ; $550b: $60
	ld [hl+], a                                      ; $550c: $22
	pop bc                                           ; $550d: $c1
	ld b, l                                          ; $550e: $45
	add d                                            ; $550f: $82
	ccf                                              ; $5510: $3f
	ld l, h                                          ; $5511: $6c
	rst SubAFromDE                                          ; $5512: $df
	add b                                            ; $5513: $80
	db $dd                                           ; $5514: $dd
	ret nz                                           ; $5515: $c0

jr_073_5516:
	db $db                                           ; $5516: $db
	add b                                            ; $5517: $80
	db $fd                                           ; $5518: $fd
	rst SubAFromDE                                          ; $5519: $df
	ldh [hDisp1_SCX], a                                     ; $551a: $e0 $91
	jr jr_073_5516                                   ; $551c: $18 $f8

	ld b, $fe                                        ; $551e: $06 $fe
	ld bc, $06ff                                     ; $5520: $01 $ff $06
	ld sp, hl                                        ; $5523: $f9
	rlca                                             ; $5524: $07
	ld hl, sp+$27                                    ; $5525: $f8 $27
	ret c                                            ; $5527: $d8

	ld h, a                                          ; $5528: $67
	sbc b                                            ; $5529: $98
	ld [hl], h                                       ; $552a: $74
	adc c                                            ; $552b: $89
	sub l                                            ; $552c: $95
	db $e3                                           ; $552d: $e3
	inc e                                            ; $552e: $1c
	ldh [c], a                                       ; $552f: $e2
	dec e                                            ; $5530: $1d
	ldh [$1f], a                                     ; $5531: $e0 $1f
	ret nz                                           ; $5533: $c0

	ccf                                              ; $5534: $3f
	ret nz                                           ; $5535: $c0

	ccf                                              ; $5536: $3f
	ld d, a                                          ; $5537: $57
	add $7f                                          ; $5538: $c6 $7f
	ld l, l                                          ; $553a: $6d
	ld [hl], a                                       ; $553b: $77
	ld l, d                                          ; $553c: $6a
	sbc l                                            ; $553d: $9d
	ldh [$60], a                                     ; $553e: $e0 $60
	ld a, e                                          ; $5540: $7b
	ld h, c                                          ; $5541: $61
	sbc e                                            ; $5542: $9b
	ldh [$30], a                                     ; $5543: $e0 $30
	ldh a, [rAUD1SWEEP]                              ; $5545: $f0 $10
	ld [hl], e                                       ; $5547: $73
	cp $1d                                           ; $5548: $fe $1d
	nop                                              ; $554a: $00
	rst SubAFromDE                                          ; $554b: $df
	xor d                                            ; $554c: $aa
	sbc h                                            ; $554d: $9c
	ld de, $8888                                     ; $554e: $11 $88 $88

jr_073_5551:
	ld [hl], a                                       ; $5551: $77
	db $fc                                           ; $5552: $fc
	rst SubAFromDE                                          ; $5553: $df
	sbc c                                            ; $5554: $99
	ld a, a                                          ; $5555: $7f
	ei                                               ; $5556: $fb
	sbc e                                            ; $5557: $9b
	nop                                              ; $5558: $00
	sbc c                                            ; $5559: $99
	sbc c                                            ; $555a: $99
	inc sp                                           ; $555b: $33
	ld h, e                                          ; $555c: $63
	ei                                               ; $555d: $fb
	ld a, e                                          ; $555e: $7b
	db $ec                                           ; $555f: $ec
	ld a, a                                          ; $5560: $7f
	db $eb                                           ; $5561: $eb
	ld a, a                                          ; $5562: $7f
	ei                                               ; $5563: $fb
	rst SubAFromDE                                          ; $5564: $df
	sbc c                                            ; $5565: $99
	jr jr_073_556a                                   ; $5566: $18 $02

	add b                                            ; $5568: $80
	rst $38                                          ; $5569: $ff

jr_073_556a:
	and h                                            ; $556a: $a4
	rst $38                                          ; $556b: $ff
	db $ec                                           ; $556c: $ec
	rst $38                                          ; $556d: $ff
	jp hl                                            ; $556e: $e9


	ld sp, hl                                        ; $556f: $f9
	or $f0                                           ; $5570: $f6 $f0
	rst AddAOntoHL                                          ; $5572: $ef
	ldh a, [$af]                                     ; $5573: $f0 $af
	pop af                                           ; $5575: $f1
	ld e, $f1                                        ; $5576: $1e $f1
	rra                                              ; $5578: $1f
	pop af                                           ; $5579: $f1
	sbc a                                            ; $557a: $9f
	ld sp, hl                                        ; $557b: $f9
	sub [hl]                                         ; $557c: $96
	ld hl, sp-$61                                    ; $557d: $f8 $9f
	ld a, b                                          ; $557f: $78
	ld c, a                                          ; $5580: $4f
	ld a, b                                          ; $5581: $78
	ld c, a                                          ; $5582: $4f
	jr c, jr_073_55c4                                ; $5583: $38 $3f

	inc a                                            ; $5585: $3c
	dec sp                                           ; $5586: $3b
	inc a                                            ; $5587: $3c
	ld a, a                                          ; $5588: $7f
	db $fc                                           ; $5589: $fc
	sbc b                                            ; $558a: $98
	ccf                                              ; $558b: $3f
	inc l                                            ; $558c: $2c
	cpl                                              ; $558d: $2f
	ld l, $2f                                        ; $558e: $2e $2f
	ld b, $07                                        ; $5590: $06 $07
	db $dd                                           ; $5592: $dd
	inc bc                                           ; $5593: $03
	rst SubAFromDE                                          ; $5594: $df
	ld bc, $03df                                     ; $5595: $01 $df $03
	add b                                            ; $5598: $80
	rlca                                             ; $5599: $07
	dec b                                            ; $559a: $05
	dec b                                            ; $559b: $05
	rlca                                             ; $559c: $07
	dec a                                            ; $559d: $3d
	dec sp                                           ; $559e: $3b
	ei                                               ; $559f: $fb
	push de                                          ; $55a0: $d5
	inc sp                                           ; $55a1: $33
	db $dd                                           ; $55a2: $dd
	inc hl                                           ; $55a3: $23
	db $fd                                           ; $55a4: $fd
	ld h, e                                          ; $55a5: $63
	cp l                                             ; $55a6: $bd
	ld b, e                                          ; $55a7: $43
	db $fd                                           ; $55a8: $fd
	add b                                            ; $55a9: $80
	ld a, h                                          ; $55aa: $7c
	ld a, h                                          ; $55ab: $7c
	cp $ff                                           ; $55ac: $fe $ff
	add d                                            ; $55ae: $82
	add a                                            ; $55af: $87
	ld a, b                                          ; $55b0: $78
	ld a, e                                          ; $55b1: $7b
	add h                                            ; $55b2: $84
	ld a, a                                          ; $55b3: $7f
	ld a, b                                          ; $55b4: $78
	db $eb                                           ; $55b5: $eb
	db $ec                                           ; $55b6: $ec
	add $96                                          ; $55b7: $c6 $96
	call z, Call_073_785e                            ; $55b9: $cc $5e $78
	ld l, h                                          ; $55bc: $6c
	ld a, b                                          ; $55bd: $78
	ld c, h                                          ; $55be: $4c
	ld a, b                                          ; $55bf: $78

jr_073_55c0:
	ld a, [hl]                                       ; $55c0: $7e
	jr nc, jr_073_55c0                               ; $55c1: $30 $fd

	sbc [hl]                                         ; $55c3: $9e

jr_073_55c4:
	ld bc, $80fe                                     ; $55c4: $01 $fe $80
	add d                                            ; $55c7: $82
	inc bc                                           ; $55c8: $03
	add d                                            ; $55c9: $82
	inc bc                                           ; $55ca: $03
	rlca                                             ; $55cb: $07
	inc bc                                           ; $55cc: $03
	rlca                                             ; $55cd: $07
	ld [bc], a                                       ; $55ce: $02
	rrca                                             ; $55cf: $0f
	inc b                                            ; $55d0: $04
	rrca                                             ; $55d1: $0f
	nop                                              ; $55d2: $00
	rra                                              ; $55d3: $1f
	ld bc, $031f                                     ; $55d4: $01 $1f $03
	ld c, $02                                        ; $55d7: $0e $02
	ld c, $03                                        ; $55d9: $0e $03
	ld b, a                                          ; $55db: $47
	inc bc                                           ; $55dc: $03
	ld c, [hl]                                       ; $55dd: $4e
	inc bc                                           ; $55de: $03
	push hl                                          ; $55df: $e5
	ld bc, $8060                                     ; $55e0: $01 $60 $80
	ld h, b                                          ; $55e3: $60
	add b                                            ; $55e4: $80
	add b                                            ; $55e5: $80
	add b                                            ; $55e6: $80
	nop                                              ; $55e7: $00
	db $fd                                           ; $55e8: $fd
	add a                                            ; $55e9: $87
	sbc l                                            ; $55ea: $9d
	rst SubAFromBC                                          ; $55eb: $e7

jr_073_55ec:
	rst SubAFromBC                                          ; $55ec: $e7
	ei                                               ; $55ed: $fb
	rst $38                                          ; $55ee: $ff
	rra                                              ; $55ef: $1f
	ld a, [hl-]                                      ; $55f0: $3a
	rst JumpTable                                          ; $55f1: $c7
	rst GetHLinHL                                          ; $55f2: $cf
	jr nc, jr_073_55ec                               ; $55f3: $30 $f7

	ret z                                            ; $55f5: $c8

	ld a, a                                          ; $55f6: $7f
	ld h, b                                          ; $55f7: $60
	ld a, a                                          ; $55f8: $7f
	ld [hl], b                                       ; $55f9: $70
	rst SubAFromDE                                          ; $55fa: $df
	pop de                                           ; $55fb: $d1
	ld e, a                                          ; $55fc: $5f
	pop bc                                           ; $55fd: $c1
	ld e, l                                          ; $55fe: $5d
	jp $82bf                                         ; $55ff: $c3 $bf $82


	ld a, a                                          ; $5602: $7f
	ld [bc], a                                       ; $5603: $02
	dec a                                            ; $5604: $3d
	ld b, $88                                        ; $5605: $06 $88
	ld a, a                                          ; $5607: $7f
	inc b                                            ; $5608: $04
	rst $38                                          ; $5609: $ff
	dec c                                            ; $560a: $0d
	cp $0e                                           ; $560b: $fe $0e
	db $fc                                           ; $560d: $fc
	inc e                                            ; $560e: $1c
	ld hl, sp+$18                                    ; $560f: $f8 $18
	ld hl, sp+$38                                    ; $5611: $f8 $38
	ldh a, [rSVBK]                                   ; $5613: $f0 $70
	ldh a, [$f0]                                     ; $5615: $f0 $f0
	ldh [$e0], a                                     ; $5617: $e0 $e0
	and b                                            ; $5619: $a0
	ldh [$b0], a                                     ; $561a: $e0 $b0
	ldh a, [hDisp1_SCY]                                     ; $561c: $f0 $90
	ld a, e                                          ; $561e: $7b
	cp $97                                           ; $561f: $fe $97
	adc b                                            ; $5621: $88
	ld hl, sp-$72                                    ; $5622: $f8 $8e
	cp $89                                           ; $5624: $fe $89
	rst $38                                          ; $5626: $ff
	adc b                                            ; $5627: $88
	rst $38                                          ; $5628: $ff
	ld d, a                                          ; $5629: $57
	ld b, b                                          ; $562a: $40
	sbc l                                            ; $562b: $9d
	ldh a, [$1f]                                     ; $562c: $f0 $1f
	ld a, e                                          ; $562e: $7b
	ld a, $7f                                        ; $562f: $3e $7f
	ld b, b                                          ; $5631: $40
	sbc [hl]                                         ; $5632: $9e
	sub a                                            ; $5633: $97
	ld d, a                                          ; $5634: $57
	ld b, b                                          ; $5635: $40
	sbc b                                            ; $5636: $98
	ret nz                                           ; $5637: $c0

	jr c, jr_073_56b6                                ; $5638: $38 $7c

	db $fc                                           ; $563a: $fc
	cp e                                             ; $563b: $bb
	add $7d                                          ; $563c: $c6 $7d
	ld l, a                                          ; $563e: $6f
	ld e, [hl]                                       ; $563f: $5e
	sbc l                                            ; $5640: $9d
	jr nc, @-$14                                     ; $5641: $30 $ea

	ld a, e                                          ; $5643: $7b
	ld e, [hl]                                       ; $5644: $5e
	sbc [hl]                                         ; $5645: $9e
	ld e, h                                          ; $5646: $5c
	dec hl                                           ; $5647: $2b
	ld h, b                                          ; $5648: $60
	sbc h                                            ; $5649: $9c
	ld c, $01                                        ; $564a: $0e $01
	rra                                              ; $564c: $1f
	ld a, e                                          ; $564d: $7b
	ld e, [hl]                                       ; $564e: $5e
	sbc [hl]                                         ; $564f: $9e
	rrca                                             ; $5650: $0f
	ld a, e                                          ; $5651: $7b
	ld e, [hl]                                       ; $5652: $5e
	sbc h                                            ; $5653: $9c
	ld b, [hl]                                       ; $5654: $46
	inc bc                                           ; $5655: $03
	ld c, a                                          ; $5656: $4f
	ld e, e                                          ; $5657: $5b
	ld h, b                                          ; $5658: $60
	ld a, a                                          ; $5659: $7f
	cp $93                                           ; $565a: $fe $93
	rst GetHLinHL                                          ; $565c: $cf
	di                                               ; $565d: $f3
	or a                                             ; $565e: $b7
	ld a, e                                          ; $565f: $7b
	ld a, [$7f0f]                                    ; $5660: $fa $0f $7f
	add b                                            ; $5663: $80
	sbc a                                            ; $5664: $9f
	ld h, b                                          ; $5665: $60
	rst AddAOntoHL                                          ; $5666: $ef
	ret nc                                           ; $5667: $d0

	ld a, e                                          ; $5668: $7b
	ld e, [hl]                                       ; $5669: $5e
	sbc h                                            ; $566a: $9c
	ld [hl], c                                       ; $566b: $71
	rst SubAFromDE                                          ; $566c: $df
	pop de                                           ; $566d: $d1
	ld e, e                                          ; $566e: $5b
	ld h, b                                          ; $566f: $60
	ld [hl], a                                       ; $5670: $77
	add b                                            ; $5671: $80
	sbc h                                            ; $5672: $9c
	add sp, -$07                                     ; $5673: $e8 $f9
	rst FarCall                                          ; $5675: $f7
	ld l, a                                          ; $5676: $6f
	add b                                            ; $5677: $80
	ld a, e                                          ; $5678: $7b
	cp $99                                           ; $5679: $fe $99
	sbc a                                            ; $567b: $9f
	ld hl, sp-$69                                    ; $567c: $f8 $97
	ld sp, hl                                        ; $567e: $f9
	sbc [hl]                                         ; $567f: $9e
	ld a, c                                          ; $5680: $79
	ld h, e                                          ; $5681: $63
	add b                                            ; $5682: $80
	adc c                                            ; $5683: $89
	ldh [rP1], a                                     ; $5684: $e0 $00
	ld hl, sp+$78                                    ; $5686: $f8 $78
	add a                                            ; $5688: $87
	cp $79                                           ; $5689: $fe $79
	add [hl]                                         ; $568b: $86
	rst $38                                          ; $568c: $ff
	nop                                              ; $568d: $00
	ld a, a                                          ; $568e: $7f
	nop                                              ; $568f: $00
	ccf                                              ; $5690: $3f
	nop                                              ; $5691: $00
	ld b, $78                                        ; $5692: $06 $78
	ld a, [hl]                                       ; $5694: $7e
	or b                                             ; $5695: $b0
	call c, $fc68                                    ; $5696: $dc $68 $fc
	db $fc                                           ; $5699: $fc
	ld b, e                                          ; $569a: $43
	add b                                            ; $569b: $80
	sbc [hl]                                         ; $569c: $9e
	inc bc                                           ; $569d: $03
	ld [hl], d                                       ; $569e: $72
	ldh [$7b], a                                     ; $569f: $e0 $7b
	cp $9b                                           ; $56a1: $fe $9b
	inc c                                            ; $56a3: $0c
	inc bc                                           ; $56a4: $03
	rrca                                             ; $56a5: $0f
	ld bc, $807b                                     ; $56a6: $01 $7b $80
	sbc l                                            ; $56a9: $9d
	rlca                                             ; $56aa: $07
	db $e4                                           ; $56ab: $e4
	ld e, e                                          ; $56ac: $5b
	add b                                            ; $56ad: $80
	adc c                                            ; $56ae: $89
	rra                                              ; $56af: $1f
	db $e3                                           ; $56b0: $e3
	rst AddAOntoHL                                          ; $56b1: $ef
	di                                               ; $56b2: $f3
	or $1f                                           ; $56b3: $f6 $1f
	ei                                               ; $56b5: $fb

jr_073_56b6:
	inc b                                            ; $56b6: $04
	rst $38                                          ; $56b7: $ff
	nop                                              ; $56b8: $00
	rst $38                                          ; $56b9: $ff
	nop                                              ; $56ba: $00
	ccf                                              ; $56bb: $3f
	ret nz                                           ; $56bc: $c0

	rst SubAFromDE                                          ; $56bd: $df
	and c                                            ; $56be: $a1
	rst $38                                          ; $56bf: $ff
	pop bc                                           ; $56c0: $c1
	ld a, l                                          ; $56c1: $7d
	di                                               ; $56c2: $f3
	rst SubAFromDE                                          ; $56c3: $df
	ldh [c], a                                       ; $56c4: $e2
	rla                                              ; $56c5: $17
	add b                                            ; $56c6: $80
	sbc l                                            ; $56c7: $9d
	ld a, e                                          ; $56c8: $7b
	ld c, l                                          ; $56c9: $4d
	cpl                                              ; $56ca: $2f
	add b                                            ; $56cb: $80
	sub l                                            ; $56cc: $95
	ld c, $70                                        ; $56cd: $0e $70
	halt                                             ; $56cf: $76
	adc b                                            ; $56d0: $88
	db $ec                                           ; $56d1: $ec
	ld [hl], b                                       ; $56d2: $70
	db $fc                                           ; $56d3: $fc
	ld hl, sp+$7e                                    ; $56d4: $f8 $7e
	adc b                                            ; $56d6: $88
	dec de                                           ; $56d7: $1b
	add b                                            ; $56d8: $80
	sbc l                                            ; $56d9: $9d
	nop                                              ; $56da: $00
	ld b, a                                          ; $56db: $47
	ld [hl], a                                       ; $56dc: $77
	add b                                            ; $56dd: $80
	sbc [hl]                                         ; $56de: $9e
	nop                                              ; $56df: $00
	inc hl                                           ; $56e0: $23
	add b                                            ; $56e1: $80
	sbc b                                            ; $56e2: $98
	ld hl, $c1bf                                     ; $56e3: $21 $bf $c1
	db $dd                                           ; $56e6: $dd
	db $e3                                           ; $56e7: $e3
	rst AddAOntoHL                                          ; $56e8: $ef
	ld [hl], d                                       ; $56e9: $72
	ld l, a                                          ; $56ea: $6f
	add b                                            ; $56eb: $80
	rst $38                                          ; $56ec: $ff
	sbc h                                            ; $56ed: $9c
	inc c                                            ; $56ee: $0c
	ld b, $02                                        ; $56ef: $06 $02
	ld a, e                                          ; $56f1: $7b
	or a                                             ; $56f2: $b7
	adc [hl]                                         ; $56f3: $8e
	inc bc                                           ; $56f4: $03
	nop                                              ; $56f5: $00
	add b                                            ; $56f6: $80
	nop                                              ; $56f7: $00
	add b                                            ; $56f8: $80
	add b                                            ; $56f9: $80
	ret nz                                           ; $56fa: $c0

	ld b, b                                          ; $56fb: $40
	ld [hl], b                                       ; $56fc: $70
	jr nz, jr_073_5737                               ; $56fd: $20 $38

	db $10                                           ; $56ff: $10
	inc e                                            ; $5700: $1c
	inc c                                            ; $5701: $0c
	rrca                                             ; $5702: $0f
	inc bc                                           ; $5703: $03
	inc bc                                           ; $5704: $03
	db $fc                                           ; $5705: $fc
	sbc [hl]                                         ; $5706: $9e
	db $10                                           ; $5707: $10
	db $fc                                           ; $5708: $fc
	sbc d                                            ; $5709: $9a
	ld [hl], c                                       ; $570a: $71
	ldh a, [rSB]                                     ; $570b: $f0 $01
	nop                                              ; $570d: $00
	add e                                            ; $570e: $83
	ld a, e                                          ; $570f: $7b
	sbc $95                                          ; $5710: $de $95
	rlca                                             ; $5712: $07
	nop                                              ; $5713: $00
	rlca                                             ; $5714: $07
	ld bc, $070f                                     ; $5715: $01 $0f $07
	ccf                                              ; $5718: $3f
	rra                                              ; $5719: $1f
	rst $38                                          ; $571a: $ff
	ld a, a                                          ; $571b: $7f
	sbc $ff                                          ; $571c: $de $ff
	sbc e                                            ; $571e: $9b
	cp $7f                                           ; $571f: $fe $7f
	jr c, jr_073_5762                                ; $5721: $38 $3f

	ld a, e                                          ; $5723: $7b
	ld l, [hl]                                       ; $5724: $6e
	rst $38                                          ; $5725: $ff
	sbc d                                            ; $5726: $9a
	ld e, $0f                                        ; $5727: $1e $0f
	inc c                                            ; $5729: $0c
	ld b, $05                                        ; $572a: $06 $05
	ld a, e                                          ; $572c: $7b
	ret nc                                           ; $572d: $d0

	ld a, a                                          ; $572e: $7f
	ret nz                                           ; $572f: $c0

	sbc [hl]                                         ; $5730: $9e
	add c                                            ; $5731: $81
	dec hl                                           ; $5732: $2b
	ret nz                                           ; $5733: $c0

	sbc e                                            ; $5734: $9b
	ld sp, hl                                        ; $5735: $f9
	ld [hl], b                                       ; $5736: $70

jr_073_5737:
	pop hl                                           ; $5737: $e1
	ret nz                                           ; $5738: $c0

	ld [hl], a                                       ; $5739: $77
	ret nz                                           ; $573a: $c0

	sbc [hl]                                         ; $573b: $9e
	add a                                            ; $573c: $87
	dec hl                                           ; $573d: $2b
	ret nz                                           ; $573e: $c0

	sub h                                            ; $573f: $94
	ld a, [bc]                                       ; $5740: $0a
	ld [$070f], sp                                   ; $5741: $08 $0f $07
	inc b                                            ; $5744: $04
	rlca                                             ; $5745: $07
	add d                                            ; $5746: $82
	ld bc, $8080                                     ; $5747: $01 $80 $80
	pop bc                                           ; $574a: $c1
	dec sp                                           ; $574b: $3b
	ret nz                                           ; $574c: $c0

	sub d                                            ; $574d: $92
	ld b, b                                          ; $574e: $40
	ret nz                                           ; $574f: $c0

	cp c                                             ; $5750: $b9
	ld a, b                                          ; $5751: $78
	pop af                                           ; $5752: $f1
	ldh a, [rAUD4GO]                                 ; $5753: $f0 $23
	ldh [rSCX], a                                    ; $5755: $e0 $43
	add b                                            ; $5757: $80
	rlca                                             ; $5758: $07
	nop                                              ; $5759: $00
	add a                                            ; $575a: $87
	inc sp                                           ; $575b: $33
	ret nz                                           ; $575c: $c0

	sub a                                            ; $575d: $97
	ld a, [de]                                       ; $575e: $1a
	ld [$0f0f], sp                                   ; $575f: $08 $0f $0f

jr_073_5762:
	inc c                                            ; $5762: $0c
	rlca                                             ; $5763: $07
	add [hl]                                         ; $5764: $86
	inc bc                                           ; $5765: $03
	ld [hl], a                                       ; $5766: $77
	add b                                            ; $5767: $80
	sbc [hl]                                         ; $5768: $9e
	ld [hl], c                                       ; $5769: $71
	ld b, e                                          ; $576a: $43

jr_073_576b:
	ret nz                                           ; $576b: $c0

	sbc b                                            ; $576c: $98
	cp b                                             ; $576d: $b8
	ld [hl], b                                       ; $576e: $70
	cp c                                             ; $576f: $b9
	jr jr_073_576b                                   ; $5770: $18 $f9

	ld hl, sp+$1b                                    ; $5772: $f8 $1b
	ld a, e                                          ; $5774: $7b
	cp [hl]                                          ; $5775: $be
	sbc [hl]                                         ; $5776: $9e
	rst JumpTable                                          ; $5777: $c7
	ld a, e                                          ; $5778: $7b
	add b                                            ; $5779: $80
	sbc [hl]                                         ; $577a: $9e
	adc a                                            ; $577b: $8f
	ld c, e                                          ; $577c: $4b
	ret nz                                           ; $577d: $c0

	ld b, a                                          ; $577e: $47
	ld [bc], a                                       ; $577f: $02
	rst AddAOntoHL                                          ; $5780: $ef
	db $dd                                           ; $5781: $dd
	ld bc, $029e                                     ; $5782: $01 $9e $02
	sbc $03                                          ; $5785: $de $03
	sub a                                            ; $5787: $97
	dec b                                            ; $5788: $05
	ld b, $07                                        ; $5789: $06 $07
	inc b                                            ; $578b: $04
	dec bc                                           ; $578c: $0b
	inc c                                            ; $578d: $0c
	nop                                              ; $578e: $00
	nop                                              ; $578f: $00
	ld l, a                                          ; $5790: $6f
	or $77                                           ; $5791: $f6 $77
	db $f4                                           ; $5793: $f4
	add b                                            ; $5794: $80
	ld c, $09                                        ; $5795: $0e $09
	dec d                                            ; $5797: $15
	dec de                                           ; $5798: $1b
	rra                                              ; $5799: $1f
	inc de                                           ; $579a: $13
	dec de                                           ; $579b: $1b
	rla                                              ; $579c: $17
	cpl                                              ; $579d: $2f
	scf                                              ; $579e: $37
	ld [hl], $2f                                     ; $579f: $36 $2f
	dec hl                                           ; $57a1: $2b
	ld a, $53                                        ; $57a2: $3e $53
	ld a, [hl]                                       ; $57a4: $7e
	ld e, e                                          ; $57a5: $5b
	halt                                             ; $57a6: $76
	ld l, d                                          ; $57a7: $6a
	ld [hl], a                                       ; $57a8: $77
	cp h                                             ; $57a9: $bc
	and a                                            ; $57aa: $a7

jr_073_57ab:
	cp l                                             ; $57ab: $bd
	and [hl]                                         ; $57ac: $a6
	inc [hl]                                         ; $57ad: $34
	cpl                                              ; $57ae: $2f
	inc [hl]                                         ; $57af: $34
	cpl                                              ; $57b0: $2f
	dec a                                            ; $57b1: $3d
	cpl                                              ; $57b2: $2f
	ld l, $8e                                        ; $57b3: $2e $8e
	ccf                                              ; $57b5: $3f
	dec a                                            ; $57b6: $3d
	ld a, $2b                                        ; $57b7: $3e $2b
	inc l                                            ; $57b9: $2c
	cpl                                              ; $57ba: $2f
	jr z, jr_073_57c4                                ; $57bb: $28 $07

	inc b                                            ; $57bd: $04
	dec b                                            ; $57be: $05
	ld b, $03                                        ; $57bf: $06 $03
	ld [bc], a                                       ; $57c1: $02
	inc bc                                           ; $57c2: $03
	ld [bc], a                                       ; $57c3: $02

jr_073_57c4:
	ld bc, $6701                                     ; $57c4: $01 $01 $67
	or b                                             ; $57c7: $b0
	ld a, a                                          ; $57c8: $7f
	db $f4                                           ; $57c9: $f4
	ld a, a                                          ; $57ca: $7f
	db $ec                                           ; $57cb: $ec
	add a                                            ; $57cc: $87
	rrca                                             ; $57cd: $0f
	ld [$101f], sp                                   ; $57ce: $08 $1f $10
	ccf                                              ; $57d1: $3f
	jr nz, jr_073_5852                               ; $57d2: $20 $7e

	ld b, c                                          ; $57d4: $41
	ld a, [$7587]                                    ; $57d5: $fa $87 $75
	adc [hl]                                         ; $57d8: $8e
	db $eb                                           ; $57d9: $eb
	inc e                                            ; $57da: $1c
	rst SubAFromHL                                          ; $57db: $d7
	jr c, @+$01                                      ; $57dc: $38 $ff

	ldh a, [$db]                                     ; $57de: $f0 $db
	inc a                                            ; $57e0: $3c
	db $f4                                           ; $57e1: $f4
	rrca                                             ; $57e2: $0f
	cp $03                                           ; $57e3: $fe $03
	db $eb                                           ; $57e5: $eb
	rst SubAFromDE                                          ; $57e6: $df
	rlca                                             ; $57e7: $07
	add b                                            ; $57e8: $80
	scf                                              ; $57e9: $37
	jr c, @+$09                                      ; $57ea: $38 $07

	rlca                                             ; $57ec: $07
	ld bc, $1e01                                     ; $57ed: $01 $01 $1e
	rra                                              ; $57f0: $1f
	rst SubAFromBC                                          ; $57f1: $e7
	ld hl, sp+$41                                    ; $57f2: $f8 $41
	add b                                            ; $57f4: $80
	sbc b                                            ; $57f5: $98
	rlca                                             ; $57f6: $07
	ld e, a                                          ; $57f7: $5f
	ccf                                              ; $57f8: $3f
	call $b57e                                       ; $57f9: $cd $7e $b5
	ld hl, sp-$2e                                    ; $57fc: $f8 $d2
	pop hl                                           ; $57fe: $e1
	and l                                            ; $57ff: $a5
	jp nz, $8052                                     ; $5800: $c2 $52 $80

	xor b                                            ; $5803: $a8
	db $10                                           ; $5804: $10
	pop de                                           ; $5805: $d1
	jr nz, jr_073_57ab                               ; $5806: $20 $a3

	add b                                            ; $5808: $80
	ld b, c                                          ; $5809: $41
	xor a                                            ; $580a: $af
	ld b, d                                          ; $580b: $42
	ld e, l                                          ; $580c: $5d
	add a                                            ; $580d: $87
	halt                                             ; $580e: $76
	adc a                                            ; $580f: $8f
	db $eb                                           ; $5810: $eb
	inc e                                            ; $5811: $1c
	db $d3                                           ; $5812: $d3
	inc a                                            ; $5813: $3c
	scf                                              ; $5814: $37
	ld hl, sp+$56                                    ; $5815: $f8 $56
	ld sp, hl                                        ; $5817: $f9
	sbc a                                            ; $5818: $9f
	pop af                                           ; $5819: $f1
	cp l                                             ; $581a: $bd
	db $d3                                           ; $581b: $d3
	db $ed                                           ; $581c: $ed
	sbc e                                            ; $581d: $9b
	ld l, d                                          ; $581e: $6a
	sbc a                                            ; $581f: $9f
	ld l, $9f                                        ; $5820: $2e $9f
	dec l                                            ; $5822: $2d
	sbc c                                            ; $5823: $99
	cp c                                             ; $5824: $b9
	ld de, $1337                                     ; $5825: $11 $37 $13
	sub b                                            ; $5828: $90
	or l                                             ; $5829: $b5
	rla                                              ; $582a: $17
	inc sp                                           ; $582b: $33
	sub l                                            ; $582c: $95
	ld a, h                                          ; $582d: $7c
	sub e                                            ; $582e: $93
	ld [$ec99], a                                    ; $582f: $ea $99 $ec
	ret c                                            ; $5832: $d8

	ld c, h                                          ; $5833: $4c
	ld a, a                                          ; $5834: $7f
	dec hl                                           ; $5835: $2b
	ccf                                              ; $5836: $3f
	add hl, hl                                       ; $5837: $29
	ld a, e                                          ; $5838: $7b
	cp $97                                           ; $5839: $fe $97
	dec e                                            ; $583b: $1d
	rra                                              ; $583c: $1f
	dec d                                            ; $583d: $15
	rla                                              ; $583e: $17
	dec d                                            ; $583f: $15
	rla                                              ; $5840: $17
	inc hl                                           ; $5841: $23
	inc hl                                           ; $5842: $23
	ld [hl], a                                       ; $5843: $77
	ld h, [hl]                                       ; $5844: $66
	ld [hl], a                                       ; $5845: $77
	cp $80                                           ; $5846: $fe $80
	rlca                                             ; $5848: $07
	ld b, $0f                                        ; $5849: $06 $0f
	ld a, [bc]                                       ; $584b: $0a

jr_073_584c:
	rra                                              ; $584c: $1f
	ld de, $617f                                     ; $584d: $11 $7f $61
	cp b                                             ; $5850: $b8
	rst JumpTable                                          ; $5851: $c7

jr_073_5852:
	ld a, l                                          ; $5852: $7d
	add e                                            ; $5853: $83
	ld a, [$f507]                                    ; $5854: $fa $07 $f5

jr_073_5857:
	ld c, $d8                                        ; $5857: $0e $d8
	ccf                                              ; $5859: $3f
	and b                                            ; $585a: $a0
	ld a, a                                          ; $585b: $7f
	ld e, b                                          ; $585c: $58
	rst SubAFromBC                                          ; $585d: $e7
	cp [hl]                                          ; $585e: $be
	pop bc                                           ; $585f: $c1
	ld a, a                                          ; $5860: $7f
	add b                                            ; $5861: $80
	rst $38                                          ; $5862: $ff
	nop                                              ; $5863: $00
	rst $38                                          ; $5864: $ff
	nop                                              ; $5865: $00
	di                                               ; $5866: $f3
	sub [hl]                                         ; $5867: $96
	inc c                                            ; $5868: $0c
	ld hl, sp+$07                                    ; $5869: $f8 $07
	db $fc                                           ; $586b: $fc
	inc bc                                           ; $586c: $03
	ld a, [hl]                                       ; $586d: $7e
	add c                                            ; $586e: $81
	rrca                                             ; $586f: $0f
	ldh a, [$f7]                                     ; $5870: $f0 $f7
	db $dd                                           ; $5872: $dd
	ld [bc], a                                       ; $5873: $02
	rst SubAFromDE                                          ; $5874: $df
	ld b, $80                                        ; $5875: $06 $80
	ld c, $0a                                        ; $5877: $0e $0a
	ld c, $0a                                        ; $5879: $0e $0a
	rra                                              ; $587b: $1f
	inc de                                           ; $587c: $13
	sbc a                                            ; $587d: $9f
	sub e                                            ; $587e: $93
	rst $38                                          ; $587f: $ff
	ld [hl], e                                       ; $5880: $73
	sbc $33                                          ; $5881: $de $33
	rst SubAFromHL                                          ; $5883: $d7
	ld a, [$fe3b]                                    ; $5884: $fa $3b $fe
	rst AddAOntoHL                                          ; $5887: $ef
	ld e, $fa                                        ; $5888: $1e $fa
	rlca                                             ; $588a: $07
	ld a, c                                          ; $588b: $79
	rst $38                                          ; $588c: $ff
	rlca                                             ; $588d: $07
	rst $38                                          ; $588e: $ff
	ret nz                                           ; $588f: $c0

jr_073_5890:
	ccf                                              ; $5890: $3f
	jr c, jr_073_5857                                ; $5891: $38 $c4

	or e                                             ; $5893: $b3
	add hl, bc                                       ; $5894: $09
	halt                                             ; $5895: $76
	adc [hl]                                         ; $5896: $8e
	inc de                                           ; $5897: $13
	ld [$de26], a                                    ; $5898: $ea $26 $de
	ld b, h                                          ; $589b: $44
	db $ec                                           ; $589c: $ec
	sbc h                                            ; $589d: $9c
	push af                                          ; $589e: $f5
	inc a                                            ; $589f: $3c
	ld l, l                                          ; $58a0: $6d
	ld hl, sp-$26                                    ; $58a1: $f8 $da
	jp hl                                            ; $58a3: $e9


	ld a, l                                          ; $58a4: $7d
	bit 7, a                                         ; $58a5: $cb $7f
	jp c, $c1e0                                      ; $58a7: $da $e0 $c1

jr_073_58aa:
	adc l                                            ; $58aa: $8d
	rst $38                                          ; $58ab: $ff
	add b                                            ; $58ac: $80
	rst $38                                          ; $58ad: $ff
	ret nz                                           ; $58ae: $c0

	cp a                                             ; $58af: $bf
	ld h, b                                          ; $58b0: $60
	rst SubAFromDE                                          ; $58b1: $df
	jr c, jr_073_58aa                                ; $58b2: $38 $f6

	rrca                                             ; $58b4: $0f
	ld a, l                                          ; $58b5: $7d
	add e                                            ; $58b6: $83
	ccf                                              ; $58b7: $3f
	ret nz                                           ; $58b8: $c0

	rra                                              ; $58b9: $1f
	ldh [hDisp0_OBP1], a                                     ; $58ba: $e0 $87
	ld a, b                                          ; $58bc: $78
	ld [hl], a                                       ; $58bd: $77
	ld h, b                                          ; $58be: $60
	ld [hl], a                                       ; $58bf: $77
	cp $9d                                           ; $58c0: $fe $9d
	ld e, $e1                                        ; $58c2: $1e $e1
	ld [hl], e                                       ; $58c4: $73
	ld sp, hl                                        ; $58c5: $f9
	or $df                                           ; $58c6: $f6 $df
	inc c                                            ; $58c8: $0c
	rst SubAFromDE                                          ; $58c9: $df
	jr c, jr_073_584c                                ; $58ca: $38 $80

	ld e, a                                          ; $58cc: $5f
	ld a, a                                          ; $58cd: $7f
	cp e                                             ; $58ce: $bb
	rst FarCall                                          ; $58cf: $f7
	ld [hl], l                                       ; $58d0: $75
	adc $ff                                          ; $58d1: $ce $ff
	adc b                                            ; $58d3: $88
	xor $11                                          ; $58d4: $ee $11
	rst SubAFromDE                                          ; $58d6: $df
	jr nz, jr_073_5890                               ; $58d7: $20 $b7

	ld c, b                                          ; $58d9: $48
	xor $53                                          ; $58da: $ee $53
	ld e, l                                          ; $58dc: $5d
	rst SubAFromBC                                          ; $58dd: $e7

jr_073_58de:
	sbc e                                            ; $58de: $9b
	rst AddAOntoHL                                          ; $58df: $ef
	sub a                                            ; $58e0: $97
	cp $d4                                           ; $58e1: $fe $d4
	cp $3d                                           ; $58e3: $fe $3d
	cp $64                                           ; $58e5: $fe $64
	rra                                              ; $58e7: $1f
	rst $38                                          ; $58e8: $ff
	rst $38                                          ; $58e9: $ff
	adc a                                            ; $58ea: $8f
	adc [hl]                                         ; $58eb: $8e
	ld bc, $0f36                                     ; $58ec: $01 $36 $0f
	ld e, l                                          ; $58ef: $5d
	add hl, sp                                       ; $58f0: $39
	cp e                                             ; $58f1: $bb
	ld [hl], c                                       ; $58f2: $71
	ld h, [hl]                                       ; $58f3: $66
	ldh a, [c]                                       ; $58f4: $f2
	db $fc                                           ; $58f5: $fc
	db $e4                                           ; $58f6: $e4
	db $f4                                           ; $58f7: $f4
	xor h                                            ; $58f8: $ac
	cp b                                             ; $58f9: $b8
	jr z, jr_073_5934                                ; $58fa: $28 $38

	jr z, jr_073_58de                                ; $58fc: $28 $e0

	pop bc                                           ; $58fe: $c1
	adc l                                            ; $58ff: $8d
	rst FarCall                                          ; $5900: $f7
	rrca                                             ; $5901: $0f
	db $fc                                           ; $5902: $fc
	inc bc                                           ; $5903: $03
	cp $01                                           ; $5904: $fe $01
	cp $01                                           ; $5906: $fe $01
	db $fc                                           ; $5908: $fc
	inc bc                                           ; $5909: $03
	ldh [rIE], a                                     ; $590a: $e0 $ff
	sbc a                                            ; $590c: $9f
	ld a, a                                          ; $590d: $7f
	ldh [$1f], a                                     ; $590e: $e0 $1f
	ldh a, [rIF]                                     ; $5910: $f0 $0f
	halt                                             ; $5912: $76
	add $7f                                          ; $5913: $c6 $7f
	db $fc                                           ; $5915: $fc
	ld a, a                                          ; $5916: $7f
	ld hl, sp+$6b                                    ; $5917: $f8 $6b
	ld e, c                                          ; $5919: $59
	db $f4                                           ; $591a: $f4
	rst SubAFromDE                                          ; $591b: $df
	ldh [$df], a                                     ; $591c: $e0 $df
	add b                                            ; $591e: $80
	rst SubAFromDE                                          ; $591f: $df
	db $fc                                           ; $5920: $fc
	add b                                            ; $5921: $80
	or b                                             ; $5922: $b0
	ld [hl], b                                       ; $5923: $70
	cp $fe                                           ; $5924: $fe $fe
	ld a, l                                          ; $5926: $7d
	add e                                            ; $5927: $83
	cp $11                                           ; $5928: $fe $11
	cp l                                             ; $592a: $bd
	ld a, [hl]                                       ; $592b: $7e
	ei                                               ; $592c: $fb
	rst SubAFromDE                                          ; $592d: $df
	cp c                                             ; $592e: $b9
	sub b                                            ; $592f: $90
	ld [hl], e                                       ; $5930: $73
	jr nz, jr_073_59b2                               ; $5931: $20 $7f

	ccf                                              ; $5933: $3f

jr_073_5934:
	ldh [$30], a                                     ; $5934: $e0 $30
	reti                                             ; $5936: $d9


	ld h, b                                          ; $5937: $60
	or b                                             ; $5938: $b0
	ret nz                                           ; $5939: $c0

	ld e, a                                          ; $593a: $5f
	cp a                                             ; $593b: $bf
	and a                                            ; $593c: $a7
	jp $f1fb                                         ; $593d: $c3 $fb $f1


	adc a                                            ; $5940: $8f
	sbc [hl]                                         ; $5941: $9e
	adc c                                            ; $5942: $89
	ld h, l                                          ; $5943: $65
	cp [hl]                                          ; $5944: $be
	sbc e                                            ; $5945: $9b
	inc bc                                           ; $5946: $03
	ld b, $07                                        ; $5947: $06 $07
	rrca                                             ; $5949: $0f
	ldh [$c1], a                                     ; $594a: $e0 $c1
	sub h                                            ; $594c: $94
	ld hl, sp-$01                                    ; $594d: $f8 $ff
	db $10                                           ; $594f: $10

jr_073_5950:
	rst $38                                          ; $5950: $ff
	jr @+$01                                         ; $5951: $18 $ff

	dec e                                            ; $5953: $1d
	rst FarCall                                          ; $5954: $f7
	rla                                              ; $5955: $17
	di                                               ; $5956: $f3
	inc de                                           ; $5957: $13
	sbc $f1                                          ; $5958: $de $f1
	sbc [hl]                                         ; $595a: $9e
	add hl, bc                                       ; $595b: $09
	ld a, e                                          ; $595c: $7b
	ld h, e                                          ; $595d: $63
	sbc b                                            ; $595e: $98
	rlca                                             ; $595f: $07
	cp $0b                                           ; $5960: $fe $0b
	ld sp, hl                                        ; $5962: $f9
	rrca                                             ; $5963: $0f
	ld sp, hl                                        ; $5964: $f9
	ld b, $66                                        ; $5965: $06 $66
	cp c                                             ; $5967: $b9
	add sp, -$21                                     ; $5968: $e8 $df
	add b                                            ; $596a: $80
	sub l                                            ; $596b: $95
	ld b, b                                          ; $596c: $40
	ret nz                                           ; $596d: $c0

	jr nz, jr_073_5950                               ; $596e: $20 $e0

	ret nc                                           ; $5970: $d0

	ldh a, [$b8]                                     ; $5971: $f0 $b8
	ld a, b                                          ; $5973: $78
	db $fc                                           ; $5974: $fc
	db $fc                                           ; $5975: $fc
	ld [hl], a                                       ; $5976: $77
	ld a, [de]                                       ; $5977: $1a
	ld a, e                                          ; $5978: $7b
	db $d3                                           ; $5979: $d3
	adc h                                            ; $597a: $8c
	rst $38                                          ; $597b: $ff
	ld [hl+], a                                      ; $597c: $22
	cp $dd                                           ; $597d: $fe $dd
	inc sp                                           ; $597f: $33
	ld a, a                                          ; $5980: $7f
	sbc c                                            ; $5981: $99
	db $ed                                           ; $5982: $ed
	sbc [hl]                                         ; $5983: $9e
	xor d                                            ; $5984: $aa
	rst SubAFromDE                                          ; $5985: $df
	rst AddAOntoHL                                          ; $5986: $ef
	db $db                                           ; $5987: $db
	xor $da                                          ; $5988: $ee $da
	sub $fa                                          ; $598a: $d6 $fa
	ld d, d                                          ; $598c: $52
	cp $e0                                           ; $598d: $fe $e0
	pop bc                                           ; $598f: $c1
	ld a, a                                          ; $5990: $7f

jr_073_5991:
	sbc h                                            ; $5991: $9c
	rst SubAFromDE                                          ; $5992: $df
	ret nz                                           ; $5993: $c0

	rst SubAFromDE                                          ; $5994: $df
	ldh [$8c], a                                     ; $5995: $e0 $8c
	jr jr_073_5991                                   ; $5997: $18 $f8

	inc b                                            ; $5999: $04
	db $fc                                           ; $599a: $fc
	ld [de], a                                       ; $599b: $12
	cp $12                                           ; $599c: $fe $12
	cp $92                                           ; $599e: $fe $92
	cp $8a                                           ; $59a0: $fe $8a
	cp $ca                                           ; $59a2: $fe $ca
	cp $ce                                           ; $59a4: $fe $ce
	cp $c6                                           ; $59a6: $fe $c6
	cp $26                                           ; $59a8: $fe $26
	ld a, e                                          ; $59aa: $7b
	cp $7f                                           ; $59ab: $fe $7f
	ldh a, [$9e]                                     ; $59ad: $f0 $9e
	ld de, $6063                                     ; $59af: $11 $63 $60

jr_073_59b2:
	rst SubAFromDE                                          ; $59b2: $df
	ret nz                                           ; $59b3: $c0

	sbc c                                            ; $59b4: $99
	jr nc, @-$0e                                     ; $59b5: $30 $f0

	call z, $3ffc                                    ; $59b7: $cc $fc $3f
	ccf                                              ; $59ba: $3f
	ld l, a                                          ; $59bb: $6f
	ld h, [hl]                                       ; $59bc: $66
	ld [hl], a                                       ; $59bd: $77
	ld h, h                                          ; $59be: $64
	rst SubAFromDE                                          ; $59bf: $df
	ret nz                                           ; $59c0: $c0

	rst SubAFromDE                                          ; $59c1: $df
	ld b, b                                          ; $59c2: $40
	rst SubAFromDE                                          ; $59c3: $df
	jr nz, jr_073_59df                               ; $59c4: $20 $19

	nop                                              ; $59c6: $00
	sub a                                            ; $59c7: $97
	sbc c                                            ; $59c8: $99
	adc b                                            ; $59c9: $88
	adc b                                            ; $59ca: $88
	sbc c                                            ; $59cb: $99
	adc b                                            ; $59cc: $88
	nop                                              ; $59cd: $00
	nop                                              ; $59ce: $00
	xor d                                            ; $59cf: $aa
	ld a, e                                          ; $59d0: $7b
	ei                                               ; $59d1: $fb
	rst SubAFromDE                                          ; $59d2: $df
	sbc c                                            ; $59d3: $99
	sbc [hl]                                         ; $59d4: $9e
	ld de, $fb5b                                     ; $59d5: $11 $5b $fb
	ld a, a                                          ; $59d8: $7f
	jp hl                                            ; $59d9: $e9


	rst SubAFromDE                                          ; $59da: $df
	sbc c                                            ; $59db: $99
	sbc [hl]                                         ; $59dc: $9e
	adc b                                            ; $59dd: $88
	pop hl                                           ; $59de: $e1

jr_073_59df:
	ld bc, $9788                                     ; $59df: $01 $88 $97

jr_073_59e2:
	cp $95                                           ; $59e2: $fe $95
	rst $38                                          ; $59e4: $ff
	sub [hl]                                         ; $59e5: $96
	rst $38                                          ; $59e6: $ff
	cpl                                              ; $59e7: $2f
	ld hl, sp+$2f                                    ; $59e8: $f8 $2f
	ld sp, hl                                        ; $59ea: $f9
	cpl                                              ; $59eb: $2f
	ld a, [$f47f]                                    ; $59ec: $fa $7f $f4
	ei                                               ; $59ef: $fb
	or l                                             ; $59f0: $b5
	cp [hl]                                          ; $59f1: $be
	and e                                            ; $59f2: $a3
	cp [hl]                                          ; $59f3: $be
	ld [hl+], a                                      ; $59f4: $22
	ld [hl], $26                                     ; $59f5: $36 $26
	ld b, $de                                        ; $59f7: $06 $de
	inc bc                                           ; $59f9: $03
	sbc $01                                          ; $59fa: $de $01
	rst SubAFromDE                                          ; $59fc: $df
	add b                                            ; $59fd: $80
	sbc [hl]                                         ; $59fe: $9e
	nop                                              ; $59ff: $00
	sbc $80                                          ; $5a00: $de $80
	add b                                            ; $5a02: $80
	ret nz                                           ; $5a03: $c0

	ld b, b                                          ; $5a04: $40
	ldh [$60], a                                     ; $5a05: $e0 $60
	ldh [rSVBK], a                                   ; $5a07: $e0 $70
	ldh a, [$78]                                     ; $5a09: $f0 $78
	ld hl, sp-$34                                    ; $5a0b: $f8 $cc
	call z, $c3c3                                    ; $5a0d: $cc $c3 $c3
	and b                                            ; $5a10: $a0
	and b                                            ; $5a11: $a0
	sub b                                            ; $5a12: $90
	sub b                                            ; $5a13: $90
	ret z                                            ; $5a14: $c8

	ld c, b                                          ; $5a15: $48
	and $26                                          ; $5a16: $e6 $26
	pop af                                           ; $5a18: $f1
	ld de, $0cfc                                     ; $5a19: $11 $fc $0c
	rst $38                                          ; $5a1c: $ff
	inc bc                                           ; $5a1d: $03
	rst $38                                          ; $5a1e: $ff
	nop                                              ; $5a1f: $00

jr_073_5a20:
	jr z, @-$06                                      ; $5a20: $28 $f8

	add b                                            ; $5a22: $80
	add sp, -$08                                     ; $5a23: $e8 $f8
	ret c                                            ; $5a25: $d8

	jr c, jr_073_5a20                                ; $5a26: $38 $f8

	jr jr_073_59e2                                   ; $5a28: $18 $b8

	ret z                                            ; $5a2a: $c8

	ld hl, sp+$08                                    ; $5a2b: $f8 $08
	call c, $fce8                                    ; $5a2d: $dc $e8 $fc
	and b                                            ; $5a30: $a0
	ret c                                            ; $5a31: $d8

	ret nz                                           ; $5a32: $c0

	ld d, b                                          ; $5a33: $50
	ld b, b                                          ; $5a34: $40
	ld d, b                                          ; $5a35: $50
	ret nz                                           ; $5a36: $c0

	ldh [$e0], a                                     ; $5a37: $e0 $e0
	and b                                            ; $5a39: $a0
	ldh [$60], a                                     ; $5a3a: $e0 $60
	and b                                            ; $5a3c: $a0
	add b                                            ; $5a3d: $80
	ret nz                                           ; $5a3e: $c0

	ldh [rP1], a                                     ; $5a3f: $e0 $00
	rrca                                             ; $5a41: $0f
	add b                                            ; $5a42: $80
	jr jr_073_5a62                                   ; $5a43: $18 $1d

	ld d, $1e                                        ; $5a45: $16 $1e
	add hl, bc                                       ; $5a47: $09

jr_073_5a48:
	ccf                                              ; $5a48: $3f
	ld b, $37                                        ; $5a49: $06 $37
	rrca                                             ; $5a4b: $0f
	dec sp                                           ; $5a4c: $3b
	ld c, $1a                                        ; $5a4d: $0e $1a
	ld a, [bc]                                       ; $5a4f: $0a
	ld a, [de]                                       ; $5a50: $1a
	ld a, [bc]                                       ; $5a51: $0a
	ld c, $06                                        ; $5a52: $0e $06
	dec b                                            ; $5a54: $05
	rlca                                             ; $5a55: $07
	dec c                                            ; $5a56: $0d
	rlca                                             ; $5a57: $07
	ld c, $02                                        ; $5a58: $0e $02
	rlca                                             ; $5a5a: $07
	nop                                              ; $5a5b: $00
	ld a, [bc]                                       ; $5a5c: $0a
	inc b                                            ; $5a5d: $04
	db $10                                           ; $5a5e: $10
	inc c                                            ; $5a5f: $0c
	nop                                              ; $5a60: $00
	nop                                              ; $5a61: $00

jr_073_5a62:
	add l                                            ; $5a62: $85
	db $f4                                           ; $5a63: $f4
	inc a                                            ; $5a64: $3c
	db $f4                                           ; $5a65: $f4
	inc a                                            ; $5a66: $3c
	ld hl, sp+$38                                    ; $5a67: $f8 $38
	ret c                                            ; $5a69: $d8

	jr c, jr_073_5a48                                ; $5a6a: $38 $dc

jr_073_5a6c:
	inc [hl]                                         ; $5a6c: $34
	call z, $fcb4                                    ; $5a6d: $cc $b4 $fc
	inc h                                            ; $5a70: $24
	db $fc                                           ; $5a71: $fc
	inc h                                            ; $5a72: $24
	db $f4                                           ; $5a73: $f4
	inc l                                            ; $5a74: $2c
	ld hl, sp+$28                                    ; $5a75: $f8 $28
	add sp, $38                                      ; $5a77: $e8 $38
	ret nc                                           ; $5a79: $d0

	jr nc, jr_073_5a6c                               ; $5a7a: $30 $f0

	db $10                                           ; $5a7c: $10
	ld h, a                                          ; $5a7d: $67
	cp $9d                                           ; $5a7e: $fe $9d
	ldh [rAUD4LEN], a                                ; $5a80: $e0 $20
	ld [hl], a                                       ; $5a82: $77
	cp $7f                                           ; $5a83: $fe $7f
	ld a, e                                          ; $5a85: $7b
	ld a, a                                          ; $5a86: $7f
	cp $dd                                           ; $5a87: $fe $dd
	add b                                            ; $5a89: $80
	di                                               ; $5a8a: $f3
	rst SubAFromDE                                          ; $5a8b: $df
	add b                                            ; $5a8c: $80
	ld h, e                                          ; $5a8d: $63
	ld b, b                                          ; $5a8e: $40
	ld a, e                                          ; $5a8f: $7b
	cp $91                                           ; $5a90: $fe $91
	ld a, a                                          ; $5a92: $7f
	pop af                                           ; $5a93: $f1
	rst $38                                          ; $5a94: $ff
	or d                                             ; $5a95: $b2
	cp a                                             ; $5a96: $bf
	and h                                            ; $5a97: $a4
	cp e                                             ; $5a98: $bb
	dec h                                            ; $5a99: $25
	ld [hl], $23                                     ; $5a9a: $36 $23
	ld b, $02                                        ; $5a9c: $06 $02
	rlca                                             ; $5a9e: $07
	rlca                                             ; $5a9f: $07
	ld a, e                                          ; $5aa0: $7b
	ld a, $7b                                        ; $5aa1: $3e $7b
	pop de                                           ; $5aa3: $d1
	ld h, a                                          ; $5aa4: $67
	ld h, b                                          ; $5aa5: $60
	ld a, a                                          ; $5aa6: $7f
	ld h, d                                          ; $5aa7: $62
	ld a, a                                          ; $5aa8: $7f
	cp $8f                                           ; $5aa9: $fe $8f
	cp h                                             ; $5aab: $bc
	ret z                                            ; $5aac: $c8

	db $fc                                           ; $5aad: $fc
	nop                                              ; $5aae: $00
	ret c                                            ; $5aaf: $d8

	ldh [$f0], a                                     ; $5ab0: $e0 $f0
	and b                                            ; $5ab2: $a0
	ret nc                                           ; $5ab3: $d0

	ret nz                                           ; $5ab4: $c0

	ld b, b                                          ; $5ab5: $40
	ld b, b                                          ; $5ab6: $40
	ret nz                                           ; $5ab7: $c0

	ret nz                                           ; $5ab8: $c0

	jr nz, @-$1e                                     ; $5ab9: $20 $e0

	ld l, a                                          ; $5abb: $6f
	ld h, b                                          ; $5abc: $60
	adc l                                            ; $5abd: $8d
	rra                                              ; $5abe: $1f
	db $10                                           ; $5abf: $10
	rra                                              ; $5ac0: $1f
	nop                                              ; $5ac1: $00
	dec a                                            ; $5ac2: $3d
	ld b, $3e                                        ; $5ac3: $06 $3e
	add hl, bc                                       ; $5ac5: $09
	dec a                                            ; $5ac6: $3d
	ld b, $16                                        ; $5ac7: $06 $16
	rrca                                             ; $5ac9: $0f
	dec de                                           ; $5aca: $1b
	rrca                                             ; $5acb: $0f
	dec bc                                           ; $5acc: $0b
	ld a, [bc]                                       ; $5acd: $0a
	dec c                                            ; $5ace: $0d
	rrca                                             ; $5acf: $0f
	dec hl                                           ; $5ad0: $2b
	ld h, b                                          ; $5ad1: $60
	sbc [hl]                                         ; $5ad2: $9e
	inc [hl]                                         ; $5ad3: $34
	ld a, e                                          ; $5ad4: $7b
	ld h, b                                          ; $5ad5: $60
	sbc [hl]                                         ; $5ad6: $9e
	and h                                            ; $5ad7: $a4
	ld b, a                                          ; $5ad8: $47
	ld h, b                                          ; $5ad9: $60
	ld d, e                                          ; $5ada: $53
	add b                                            ; $5adb: $80
	adc [hl]                                         ; $5adc: $8e
	ldh a, [rIE]                                     ; $5add: $f0 $ff
	or b                                             ; $5adf: $b0
	cp a                                             ; $5ae0: $bf
	and b                                            ; $5ae1: $a0
	cp a                                             ; $5ae2: $bf
	jr nz, jr_073_5b1c                               ; $5ae3: $20 $37

	ld hl, $0603                                     ; $5ae5: $21 $03 $06
	rlca                                             ; $5ae8: $07
	nop                                              ; $5ae9: $00
	rlca                                             ; $5aea: $07
	rlca                                             ; $5aeb: $07
	ld [bc], a                                       ; $5aec: $02
	add c                                            ; $5aed: $81
	ld c, a                                          ; $5aee: $4f
	add b                                            ; $5aef: $80
	sub d                                            ; $5af0: $92
	db $fc                                           ; $5af1: $fc
	ld [$00fc], sp                                   ; $5af2: $08 $fc $00
	ld hl, sp+$00                                    ; $5af5: $f8 $00
	ldh a, [rP1]                                     ; $5af7: $f0 $00
	ret nc                                           ; $5af9: $d0

	ldh [$c0], a                                     ; $5afa: $e0 $c0
	nop                                              ; $5afc: $00
	ldh [$7b], a                                     ; $5afd: $e0 $7b
	dec hl                                           ; $5aff: $2b
	rst SubAFromDE                                          ; $5b00: $df
	ret nz                                           ; $5b01: $c0

	ld h, a                                          ; $5b02: $67
	add b                                            ; $5b03: $80
	sbc [hl]                                         ; $5b04: $9e
	ccf                                              ; $5b05: $3f
	ld [hl], e                                       ; $5b06: $73
	cp $94                                           ; $5b07: $fe $94
	dec e                                            ; $5b09: $1d
	ld b, $1e                                        ; $5b0a: $06 $1e
	add hl, bc                                       ; $5b0c: $09
	rrca                                             ; $5b0d: $0f
	ld [bc], a                                       ; $5b0e: $02
	rrca                                             ; $5b0f: $0f
	rlca                                             ; $5b10: $07
	dec c                                            ; $5b11: $0d
	rrca                                             ; $5b12: $0f
	ld c, $7b                                        ; $5b13: $0e $7b
	ret nz                                           ; $5b15: $c0

	inc sp                                           ; $5b16: $33
	add b                                            ; $5b17: $80
	halt                                             ; $5b18: $76
	ldh [$9e], a                                     ; $5b19: $e0 $9e
	xor b                                            ; $5b1b: $a8

jr_073_5b1c:
	inc bc                                           ; $5b1c: $03
	add b                                            ; $5b1d: $80
	sub [hl]                                         ; $5b1e: $96
	jr nz, jr_073_5b28                               ; $5b1f: $20 $07

	nop                                              ; $5b21: $00
	ld bc, $0107                                     ; $5b22: $01 $07 $01
	ld b, $03                                        ; $5b25: $06 $03
	add e                                            ; $5b27: $83

jr_073_5b28:
	cpl                                              ; $5b28: $2f
	add b                                            ; $5b29: $80
	ld a, a                                          ; $5b2a: $7f
	cp $99                                           ; $5b2b: $fe $99
	add b                                            ; $5b2d: $80
	ld h, b                                          ; $5b2e: $60
	ldh [$80], a                                     ; $5b2f: $e0 $80
	and b                                            ; $5b31: $a0
	ld h, b                                          ; $5b32: $60
	ld b, a                                          ; $5b33: $47
	add b                                            ; $5b34: $80
	ld a, a                                          ; $5b35: $7f
	ld hl, sp+$7f                                    ; $5b36: $f8 $7f
	cp $97                                           ; $5b38: $fe $97
	ld c, $09                                        ; $5b3a: $0e $09
	add hl, bc                                       ; $5b3c: $09
	ld b, $0f                                        ; $5b3d: $06 $0f
	add hl, bc                                       ; $5b3f: $09
	ld c, $07                                        ; $5b40: $0e $07
	dec de                                           ; $5b42: $1b
	add b                                            ; $5b43: $80
	ld a, a                                          ; $5b44: $7f
	nop                                              ; $5b45: $00
	sbc [hl]                                         ; $5b46: $9e
	cp b                                             ; $5b47: $b8
	ld e, a                                          ; $5b48: $5f
	add b                                            ; $5b49: $80
	rst $38                                          ; $5b4a: $ff
	sbc e                                            ; $5b4b: $9b
	inc bc                                           ; $5b4c: $03
	nop                                              ; $5b4d: $00
	ld bc, $f703                                     ; $5b4e: $01 $03 $f7
	ld a, a                                          ; $5b51: $7f
	dec hl                                           ; $5b52: $2b
	add b                                            ; $5b53: $80
	jr c, jr_073_5b86                                ; $5b54: $38 $30

	rra                                              ; $5b56: $1f
	ld c, $0f                                        ; $5b57: $0e $0f
	ld bc, $80c7                                     ; $5b59: $01 $c7 $80
	ld a, a                                          ; $5b5c: $7f
	ld a, h                                          ; $5b5d: $7c
	inc bc                                           ; $5b5e: $03
	inc bc                                           ; $5b5f: $03
	ld hl, sp-$08                                    ; $5b60: $f8 $f8
	ld [bc], a                                       ; $5b62: $02
	db $fd                                           ; $5b63: $fd
	inc e                                            ; $5b64: $1c
	rst AddAOntoHL                                          ; $5b65: $ef
	ldh a, [$ef]                                     ; $5b66: $f0 $ef
	nop                                              ; $5b68: $00
	rst $38                                          ; $5b69: $ff
	inc c                                            ; $5b6a: $0c
	di                                               ; $5b6b: $f3
	add hl, de                                       ; $5b6c: $19
	and $01                                          ; $5b6d: $e6 $01
	cp $01                                           ; $5b6f: $fe $01
	cp $03                                           ; $5b71: $fe $03
	adc l                                            ; $5b73: $8d
	db $fd                                           ; $5b74: $fd
	inc bc                                           ; $5b75: $03
	db $fd                                           ; $5b76: $fd
	ld b, $fa                                        ; $5b77: $06 $fa
	db $fc                                           ; $5b79: $fc
	call z, Call_073_78f8                            ; $5b7a: $cc $f8 $78
	cp $3e                                           ; $5b7d: $fe $3e
	rst $38                                          ; $5b7f: $ff
	rst $38                                          ; $5b80: $ff
	ccf                                              ; $5b81: $3f
	rst $38                                          ; $5b82: $ff
	nop                                              ; $5b83: $00
	nop                                              ; $5b84: $00
	ld [bc], a                                       ; $5b85: $02

jr_073_5b86:
	dec bc                                           ; $5b86: $0b
	ret nz                                           ; $5b87: $c0

	sub a                                            ; $5b88: $97
	inc a                                            ; $5b89: $3c
	rst GetHLinHL                                          ; $5b8a: $cf
	call c, $f8eb                                    ; $5b8b: $dc $eb $f8
	ld [hl], a                                       ; $5b8e: $77
	ld [$27f7], sp                                   ; $5b8f: $08 $f7 $27
	ret nz                                           ; $5b92: $c0

	cp $7e                                           ; $5b93: $fe $7e
	ld d, $63                                        ; $5b95: $16 $63
	cp [hl]                                          ; $5b97: $be
	ld b, a                                          ; $5b98: $47
	ret nz                                           ; $5b99: $c0

	ld a, a                                          ; $5b9a: $7f
	add [hl]                                         ; $5b9b: $86
	sub l                                            ; $5b9c: $95
	ld a, $c5                                        ; $5b9d: $3e $c5
	sbc h                                            ; $5b9f: $9c
	ld l, a                                          ; $5ba0: $6f
	ld hl, sp-$01                                    ; $5ba1: $f8 $ff
	ld [hl], b                                       ; $5ba3: $70
	rst $38                                          ; $5ba4: $ff
	add hl, bc                                       ; $5ba5: $09
	or $77                                           ; $5ba6: $f6 $77
	cp [hl]                                          ; $5ba8: $be
	scf                                              ; $5ba9: $37
	ret nz                                           ; $5baa: $c0

	sbc l                                            ; $5bab: $9d
	ld [bc], a                                       ; $5bac: $02
	ld bc, $c07b                                     ; $5bad: $01 $7b $c0
	sbc [hl]                                         ; $5bb0: $9e
	ld bc, $c017                                     ; $5bb1: $01 $17 $c0
	sbc c                                            ; $5bb4: $99
	db $fc                                           ; $5bb5: $fc
	ei                                               ; $5bb6: $fb
	ld hl, sp-$01                                    ; $5bb7: $f8 $ff
	ld [hl], c                                       ; $5bb9: $71
	cp $77                                           ; $5bba: $fe $77
	cp [hl]                                          ; $5bbc: $be
	ld b, a                                          ; $5bbd: $47
	ret nz                                           ; $5bbe: $c0

	add sp, $02                                      ; $5bbf: $e8 $02
	pop af                                           ; $5bc1: $f1
	rst SubAFromDE                                          ; $5bc2: $df
	ld bc, $03df                                     ; $5bc3: $01 $df $03
	add b                                            ; $5bc6: $80
	ld b, $05                                        ; $5bc7: $06 $05
	inc c                                            ; $5bc9: $0c
	rrca                                             ; $5bca: $0f
	ld e, $17                                        ; $5bcb: $1e $17
	daa                                              ; $5bcd: $27
	ld a, [hl-]                                      ; $5bce: $3a
	ld d, e                                          ; $5bcf: $53
	ld l, l                                          ; $5bd0: $6d
	ld c, h                                          ; $5bd1: $4c
	ld a, e                                          ; $5bd2: $7b
	ld c, [hl]                                       ; $5bd3: $4e
	ld a, l                                          ; $5bd4: $7d
	ld l, [hl]                                       ; $5bd5: $6e
	ld d, l                                          ; $5bd6: $55
	cpl                                              ; $5bd7: $2f
	jr c, @+$29                                      ; $5bd8: $38 $27

	ccf                                              ; $5bda: $3f
	inc hl                                           ; $5bdb: $23
	inc a                                            ; $5bdc: $3c
	ld sp, $112e                                     ; $5bdd: $31 $2e $11
	ld e, $19                                        ; $5be0: $1e $19
	ld d, $08                                        ; $5be2: $16 $08
	rrca                                             ; $5be4: $0f
	ld [$0f9c], sp                                   ; $5be5: $08 $9c $0f
	inc c                                            ; $5be8: $0c
	dec bc                                           ; $5be9: $0b
	ld [hl], a                                       ; $5bea: $77
	cp $99                                           ; $5beb: $fe $99
	inc b                                            ; $5bed: $04
	rlca                                             ; $5bee: $07
	inc b                                            ; $5bef: $04
	rlca                                             ; $5bf0: $07
	dec b                                            ; $5bf1: $05
	ld b, $ed                                        ; $5bf2: $06 $ed
	db $db                                           ; $5bf4: $db
	ld bc, $068b                                     ; $5bf5: $01 $8b $06
	rlca                                             ; $5bf8: $07
	ld c, $09                                        ; $5bf9: $0e $09
	dec de                                           ; $5bfb: $1b
	rla                                              ; $5bfc: $17
	ld l, $3f                                        ; $5bfd: $2e $3f
	dec [hl]                                         ; $5bff: $35
	ld [hl], $67                                     ; $5c00: $36 $67
	ld h, h                                          ; $5c02: $64
	ld b, [hl]                                       ; $5c03: $46
	ld b, l                                          ; $5c04: $45
	rlca                                             ; $5c05: $07
	dec b                                            ; $5c06: $05
	rlca                                             ; $5c07: $07
	dec b                                            ; $5c08: $05
	dec b                                            ; $5c09: $05
	rlca                                             ; $5c0a: $07
	db $dd                                           ; $5c0b: $dd
	ld [bc], a                                       ; $5c0c: $02
	db $eb                                           ; $5c0d: $eb
	rst SubAFromDE                                          ; $5c0e: $df
	jr nc, @-$7e                                     ; $5c0f: $30 $80

	ld a, b                                          ; $5c11: $78

jr_073_5c12:
	ld c, b                                          ; $5c12: $48
	call $e7b5                                       ; $5c13: $cd $b5 $e7
	db $db                                           ; $5c16: $db
	or e                                             ; $5c17: $b3
	ld l, l                                          ; $5c18: $6d
	dec de                                           ; $5c19: $1b
	push af                                          ; $5c1a: $f5
	rst GetHLinHL                                          ; $5c1b: $cf
	cp b                                             ; $5c1c: $b8
	ld h, a                                          ; $5c1d: $67
	call c, $ea37                                    ; $5c1e: $dc $37 $ea
	ccf                                              ; $5c21: $3f
	ldh [c], a                                       ; $5c22: $e2
	cp a                                             ; $5c23: $bf
	ld d, e                                          ; $5c24: $53
	rst $38                                          ; $5c25: $ff
	sub d                                            ; $5c26: $92
	rst $38                                          ; $5c27: $ff
	sbc h                                            ; $5c28: $9c
	rst $38                                          ; $5c29: $ff
	or b                                             ; $5c2a: $b0
	rst $38                                          ; $5c2b: $ff
	ldh [rIE], a                                     ; $5c2c: $e0 $ff
	jr nz, @+$01                                     ; $5c2e: $20 $ff

	sub b                                            ; $5c30: $90
	ld hl, $21ff                                     ; $5c31: $21 $ff $21
	cp $02                                           ; $5c34: $fe $02
	cp $02                                           ; $5c36: $fe $02
	db $fc                                           ; $5c38: $fc
	inc b                                            ; $5c39: $04
	db $fc                                           ; $5c3a: $fc
	inc b                                            ; $5c3b: $04
	db $fd                                           ; $5c3c: $fd
	dec b                                            ; $5c3d: $05
	rst $38                                          ; $5c3e: $ff
	inc bc                                           ; $5c3f: $03
	ld [hl], e                                       ; $5c40: $73
	cp $9c                                           ; $5c41: $fe $9c
	ld bc, $01ff                                     ; $5c43: $01 $ff $01
	db $eb                                           ; $5c46: $eb
	ld a, e                                          ; $5c47: $7b
	ld a, [hl-]                                      ; $5c48: $3a
	adc h                                            ; $5c49: $8c
	ld [bc], a                                       ; $5c4a: $02
	rlca                                             ; $5c4b: $07
	ld b, $0f                                        ; $5c4c: $06 $0f
	inc c                                            ; $5c4e: $0c
	rra                                              ; $5c4f: $1f
	jr jr_073_5c81                                   ; $5c50: $18 $2f

	add hl, sp                                       ; $5c52: $39
	cpl                                              ; $5c53: $2f
	add hl, sp                                       ; $5c54: $39
	ld e, a                                          ; $5c55: $5f
	ld [hl], c                                       ; $5c56: $71
	ld e, a                                          ; $5c57: $5f
	ld [hl], d                                       ; $5c58: $72
	ld e, a                                          ; $5c59: $5f
	ld [hl], d                                       ; $5c5a: $72
	cp a                                             ; $5c5b: $bf
	ldh [c], a                                       ; $5c5c: $e2
	ld [hl], e                                       ; $5c5d: $73
	cp $80                                           ; $5c5e: $fe $80
	push hl                                          ; $5c60: $e5
	cp a                                             ; $5c61: $bf
	push hl                                          ; $5c62: $e5
	ld a, a                                          ; $5c63: $7f
	push bc                                          ; $5c64: $c5
	ld a, a                                          ; $5c65: $7f
	push bc                                          ; $5c66: $c5
	cp $c7                                           ; $5c67: $fe $c7
	inc a                                            ; $5c69: $3c
	rst SubAFromBC                                          ; $5c6a: $e7
	ld hl, sp-$01                                    ; $5c6b: $f8 $ff
	add hl, de                                       ; $5c6d: $19

jr_073_5c6e:
	rst $38                                          ; $5c6e: $ff
	ld [hl], c                                       ; $5c6f: $71
	rst $38                                          ; $5c70: $ff
	ld [hl], e                                       ; $5c71: $73
	cp $a7                                           ; $5c72: $fe $a7
	db $fc                                           ; $5c74: $fc
	xor h                                            ; $5c75: $ac
	rst $38                                          ; $5c76: $ff
	xor a                                            ; $5c77: $af
	rst $38                                          ; $5c78: $ff
	sbc l                                            ; $5c79: $9d
	cp $53                                           ; $5c7a: $fe $53
	ld a, [hl]                                       ; $5c7c: $7e
	inc hl                                           ; $5c7d: $23
	ld a, $9b                                        ; $5c7e: $3e $9b
	inc de                                           ; $5c80: $13

jr_073_5c81:
	ld e, $0f                                        ; $5c81: $1e $0f
	rrca                                             ; $5c83: $0f
	ld a, e                                          ; $5c84: $7b
	ld d, h                                          ; $5c85: $54
	ld [hl], a                                       ; $5c86: $77
	inc hl                                           ; $5c87: $23
	sbc e                                            ; $5c88: $9b
	inc b                                            ; $5c89: $04
	inc bc                                           ; $5c8a: $03
	ld [bc], a                                       ; $5c8b: $02
	ld bc, $a07b                                     ; $5c8c: $01 $7b $a0
	rst SubAFromDE                                          ; $5c8f: $df
	jr jr_073_5c12                                   ; $5c90: $18 $80

	inc a                                            ; $5c92: $3c
	inc h                                            ; $5c93: $24
	ld l, h                                          ; $5c94: $6c
	ld d, h                                          ; $5c95: $54
	ld e, b                                          ; $5c96: $58
	ld l, b                                          ; $5c97: $68
	sbc b                                            ; $5c98: $98
	add sp, -$50                                     ; $5c99: $e8 $b0
	ld d, b                                          ; $5c9b: $50
	jr nc, jr_073_5c6e                               ; $5c9c: $30 $d0

	ld h, b                                          ; $5c9e: $60
	and b                                            ; $5c9f: $a0
	ld h, b                                          ; $5ca0: $60
	and b                                            ; $5ca1: $a0
	pop hl                                           ; $5ca2: $e1
	and c                                            ; $5ca3: $a1

jr_073_5ca4:
	ldh [c], a                                       ; $5ca4: $e2
	and e                                            ; $5ca5: $a3
	db $e4                                           ; $5ca6: $e4
	and a                                            ; $5ca7: $a7
	db $e4                                           ; $5ca8: $e4
	and a                                            ; $5ca9: $a7
	ret z                                            ; $5caa: $c8

	ld c, a                                          ; $5cab: $4f
	ret z                                            ; $5cac: $c8

	ld c, a                                          ; $5cad: $4f
	adc b                                            ; $5cae: $88
	adc a                                            ; $5caf: $8f
	sbc c                                            ; $5cb0: $99
	sub h                                            ; $5cb1: $94
	sub [hl]                                         ; $5cb2: $96
	cp c                                             ; $5cb3: $b9
	and a                                            ; $5cb4: $a7
	ei                                               ; $5cb5: $fb
	push bc                                          ; $5cb6: $c5
	ld e, e                                          ; $5cb7: $5b
	ld h, [hl]                                       ; $5cb8: $66
	ld e, a                                          ; $5cb9: $5f
	ld h, d                                          ; $5cba: $62
	ld c, a                                          ; $5cbb: $4f
	ld [hl], h                                       ; $5cbc: $74
	ld [hl], a                                       ; $5cbd: $77
	cp $7f                                           ; $5cbe: $fe $7f
	ld b, d                                          ; $5cc0: $42
	sbc c                                            ; $5cc1: $99
	rst SubAFromDE                                          ; $5cc2: $df
	jr z, jr_073_5ca4                                ; $5cc3: $28 $df

	jr z, @+$01                                      ; $5cc5: $28 $ff

	db $10                                           ; $5cc7: $10
	ld a, e                                          ; $5cc8: $7b
	cp $7f                                           ; $5cc9: $fe $7f
	ld c, d                                          ; $5ccb: $4a
	sbc [hl]                                         ; $5ccc: $9e
	and b                                            ; $5ccd: $a0
	pop af                                           ; $5cce: $f1
	rst SubAFromDE                                          ; $5ccf: $df
	rlca                                             ; $5cd0: $07
	add b                                            ; $5cd1: $80
	ccf                                              ; $5cd2: $3f
	jr c, @+$01                                      ; $5cd3: $38 $ff

	db $d3                                           ; $5cd5: $d3
	rst $38                                          ; $5cd6: $ff
	inc l                                            ; $5cd7: $2c
	rst $38                                          ; $5cd8: $ff
	inc sp                                           ; $5cd9: $33
	cp $6f                                           ; $5cda: $fe $6f
	cp $5f                                           ; $5cdc: $fe $5f
	rst SubAFromBC                                          ; $5cde: $e7
	cp a                                             ; $5cdf: $bf
	pop de                                           ; $5ce0: $d1
	ld a, e                                          ; $5ce1: $7b
	ret z                                            ; $5ce2: $c8

	ld a, l                                          ; $5ce3: $7d
	db $fc                                           ; $5ce4: $fc
	ld a, [hl]                                       ; $5ce5: $7e
	add $ff                                          ; $5ce6: $c6 $ff
	add d                                            ; $5ce8: $82
	rst $38                                          ; $5ce9: $ff
	add e                                            ; $5cea: $83
	rst $38                                          ; $5ceb: $ff
	cp a                                             ; $5cec: $bf
	rst $38                                          ; $5ced: $ff
	rst $38                                          ; $5cee: $ff
	ret nz                                           ; $5cef: $c0

	rst $38                                          ; $5cf0: $ff
	sub b                                            ; $5cf1: $90
	ld c, $f1                                        ; $5cf2: $0e $f1
	scf                                              ; $5cf4: $37

jr_073_5cf5:
	rst JumpTable                                          ; $5cf5: $c7
	ld l, a                                          ; $5cf6: $6f
	ret z                                            ; $5cf7: $c8

	ret c                                            ; $5cf8: $d8

	sub b                                            ; $5cf9: $90
	ldh a, [hDisp1_SCY]                                     ; $5cfa: $f0 $90
	ldh a, [$a0]                                     ; $5cfc: $f0 $a0
	ldh [$a0], a                                     ; $5cfe: $e0 $a0
	ldh [$e0], a                                     ; $5d00: $e0 $e0
	pop bc                                           ; $5d02: $c1
	sbc l                                            ; $5d03: $9d
	rst $38                                          ; $5d04: $ff
	add b                                            ; $5d05: $80
	ld a, e                                          ; $5d06: $7b
	cp $7f                                           ; $5d07: $fe $7f
	ld a, [$fe23]                                    ; $5d09: $fa $23 $fe
	di                                               ; $5d0c: $f3
	rst SubAFromDE                                          ; $5d0d: $df
	ld a, a                                          ; $5d0e: $7f
	ld [hl], e                                       ; $5d0f: $73
	jp nc, $fc9e                                     ; $5d10: $d2 $9e $fc

	ld a, d                                          ; $5d13: $7a
	and h                                            ; $5d14: $a4
	adc h                                            ; $5d15: $8c
	db $fc                                           ; $5d16: $fc
	ld l, e                                          ; $5d17: $6b

jr_073_5d18:
	cp $33                                           ; $5d18: $fe $33

jr_073_5d1a:
	rst $38                                          ; $5d1a: $ff
	inc h                                            ; $5d1b: $24
	rst $38                                          ; $5d1c: $ff
	jr z, jr_073_5d18                                ; $5d1d: $28 $f9

	and e                                            ; $5d1f: $a3

jr_073_5d20:
	rst $38                                          ; $5d20: $ff
	ld a, h                                          ; $5d21: $7c
	cp $30                                           ; $5d22: $fe $30
	ld a, c                                          ; $5d24: $79
	jr nz, jr_073_5d1a                               ; $5d25: $20 $f3

	jr nz, jr_073_5d20                               ; $5d27: $20 $f7

	sbc $ff                                          ; $5d29: $de $ff
	sub [hl]                                         ; $5d2b: $96
	jr c, jr_073_5cf5                                ; $5d2c: $38 $c7

	halt                                             ; $5d2e: $76
	or c                                             ; $5d2f: $b1
	ei                                               ; $5d30: $fb
	db $fc                                           ; $5d31: $fc
	rst $38                                          ; $5d32: $ff
	ld [bc], a                                       ; $5d33: $02
	inc bc                                           ; $5d34: $03
	db $dd                                           ; $5d35: $dd
	ld bc, sPreScriptSP                                     ; $5d36: $01 $e0 $bd
	adc a                                            ; $5d39: $8f
	sub b                                            ; $5d3a: $90
	sbc h                                            ; $5d3b: $9c
	sub b                                            ; $5d3c: $90

jr_073_5d3d:
	sbc b                                            ; $5d3d: $98
	ret z                                            ; $5d3e: $c8

	adc a                                            ; $5d3f: $8f
	rst JumpTable                                          ; $5d40: $c7
	ld b, a                                          ; $5d41: $47
	ldh [rLCDC], a                                   ; $5d42: $e0 $40
	ldh [rAUD4LEN], a                                ; $5d44: $e0 $20
	pop af                                           ; $5d46: $f1
	ld hl, $1cff                                     ; $5d47: $21 $ff $1c
	rrca                                             ; $5d4a: $0f
	ld h, b                                          ; $5d4b: $60
	rst $38                                          ; $5d4c: $ff
	rst SubAFromDE                                          ; $5d4d: $df
	ldh [$9b], a                                     ; $5d4e: $e0 $9b
	db $fc                                           ; $5d50: $fc
	inc e                                            ; $5d51: $1c
	rst $38                                          ; $5d52: $ff
	inc de                                           ; $5d53: $13
	ld a, d                                          ; $5d54: $7a
	and h                                            ; $5d55: $a4
	sbc h                                            ; $5d56: $9c
	and b                                            ; $5d57: $a0
	rst $38                                          ; $5d58: $ff
	ld h, b                                          ; $5d59: $60
	halt                                             ; $5d5a: $76
	and b                                            ; $5d5b: $a0
	ld d, e                                          ; $5d5c: $53
	cp $9e                                           ; $5d5d: $fe $9e
	and c                                            ; $5d5f: $a1
	ld a, e                                          ; $5d60: $7b
	cp $91                                           ; $5d61: $fe $91
	pop hl                                           ; $5d63: $e1
	rst $38                                          ; $5d64: $ff
	ld sp, hl                                        ; $5d65: $f9
	add $df                                          ; $5d66: $c6 $df
	pop bc                                           ; $5d68: $c1
	rst AddAOntoHL                                          ; $5d69: $ef
	ld h, c                                          ; $5d6a: $61
	di                                               ; $5d6b: $f3
	ld d, c                                          ; $5d6c: $51
	ld sp, hl                                        ; $5d6d: $f9
	ld c, c                                          ; $5d6e: $49
	db $fd                                           ; $5d6f: $fd
	push bc                                          ; $5d70: $c5
	ccf                                              ; $5d71: $3f
	cp a                                             ; $5d72: $bf
	ldh [$d1], a                                     ; $5d73: $e0 $d1
	sub h                                            ; $5d75: $94
	ld de, $0707                                     ; $5d76: $11 $07 $07
	ld a, a                                          ; $5d79: $7f
	ld hl, sp-$3f                                    ; $5d7a: $f8 $c1
	add b                                            ; $5d7c: $80
	inc bc                                           ; $5d7d: $03
	inc bc                                           ; $5d7e: $03
	rra                                              ; $5d7f: $1f
	inc e                                            ; $5d80: $1c
	ld a, d                                          ; $5d81: $7a
	ld h, d                                          ; $5d82: $62
	ld a, [bc]                                       ; $5d83: $0a
	ret nz                                           ; $5d84: $c0

	ld sp, hl                                        ; $5d85: $f9
	rst SubAFromDE                                          ; $5d86: $df
	ret nz                                           ; $5d87: $c0

	sub l                                            ; $5d88: $95
	or b                                             ; $5d89: $b0
	ldh a, [$ec]                                     ; $5d8a: $f0 $ec
	sbc h                                            ; $5d8c: $9c
	ldh a, [c]                                       ; $5d8d: $f2
	adc [hl]                                         ; $5d8e: $8e
	ret                                              ; $5d8f: $c9


	or a                                             ; $5d90: $b7
	ret nz                                           ; $5d91: $c0

	cp a                                             ; $5d92: $bf
	ld e, a                                          ; $5d93: $5f
	cp $57                                           ; $5d94: $fe $57
	rst JumpTable                                          ; $5d96: $c7
	ld a, a                                          ; $5d97: $7f
	or l                                             ; $5d98: $b5
	add b                                            ; $5d99: $80
	ldh [$3f], a                                     ; $5d9a: $e0 $3f
	jr nc, jr_073_5d3d                               ; $5d9c: $30 $9f

	ld c, [hl]                                       ; $5d9e: $4e
	sbc a                                            ; $5d9f: $9f
	xor c                                            ; $5da0: $a9
	rst SubAFromDE                                          ; $5da1: $df
	jp hl                                            ; $5da2: $e9


	rst SubAFromDE                                          ; $5da3: $df
	ret                                              ; $5da4: $c9


	rst $38                                          ; $5da5: $ff
	xor c                                            ; $5da6: $a9
	rst $38                                          ; $5da7: $ff
	db $eb                                           ; $5da8: $eb
	cp a                                             ; $5da9: $bf
	ld a, a                                          ; $5daa: $7f
	sbc l                                            ; $5dab: $9d

jr_073_5dac:
	rst $38                                          ; $5dac: $ff
	jr jr_073_5dac                                   ; $5dad: $18 $fd

	ld a, [bc]                                       ; $5daf: $0a
	rst $38                                          ; $5db0: $ff
	ld a, [bc]                                       ; $5db1: $0a
	ei                                               ; $5db2: $fb
	ld c, $ff                                        ; $5db3: $0e $ff
	inc c                                            ; $5db5: $0c
	or $09                                           ; $5db6: $f6 $09
	db $fd                                           ; $5db8: $fd
	add d                                            ; $5db9: $82
	inc bc                                           ; $5dba: $03
	cp $07                                           ; $5dbb: $fe $07
	db $f4                                           ; $5dbd: $f4
	rrca                                             ; $5dbe: $0f
	db $fc                                           ; $5dbf: $fc
	rrca                                             ; $5dc0: $0f
	ld hl, sp+$1f                                    ; $5dc1: $f8 $1f
	ld sp, hl                                        ; $5dc3: $f9
	rra                                              ; $5dc4: $1f
	reti                                             ; $5dc5: $d9


	ccf                                              ; $5dc6: $3f
	cp c                                             ; $5dc7: $b9
	ld a, a                                          ; $5dc8: $7f
	ld [hl], e                                       ; $5dc9: $73
	rst $38                                          ; $5dca: $ff
	di                                               ; $5dcb: $f3
	rst $38                                          ; $5dcc: $ff
	ldh a, [c]                                       ; $5dcd: $f2
	cp $f4                                           ; $5dce: $fe $f4
	db $fc                                           ; $5dd0: $fc
	db $f4                                           ; $5dd1: $f4
	inc e                                            ; $5dd2: $1c
	db $f4                                           ; $5dd3: $f4
	inc e                                            ; $5dd4: $1c
	db $fc                                           ; $5dd5: $fc
	inc c                                            ; $5dd6: $0c
	ld [hl], h                                       ; $5dd7: $74

jr_073_5dd8:
	ld a, [$f47c]                                    ; $5dd8: $fa $7c $f4
	add c                                            ; $5ddb: $81
	rst $38                                          ; $5ddc: $ff
	rlca                                             ; $5ddd: $07
	rst $38                                          ; $5dde: $ff
	rra                                              ; $5ddf: $1f
	ldh [rIE], a                                     ; $5de0: $e0 $ff
	ld a, l                                          ; $5de2: $7d
	add e                                            ; $5de3: $83
	or $0f                                           ; $5de4: $f6 $0f
	ld hl, sp+$7f                                    ; $5de6: $f8 $7f
	cp h                                             ; $5de8: $bc
	jp $0ff0                                         ; $5de9: $c3 $f0 $0f


	rst SubAFromBC                                          ; $5dec: $e7
	jr @+$01                                         ; $5ded: $18 $ff

	nop                                              ; $5def: $00
	cp $01                                           ; $5df0: $fe $01
	db $fc                                           ; $5df2: $fc

jr_073_5df3:
	inc bc                                           ; $5df3: $03
	ld hl, sp+$07                                    ; $5df4: $f8 $07
	rst SubAFromBC                                          ; $5df6: $e7

jr_073_5df7:
	jr jr_073_5dd8                                   ; $5df7: $18 $df

jr_073_5df9:
	jr nz, jr_073_5e6a                               ; $5df9: $20 $6f

	sub a                                            ; $5dfb: $97
	rst SubAFromDE                                          ; $5dfc: $df
	add b                                            ; $5dfd: $80
	adc e                                            ; $5dfe: $8b
	ld b, b                                          ; $5dff: $40
	ret nz                                           ; $5e00: $c0

	ld b, b                                          ; $5e01: $40
	ret nz                                           ; $5e02: $c0

	jr nz, @-$1e                                     ; $5e03: $20 $e0

	jr nc, jr_073_5df7                               ; $5e05: $30 $f0

	jr nc, jr_073_5df9                               ; $5e07: $30 $f0

	jr c, jr_073_5df3                                ; $5e09: $38 $e8

	jr c, @-$16                                      ; $5e0b: $38 $e8

	inc a                                            ; $5e0d: $3c
	db $e4                                           ; $5e0e: $e4
	inc a                                            ; $5e0f: $3c
	db $e4                                           ; $5e10: $e4
	ld a, h                                          ; $5e11: $7c
	call nz, $fe77                                   ; $5e12: $c4 $77 $fe
	sbc l                                            ; $5e15: $9d
	ld a, b                                          ; $5e16: $78
	ret z                                            ; $5e17: $c8

	ld [hl], a                                       ; $5e18: $77
	cp $9a                                           ; $5e19: $fe $9a
	ld hl, sp-$18                                    ; $5e1b: $f8 $e8
	ld hl, sp-$28                                    ; $5e1d: $f8 $d8
	ld a, b                                          ; $5e1f: $78
	ld [hl], a                                       ; $5e20: $77
	ld [$f495], a                                    ; $5e21: $ea $95 $f4
	ld e, $fa                                        ; $5e24: $1e $fa
	sbc a                                            ; $5e26: $9f
	ld sp, hl                                        ; $5e27: $f9

jr_073_5e28:
	sub a                                            ; $5e28: $97
	db $fd                                           ; $5e29: $fd
	sub e                                            ; $5e2a: $93
	cp $91                                           ; $5e2b: $fe $91
	ld a, b                                          ; $5e2d: $78
	adc a                                            ; $5e2e: $8f
	ld a, a                                          ; $5e2f: $7f
	cp $9e                                           ; $5e30: $fe $9e
	ld d, b                                          ; $5e32: $50
	ld a, e                                          ; $5e33: $7b
	cp $9e                                           ; $5e34: $fe $9e
	sub b                                            ; $5e36: $90
	ld [hl], d                                       ; $5e37: $72
	xor e                                            ; $5e38: $ab
	ld a, a                                          ; $5e39: $7f
	or a                                             ; $5e3a: $b7
	ld a, a                                          ; $5e3b: $7f
	cp $97                                           ; $5e3c: $fe $97
	ld h, e                                          ; $5e3e: $63
	rst $38                                          ; $5e3f: $ff
	ld a, a                                          ; $5e40: $7f
	db $fc                                           ; $5e41: $fc
	ld a, a                                          ; $5e42: $7f
	jp $fcfc                                         ; $5e43: $c3 $fc $fc


	db $dd                                           ; $5e46: $dd
	add b                                            ; $5e47: $80
	ld c, a                                          ; $5e48: $4f
	jr @-$64                                         ; $5e49: $18 $9a

	ld [hl], b                                       ; $5e4b: $70
	ldh a, [$8e]                                     ; $5e4c: $f0 $8e
	cp $01                                           ; $5e4e: $fe $01
	ld a, e                                          ; $5e50: $7b
	sub a                                            ; $5e51: $97
	sub e                                            ; $5e52: $93
	inc e                                            ; $5e53: $1c
	db $e3                                           ; $5e54: $e3
	ld hl, sp+$07                                    ; $5e55: $f8 $07
	ldh [$1f], a                                     ; $5e57: $e0 $1f
	add b                                            ; $5e59: $80
	ld a, a                                          ; $5e5a: $7f
	rrca                                             ; $5e5b: $0f
	ldh a, [$3f]                                     ; $5e5c: $f0 $3f
	ret nz                                           ; $5e5e: $c0

	ld l, a                                          ; $5e5f: $6f
	ld a, h                                          ; $5e60: $7c
	ld a, a                                          ; $5e61: $7f
	ld [hl], b                                       ; $5e62: $70
	sbc e                                            ; $5e63: $9b
	pop hl                                           ; $5e64: $e1
	rra                                              ; $5e65: $1f
	pop bc                                           ; $5e66: $c1
	ccf                                              ; $5e67: $3f
	pop af                                           ; $5e68: $f1
	rst SubAFromDE                                          ; $5e69: $df

jr_073_5e6a:
	add b                                            ; $5e6a: $80
	ld a, a                                          ; $5e6b: $7f
	ld [hl], c                                       ; $5e6c: $71
	ld a, c                                          ; $5e6d: $79
	add hl, hl                                       ; $5e6e: $29
	sbc h                                            ; $5e6f: $9c
	and b                                            ; $5e70: $a0
	ld [hl], b                                       ; $5e71: $70
	ret nc                                           ; $5e72: $d0

	ld e, a                                          ; $5e73: $5f
	cp $7f                                           ; $5e74: $fe $7f
	ldh a, [c]                                       ; $5e76: $f2
	ld a, a                                          ; $5e77: $7f
	db $ec                                           ; $5e78: $ec
	ld c, a                                          ; $5e79: $4f
	xor b                                            ; $5e7a: $a8
	ld b, a                                          ; $5e7b: $47
	call z, $9a7f                                    ; $5e7c: $cc $7f $9a
	ld a, a                                          ; $5e7f: $7f
	dec c                                            ; $5e80: $0d
	sub d                                            ; $5e81: $92
	ld b, $fe                                        ; $5e82: $06 $fe
	rrca                                             ; $5e84: $0f
	ld sp, hl                                        ; $5e85: $f9
	rst SubAFromDE                                          ; $5e86: $df
	jr nc, jr_073_5e28                               ; $5e87: $30 $9f

	ld [hl], b                                       ; $5e89: $70
	ccf                                              ; $5e8a: $3f
	ldh [$3f], a                                     ; $5e8b: $e0 $3f
	ldh [$7f], a                                     ; $5e8d: $e0 $7f
	ld a, d                                          ; $5e8f: $7a
	or c                                             ; $5e90: $b1
	ld a, l                                          ; $5e91: $7d
	ld d, [hl]                                       ; $5e92: $56
	sbc [hl]                                         ; $5e93: $9e
	ld a, a                                          ; $5e94: $7f
	ld a, c                                          ; $5e95: $79
	ld d, h                                          ; $5e96: $54
	ccf                                              ; $5e97: $3f
	and d                                            ; $5e98: $a2
	ld a, a                                          ; $5e99: $7f
	cp $7c                                           ; $5e9a: $fe $7c
	ld e, [hl]                                       ; $5e9c: $5e
	ld a, e                                          ; $5e9d: $7b
	db $10                                           ; $5e9e: $10
	sbc b                                            ; $5e9f: $98
	ret nc                                           ; $5ea0: $d0

Jump_073_5ea1:
	db $10                                           ; $5ea1: $10
	ldh a, [$98]                                     ; $5ea2: $f0 $98
	ld l, b                                          ; $5ea4: $68
	adc b                                            ; $5ea5: $88
	ld a, b                                          ; $5ea6: $78
	daa                                              ; $5ea7: $27
	nop                                              ; $5ea8: $00
	rst SubAFromDE                                          ; $5ea9: $df
	cp e                                             ; $5eaa: $bb
	rst SubAFromDE                                          ; $5eab: $df
	adc b                                            ; $5eac: $88
	ld a, a                                          ; $5ead: $7f
	db $fd                                           ; $5eae: $fd
	rst SubAFromDE                                          ; $5eaf: $df
	xor d                                            ; $5eb0: $aa
	ld a, a                                          ; $5eb1: $7f
	ei                                               ; $5eb2: $fb
	sbc c                                            ; $5eb3: $99
	call z, $22aa                                    ; $5eb4: $cc $aa $22
	sbc c                                            ; $5eb7: $99
	sbc c                                            ; $5eb8: $99
	ld d, l                                          ; $5eb9: $55
	ld [hl], a                                       ; $5eba: $77
	ei                                               ; $5ebb: $fb
	sbc [hl]                                         ; $5ebc: $9e
	ld b, h                                          ; $5ebd: $44
	ld [hl], e                                       ; $5ebe: $73
	ei                                               ; $5ebf: $fb
	sbc d                                            ; $5ec0: $9a
	adc b                                            ; $5ec1: $88
	nop                                              ; $5ec2: $00
	nop                                              ; $5ec3: $00
	adc b                                            ; $5ec4: $88
	ld d, l                                          ; $5ec5: $55
	sbc $aa                                          ; $5ec6: $de $aa
	sbc [hl]                                         ; $5ec8: $9e
	db $dd                                           ; $5ec9: $dd
	ld a, e                                          ; $5eca: $7b
	db $fd                                           ; $5ecb: $fd
	sbc [hl]                                         ; $5ecc: $9e
	call z, $0145                                    ; $5ecd: $cc $45 $01
	add b                                            ; $5ed0: $80
	and b                                            ; $5ed1: $a0
	ldh [$e0], a                                     ; $5ed2: $e0 $e0
	ld h, b                                          ; $5ed4: $60
	ldh a, [$60]                                     ; $5ed5: $f0 $60
	ld a, h                                          ; $5ed7: $7c
	ld hl, sp-$7e                                    ; $5ed8: $f8 $82
	db $fc                                           ; $5eda: $fc
	rst $38                                          ; $5edb: $ff
	nop                                              ; $5edc: $00
	dec de                                           ; $5edd: $1b
	inc a                                            ; $5ede: $3c
	rra                                              ; $5edf: $1f
	ld h, b                                          ; $5ee0: $60
	ccf                                              ; $5ee1: $3f
	ld e, h                                          ; $5ee2: $5c
	rla                                              ; $5ee3: $17
	ld [hl], $b3                                     ; $5ee4: $36 $b3
	ld [hl], $9f                                     ; $5ee6: $36 $9f
	xor [hl]                                         ; $5ee8: $ae
	add d                                            ; $5ee9: $82
	adc [hl]                                         ; $5eea: $8e
	jp z, $cf8e                                      ; $5eeb: $ca $8e $cf

	ld b, b                                          ; $5eee: $40
	jp nz, Jump_073_4081                             ; $5eef: $c2 $81 $40

	ret nz                                           ; $5ef2: $c0

	rst $38                                          ; $5ef3: $ff
	ld b, b                                          ; $5ef4: $40
	ld a, a                                          ; $5ef5: $7f
	jr nz, jr_073_5f37                               ; $5ef6: $20 $3f

	jr nz, jr_073_5f39                               ; $5ef8: $20 $3f

	db $10                                           ; $5efa: $10
	rra                                              ; $5efb: $1f
	ld [$040f], sp                                   ; $5efc: $08 $0f $04
	rlca                                             ; $5eff: $07
	ld [bc], a                                       ; $5f00: $02
	inc bc                                           ; $5f01: $03
	ld bc, $7801                                     ; $5f02: $01 $01 $78
	ld a, b                                          ; $5f05: $78
	rst $38                                          ; $5f06: $ff
	add a                                            ; $5f07: $87
	rst $38                                          ; $5f08: $ff
	inc c                                            ; $5f09: $0c
	ld a, a                                          ; $5f0a: $7f
	sub b                                            ; $5f0b: $90
	ld a, a                                          ; $5f0c: $7f
	and b                                            ; $5f0d: $a0
	ld a, a                                          ; $5f0e: $7f
	ld a, e                                          ; $5f0f: $7b
	db $e3                                           ; $5f10: $e3
	sub b                                            ; $5f11: $90
	ld bc, $0000                                     ; $5f12: $01 $00 $00
	ld bc, $0303                                     ; $5f15: $01 $03 $03
	nop                                              ; $5f18: $00
	inc bc                                           ; $5f19: $03
	rlca                                             ; $5f1a: $07
	nop                                              ; $5f1b: $00
	rlca                                             ; $5f1c: $07
	nop                                              ; $5f1d: $00
	inc bc                                           ; $5f1e: $03
	nop                                              ; $5f1f: $00
	add c                                            ; $5f20: $81
	ld a, e                                          ; $5f21: $7b
	cp $fb                                           ; $5f22: $fe $fb
	add b                                            ; $5f24: $80
	jr nz, jr_073_5f27                               ; $5f25: $20 $00

jr_073_5f27:
	jr nc, jr_073_5f29                               ; $5f27: $30 $00

jr_073_5f29:
	ld a, b                                          ; $5f29: $78
	nop                                              ; $5f2a: $00
	jr c, jr_073_5f6d                                ; $5f2b: $38 $40

	ld a, [hl]                                       ; $5f2d: $7e
	rst $38                                          ; $5f2e: $ff
	rst SubAFromDE                                          ; $5f2f: $df
	pop hl                                           ; $5f30: $e1
	rst $38                                          ; $5f31: $ff
	ld bc, $7897                                     ; $5f32: $01 $97 $78
	ld a, e                                          ; $5f35: $7b
	add h                                            ; $5f36: $84

jr_073_5f37:
	rst $38                                          ; $5f37: $ff
	ld a, b                                          ; $5f38: $78

jr_073_5f39:
	rst $38                                          ; $5f39: $ff
	db $ec                                           ; $5f3a: $ec
	ld h, l                                          ; $5f3b: $65
	and [hl]                                         ; $5f3c: $a6
	rst AddAOntoHL                                          ; $5f3d: $ef
	ld l, $3e                                        ; $5f3e: $2e $3e
	ccf                                              ; $5f40: $3f
	scf                                              ; $5f41: $37
	inc a                                            ; $5f42: $3c
	scf                                              ; $5f43: $37
	sbc l                                            ; $5f44: $9d
	inc e                                            ; $5f45: $1c
	ld a, l                                          ; $5f46: $7d
	ld a, [$8057]                                    ; $5f47: $fa $57 $80
	sbc [hl]                                         ; $5f4a: $9e
	ccf                                              ; $5f4b: $3f
	ld l, e                                          ; $5f4c: $6b
	ld a, [hl]                                       ; $5f4d: $7e
	sbc c                                            ; $5f4e: $99
	sub a                                            ; $5f4f: $97
	ld [hl], $b3                                     ; $5f50: $36 $b3
	or [hl]                                          ; $5f52: $b6
	sbc [hl]                                         ; $5f53: $9e
	xor [hl]                                         ; $5f54: $ae
	ld l, a                                          ; $5f55: $6f
	add b                                            ; $5f56: $80
	inc bc                                           ; $5f57: $03
	and b                                            ; $5f58: $a0
	ld [hl], e                                       ; $5f59: $73
	and b                                            ; $5f5a: $a0
	ld a, a                                          ; $5f5b: $7f
	call nz, $fe7f                                   ; $5f5c: $c4 $7f $fe
	ld d, a                                          ; $5f5f: $57
	sbc h                                            ; $5f60: $9c
	daa                                              ; $5f61: $27
	and b                                            ; $5f62: $a0
	ld [hl], a                                       ; $5f63: $77
	cp $97                                           ; $5f64: $fe $97
	ld e, c                                          ; $5f66: $59
	ld a, $9f                                        ; $5f67: $3e $9f
	ld h, h                                          ; $5f69: $64
	cp a                                             ; $5f6a: $bf

jr_073_5f6b:
	adc a                                            ; $5f6b: $8f
	cp d                                             ; $5f6c: $ba

jr_073_5f6d:
	cp [hl]                                          ; $5f6d: $be
	inc bc                                           ; $5f6e: $03
	and b                                            ; $5f6f: $a0
	ld c, e                                          ; $5f70: $4b
	and b                                            ; $5f71: $a0
	ld [hl], a                                       ; $5f72: $77
	cp $97                                           ; $5f73: $fe $97
	sbc a                                            ; $5f75: $9f
	ld a, b                                          ; $5f76: $78
	ld a, c                                          ; $5f77: $79
	add [hl]                                         ; $5f78: $86
	rst $38                                          ; $5f79: $ff
	jr c, jr_073_5f6b                                ; $5f7a: $38 $ef

	rst $38                                          ; $5f7c: $ff
	rla                                              ; $5f7d: $17
	and b                                            ; $5f7e: $a0
	sub l                                            ; $5f7f: $95
	ld a, a                                          ; $5f80: $7f
	nop                                              ; $5f81: $00
	db $fd                                           ; $5f82: $fd
	ld [bc], a                                       ; $5f83: $02
	cp e                                             ; $5f84: $bb
	sbc h                                            ; $5f85: $9c
	adc l                                            ; $5f86: $8d
	or e                                             ; $5f87: $b3
	adc $9e                                          ; $5f88: $ce $9e
	inc bc                                           ; $5f8a: $03
	and b                                            ; $5f8b: $a0
	ld b, e                                          ; $5f8c: $43
	and b                                            ; $5f8d: $a0
	ld a, a                                          ; $5f8e: $7f
	cp $97                                           ; $5f8f: $fe $97
	cp c                                             ; $5f91: $b9
	ld b, [hl]                                       ; $5f92: $46
	rst SubAFromDE                                          ; $5f93: $df
	jr c, @+$01                                      ; $5f94: $38 $ff

	add e                                            ; $5f96: $83
	dec a                                            ; $5f97: $3d
	ld a, [hl]                                       ; $5f98: $7e
	ld h, a                                          ; $5f99: $67
	and b                                            ; $5f9a: $a0
	sub h                                            ; $5f9b: $94
	ld [hl], b                                       ; $5f9c: $70
	ld b, b                                          ; $5f9d: $40
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	ld [bc], a                                       ; $5fa0: $02
	rlca                                             ; $5fa1: $07
	inc [hl]                                         ; $5fa2: $34
	ld a, b                                          ; $5fa3: $78
	ld bc, $0f00                                     ; $5fa4: $01 $00 $0f
	db $fc                                           ; $5fa7: $fc
	adc d                                            ; $5fa8: $8a
	add b                                            ; $5fa9: $80
	nop                                              ; $5faa: $00
	ret nz                                           ; $5fab: $c0

	add b                                            ; $5fac: $80
	ldh [$c0], a                                     ; $5fad: $e0 $c0
	ld hl, sp-$10                                    ; $5faf: $f8 $f0
	db $fd                                           ; $5fb1: $fd
	rst $38                                          ; $5fb2: $ff
	rst SubAFromDE                                          ; $5fb3: $df
	sbc $9e                                          ; $5fb4: $de $9e
	sbc h                                            ; $5fb6: $9c
	sbc h                                            ; $5fb7: $9c
	sub h                                            ; $5fb8: $94
	ld hl, $6100                                     ; $5fb9: $21 $00 $61
	ret nz                                           ; $5fbc: $c0

	add c                                            ; $5fbd: $81
	ld a, e                                          ; $5fbe: $7b
	and [hl]                                         ; $5fbf: $a6
	adc b                                            ; $5fc0: $88
	add e                                            ; $5fc1: $83
	nop                                              ; $5fc2: $00
	ld b, $01                                        ; $5fc3: $06 $01
	dec b                                            ; $5fc5: $05
	inc bc                                           ; $5fc6: $03
	dec bc                                           ; $5fc7: $0b
	rlca                                             ; $5fc8: $07
	rla                                              ; $5fc9: $17
	inc c                                            ; $5fca: $0c
	ccf                                              ; $5fcb: $3f
	jr @+$81                                         ; $5fcc: $18 $7f

	jr nz, @+$01                                     ; $5fce: $20 $ff

	ld b, b                                          ; $5fd0: $40
	cp $80                                           ; $5fd1: $fe $80
	db $fc                                           ; $5fd3: $fc
	nop                                              ; $5fd4: $00
	inc e                                            ; $5fd5: $1c
	nop                                              ; $5fd6: $00
	add hl, de                                       ; $5fd7: $19
	ld [hl], e                                       ; $5fd8: $73
	ret nz                                           ; $5fd9: $c0

	sbc c                                            ; $5fda: $99
	ld bc, $3507                                     ; $5fdb: $01 $07 $35
	ld a, e                                          ; $5fde: $7b
	ld e, $1e                                        ; $5fdf: $1e $1e
	ld l, a                                          ; $5fe1: $6f
	cp [hl]                                          ; $5fe2: $be
	inc sp                                           ; $5fe3: $33
	ret nz                                           ; $5fe4: $c0

	sbc [hl]                                         ; $5fe5: $9e
	add b                                            ; $5fe6: $80
	ld a, e                                          ; $5fe7: $7b
	ld e, a                                          ; $5fe8: $5f
	sbc l                                            ; $5fe9: $9d
	nop                                              ; $5fea: $00
	add [hl]                                         ; $5feb: $86
	rla                                              ; $5fec: $17
	ret nz                                           ; $5fed: $c0

	sbc c                                            ; $5fee: $99
	ld h, e                                          ; $5fef: $63
	ccf                                              ; $5ff0: $3f
	ccf                                              ; $5ff1: $3f
	rra                                              ; $5ff2: $1f
	ld c, $00                                        ; $5ff3: $0e $00
	ld a, e                                          ; $5ff5: $7b
	inc a                                            ; $5ff6: $3c
	scf                                              ; $5ff7: $37
	ret nz                                           ; $5ff8: $c0

	sbc e                                            ; $5ff9: $9b
	pop bc                                           ; $5ffa: $c1
	ret nz                                           ; $5ffb: $c0

	jp Jump_073_7780                                 ; $5ffc: $c3 $80 $77


	add b                                            ; $5fff: $80
	sbc [hl]                                         ; $6000: $9e
	add l                                            ; $6001: $85
	rrca                                             ; $6002: $0f
	ret nz                                           ; $6003: $c0

	ld a, a                                          ; $6004: $7f
	cp a                                             ; $6005: $bf
	sbc e                                            ; $6006: $9b
	ld b, $00                                        ; $6007: $06 $00
	nop                                              ; $6009: $00
	add a                                            ; $600a: $87
	inc sp                                           ; $600b: $33
	ret nz                                           ; $600c: $c0

	sbc [hl]                                         ; $600d: $9e
	add e                                            ; $600e: $83
	ld [hl], e                                       ; $600f: $73
	ret nz                                           ; $6010: $c0

	scf                                              ; $6011: $37
	add b                                            ; $6012: $80
	ld h, a                                          ; $6013: $67
	add d                                            ; $6014: $82
	cp $9d                                           ; $6015: $fe $9d
	inc bc                                           ; $6017: $03
	rrca                                             ; $6018: $0f
	sbc $18                                          ; $6019: $de $18
	ld [hl], e                                       ; $601b: $73
	ld hl, sp-$22                                    ; $601c: $f8 $de
	rra                                              ; $601e: $1f
	sub l                                            ; $601f: $95
	jr z, jr_073_604e                                ; $6020: $28 $2c

	ld h, h                                          ; $6022: $64
	ld b, h                                          ; $6023: $44
	ld b, [hl]                                       ; $6024: $46
	ld b, d                                          ; $6025: $42
	add e                                            ; $6026: $83
	add c                                            ; $6027: $81
	ccf                                              ; $6028: $3f
	ccf                                              ; $6029: $3f
	db $dd                                           ; $602a: $dd
	ld a, a                                          ; $602b: $7f
	rst SubAFromDE                                          ; $602c: $df
	rst $38                                          ; $602d: $ff
	rst SubAFromDE                                          ; $602e: $df
	ld bc, $028d                                     ; $602f: $01 $8d $02
	inc bc                                           ; $6032: $03
	inc bc                                           ; $6033: $03
	dec b                                            ; $6034: $05
	dec b                                            ; $6035: $05
	inc b                                            ; $6036: $04
	ld bc, $0301                                     ; $6037: $01 $01 $03
	ld [bc], a                                       ; $603a: $02
	ld [bc], a                                       ; $603b: $02
	ld b, $06                                        ; $603c: $06 $06
	rlca                                             ; $603e: $07
	inc b                                            ; $603f: $04
	inc bc                                           ; $6040: $03
	inc bc                                           ; $6041: $03
	ld [bc], a                                       ; $6042: $02
	sbc $01                                          ; $6043: $de $01
	sbc d                                            ; $6045: $9a
	nop                                              ; $6046: $00
	rlca                                             ; $6047: $07
	ld [bc], a                                       ; $6048: $02
	ld [bc], a                                       ; $6049: $02
	inc bc                                           ; $604a: $03
	ld [hl], e                                       ; $604b: $73
	ld hl, sp-$64                                    ; $604c: $f8 $9c

jr_073_604e:
	ccf                                              ; $604e: $3f

Jump_073_604f:
	rst $38                                          ; $604f: $ff
	jp Jump_073_7bfd                                 ; $6050: $c3 $fd $7b


	ld hl, sp-$24                                    ; $6053: $f8 $dc
	rst $38                                          ; $6055: $ff
	sbc [hl]                                         ; $6056: $9e
	nop                                              ; $6057: $00
	ld a, e                                          ; $6058: $7b
	db $ec                                           ; $6059: $ec
	db $fd                                           ; $605a: $fd
	reti                                             ; $605b: $d9


	rst $38                                          ; $605c: $ff
	ldh a, [$80]                                     ; $605d: $f0 $80
	add hl, bc                                       ; $605f: $09
	ld d, $36                                        ; $6060: $16 $36
	ld b, h                                          ; $6062: $44
	ld l, h                                          ; $6063: $6c
	xor c                                            ; $6064: $a9
	push bc                                          ; $6065: $c5
	nop                                              ; $6066: $00
	add hl, bc                                       ; $6067: $09
	rra                                              ; $6068: $1f
	dec hl                                           ; $6069: $2b
	ld a, e                                          ; $606a: $7b
	ld d, e                                          ; $606b: $53
	sub $ba                                          ; $606c: $d6 $ba
	ret                                              ; $606e: $c9


Jump_073_606f:
	and c                                            ; $606f: $a1
	sub b                                            ; $6070: $90
	ld a, [bc]                                       ; $6071: $0a
	ld [bc], a                                       ; $6072: $02
	and [hl]                                         ; $6073: $a6
	dec hl                                           ; $6074: $2b
	ld e, l                                          ; $6075: $5d
	ld [hl-], a                                      ; $6076: $32

Call_073_6077:
	ld d, d                                          ; $6077: $52
	ld b, e                                          ; $6078: $43
	pop bc                                           ; $6079: $c1
	ret                                              ; $607a: $c9


	ld c, c                                          ; $607b: $49
	ld b, h                                          ; $607c: $44
	ld [hl+], a                                      ; $607d: $22
	add b                                            ; $607e: $80
	cpl                                              ; $607f: $2f
	and a                                            ; $6080: $a7
	db $e4                                           ; $6081: $e4
	or e                                             ; $6082: $b3
	db $fc                                           ; $6083: $fc
	ldh a, [rSVBK]                                   ; $6084: $f0 $70
	ret nc                                           ; $6086: $d0

	sub c                                            ; $6087: $91
	ret c                                            ; $6088: $d8

	ld a, a                                          ; $6089: $7f
	ld a, a                                          ; $608a: $7f
	ld a, h                                          ; $608b: $7c
	and b                                            ; $608c: $a0
	ldh [$b0], a                                     ; $608d: $e0 $b0
	ldh a, [$f0]                                     ; $608f: $f0 $f0
	ld [hl], b                                       ; $6091: $70
	ld [hl], a                                       ; $6092: $77
	scf                                              ; $6093: $37
	ld sp, $7973                                     ; $6094: $31 $73 $79
	rst $38                                          ; $6097: $ff
	rst AddAOntoHL                                          ; $6098: $ef
	ld l, a                                          ; $6099: $6f
	ld l, e                                          ; $609a: $6b
	jr z, jr_073_60db                                ; $609b: $28 $3e

	ld e, l                                          ; $609d: $5d
	adc a                                            ; $609e: $8f
	ld d, [hl]                                       ; $609f: $56
	ld a, b                                          ; $60a0: $78
	ld a, h                                          ; $60a1: $7c
	ld a, h                                          ; $60a2: $7c
	inc a                                            ; $60a3: $3c
	inc e                                            ; $60a4: $1c
	ld c, $06                                        ; $60a5: $0e $06
	inc bc                                           ; $60a7: $03
	ld c, a                                          ; $60a8: $4f
	ld c, e                                          ; $60a9: $4b
	ld b, a                                          ; $60aa: $47
	daa                                              ; $60ab: $27
	inc de                                           ; $60ac: $13
	add hl, bc                                       ; $60ad: $09
	rlca                                             ; $60ae: $07
	ld a, e                                          ; $60af: $7b
	ld [hl], h                                       ; $60b0: $74
	ei                                               ; $60b1: $fb
	ld h, a                                          ; $60b2: $67
	ld hl, sp+$7b                                    ; $60b3: $f8 $7b
	or $9a                                           ; $60b5: $f6 $9a
	inc bc                                           ; $60b7: $03
	rlca                                             ; $60b8: $07
	rrca                                             ; $60b9: $0f
	ccf                                              ; $60ba: $3f
	db $fd                                           ; $60bb: $fd
	ld l, e                                          ; $60bc: $6b
	ld hl, sp-$6a                                    ; $60bd: $f8 $96
	rst $38                                          ; $60bf: $ff
	db $fd                                           ; $60c0: $fd
	ld sp, hl                                        ; $60c1: $f9
	ld sp, hl                                        ; $60c2: $f9
	pop af                                           ; $60c3: $f1
	ld de, $3010                                     ; $60c4: $11 $10 $30
	ld [hl], b                                       ; $60c7: $70
	reti                                             ; $60c8: $d9


	rst $38                                          ; $60c9: $ff
	rst SubAFromDE                                          ; $60ca: $df
	ldh a, [$de]                                     ; $60cb: $f0 $de
	ldh [$9c], a                                     ; $60cd: $e0 $9c
	ld h, b                                          ; $60cf: $60
	jr nz, @+$22                                     ; $60d0: $20 $20

	ld c, e                                          ; $60d2: $4b
	ld h, b                                          ; $60d3: $60
	ld h, a                                          ; $60d4: $67
	jp nz, $0180                                     ; $60d5: $c2 $80 $01

	sbc [hl]                                         ; $60d8: $9e
	ld a, [hl]                                       ; $60d9: $7e
	ld d, d                                          ; $60da: $52

jr_073_60db:
	inc [hl]                                         ; $60db: $34
	dec [hl]                                         ; $60dc: $35
	and c                                            ; $60dd: $a1
	add c                                            ; $60de: $81
	adc e                                            ; $60df: $8b
	sbc a                                            ; $60e0: $9f
	push hl                                          ; $60e1: $e5
	db $ed                                           ; $60e2: $ed
	set 1, d                                         ; $60e3: $cb $ca
	ld e, [hl]                                       ; $60e5: $5e
	ld a, [hl]                                       ; $60e6: $7e
	ld [hl], h                                       ; $60e7: $74
	sub c                                            ; $60e8: $91
	ld d, l                                          ; $60e9: $55
	ld d, d                                          ; $60ea: $52
	ld h, d                                          ; $60eb: $62
	xor h                                            ; $60ec: $ac
	inc h                                            ; $60ed: $24
	halt                                             ; $60ee: $76
	or e                                             ; $60ef: $b3
	ld h, b                                          ; $60f0: $60
	jr nz, jr_073_6118                               ; $60f1: $20 $25

	dec d                                            ; $60f3: $15
	inc de                                           ; $60f4: $13
	sbc e                                            ; $60f5: $9b
	adc l                                            ; $60f6: $8d
	adc l                                            ; $60f7: $8d
	ld c, a                                          ; $60f8: $4f
	ld [hl+], a                                      ; $60f9: $22
	sub [hl]                                         ; $60fa: $96
	ld a, l                                          ; $60fb: $7d
	jp hl                                            ; $60fc: $e9


	ld e, e                                          ; $60fd: $5b
	ld e, e                                          ; $60fe: $5b
	ld a, e                                          ; $60ff: $7b
	ld e, e                                          ; $6100: $5b
	rst $38                                          ; $6101: $ff
	rst $38                                          ; $6102: $ff
	ld l, a                                          ; $6103: $6f
	rst SubAFromDE                                          ; $6104: $df
	ld e, d                                          ; $6105: $5a
	ld e, d                                          ; $6106: $5a
	ld e, [hl]                                       ; $6107: $5e
	ld a, [hl]                                       ; $6108: $7e
	ldh [$c1], a                                     ; $6109: $e0 $c1
	sbc [hl]                                         ; $610b: $9e
	ld hl, sp-$23                                    ; $610c: $f8 $dd
	ldh a, [$df]                                     ; $610e: $f0 $df
	ld hl, sp-$63                                    ; $6110: $f8 $9d
	db $fc                                           ; $6112: $fc
	rst AddAOntoHL                                          ; $6113: $ef
	db $dd                                           ; $6114: $dd
	rst SubAFromDE                                          ; $6115: $df
	rst SubAFromDE                                          ; $6116: $df
	rst GetHLinHL                                          ; $6117: $cf

jr_073_6118:
	sub l                                            ; $6118: $95
	rst JumpTable                                          ; $6119: $c7
	rst $38                                          ; $611a: $ff
	rst $38                                          ; $611b: $ff
	cp $f8                                           ; $611c: $fe $f8
	db $ec                                           ; $611e: $ec
	adc $c7                                          ; $611f: $ce $c7
	jp $dac7                                         ; $6121: $c3 $c7 $da


	ret nz                                           ; $6124: $c0

	ei                                               ; $6125: $fb
	sbc l                                            ; $6126: $9d
	db $10                                           ; $6127: $10
	ld a, $6b                                        ; $6128: $3e $6b
	ld hl, sp-$72                                    ; $612a: $f8 $8e
	ld l, $f9                                        ; $612c: $2e $f9
	ldh a, [c]                                       ; $612e: $f2
	ld [hl], e                                       ; $612f: $73
	ld [hl], e                                       ; $6130: $73
	ld d, d                                          ; $6131: $52
	ld d, d                                          ; $6132: $52
	dec b                                            ; $6133: $05
	dec h                                            ; $6134: $25
	rst GetHLinHL                                          ; $6135: $cf
	adc l                                            ; $6136: $8d
	adc h                                            ; $6137: $8c
	adc h                                            ; $6138: $8c
	xor l                                            ; $6139: $ad
	xor l                                            ; $613a: $ad
	ld a, [$feda]                                    ; $613b: $fa $da $fe
	rst SubAFromDE                                          ; $613e: $df
	add b                                            ; $613f: $80
	sub a                                            ; $6140: $97
	adc b                                            ; $6141: $88
	cp h                                             ; $6142: $bc
	di                                               ; $6143: $f3
	jp c, $b690                                      ; $6144: $da $90 $b6

	xor [hl]                                         ; $6147: $ae
	db $ed                                           ; $6148: $ed
	sbc $ff                                          ; $6149: $de $ff
	adc a                                            ; $614b: $8f
	ld e, b                                          ; $614c: $58
	db $ec                                           ; $614d: $ec
	and $97                                          ; $614e: $e6 $97
	rla                                              ; $6150: $17
	rla                                              ; $6151: $17
	ld c, $0c                                        ; $6152: $0e $0c
	db $fd                                           ; $6154: $fd
	cp $3f                                           ; $6155: $fe $3f
	dec d                                            ; $6157: $15
	dec d                                            ; $6158: $15
	inc e                                            ; $6159: $1c
	ld [$e008], sp                                   ; $615a: $08 $08 $e0
	pop bc                                           ; $615d: $c1
	sub [hl]                                         ; $615e: $96
	ld a, $13                                        ; $615f: $3e $13
	ld sp, $1fd1                                     ; $6161: $31 $d1 $1f
	ccf                                              ; $6164: $3f
	ld a, a                                          ; $6165: $7f
	ei                                               ; $6166: $fb
	cp $dd                                           ; $6167: $fe $dd
	rst $38                                          ; $6169: $ff
	sbc d                                            ; $616a: $9a
	ld hl, sp-$12                                    ; $616b: $f8 $ee
	xor c                                            ; $616d: $a9
	rst $38                                          ; $616e: $ff
	xor a                                            ; $616f: $af
	call c, $9c29                                    ; $6170: $dc $29 $9c
	xor c                                            ; $6173: $a9
	add hl, hl                                       ; $6174: $29
	cpl                                              ; $6175: $2f
	db $db                                           ; $6176: $db
	add hl, hl                                       ; $6177: $29
	ld a, [$c89e]                                    ; $6178: $fa $9e $c8
	ld h, a                                          ; $617b: $67
	ld hl, sp-$71                                    ; $617c: $f8 $8f
	ld a, $d5                                        ; $617e: $3e $d5
	ld h, b                                          ; $6180: $60
	ei                                               ; $6181: $fb
	jp c, Jump_073_6741                              ; $6182: $da $41 $67

	cpl                                              ; $6185: $2f
	or $bf                                           ; $6186: $f6 $bf
	rst SubAFromDE                                          ; $6188: $df
	ld h, $27                                        ; $6189: $26 $27
	cp a                                             ; $618b: $bf
	sbc c                                            ; $618c: $99
	reti                                             ; $618d: $d9


	ld [hl], a                                       ; $618e: $77
	ld a, a                                          ; $618f: $7f
	sbc d                                            ; $6190: $9a
	dec b                                            ; $6191: $05
	add hl, bc                                       ; $6192: $09
	ld [de], a                                       ; $6193: $12
	ld [hl], $fb                                     ; $6194: $36 $fb
	sbc $dd                                          ; $6196: $de $dd
	sbc [hl]                                         ; $6198: $9e
	sbc a                                            ; $6199: $9f
	ld [hl], l                                       ; $619a: $75
	call c, $e795                                    ; $619b: $dc $95 $e7

Call_073_619e:
	ld b, e                                          ; $619e: $43
	ld h, e                                          ; $619f: $63
	ld h, e                                          ; $61a0: $63
	and e                                            ; $61a1: $a3
	and e                                            ; $61a2: $a3
	ld b, e                                          ; $61a3: $43
	rst GetHLinHL                                          ; $61a4: $cf
	add b                                            ; $61a5: $80
	ld b, b                                          ; $61a6: $40
	db $dd                                           ; $61a7: $dd
	ret nz                                           ; $61a8: $c0

	sbc [hl]                                         ; $61a9: $9e
	ld b, b                                          ; $61aa: $40
	ldh [$c1], a                                     ; $61ab: $e0 $c1
	ld a, [hl]                                       ; $61ad: $7e
	rst SubAFromDE                                          ; $61ae: $df
	sbc d                                            ; $61af: $9a
	ldh [rP1], a                                     ; $61b0: $e0 $00
	nop                                              ; $61b2: $00
	ldh [$f8], a                                     ; $61b3: $e0 $f8
	jp c, $9aff                                      ; $61b5: $da $ff $9a

	rst SubAFromDE                                          ; $61b8: $df
	ld b, a                                          ; $61b9: $47
	rst SubAFromDE                                          ; $61ba: $df
	ld b, a                                          ; $61bb: $47
	ld b, c                                          ; $61bc: $41
	call nc, $ef40                                   ; $61bd: $d4 $40 $ef
	sbc c                                            ; $61c0: $99
	add b                                            ; $61c1: $80
	ld h, b                                          ; $61c2: $60
	ret nc                                           ; $61c3: $d0

	adc b                                            ; $61c4: $88
	sbc h                                            ; $61c5: $9c
	ld e, d                                          ; $61c6: $5a
	ld a, e                                          ; $61c7: $7b
	ld hl, sp-$6e                                    ; $61c8: $f8 $92
	ldh [rSVBK], a                                   ; $61ca: $e0 $70
	ld a, b                                          ; $61cc: $78
	ld l, h                                          ; $61cd: $6c
	xor $ca                                          ; $61ce: $ee $ca
	ld c, c                                          ; $61d0: $49
	add hl, sp                                       ; $61d1: $39
	ld hl, $5222                                     ; $61d2: $21 $22 $52
	sbc [hl]                                         ; $61d5: $9e
	ld a, [hl+]                                      ; $61d6: $2a
	ld [hl], a                                       ; $61d7: $77
	jr nz, @-$21                                     ; $61d8: $20 $dd

	cp $8b                                           ; $61da: $fe $8b
	jp z, $e5d5                                      ; $61dc: $ca $d5 $e5

	ld [$eed6], a                                    ; $61df: $ea $d6 $ee
	ld a, [$fee2]                                    ; $61e2: $fa $e2 $fe
	ld a, a                                          ; $61e5: $7f
	ccf                                              ; $61e6: $3f
	ld a, $7e                                        ; $61e7: $3e $7e
	ld a, [hl]                                       ; $61e9: $7e

jr_073_61ea:
	ld a, $3e                                        ; $61ea: $3e $3e
	db $f4                                           ; $61ec: $f4
	db $f4                                           ; $61ed: $f4
	call c, $defe                                    ; $61ee: $dc $fe $de
	or $9a                                           ; $61f1: $f6 $9a
	db $ec                                           ; $61f3: $ec
	inc e                                            ; $61f4: $1c
	inc e                                            ; $61f5: $1c
	inc a                                            ; $61f6: $3c
	ld [hl+], a                                      ; $61f7: $22
	sbc $2a                                          ; $61f8: $de $2a
	sbc c                                            ; $61fa: $99
	inc [hl]                                         ; $61fb: $34
	call c, $f0f8                                    ; $61fc: $dc $f8 $f0
	ldh [$c0], a                                     ; $61ff: $e0 $c0
	sbc $80                                          ; $6201: $de $80
	sbc e                                            ; $6203: $9b
	ld h, h                                          ; $6204: $64
	ld c, b                                          ; $6205: $48
	ld d, b                                          ; $6206: $50
	ld h, b                                          ; $6207: $60
	ld [hl], a                                       ; $6208: $77
	ld hl, sp-$23                                    ; $6209: $f8 $dd
	add b                                            ; $620b: $80
	sbc [hl]                                         ; $620c: $9e
	ldh [$7a], a                                     ; $620d: $e0 $7a
	ccf                                              ; $620f: $3f
	ld [hl], e                                       ; $6210: $73
	ld hl, sp-$64                                    ; $6211: $f8 $9c
	sub b                                            ; $6213: $90
	add sp, -$38                                     ; $6214: $e8 $c8
	ld [hl], d                                       ; $6216: $72
	ret c                                            ; $6217: $d8

	sbc $ff                                          ; $6218: $de $ff
	sbc d                                            ; $621a: $9a
	adc [hl]                                         ; $621b: $8e
	rrca                                             ; $621c: $0f
	rra                                              ; $621d: $1f
	daa                                              ; $621e: $27
	ld b, a                                          ; $621f: $47
	sbc $83                                          ; $6220: $de $83
	db $dd                                           ; $6222: $dd
	rst $38                                          ; $6223: $ff
	sbc h                                            ; $6224: $9c
	rst FarCall                                          ; $6225: $f7
	rst SubAFromBC                                          ; $6226: $e7
	rst SubAFromBC                                          ; $6227: $e7
	ld [hl], a                                       ; $6228: $77
	push af                                          ; $6229: $f5
	call c, $9d83                                    ; $622a: $dc $83 $9d
	jp nz, $db86                                     ; $622d: $c2 $86 $db

	inc b                                            ; $6230: $04
	reti                                             ; $6231: $d9


	rlca                                             ; $6232: $07
	rst AddAOntoHL                                          ; $6233: $ef
	ld l, a                                          ; $6234: $6f
	inc sp                                           ; $6235: $33
	ld e, e                                          ; $6236: $5b
	dec hl                                           ; $6237: $2b
	rst SubAFromDE                                          ; $6238: $df
	rst $38                                          ; $6239: $ff
	sbc h                                            ; $623a: $9c
	cp a                                             ; $623b: $bf
	ccf                                              ; $623c: $3f
	rra                                              ; $623d: $1f
	reti                                             ; $623e: $d9


	rst $38                                          ; $623f: $ff
	sbc d                                            ; $6240: $9a
	rra                                              ; $6241: $1f
	rrca                                             ; $6242: $0f
	rlca                                             ; $6243: $07

Jump_073_6244:
	rlca                                             ; $6244: $07
	inc bc                                           ; $6245: $03
	ld a, b                                          ; $6246: $78
	add [hl]                                         ; $6247: $86
	jr nz, jr_073_61ea                               ; $6248: $20 $a0

	db $fd                                           ; $624a: $fd
	sbc l                                            ; $624b: $9d
	ldh a, [$fe]                                     ; $624c: $f0 $fe
	ld l, a                                          ; $624e: $6f
	add sp, $7b                                      ; $624f: $e8 $7b
	ld hl, sp-$24                                    ; $6251: $f8 $dc
	rst $38                                          ; $6253: $ff
	sbc [hl]                                         ; $6254: $9e
	inc e                                            ; $6255: $1c
	ld c, h                                          ; $6256: $4c
	ld [hl], b                                       ; $6257: $70
	ld a, h                                          ; $6258: $7c
	and $9d                                          ; $6259: $e6 $9d
	add a                                            ; $625b: $87
	rst GetHLinHL                                          ; $625c: $cf
	inc de                                           ; $625d: $13
	ret nz                                           ; $625e: $c0

	ld a, e                                          ; $625f: $7b
	add e                                            ; $6260: $83
	ld h, e                                          ; $6261: $63
	ld [hl], e                                       ; $6262: $73
	rst SubAFromDE                                          ; $6263: $df
	db $fc                                           ; $6264: $fc
	sbc d                                            ; $6265: $9a
	cp $16                                           ; $6266: $fe $16
	ld [de], a                                       ; $6268: $12
	ld [de], a                                       ; $6269: $12
	inc hl                                           ; $626a: $23
	ld [hl], a                                       ; $626b: $77
	ld hl, sp-$22                                    ; $626c: $f8 $de
	cp $9b                                           ; $626e: $fe $9b
	rst $38                                          ; $6270: $ff
	inc hl                                           ; $6271: $23
	ld h, c                                          ; $6272: $61
	ld b, c                                          ; $6273: $41
	sbc $c1                                          ; $6274: $de $c1
	rst SubAFromDE                                          ; $6276: $df
	add c                                            ; $6277: $81
	reti                                             ; $6278: $d9


	rst $38                                          ; $6279: $ff
	inc e                                            ; $627a: $1c
	nop                                              ; $627b: $00
	sub b                                            ; $627c: $90
	xor d                                            ; $627d: $aa
	adc b                                            ; $627e: $88
	xor d                                            ; $627f: $aa
	adc b                                            ; $6280: $88
	nop                                              ; $6281: $00
	call z, $22aa                                    ; $6282: $cc $aa $22
	adc b                                            ; $6285: $88
	nop                                              ; $6286: $00
	sbc c                                            ; $6287: $99
	sbc c                                            ; $6288: $99
	inc sp                                           ; $6289: $33
	adc b                                            ; $628a: $88
	ld de, $fb63                                     ; $628b: $11 $63 $fb
	rst SubAFromDE                                          ; $628e: $df
	sbc c                                            ; $628f: $99
	ld a, e                                          ; $6290: $7b
	db $ec                                           ; $6291: $ec
	ld [hl], a                                       ; $6292: $77
	cp $9e                                           ; $6293: $fe $9e
	xor d                                            ; $6295: $aa
	ld c, c                                          ; $6296: $49
	ld bc, $658a                                     ; $6297: $01 $8a $65
	ld h, a                                          ; $629a: $67
	inc hl                                           ; $629b: $23
	inc hl                                           ; $629c: $23
	nop                                              ; $629d: $00
	ldh [$f0], a                                     ; $629e: $e0 $f0
	cp $ee                                           ; $62a0: $fe $ee
	rra                                              ; $62a2: $1f
	db $fd                                           ; $62a3: $fd
	ld a, [hl]                                       ; $62a4: $7e
	ld c, d                                          ; $62a5: $4a
	rst AddAOntoHL                                          ; $62a6: $ef
	add hl, hl                                       ; $62a7: $29
	cp d                                             ; $62a8: $ba
	ld a, [hl]                                       ; $62a9: $7e
	nop                                              ; $62aa: $00
	rst $38                                          ; $62ab: $ff
	nop                                              ; $62ac: $00
	ld a, h                                          ; $62ad: $7c
	or $86                                           ; $62ae: $f6 $86
	inc c                                            ; $62b0: $0c
	ld [$8098], sp                                   ; $62b1: $08 $98 $80
	inc de                                           ; $62b4: $13
	nop                                              ; $62b5: $00
	inc de                                           ; $62b6: $13
	rlca                                             ; $62b7: $07
	rrca                                             ; $62b8: $0f
	rra                                              ; $62b9: $1f
	sub e                                            ; $62ba: $93
	ld c, $9a                                        ; $62bb: $0e $9a
	dec b                                            ; $62bd: $05
	ccf                                              ; $62be: $3f
	nop                                              ; $62bf: $00
	daa                                              ; $62c0: $27
	nop                                              ; $62c1: $00
	ld hl, $2000                                     ; $62c2: $21 $00 $20
	nop                                              ; $62c5: $00
	jr nc, jr_073_62c8                               ; $62c6: $30 $00

jr_073_62c8:
	jr c, jr_073_6345                                ; $62c8: $38 $7b

	jp c, $388c                                      ; $62ca: $da $8c $38

	ld b, b                                          ; $62cd: $40
	ld d, b                                          ; $62ce: $50
	jr nz, jr_073_6314                               ; $62cf: $20 $43

	nop                                              ; $62d1: $00
	inc bc                                           ; $62d2: $03
	inc e                                            ; $62d3: $1c
	ld a, a                                          ; $62d4: $7f
	rst $38                                          ; $62d5: $ff
	adc a                                            ; $62d6: $8f
	ldh a, [$fe]                                     ; $62d7: $f0 $fe
	rst $38                                          ; $62d9: $ff
	ld d, l                                          ; $62da: $55
	jp c, Jump_073_7067                              ; $62db: $da $67 $70

	db $e3                                           ; $62de: $e3
	ld a, e                                          ; $62df: $7b
	jp nz, $ef9c                                     ; $62e0: $c2 $9c $ef

	nop                                              ; $62e3: $00
	rrca                                             ; $62e4: $0f
	ld a, e                                          ; $62e5: $7b
	cp $93                                           ; $62e6: $fe $93
	rra                                              ; $62e8: $1f
	nop                                              ; $62e9: $00
	rla                                              ; $62ea: $17
	nop                                              ; $62eb: $00
	inc de                                           ; $62ec: $13
	inc b                                            ; $62ed: $04
	scf                                              ; $62ee: $37
	add hl, bc                                       ; $62ef: $09
	ccf                                              ; $62f0: $3f
	pop bc                                           ; $62f1: $c1
	ccf                                              ; $62f2: $3f
	jp $fe7b                                         ; $62f3: $c3 $7b $fe


	add [hl]                                         ; $62f6: $86
	rst JumpTable                                          ; $62f7: $c7
	ld a, a                                          ; $62f8: $7f
	adc [hl]                                         ; $62f9: $8e
	ld a, a                                          ; $62fa: $7f
	sbc h                                            ; $62fb: $9c
	rst $38                                          ; $62fc: $ff
	jr @+$01                                         ; $62fd: $18 $ff

	jr nz, @+$01                                     ; $62ff: $20 $ff

	ld b, b                                          ; $6301: $40
	rst $38                                          ; $6302: $ff
	add e                                            ; $6303: $83
	db $fc                                           ; $6304: $fc
	rrca                                             ; $6305: $0f
	ldh a, [$7f]                                     ; $6306: $f0 $7f
	add b                                            ; $6308: $80
	rst $38                                          ; $6309: $ff
	nop                                              ; $630a: $00
	rst $38                                          ; $630b: $ff
	inc bc                                           ; $630c: $03
	rst $38                                          ; $630d: $ff
	ccf                                              ; $630e: $3f
	rst $38                                          ; $630f: $ff
	ld e, a                                          ; $6310: $5f
	add b                                            ; $6311: $80
	ld a, a                                          ; $6312: $7f
	rst AddAOntoHL                                          ; $6313: $ef

jr_073_6314:
	sbc [hl]                                         ; $6314: $9e
	sbc $1b                                          ; $6315: $de $1b
	add b                                            ; $6317: $80
	sub [hl]                                         ; $6318: $96
	ld c, $1f                                        ; $6319: $0e $1f
	sub e                                            ; $631b: $93
	dec c                                            ; $631c: $0d
	sbc d                                            ; $631d: $9a
	rlca                                             ; $631e: $07
	ccf                                              ; $631f: $3f
	nop                                              ; $6320: $00
	cpl                                              ; $6321: $2f
	dec hl                                           ; $6322: $2b
	add b                                            ; $6323: $80
	ld a, a                                          ; $6324: $7f
	jp z, $fd9d                                      ; $6325: $ca $9d $fd

	sbc $37                                          ; $6328: $de $37
	add b                                            ; $632a: $80
	ld [hl], e                                       ; $632b: $73
	and b                                            ; $632c: $a0
	sub h                                            ; $632d: $94
	ret nz                                           ; $632e: $c0

	ldh [$fe], a                                     ; $632f: $e0 $fe
	sbc $3f                                          ; $6331: $de $3f
	rst $38                                          ; $6333: $ff
	nop                                              ; $6334: $00
	cp $ff                                           ; $6335: $fe $ff
	ld l, e                                          ; $6337: $6b
	db $fc                                           ; $6338: $fc
	rla                                              ; $6339: $17
	and b                                            ; $633a: $a0
	sbc [hl]                                         ; $633b: $9e
	sbc c                                            ; $633c: $99
	dec hl                                           ; $633d: $2b
	and b                                            ; $633e: $a0
	sbc h                                            ; $633f: $9c
	cp a                                             ; $6340: $bf
	ld a, a                                          ; $6341: $7f
	rst GetHLinHL                                          ; $6342: $cf
	ld [hl], a                                       ; $6343: $77
	and b                                            ; $6344: $a0

jr_073_6345:
	sbc h                                            ; $6345: $9c
	cp $47                                           ; $6346: $fe $47
	ld hl, sp+$2b                                    ; $6348: $f8 $2b
	and b                                            ; $634a: $a0
	ld a, a                                          ; $634b: $7f
	sbc a                                            ; $634c: $9f
	sub a                                            ; $634d: $97
	db $fc                                           ; $634e: $fc
	ld a, $ff                                        ; $634f: $3e $ff
	db $fd                                           ; $6351: $fd
	ld [bc], a                                       ; $6352: $02
	cp $87                                           ; $6353: $fe $87
	ld a, e                                          ; $6355: $7b
	dec hl                                           ; $6356: $2b
	and b                                            ; $6357: $a0
	sbc l                                            ; $6358: $9d
	dec d                                            ; $6359: $15
	inc bc                                           ; $635a: $03
	ld a, e                                          ; $635b: $7b
	and b                                            ; $635c: $a0
	sbc h                                            ; $635d: $9c
	inc c                                            ; $635e: $0c
	sbc a                                            ; $635f: $9f
	inc bc                                           ; $6360: $03
	inc sp                                           ; $6361: $33
	and b                                            ; $6362: $a0
	sbc d                                            ; $6363: $9a
	inc c                                            ; $6364: $0c
	rst SubAFromDE                                          ; $6365: $df
	ccf                                              ; $6366: $3f
	rst SubAFromBC                                          ; $6367: $e7
	ld hl, sp+$7b                                    ; $6368: $f8 $7b
	and b                                            ; $636a: $a0
	sbc l                                            ; $636b: $9d
	ld c, $f7                                        ; $636c: $0e $f7
	dec sp                                           ; $636e: $3b
	and b                                            ; $636f: $a0
	ld a, a                                          ; $6370: $7f
	rst AddAOntoHL                                          ; $6371: $ef
	add h                                            ; $6372: $84
	add e                                            ; $6373: $83
	ld a, l                                          ; $6374: $7d
	ret nz                                           ; $6375: $c0

	cp a                                             ; $6376: $bf
	ld h, b                                          ; $6377: $60
	ld e, a                                          ; $6378: $5f
	jr nc, @+$31                                     ; $6379: $30 $2f

	jr c, jr_073_63b4                                ; $637b: $38 $37

	inc a                                            ; $637d: $3c
	dec hl                                           ; $637e: $2b
	ld a, [hl]                                       ; $637f: $7e
	ld h, l                                          ; $6380: $65
	or a                                             ; $6381: $b7
	ld [$fd93], a                                    ; $6382: $ea $93 $fd
	adc b                                            ; $6385: $88
	rst $38                                          ; $6386: $ff
	rst JumpTable                                          ; $6387: $c7
	rst $38                                          ; $6388: $ff
	ldh [rIE], a                                     ; $6389: $e0 $ff
	ldh a, [rIE]                                     ; $638b: $f0 $ff
	db $fc                                           ; $638d: $fc
	sbc $ff                                          ; $638e: $de $ff
	rst $38                                          ; $6390: $ff
	sbc d                                            ; $6391: $9a
	inc bc                                           ; $6392: $03
	cp $00                                           ; $6393: $fe $00
	nop                                              ; $6395: $00
	ld a, b                                          ; $6396: $78
	ld a, e                                          ; $6397: $7b
	xor [hl]                                         ; $6398: $ae
	ei                                               ; $6399: $fb
	adc a                                            ; $639a: $8f
	ld bc, $c300                                     ; $639b: $01 $00 $c3
	add c                                            ; $639e: $81
	rst $38                                          ; $639f: $ff
	ld a, [hl]                                       ; $63a0: $7e
	add e                                            ; $63a1: $83
	nop                                              ; $63a2: $00
	rst $38                                          ; $63a3: $ff
	rst FarCall                                          ; $63a4: $f7
	inc e                                            ; $63a5: $1c
	inc d                                            ; $63a6: $14
	inc e                                            ; $63a7: $1c
	inc d                                            ; $63a8: $14
	call c, $03d4                                    ; $63a9: $dc $d4 $03
	ret nz                                           ; $63ac: $c0

	sbc c                                            ; $63ad: $99
	nop                                              ; $63ae: $00
	inc sp                                           ; $63af: $33
	adc $fc                                          ; $63b0: $ce $fc
	db $fc                                           ; $63b2: $fc
	ld a, b                                          ; $63b3: $78

jr_073_63b4:
	cp $7f                                           ; $63b4: $fe $7f
	ld l, [hl]                                       ; $63b6: $6e
	cpl                                              ; $63b7: $2f
	ret nz                                           ; $63b8: $c0

	sbc e                                            ; $63b9: $9b
	add c                                            ; $63ba: $81
	ld a, [hl]                                       ; $63bb: $7e
	jp $17bd                                         ; $63bc: $c3 $bd $17


	ret nz                                           ; $63bf: $c0

	sbc c                                            ; $63c0: $99
	ld c, b                                          ; $63c1: $48
	add [hl]                                         ; $63c2: $86
	rst $38                                          ; $63c3: $ff
	cp $fc                                           ; $63c4: $fe $fc
	ld a, b                                          ; $63c6: $78
	ld [hl], a                                       ; $63c7: $77
	cp [hl]                                          ; $63c8: $be
	ld [hl], a                                       ; $63c9: $77
	ld a, h                                          ; $63ca: $7c
	cpl                                              ; $63cb: $2f
	ret nz                                           ; $63cc: $c0

	sbc l                                            ; $63cd: $9d
	ld h, c                                          ; $63ce: $61
	ld e, [hl]                                       ; $63cf: $5e
	rra                                              ; $63d0: $1f
	ret nz                                           ; $63d1: $c0

	sbc c                                            ; $63d2: $99
	ld c, c                                          ; $63d3: $49
	add [hl]                                         ; $63d4: $86
	cp $ff                                           ; $63d5: $fe $ff
	db $fc                                           ; $63d7: $fc
	cp $76                                           ; $63d8: $fe $76
	call z, Call_073_7e77                            ; $63da: $cc $77 $7e
	ld b, a                                          ; $63dd: $47
	ret nz                                           ; $63de: $c0

	ccf                                              ; $63df: $3f
	ld bc, $658c                                     ; $63e0: $01 $8c $65
	ld h, a                                          ; $63e3: $67
	inc hl                                           ; $63e4: $23
	inc hl                                           ; $63e5: $23
	nop                                              ; $63e6: $00
	ldh [$f0], a                                     ; $63e7: $e0 $f0
	cp $ee                                           ; $63e9: $fe $ee
	rra                                              ; $63eb: $1f
	db $fd                                           ; $63ec: $fd
	ld a, [hl]                                       ; $63ed: $7e
	ld c, d                                          ; $63ee: $4a
	rst AddAOntoHL                                          ; $63ef: $ef
	add hl, hl                                       ; $63f0: $29
	cp d                                             ; $63f1: $ba
	ld a, [hl]                                       ; $63f2: $7e
	nop                                              ; $63f3: $00
	inc e                                            ; $63f4: $1c
	db $f4                                           ; $63f5: $f4
	adc h                                            ; $63f6: $8c
	inc c                                            ; $63f7: $0c
	ld [$8098], sp                                   ; $63f8: $08 $98 $80
	inc de                                           ; $63fb: $13
	nop                                              ; $63fc: $00
	inc de                                           ; $63fd: $13
	rlca                                             ; $63fe: $07
	rrca                                             ; $63ff: $0f
	rra                                              ; $6400: $1f
	sub e                                            ; $6401: $93
	ld c, $9a                                        ; $6402: $0e $9a
	dec b                                            ; $6404: $05
	ccf                                              ; $6405: $3f
	nop                                              ; $6406: $00
	inc l                                            ; $6407: $2c
	nop                                              ; $6408: $00
	jr nz, jr_073_6486                               ; $6409: $20 $7b

	cp $82                                           ; $640b: $fe $82
	jr nc, jr_073_640f                               ; $640d: $30 $00

jr_073_640f:
	jr c, jr_073_6411                                ; $640f: $38 $00

jr_073_6411:
	ld a, h                                          ; $6411: $7c
	nop                                              ; $6412: $00
	jr c, jr_073_6455                                ; $6413: $38 $40

	ld d, b                                          ; $6415: $50
	jr nz, jr_073_645b                               ; $6416: $20 $43

	nop                                              ; $6418: $00
	inc bc                                           ; $6419: $03
	inc e                                            ; $641a: $1c
	ld a, a                                          ; $641b: $7f
	rst $38                                          ; $641c: $ff
	adc a                                            ; $641d: $8f
	ldh a, [$fe]                                     ; $641e: $f0 $fe
	rst $38                                          ; $6420: $ff
	ld d, l                                          ; $6421: $55
	jp c, Jump_073_7067                              ; $6422: $da $67 $70

	add e                                            ; $6425: $83
	nop                                              ; $6426: $00
	rlca                                             ; $6427: $07
	nop                                              ; $6428: $00
	rrca                                             ; $6429: $0f
	ld [hl], e                                       ; $642a: $73
	cp $9e                                           ; $642b: $fe $9e
	rra                                              ; $642d: $1f
	ld [hl], e                                       ; $642e: $73
	cp $99                                           ; $642f: $fe $99
	ccf                                              ; $6431: $3f
	ld bc, $c13f                                     ; $6432: $01 $3f $c1
	ccf                                              ; $6435: $3f
	jp $fe7b                                         ; $6436: $c3 $7b $fe


	add [hl]                                         ; $6439: $86
	rst JumpTable                                          ; $643a: $c7
	ld a, a                                          ; $643b: $7f
	adc [hl]                                         ; $643c: $8e
	ld a, a                                          ; $643d: $7f
	sbc h                                            ; $643e: $9c
	rst $38                                          ; $643f: $ff
	jr @+$01                                         ; $6440: $18 $ff

	jr nz, @+$01                                     ; $6442: $20 $ff

	ld b, b                                          ; $6444: $40
	rst $38                                          ; $6445: $ff
	add e                                            ; $6446: $83
	db $fc                                           ; $6447: $fc
	rrca                                             ; $6448: $0f
	ldh a, [$7f]                                     ; $6449: $f0 $7f
	add b                                            ; $644b: $80
	rst $38                                          ; $644c: $ff
	nop                                              ; $644d: $00
	rst $38                                          ; $644e: $ff
	inc bc                                           ; $644f: $03
	rst $38                                          ; $6450: $ff
	ccf                                              ; $6451: $3f
	rst $38                                          ; $6452: $ff
	ld e, a                                          ; $6453: $5f
	add b                                            ; $6454: $80

jr_073_6455:
	ld a, a                                          ; $6455: $7f
	rst AddAOntoHL                                          ; $6456: $ef
	sbc [hl]                                         ; $6457: $9e
	sbc $1b                                          ; $6458: $de $1b
	add b                                            ; $645a: $80

jr_073_645b:
	sbc c                                            ; $645b: $99
	ld c, $1f                                        ; $645c: $0e $1f
	sub e                                            ; $645e: $93
	dec c                                            ; $645f: $0d
	sbc d                                            ; $6460: $9a
	rlca                                             ; $6461: $07
	rra                                              ; $6462: $1f
	add b                                            ; $6463: $80
	ld a, a                                          ; $6464: $7f
	jp nz, $fd9d                                     ; $6465: $c2 $9d $fd

	sbc $37                                          ; $6468: $de $37
	add b                                            ; $646a: $80
	ld [hl], e                                       ; $646b: $73
	and b                                            ; $646c: $a0
	sub h                                            ; $646d: $94
	ret nz                                           ; $646e: $c0

	ldh [$fe], a                                     ; $646f: $e0 $fe
	sbc $3f                                          ; $6471: $de $3f
	rst $38                                          ; $6473: $ff
	nop                                              ; $6474: $00
	cp $ff                                           ; $6475: $fe $ff
	ld l, e                                          ; $6477: $6b
	db $fc                                           ; $6478: $fc
	rla                                              ; $6479: $17
	and b                                            ; $647a: $a0
	sbc [hl]                                         ; $647b: $9e
	sbc c                                            ; $647c: $99
	dec hl                                           ; $647d: $2b
	and b                                            ; $647e: $a0
	sbc h                                            ; $647f: $9c
	cp a                                             ; $6480: $bf
	ld a, a                                          ; $6481: $7f
	rst GetHLinHL                                          ; $6482: $cf
	ld [hl], a                                       ; $6483: $77
	and b                                            ; $6484: $a0
	sbc h                                            ; $6485: $9c

jr_073_6486:
	cp $47                                           ; $6486: $fe $47
	ld hl, sp+$2b                                    ; $6488: $f8 $2b
	and b                                            ; $648a: $a0
	ld a, a                                          ; $648b: $7f
	sbc a                                            ; $648c: $9f
	sub a                                            ; $648d: $97
	db $fc                                           ; $648e: $fc
	ld a, $ff                                        ; $648f: $3e $ff
	db $fd                                           ; $6491: $fd
	ld [bc], a                                       ; $6492: $02
	cp $87                                           ; $6493: $fe $87
	ld a, e                                          ; $6495: $7b
	dec hl                                           ; $6496: $2b
	and b                                            ; $6497: $a0
	sbc l                                            ; $6498: $9d
	dec d                                            ; $6499: $15
	inc bc                                           ; $649a: $03
	ld a, e                                          ; $649b: $7b
	and b                                            ; $649c: $a0
	sbc h                                            ; $649d: $9c
	inc c                                            ; $649e: $0c
	sbc a                                            ; $649f: $9f
	inc bc                                           ; $64a0: $03
	inc sp                                           ; $64a1: $33
	and b                                            ; $64a2: $a0
	sbc d                                            ; $64a3: $9a
	inc c                                            ; $64a4: $0c
	rst SubAFromDE                                          ; $64a5: $df
	ccf                                              ; $64a6: $3f
	rst SubAFromBC                                          ; $64a7: $e7
	ld hl, sp+$7b                                    ; $64a8: $f8 $7b
	and b                                            ; $64aa: $a0
	sbc l                                            ; $64ab: $9d
	ld c, $f7                                        ; $64ac: $0e $f7
	dec sp                                           ; $64ae: $3b
	and b                                            ; $64af: $a0
	ld a, [hl]                                       ; $64b0: $7e
	jp c, $8384                                      ; $64b1: $da $84 $83

	ld a, l                                          ; $64b4: $7d
	ret nz                                           ; $64b5: $c0

	cp a                                             ; $64b6: $bf
	ld h, b                                          ; $64b7: $60
	ld e, a                                          ; $64b8: $5f
	jr nc, @+$31                                     ; $64b9: $30 $2f

	jr c, jr_073_64f4                                ; $64bb: $38 $37

	inc a                                            ; $64bd: $3c
	dec hl                                           ; $64be: $2b
	ld a, [hl]                                       ; $64bf: $7e
	ld h, l                                          ; $64c0: $65
	or a                                             ; $64c1: $b7
	ld [$fd93], a                                    ; $64c2: $ea $93 $fd
	adc b                                            ; $64c5: $88
	rst $38                                          ; $64c6: $ff
	rst JumpTable                                          ; $64c7: $c7
	rst $38                                          ; $64c8: $ff
	ldh [rIE], a                                     ; $64c9: $e0 $ff
	ldh a, [rIE]                                     ; $64cb: $f0 $ff
	db $fc                                           ; $64cd: $fc
	sbc $ff                                          ; $64ce: $de $ff
	rst $38                                          ; $64d0: $ff
	sbc d                                            ; $64d1: $9a
	inc bc                                           ; $64d2: $03
	cp $00                                           ; $64d3: $fe $00
	nop                                              ; $64d5: $00
	ld a, b                                          ; $64d6: $78
	ld a, e                                          ; $64d7: $7b
	xor [hl]                                         ; $64d8: $ae
	ei                                               ; $64d9: $fb
	ld a, a                                          ; $64da: $7f
	rst GetHLinHL                                          ; $64db: $cf
	sub c                                            ; $64dc: $91
	jp $ff81                                         ; $64dd: $c3 $81 $ff


	ld a, [hl]                                       ; $64e0: $7e
	add e                                            ; $64e1: $83
	nop                                              ; $64e2: $00
	rst $38                                          ; $64e3: $ff
	rst FarCall                                          ; $64e4: $f7
	inc e                                            ; $64e5: $1c
	inc d                                            ; $64e6: $14
	inc e                                            ; $64e7: $1c
	inc d                                            ; $64e8: $14
	call c, $03d4                                    ; $64e9: $dc $d4 $03
	ret nz                                           ; $64ec: $c0

	sbc c                                            ; $64ed: $99
	nop                                              ; $64ee: $00
	inc sp                                           ; $64ef: $33
	adc $fc                                          ; $64f0: $ce $fc
	db $fc                                           ; $64f2: $fc
	ld a, b                                          ; $64f3: $78

jr_073_64f4:
	cp $7f                                           ; $64f4: $fe $7f
	ld l, [hl]                                       ; $64f6: $6e
	cpl                                              ; $64f7: $2f
	ret nz                                           ; $64f8: $c0

	sbc e                                            ; $64f9: $9b
	add c                                            ; $64fa: $81
	ld a, [hl]                                       ; $64fb: $7e
	jp $17bd                                         ; $64fc: $c3 $bd $17


	ret nz                                           ; $64ff: $c0

	sbc c                                            ; $6500: $99
	ld c, b                                          ; $6501: $48
	add [hl]                                         ; $6502: $86
	rst $38                                          ; $6503: $ff
	cp $fc                                           ; $6504: $fe $fc
	ld a, b                                          ; $6506: $78
	ld [hl], a                                       ; $6507: $77
	cp [hl]                                          ; $6508: $be
	ld [hl], a                                       ; $6509: $77
	ld a, h                                          ; $650a: $7c
	cpl                                              ; $650b: $2f
	ret nz                                           ; $650c: $c0

	sbc l                                            ; $650d: $9d
	ld h, c                                          ; $650e: $61
	ld e, [hl]                                       ; $650f: $5e
	rra                                              ; $6510: $1f
	ret nz                                           ; $6511: $c0

	sbc b                                            ; $6512: $98
	ld c, c                                          ; $6513: $49
	add [hl]                                         ; $6514: $86
	cp $ff                                           ; $6515: $fe $ff
	db $fc                                           ; $6517: $fc
	cp $7c                                           ; $6518: $fe $7c
	ld l, e                                          ; $651a: $6b
	ld a, [hl]                                       ; $651b: $7e
	ld b, a                                          ; $651c: $47
	ret nz                                           ; $651d: $c0

	ld l, c                                          ; $651e: $69
	ld [bc], a                                       ; $651f: $02
	ei                                               ; $6520: $fb
	rst SubAFromDE                                          ; $6521: $df
	inc bc                                           ; $6522: $03
	add a                                            ; $6523: $87
	rrca                                             ; $6524: $0f
	inc c                                            ; $6525: $0c
	ld e, $19                                        ; $6526: $1e $19
	inc e                                            ; $6528: $1c
	inc de                                           ; $6529: $13
	jr jr_073_654b                                   ; $652a: $18 $1f

	jr c, jr_073_655d                                ; $652c: $38 $2f

	inc a                                            ; $652e: $3c
	dec hl                                           ; $652f: $2b
	ld a, h                                          ; $6530: $7c
	ld h, a                                          ; $6531: $67
	ld h, h                                          ; $6532: $64
	ld e, a                                          ; $6533: $5f
	ld h, [hl]                                       ; $6534: $66
	ld e, l                                          ; $6535: $5d
	ld h, [hl]                                       ; $6536: $66
	ld e, e                                          ; $6537: $5b
	db $e3                                           ; $6538: $e3
	sbc [hl]                                         ; $6539: $9e
	db $e3                                           ; $653a: $e3
	sbc l                                            ; $653b: $9d
	db $dd                                           ; $653c: $dd
	ld bc, $0291                                     ; $653d: $01 $91 $02
	inc bc                                           ; $6540: $03
	inc bc                                           ; $6541: $03
	ld [bc], a                                       ; $6542: $02
	inc bc                                           ; $6543: $03
	ld [bc], a                                       ; $6544: $02
	dec b                                            ; $6545: $05
	ld b, $05                                        ; $6546: $06 $05
	ld b, $04                                        ; $6548: $06 $04
	rlca                                             ; $654a: $07

jr_073_654b:
	inc b                                            ; $654b: $04
	rlca                                             ; $654c: $07
	ld [hl], a                                       ; $654d: $77
	db $f4                                           ; $654e: $f4
	ld a, a                                          ; $654f: $7f
	db $fd                                           ; $6550: $fd
	db $db                                           ; $6551: $db
	ld bc, $dfff                                     ; $6552: $01 $ff $df
	rlca                                             ; $6555: $07
	sub l                                            ; $6556: $95
	ccf                                              ; $6557: $3f

jr_073_6558:
	jr c, jr_073_6558                                ; $6558: $38 $fe

	pop bc                                           ; $655a: $c1
	ldh a, [rIF]                                     ; $655b: $f0 $0f

jr_073_655d:
	add b                                            ; $655d: $80
	ld a, a                                          ; $655e: $7f
	nop                                              ; $655f: $00
	rst $38                                          ; $6560: $ff
	inc sp                                           ; $6561: $33
	cp $f0                                           ; $6562: $fe $f0
	rst SubAFromDE                                          ; $6564: $df
	add hl, bc                                       ; $6565: $09
	add b                                            ; $6566: $80
	ld d, $1f                                        ; $6567: $16 $1f
	ld [hl], $2b                                     ; $6569: $36 $2b
	ld b, h                                          ; $656b: $44
	ld a, e                                          ; $656c: $7b
	ld l, h                                          ; $656d: $6c

jr_073_656e:
	ld d, e                                          ; $656e: $53
	xor c                                            ; $656f: $a9
	sub $c5                                          ; $6570: $d6 $c5
	cp d                                             ; $6572: $ba
	ret                                              ; $6573: $c9


	ld [hl-], a                                      ; $6574: $32
	and c                                            ; $6575: $a1
	ld d, d                                          ; $6576: $52
	sub b                                            ; $6577: $90
	ld b, e                                          ; $6578: $43
	ld a, [bc]                                       ; $6579: $0a
	pop bc                                           ; $657a: $c1
	ld [bc], a                                       ; $657b: $02
	ret                                              ; $657c: $c9


	and [hl]                                         ; $657d: $a6
	ld c, c                                          ; $657e: $49

jr_073_657f:
	dec hl                                           ; $657f: $2b
	ld b, h                                          ; $6580: $44
	ld e, l                                          ; $6581: $5d
	ld [hl+], a                                      ; $6582: $22
	cpl                                              ; $6583: $2f
	sub c                                            ; $6584: $91
	and a                                            ; $6585: $a7
	add b                                            ; $6586: $80
	ret c                                            ; $6587: $d8

	db $e4                                           ; $6588: $e4
	ld a, a                                          ; $6589: $7f
	or e                                             ; $658a: $b3
	ld a, a                                          ; $658b: $7f
	db $fc                                           ; $658c: $fc
	ld a, h                                          ; $658d: $7c
	ldh a, [$a0]                                     ; $658e: $f0 $a0
	ld [hl], b                                       ; $6590: $70
	ldh [$d0], a                                     ; $6591: $e0 $d0
	or b                                             ; $6593: $b0
	ldh a, [rIE]                                     ; $6594: $f0 $ff
	ldh a, [$ef]                                     ; $6596: $f0 $ef
	ld [hl], b                                       ; $6598: $70
	ld l, a                                          ; $6599: $6f
	ld [hl], a                                       ; $659a: $77
	ld l, e                                          ; $659b: $6b
	scf                                              ; $659c: $37
	jr z, jr_073_65d0                                ; $659d: $28 $31

	ld a, $73                                        ; $659f: $3e $73
	ld e, l                                          ; $65a1: $5d
	ld a, c                                          ; $65a2: $79
	ld d, [hl]                                       ; $65a3: $56
	ld a, b                                          ; $65a4: $78
	ld c, a                                          ; $65a5: $4f
	sub h                                            ; $65a6: $94
	ld a, h                                          ; $65a7: $7c
	ld c, e                                          ; $65a8: $4b
	ld a, h                                          ; $65a9: $7c
	ld b, a                                          ; $65aa: $47
	inc a                                            ; $65ab: $3c
	daa                                              ; $65ac: $27
	inc e                                            ; $65ad: $1c
	inc de                                           ; $65ae: $13
	ld c, $09                                        ; $65af: $0e $09
	ld b, $7b                                        ; $65b1: $06 $7b
	ld [hl], h                                       ; $65b3: $74
	ld l, a                                          ; $65b4: $6f
	ld a, d                                          ; $65b5: $7a
	di                                               ; $65b6: $f3
	rst SubAFromDE                                          ; $65b7: $df
	ld bc, $e87f                                     ; $65b8: $01 $7f $e8
	ld a, a                                          ; $65bb: $7f
	ld d, a                                          ; $65bc: $57
	sub d                                            ; $65bd: $92
	rrca                                             ; $65be: $0f
	ld [$383f], sp                                   ; $65bf: $08 $3f $38
	rst $38                                          ; $65c2: $ff
	ldh [$fc], a                                     ; $65c3: $e0 $fc
	jr nz, jr_073_657f                               ; $65c5: $20 $b8

	jr nz, jr_073_6601                               ; $65c7: $20 $38

	jr nz, jr_073_65fb                               ; $65c9: $20 $30

	ld [hl], e                                       ; $65cb: $73
	cp $d7                                           ; $65cc: $fe $d7
	jr nz, jr_073_656e                               ; $65ce: $20 $9e

jr_073_65d0:
	ld h, b                                          ; $65d0: $60
	ld [hl], a                                       ; $65d1: $77
	cp $9d                                           ; $65d2: $fe $9d
	ld b, b                                          ; $65d4: $40
	ld h, b                                          ; $65d5: $60
	sbc $40                                          ; $65d6: $de $40
	ld b, a                                          ; $65d8: $47
	add $80                                          ; $65d9: $c6 $80
	sbc [hl]                                         ; $65db: $9e
	sbc a                                            ; $65dc: $9f
	ld a, [hl]                                       ; $65dd: $7e
	push hl                                          ; $65de: $e5
	ld d, d                                          ; $65df: $52
	db $ed                                           ; $65e0: $ed
	inc [hl]                                         ; $65e1: $34
	swap l                                           ; $65e2: $cb $35
	jp z, Jump_073_5ea1                              ; $65e4: $ca $a1 $5e

	add c                                            ; $65e7: $81
	ld a, [hl]                                       ; $65e8: $7e
	adc e                                            ; $65e9: $8b
	ld [hl], h                                       ; $65ea: $74
	sub c                                            ; $65eb: $91
	ld h, b                                          ; $65ec: $60
	ld d, l                                          ; $65ed: $55
	jr nz, jr_073_6642                               ; $65ee: $20 $52

	dec h                                            ; $65f0: $25
	ld h, d                                          ; $65f1: $62
	dec d                                            ; $65f2: $15
	xor h                                            ; $65f3: $ac
	inc de                                           ; $65f4: $13
	inc h                                            ; $65f5: $24
	sbc e                                            ; $65f6: $9b
	halt                                             ; $65f7: $76
	adc l                                            ; $65f8: $8d
	or e                                             ; $65f9: $b3
	adc [hl]                                         ; $65fa: $8e

jr_073_65fb:
	ld c, a                                          ; $65fb: $4f
	ld [hl+], a                                      ; $65fc: $22
	rst $38                                          ; $65fd: $ff
	sub [hl]                                         ; $65fe: $96
	rst $38                                          ; $65ff: $ff
	ld a, l                                          ; $6600: $7d

jr_073_6601:
	ld l, a                                          ; $6601: $6f
	jp hl                                            ; $6602: $e9


	rst SubAFromDE                                          ; $6603: $df
	ld e, e                                          ; $6604: $5b
	ld e, d                                          ; $6605: $5a
	ld e, e                                          ; $6606: $5b
	ld e, d                                          ; $6607: $5a
	ld a, e                                          ; $6608: $7b
	ld e, [hl]                                       ; $6609: $5e
	ld e, e                                          ; $660a: $5b
	ld a, [hl]                                       ; $660b: $7e
	ldh [$c1], a                                     ; $660c: $e0 $c1
	sbc e                                            ; $660e: $9b
	sbc b                                            ; $660f: $98
	adc a                                            ; $6610: $8f
	sub b                                            ; $6611: $90
	sbc a                                            ; $6612: $9f
	ld l, a                                          ; $6613: $6f
	cp $7f                                           ; $6614: $fe $7f
	or $8b                                           ; $6616: $f6 $8b
	ret c                                            ; $6618: $d8

	adc a                                            ; $6619: $8f
	call c, $ff87                                    ; $661a: $dc $87 $ff
	add a                                            ; $661d: $87
	rst $38                                          ; $661e: $ff
	add b                                            ; $661f: $80
	cp $80                                           ; $6620: $fe $80
	ld hl, sp-$80                                    ; $6622: $f8 $80
	db $ec                                           ; $6624: $ec
	add b                                            ; $6625: $80
	adc $80                                          ; $6626: $ce $80
	rst JumpTable                                          ; $6628: $c7
	add b                                            ; $6629: $80
	jp $f580                                         ; $662a: $c3 $80 $f5


	rst SubAFromDE                                          ; $662d: $df
	db $10                                           ; $662e: $10
	add b                                            ; $662f: $80
	ld a, $2e                                        ; $6630: $3e $2e
	ld sp, hl                                        ; $6632: $f9
	rst GetHLinHL                                          ; $6633: $cf
	ldh a, [c]                                       ; $6634: $f2
	adc l                                            ; $6635: $8d
	ld [hl], e                                       ; $6636: $73
	adc h                                            ; $6637: $8c
	ld [hl], e                                       ; $6638: $73
	adc h                                            ; $6639: $8c
	ld d, d                                          ; $663a: $52
	xor l                                            ; $663b: $ad
	ld d, d                                          ; $663c: $52
	xor l                                            ; $663d: $ad
	dec b                                            ; $663e: $05
	ld a, [$da25]                                    ; $663f: $fa $25 $da

jr_073_6642:
	nop                                              ; $6642: $00
	jp c, $9000                                      ; $6643: $da $00 $90

	nop                                              ; $6646: $00
	or [hl]                                          ; $6647: $b6
	add b                                            ; $6648: $80
	xor [hl]                                         ; $6649: $ae
	add b                                            ; $664a: $80
	db $ed                                           ; $664b: $ed
	adc b                                            ; $664c: $88
	rst $38                                          ; $664d: $ff
	cp h                                             ; $664e: $bc
	adc h                                            ; $664f: $8c
	rst $38                                          ; $6650: $ff
	di                                               ; $6651: $f3
	rst $38                                          ; $6652: $ff
	ld e, b                                          ; $6653: $58
	db $fd                                           ; $6654: $fd
	db $ec                                           ; $6655: $ec
	cp $e6                                           ; $6656: $fe $e6
	ccf                                              ; $6658: $3f
	sub a                                            ; $6659: $97
	dec d                                            ; $665a: $15
	rla                                              ; $665b: $17
	dec d                                            ; $665c: $15
	rla                                              ; $665d: $17
	inc e                                            ; $665e: $1c
	ld c, $08                                        ; $665f: $0e $08
	inc c                                            ; $6661: $0c
	ld [$c1e0], sp                                   ; $6662: $08 $e0 $c1
	adc e                                            ; $6665: $8b
	ld a, $fe                                        ; $6666: $3e $fe
	inc de                                           ; $6668: $13
	rst $38                                          ; $6669: $ff
	ld sp, wPtrToScriptStack+1                                     ; $666a: $31 $ff $d1
	rst $38                                          ; $666d: $ff
	rra                                              ; $666e: $1f
	rst $38                                          ; $666f: $ff
	ccf                                              ; $6670: $3f
	ld hl, sp+$7f                                    ; $6671: $f8 $7f
	xor $fb                                          ; $6673: $ee $fb
	xor c                                            ; $6675: $a9
	rst $38                                          ; $6676: $ff
	add hl, hl                                       ; $6677: $29
	xor a                                            ; $6678: $af
	cpl                                              ; $6679: $2f
	rst SubAFromHL                                          ; $667a: $d7
	add hl, hl                                       ; $667b: $29
	sbc l                                            ; $667c: $9d
	xor c                                            ; $667d: $a9
	add hl, hl                                       ; $667e: $29
	di                                               ; $667f: $f3
	rst SubAFromDE                                          ; $6680: $df
	ret z                                            ; $6681: $c8

	adc e                                            ; $6682: $8b
	ld a, $f6                                        ; $6683: $3e $f6
	push de                                          ; $6685: $d5
	cp a                                             ; $6686: $bf
	ld h, b                                          ; $6687: $60
	rst SubAFromDE                                          ; $6688: $df
	ei                                               ; $6689: $fb
	ld h, $da                                        ; $668a: $26 $da
	daa                                              ; $668c: $27
	ld b, c                                          ; $668d: $41
	cp a                                             ; $668e: $bf
	ld h, a                                          ; $668f: $67
	sbc c                                            ; $6690: $99
	cpl                                              ; $6691: $2f
	reti                                             ; $6692: $d9


	ld [$00fb], sp                                   ; $6693: $08 $fb $00
	db $dd                                           ; $6696: $dd
	ld [hl], a                                       ; $6697: $77
	cp $8c                                           ; $6698: $fe $8c
	dec b                                            ; $669a: $05
	sbc a                                            ; $669b: $9f
	add hl, bc                                       ; $669c: $09
	ccf                                              ; $669d: $3f
	ld [de], a                                       ; $669e: $12
	rst $38                                          ; $669f: $ff
	ld [hl], $ff                                     ; $66a0: $36 $ff
	rst $38                                          ; $66a2: $ff
	rst GetHLinHL                                          ; $66a3: $cf
	rst SubAFromBC                                          ; $66a4: $e7
	add b                                            ; $66a5: $80
	ld b, e                                          ; $66a6: $43
	ld b, b                                          ; $66a7: $40
	ld h, e                                          ; $66a8: $63
	ret nz                                           ; $66a9: $c0

	ld h, e                                          ; $66aa: $63
	ret nz                                           ; $66ab: $c0

	and e                                            ; $66ac: $a3
	ld a, e                                          ; $66ad: $7b
	cp $7f                                           ; $66ae: $fe $7f
	or $e0                                           ; $66b0: $f6 $e0
	pop bc                                           ; $66b2: $c1
	sbc [hl]                                         ; $66b3: $9e
	ret nz                                           ; $66b4: $c0

	ld a, c                                          ; $66b5: $79
	sbc h                                            ; $66b6: $9c
	sbc [hl]                                         ; $66b7: $9e
	ldh [$71], a                                     ; $66b8: $e0 $71
	sub [hl]                                         ; $66ba: $96
	ld a, a                                          ; $66bb: $7f
	ld a, [$f896]                                    ; $66bc: $fa $96 $f8
	rst SubAFromDE                                          ; $66bf: $df
	rst $38                                          ; $66c0: $ff
	ld b, a                                          ; $66c1: $47
	rst SubAFromDE                                          ; $66c2: $df
	ld b, b                                          ; $66c3: $40
	ld b, a                                          ; $66c4: $47
	ld b, b                                          ; $66c5: $40
	ld b, c                                          ; $66c6: $41
	sub $40                                          ; $66c7: $d6 $40
	db $ed                                           ; $66c9: $ed
	rst SubAFromDE                                          ; $66ca: $df
	add b                                            ; $66cb: $80
	add b                                            ; $66cc: $80
	ld h, b                                          ; $66cd: $60
	ldh [$d0], a                                     ; $66ce: $e0 $d0
	ld [hl], b                                       ; $66d0: $70
	adc b                                            ; $66d1: $88
	ld a, b                                          ; $66d2: $78
	sbc h                                            ; $66d3: $9c
	ld l, h                                          ; $66d4: $6c
	ld e, d                                          ; $66d5: $5a
	xor $ca                                          ; $66d6: $ee $ca
	cp $49                                           ; $66d8: $fe $49
	rst $38                                          ; $66da: $ff
	add hl, sp                                       ; $66db: $39
	rst $38                                          ; $66dc: $ff
	ld hl, $22ff                                     ; $66dd: $21 $ff $22
	cp $52                                           ; $66e0: $fe $52
	cp $9e                                           ; $66e2: $fe $9e
	cp $2a                                           ; $66e4: $fe $2a
	cp $ca                                           ; $66e6: $fe $ca
	cp $d5                                           ; $66e8: $fe $d5
	ld a, a                                          ; $66ea: $7f
	push hl                                          ; $66eb: $e5
	adc d                                            ; $66ec: $8a
	ccf                                              ; $66ed: $3f
	ld [$d63e], a                                    ; $66ee: $ea $3e $d6
	ld a, [hl]                                       ; $66f1: $7e
	xor $7e                                          ; $66f2: $ee $7e
	ld a, [$e23e]                                    ; $66f4: $fa $3e $e2
	ld a, $f4                                        ; $66f7: $3e $f4
	inc e                                            ; $66f9: $1c
	db $f4                                           ; $66fa: $f4
	inc e                                            ; $66fb: $1c
	call c, $fe3c                                    ; $66fc: $dc $3c $fe
	ld [hl+], a                                      ; $66ff: $22
	or $2a                                           ; $6700: $f6 $2a
	ld [hl], a                                       ; $6702: $77
	cp $93                                           ; $6703: $fe $93
	db $ec                                           ; $6705: $ec
	inc [hl]                                         ; $6706: $34
	call c, $f864                                    ; $6707: $dc $64 $f8
	ld c, b                                          ; $670a: $48
	ldh a, [$50]                                     ; $670b: $f0 $50
	ldh [$60], a                                     ; $670d: $e0 $60
	ret nz                                           ; $670f: $c0

	ret nz                                           ; $6710: $c0

	db $d3                                           ; $6711: $d3
	add b                                            ; $6712: $80
	rst SubAFromDE                                          ; $6713: $df
	ldh [hDisp1_OBP0], a                                     ; $6714: $e0 $93
	ldh a, [hDisp1_SCY]                                     ; $6716: $f0 $90
	ld hl, sp-$18                                    ; $6718: $f8 $e8
	ld hl, sp-$38                                    ; $671a: $f8 $c8
	cp $8e                                           ; $671c: $fe $8e
	ld sp, hl                                        ; $671e: $f9
	rrca                                             ; $671f: $0f
	rst $38                                          ; $6720: $ff
	ld [$fe7b], sp                                   ; $6721: $08 $7b $fe
	sub a                                            ; $6724: $97
	jr @+$01                                         ; $6725: $18 $ff

	jr z, @+$01                                      ; $6727: $28 $ff

	ret z                                            ; $6729: $c8

	rst $38                                          ; $672a: $ff
	adc b                                            ; $672b: $88
	db $fc                                           ; $672c: $fc
	ld a, e                                          ; $672d: $7b
	cp $9d                                           ; $672e: $fe $9d
	ld hl, sp-$74                                    ; $6730: $f8 $8c
	ld [hl], a                                       ; $6732: $77
	cp $96                                           ; $6733: $fe $96
	db $ec                                           ; $6735: $ec
	add h                                            ; $6736: $84
	db $ec                                           ; $6737: $ec
	add h                                            ; $6738: $84
	ld c, h                                          ; $6739: $4c
	add h                                            ; $673a: $84
	call nz, $8404                                   ; $673b: $c4 $04 $84
	call nc, $ed04                                   ; $673e: $d4 $04 $ed

Jump_073_6741:
	rst SubAFromDE                                          ; $6741: $df
	ldh [$9d], a                                     ; $6742: $e0 $9d
	ld hl, sp+$38                                    ; $6744: $f8 $38
	ld a, d                                          ; $6746: $7a
	adc a                                            ; $6747: $8f
	sbc c                                            ; $6748: $99
	ld [$6b9c], sp                                   ; $6749: $08 $9c $6b
	inc c                                            ; $674c: $0c
	ei                                               ; $674d: $fb
	inc c                                            ; $674e: $0c
	ld a, d                                          ; $674f: $7a
	inc a                                            ; $6750: $3c
	ld a, e                                          ; $6751: $7b
	cp $9e                                           ; $6752: $fe $9e
	inc b                                            ; $6754: $04
	ld h, a                                          ; $6755: $67
	cp $df                                           ; $6756: $fe $df
	inc b                                            ; $6758: $04
	ld a, h                                          ; $6759: $7c
	ld a, e                                          ; $675a: $7b
	ld d, a                                          ; $675b: $57
	cp $e7                                           ; $675c: $fe $e7
	rst SubAFromDE                                          ; $675e: $df
	ldh [$9b], a                                     ; $675f: $e0 $9b
	inc a                                            ; $6761: $3c
	call c, $fb07                                    ; $6762: $dc $07 $fb
	ld b, b                                          ; $6765: $40
	db $e3                                           ; $6766: $e3
	ld b, e                                          ; $6767: $43
	jp c, Jump_073_7897                              ; $6768: $da $97 $78

	sbc b                                            ; $676b: $98
	inc a                                            ; $676c: $3c
	call z, $ca3e                                    ; $676d: $cc $3e $ca
	ld a, $d2                                        ; $6770: $3e $d2
	ld [hl], a                                       ; $6772: $77
	cp $9b                                           ; $6773: $fe $9b
	ld a, a                                          ; $6775: $7f
	and e                                            ; $6776: $a3
	ld h, a                                          ; $6777: $67
	cp c                                             ; $6778: $b9
	ld a, e                                          ; $6779: $7b
	cp $9a                                           ; $677a: $fe $9a
	reti                                             ; $677c: $d9


	ld h, e                                          ; $677d: $63
	db $dd                                           ; $677e: $dd
	jp Jump_073_7b7d                                 ; $677f: $c3 $7d $7b


	cp $9c                                           ; $6782: $fe $9c
	cp l                                             ; $6784: $bd
	jp $1cbd                                         ; $6785: $c3 $bd $1c


	nop                                              ; $6788: $00
	sub b                                            ; $6789: $90
	db $dd                                           ; $678a: $dd
	adc b                                            ; $678b: $88
	db $dd                                           ; $678c: $dd
	adc b                                            ; $678d: $88
	nop                                              ; $678e: $00
	call z, $22aa                                    ; $678f: $cc $aa $22
	adc b                                            ; $6792: $88
	nop                                              ; $6793: $00
	sbc c                                            ; $6794: $99
	sbc c                                            ; $6795: $99
	inc sp                                           ; $6796: $33
	adc b                                            ; $6797: $88
	ld de, $fb63                                     ; $6798: $11 $63 $fb
	rst SubAFromDE                                          ; $679b: $df
	sbc c                                            ; $679c: $99
	ld a, a                                          ; $679d: $7f
	db $ec                                           ; $679e: $ec
	sbc [hl]                                         ; $679f: $9e
	db $dd                                           ; $67a0: $dd
	ld [hl], a                                       ; $67a1: $77
	cp $4b                                           ; $67a2: $fe $4b
	ld bc, $658a                                     ; $67a4: $01 $8a $65
	ld h, a                                          ; $67a7: $67
	inc hl                                           ; $67a8: $23
	inc hl                                           ; $67a9: $23
	nop                                              ; $67aa: $00
	ldh [$f0], a                                     ; $67ab: $e0 $f0
	cp $ee                                           ; $67ad: $fe $ee
	rra                                              ; $67af: $1f
	db $fd                                           ; $67b0: $fd
	ld a, [hl]                                       ; $67b1: $7e
	ld c, d                                          ; $67b2: $4a
	rst AddAOntoHL                                          ; $67b3: $ef
	add hl, hl                                       ; $67b4: $29
	cp d                                             ; $67b5: $ba
	ld a, [hl]                                       ; $67b6: $7e
	nop                                              ; $67b7: $00
	rst $38                                          ; $67b8: $ff
	nop                                              ; $67b9: $00
	ld a, h                                          ; $67ba: $7c
	or $86                                           ; $67bb: $f6 $86
	inc c                                            ; $67bd: $0c
	ld [$8098], sp                                   ; $67be: $08 $98 $80
	inc de                                           ; $67c1: $13
	nop                                              ; $67c2: $00
	inc de                                           ; $67c3: $13
	rlca                                             ; $67c4: $07
	rrca                                             ; $67c5: $0f
	rra                                              ; $67c6: $1f
	sub e                                            ; $67c7: $93
	ld c, $9a                                        ; $67c8: $0e $9a
	dec b                                            ; $67ca: $05
	ccf                                              ; $67cb: $3f
	nop                                              ; $67cc: $00
	daa                                              ; $67cd: $27
	nop                                              ; $67ce: $00
	ld hl, $2000                                     ; $67cf: $21 $00 $20
	nop                                              ; $67d2: $00
	jr nc, jr_073_67d5                               ; $67d3: $30 $00

jr_073_67d5:
	jr c, jr_073_6852                                ; $67d5: $38 $7b

	jp c, $388c                                      ; $67d7: $da $8c $38

	ld b, b                                          ; $67da: $40
	ld d, b                                          ; $67db: $50
	jr nz, jr_073_6821                               ; $67dc: $20 $43

	nop                                              ; $67de: $00
	inc bc                                           ; $67df: $03
	inc e                                            ; $67e0: $1c
	ld a, a                                          ; $67e1: $7f
	rst $38                                          ; $67e2: $ff
	adc a                                            ; $67e3: $8f
	ldh a, [$fe]                                     ; $67e4: $f0 $fe
	rst $38                                          ; $67e6: $ff
	ld d, l                                          ; $67e7: $55
	jp c, Jump_073_7067                              ; $67e8: $da $67 $70

	db $e3                                           ; $67eb: $e3
	ld a, e                                          ; $67ec: $7b
	jp nz, $ef9c                                     ; $67ed: $c2 $9c $ef

	nop                                              ; $67f0: $00
	rrca                                             ; $67f1: $0f
	ld a, e                                          ; $67f2: $7b
	cp $93                                           ; $67f3: $fe $93
	rra                                              ; $67f5: $1f
	nop                                              ; $67f6: $00
	rla                                              ; $67f7: $17
	nop                                              ; $67f8: $00
	inc de                                           ; $67f9: $13
	inc b                                            ; $67fa: $04
	scf                                              ; $67fb: $37
	add hl, bc                                       ; $67fc: $09
	ccf                                              ; $67fd: $3f
	pop bc                                           ; $67fe: $c1
	ccf                                              ; $67ff: $3f
	jp $fe7b                                         ; $6800: $c3 $7b $fe


	add [hl]                                         ; $6803: $86
	rst JumpTable                                          ; $6804: $c7
	ld a, a                                          ; $6805: $7f
	adc [hl]                                         ; $6806: $8e
	ld a, a                                          ; $6807: $7f
	sbc h                                            ; $6808: $9c
	rst $38                                          ; $6809: $ff
	jr @+$01                                         ; $680a: $18 $ff

	jr nz, @+$01                                     ; $680c: $20 $ff

	ld b, b                                          ; $680e: $40
	rst $38                                          ; $680f: $ff
	add e                                            ; $6810: $83
	db $fc                                           ; $6811: $fc
	rrca                                             ; $6812: $0f
	ldh a, [$7f]                                     ; $6813: $f0 $7f
	add b                                            ; $6815: $80
	rst $38                                          ; $6816: $ff
	nop                                              ; $6817: $00
	rst $38                                          ; $6818: $ff
	inc bc                                           ; $6819: $03
	rst $38                                          ; $681a: $ff
	ccf                                              ; $681b: $3f
	rst $38                                          ; $681c: $ff
	ld e, a                                          ; $681d: $5f
	add b                                            ; $681e: $80
	ld a, a                                          ; $681f: $7f
	rst AddAOntoHL                                          ; $6820: $ef

jr_073_6821:
	sbc [hl]                                         ; $6821: $9e
	sbc $1b                                          ; $6822: $de $1b
	add b                                            ; $6824: $80
	sub [hl]                                         ; $6825: $96
	ld c, $1f                                        ; $6826: $0e $1f
	sub e                                            ; $6828: $93
	dec c                                            ; $6829: $0d
	sbc d                                            ; $682a: $9a
	rlca                                             ; $682b: $07
	ccf                                              ; $682c: $3f
	nop                                              ; $682d: $00
	cpl                                              ; $682e: $2f
	dec hl                                           ; $682f: $2b
	add b                                            ; $6830: $80
	ld a, a                                          ; $6831: $7f
	jp z, $fd9d                                      ; $6832: $ca $9d $fd

	sbc $37                                          ; $6835: $de $37
	add b                                            ; $6837: $80
	ld [hl], e                                       ; $6838: $73
	and b                                            ; $6839: $a0
	sub h                                            ; $683a: $94
	ret nz                                           ; $683b: $c0

	ldh [$fe], a                                     ; $683c: $e0 $fe
	sbc $3f                                          ; $683e: $de $3f
	rst $38                                          ; $6840: $ff
	nop                                              ; $6841: $00
	cp $ff                                           ; $6842: $fe $ff
	ld l, e                                          ; $6844: $6b
	db $fc                                           ; $6845: $fc
	rla                                              ; $6846: $17
	and b                                            ; $6847: $a0
	sbc [hl]                                         ; $6848: $9e
	sbc c                                            ; $6849: $99
	dec hl                                           ; $684a: $2b
	and b                                            ; $684b: $a0
	sbc h                                            ; $684c: $9c
	cp a                                             ; $684d: $bf
	ld a, a                                          ; $684e: $7f
	rst GetHLinHL                                          ; $684f: $cf
	ld [hl], a                                       ; $6850: $77
	and b                                            ; $6851: $a0

jr_073_6852:
	sbc h                                            ; $6852: $9c
	cp $47                                           ; $6853: $fe $47
	ld hl, sp+$2b                                    ; $6855: $f8 $2b
	and b                                            ; $6857: $a0
	ld a, a                                          ; $6858: $7f
	sbc a                                            ; $6859: $9f
	sub a                                            ; $685a: $97
	db $fc                                           ; $685b: $fc
	ld a, $ff                                        ; $685c: $3e $ff
	db $fd                                           ; $685e: $fd
	ld [bc], a                                       ; $685f: $02
	cp $87                                           ; $6860: $fe $87
	ld a, e                                          ; $6862: $7b
	dec hl                                           ; $6863: $2b
	and b                                            ; $6864: $a0
	sbc l                                            ; $6865: $9d
	dec d                                            ; $6866: $15
	inc bc                                           ; $6867: $03
	ld a, e                                          ; $6868: $7b
	and b                                            ; $6869: $a0
	sbc h                                            ; $686a: $9c
	inc c                                            ; $686b: $0c
	sbc a                                            ; $686c: $9f
	inc bc                                           ; $686d: $03
	inc sp                                           ; $686e: $33
	and b                                            ; $686f: $a0
	sbc d                                            ; $6870: $9a
	inc c                                            ; $6871: $0c
	rst SubAFromDE                                          ; $6872: $df
	ccf                                              ; $6873: $3f
	rst SubAFromBC                                          ; $6874: $e7
	ld hl, sp+$7b                                    ; $6875: $f8 $7b
	and b                                            ; $6877: $a0
	sbc l                                            ; $6878: $9d
	ld c, $f7                                        ; $6879: $0e $f7
	dec sp                                           ; $687b: $3b
	and b                                            ; $687c: $a0
	ld a, a                                          ; $687d: $7f
	rst AddAOntoHL                                          ; $687e: $ef
	add b                                            ; $687f: $80
	add e                                            ; $6880: $83
	ld a, l                                          ; $6881: $7d
	ret nz                                           ; $6882: $c0

	cp a                                             ; $6883: $bf
	ld h, b                                          ; $6884: $60
	ld e, a                                          ; $6885: $5f
	jr nc, jr_073_68b7                               ; $6886: $30 $2f

	jr c, jr_073_68c1                                ; $6888: $38 $37

	inc a                                            ; $688a: $3c
	dec hl                                           ; $688b: $2b
	ld a, [hl]                                       ; $688c: $7e
	ld h, l                                          ; $688d: $65
	or a                                             ; $688e: $b7
	ld [$fd93], a                                    ; $688f: $ea $93 $fd
	adc b                                            ; $6892: $88
	rst $38                                          ; $6893: $ff
	add a                                            ; $6894: $87
	rst $38                                          ; $6895: $ff
	ret nz                                           ; $6896: $c0

	rst $38                                          ; $6897: $ff
	ldh [rIE], a                                     ; $6898: $e0 $ff
	or b                                             ; $689a: $b0
	rst $38                                          ; $689b: $ff
	sbc a                                            ; $689c: $9f
	rst $38                                          ; $689d: $ff
	nop                                              ; $689e: $00
	ld a, a                                          ; $689f: $7f
	ret nz                                           ; $68a0: $c0

	sbc e                                            ; $68a1: $9b
	cp $00                                           ; $68a2: $fe $00
	nop                                              ; $68a4: $00
	ld a, b                                          ; $68a5: $78
	ld a, e                                          ; $68a6: $7b
	xor [hl]                                         ; $68a7: $ae
	ei                                               ; $68a8: $fb
	adc a                                            ; $68a9: $8f
	ld bc, $c300                                     ; $68aa: $01 $00 $c3
	add c                                            ; $68ad: $81
	rst $38                                          ; $68ae: $ff
	ld a, [hl]                                       ; $68af: $7e
	add e                                            ; $68b0: $83
	nop                                              ; $68b1: $00
	rst $38                                          ; $68b2: $ff
	rst FarCall                                          ; $68b3: $f7
	inc e                                            ; $68b4: $1c
	inc d                                            ; $68b5: $14
	inc e                                            ; $68b6: $1c

jr_073_68b7:
	inc d                                            ; $68b7: $14
	call c, $03d4                                    ; $68b8: $dc $d4 $03
	ret nz                                           ; $68bb: $c0

	sbc c                                            ; $68bc: $99
	nop                                              ; $68bd: $00
	inc sp                                           ; $68be: $33
	adc $fc                                          ; $68bf: $ce $fc

jr_073_68c1:
	db $fc                                           ; $68c1: $fc
	ld a, b                                          ; $68c2: $78
	cp $7f                                           ; $68c3: $fe $7f
	ld l, [hl]                                       ; $68c5: $6e
	cpl                                              ; $68c6: $2f
	ret nz                                           ; $68c7: $c0

	sbc e                                            ; $68c8: $9b
	add c                                            ; $68c9: $81
	ld a, [hl]                                       ; $68ca: $7e
	jp $17bd                                         ; $68cb: $c3 $bd $17


	ret nz                                           ; $68ce: $c0

	sbc c                                            ; $68cf: $99
	ld c, b                                          ; $68d0: $48
	add [hl]                                         ; $68d1: $86
	rst $38                                          ; $68d2: $ff
	cp $fc                                           ; $68d3: $fe $fc
	ld a, b                                          ; $68d5: $78
	ld [hl], a                                       ; $68d6: $77
	cp [hl]                                          ; $68d7: $be
	ld [hl], a                                       ; $68d8: $77
	ld a, h                                          ; $68d9: $7c
	cpl                                              ; $68da: $2f
	ret nz                                           ; $68db: $c0

	sbc l                                            ; $68dc: $9d
	ld h, c                                          ; $68dd: $61
	ld e, [hl]                                       ; $68de: $5e
	rra                                              ; $68df: $1f
	ret nz                                           ; $68e0: $c0

	sbc c                                            ; $68e1: $99
	ld c, c                                          ; $68e2: $49
	add [hl]                                         ; $68e3: $86
	cp $ff                                           ; $68e4: $fe $ff
	db $fc                                           ; $68e6: $fc
	cp $76                                           ; $68e7: $fe $76
	call z, Call_073_7e77                            ; $68e9: $cc $77 $7e
	ld b, a                                          ; $68ec: $47
	ret nz                                           ; $68ed: $c0

	ld b, c                                          ; $68ee: $41
	ld bc, $658c                                     ; $68ef: $01 $8c $65
	ld h, a                                          ; $68f2: $67
	inc hl                                           ; $68f3: $23
	inc hl                                           ; $68f4: $23
	nop                                              ; $68f5: $00
	ldh [$f0], a                                     ; $68f6: $e0 $f0
	cp $ee                                           ; $68f8: $fe $ee
	rra                                              ; $68fa: $1f
	db $fd                                           ; $68fb: $fd
	ld a, [hl]                                       ; $68fc: $7e
	ld c, d                                          ; $68fd: $4a
	rst AddAOntoHL                                          ; $68fe: $ef
	add hl, hl                                       ; $68ff: $29
	cp d                                             ; $6900: $ba
	ld a, [hl]                                       ; $6901: $7e
	nop                                              ; $6902: $00
	inc e                                            ; $6903: $1c
	db $f4                                           ; $6904: $f4
	adc h                                            ; $6905: $8c
	inc c                                            ; $6906: $0c
	ld [$8098], sp                                   ; $6907: $08 $98 $80
	inc de                                           ; $690a: $13
	nop                                              ; $690b: $00
	inc de                                           ; $690c: $13
	rlca                                             ; $690d: $07
	rrca                                             ; $690e: $0f
	rra                                              ; $690f: $1f
	sub e                                            ; $6910: $93
	ld c, $9a                                        ; $6911: $0e $9a
	dec b                                            ; $6913: $05
	ccf                                              ; $6914: $3f
	nop                                              ; $6915: $00
	inc l                                            ; $6916: $2c
	nop                                              ; $6917: $00
	jr nz, jr_073_6995                               ; $6918: $20 $7b

	cp $82                                           ; $691a: $fe $82
	jr nc, jr_073_691e                               ; $691c: $30 $00

jr_073_691e:
	jr c, jr_073_6920                                ; $691e: $38 $00

jr_073_6920:
	ld a, h                                          ; $6920: $7c
	nop                                              ; $6921: $00
	jr c, jr_073_6964                                ; $6922: $38 $40

	ld d, b                                          ; $6924: $50
	jr nz, jr_073_696a                               ; $6925: $20 $43

	nop                                              ; $6927: $00
	inc bc                                           ; $6928: $03
	inc e                                            ; $6929: $1c
	ld a, a                                          ; $692a: $7f
	rst $38                                          ; $692b: $ff
	adc a                                            ; $692c: $8f
	ldh a, [$fe]                                     ; $692d: $f0 $fe
	rst $38                                          ; $692f: $ff
	ld d, l                                          ; $6930: $55
	jp c, Jump_073_7067                              ; $6931: $da $67 $70

	add e                                            ; $6934: $83
	nop                                              ; $6935: $00
	rlca                                             ; $6936: $07
	nop                                              ; $6937: $00
	rrca                                             ; $6938: $0f
	ld [hl], e                                       ; $6939: $73
	cp $9e                                           ; $693a: $fe $9e
	rra                                              ; $693c: $1f
	ld [hl], e                                       ; $693d: $73
	cp $99                                           ; $693e: $fe $99
	ccf                                              ; $6940: $3f
	ld bc, $c13f                                     ; $6941: $01 $3f $c1
	ccf                                              ; $6944: $3f
	jp $fe7b                                         ; $6945: $c3 $7b $fe


	add [hl]                                         ; $6948: $86
	rst JumpTable                                          ; $6949: $c7
	ld a, a                                          ; $694a: $7f
	adc [hl]                                         ; $694b: $8e
	ld a, a                                          ; $694c: $7f
	sbc h                                            ; $694d: $9c
	rst $38                                          ; $694e: $ff
	jr @+$01                                         ; $694f: $18 $ff

	jr nz, @+$01                                     ; $6951: $20 $ff

	ld b, b                                          ; $6953: $40
	rst $38                                          ; $6954: $ff
	add e                                            ; $6955: $83
	db $fc                                           ; $6956: $fc
	rrca                                             ; $6957: $0f
	ldh a, [$7f]                                     ; $6958: $f0 $7f
	add b                                            ; $695a: $80
	rst $38                                          ; $695b: $ff
	nop                                              ; $695c: $00
	rst $38                                          ; $695d: $ff
	inc bc                                           ; $695e: $03
	rst $38                                          ; $695f: $ff
	ccf                                              ; $6960: $3f
	rst $38                                          ; $6961: $ff
	ld e, a                                          ; $6962: $5f
	add b                                            ; $6963: $80

jr_073_6964:
	ld a, a                                          ; $6964: $7f
	rst AddAOntoHL                                          ; $6965: $ef
	sbc [hl]                                         ; $6966: $9e
	sbc $1b                                          ; $6967: $de $1b
	add b                                            ; $6969: $80

jr_073_696a:
	sbc c                                            ; $696a: $99
	ld c, $1f                                        ; $696b: $0e $1f
	sub e                                            ; $696d: $93
	dec c                                            ; $696e: $0d
	sbc d                                            ; $696f: $9a
	rlca                                             ; $6970: $07
	rra                                              ; $6971: $1f
	add b                                            ; $6972: $80
	ld a, a                                          ; $6973: $7f
	jp nz, $fd9d                                     ; $6974: $c2 $9d $fd

	sbc $37                                          ; $6977: $de $37
	add b                                            ; $6979: $80
	ld [hl], e                                       ; $697a: $73
	and b                                            ; $697b: $a0
	sub h                                            ; $697c: $94
	ret nz                                           ; $697d: $c0

	ldh [$fe], a                                     ; $697e: $e0 $fe
	sbc $3f                                          ; $6980: $de $3f
	rst $38                                          ; $6982: $ff
	nop                                              ; $6983: $00
	cp $ff                                           ; $6984: $fe $ff
	ld l, e                                          ; $6986: $6b
	db $fc                                           ; $6987: $fc
	rla                                              ; $6988: $17
	and b                                            ; $6989: $a0
	sbc [hl]                                         ; $698a: $9e
	sbc c                                            ; $698b: $99
	dec hl                                           ; $698c: $2b
	and b                                            ; $698d: $a0
	sbc h                                            ; $698e: $9c
	cp a                                             ; $698f: $bf
	ld a, a                                          ; $6990: $7f
	rst GetHLinHL                                          ; $6991: $cf
	ld [hl], a                                       ; $6992: $77
	and b                                            ; $6993: $a0
	sbc h                                            ; $6994: $9c

jr_073_6995:
	cp $47                                           ; $6995: $fe $47
	ld hl, sp+$2b                                    ; $6997: $f8 $2b
	and b                                            ; $6999: $a0
	ld a, a                                          ; $699a: $7f
	sbc a                                            ; $699b: $9f
	sub a                                            ; $699c: $97
	db $fc                                           ; $699d: $fc
	ld a, $ff                                        ; $699e: $3e $ff
	db $fd                                           ; $69a0: $fd
	ld [bc], a                                       ; $69a1: $02
	cp $87                                           ; $69a2: $fe $87
	ld a, e                                          ; $69a4: $7b
	dec hl                                           ; $69a5: $2b
	and b                                            ; $69a6: $a0
	sbc l                                            ; $69a7: $9d
	dec d                                            ; $69a8: $15
	inc bc                                           ; $69a9: $03
	ld a, e                                          ; $69aa: $7b
	and b                                            ; $69ab: $a0
	sbc h                                            ; $69ac: $9c
	inc c                                            ; $69ad: $0c
	sbc a                                            ; $69ae: $9f
	inc bc                                           ; $69af: $03
	inc sp                                           ; $69b0: $33
	and b                                            ; $69b1: $a0
	sbc d                                            ; $69b2: $9a
	inc c                                            ; $69b3: $0c
	rst SubAFromDE                                          ; $69b4: $df
	ccf                                              ; $69b5: $3f
	rst SubAFromBC                                          ; $69b6: $e7
	ld hl, sp+$7b                                    ; $69b7: $f8 $7b
	and b                                            ; $69b9: $a0
	sbc l                                            ; $69ba: $9d
	ld c, $f7                                        ; $69bb: $0e $f7
	dec sp                                           ; $69bd: $3b
	and b                                            ; $69be: $a0
	ld a, [hl]                                       ; $69bf: $7e
	jp c, $8380                                      ; $69c0: $da $80 $83

	ld a, l                                          ; $69c3: $7d
	ret nz                                           ; $69c4: $c0

	cp a                                             ; $69c5: $bf
	ld h, b                                          ; $69c6: $60
	ld e, a                                          ; $69c7: $5f
	jr nc, jr_073_69f9                               ; $69c8: $30 $2f

	jr c, jr_073_6a03                                ; $69ca: $38 $37

	inc a                                            ; $69cc: $3c
	dec hl                                           ; $69cd: $2b
	ld a, [hl]                                       ; $69ce: $7e
	ld h, l                                          ; $69cf: $65
	or a                                             ; $69d0: $b7
	ld [$fd93], a                                    ; $69d1: $ea $93 $fd
	adc b                                            ; $69d4: $88
	rst $38                                          ; $69d5: $ff
	add a                                            ; $69d6: $87
	rst $38                                          ; $69d7: $ff
	ret nz                                           ; $69d8: $c0

	rst $38                                          ; $69d9: $ff
	ldh [rIE], a                                     ; $69da: $e0 $ff
	or b                                             ; $69dc: $b0

Call_073_69dd:
	rst $38                                          ; $69dd: $ff
	sbc a                                            ; $69de: $9f
	rst $38                                          ; $69df: $ff
	nop                                              ; $69e0: $00
	ld a, a                                          ; $69e1: $7f
	ret nz                                           ; $69e2: $c0

	sbc e                                            ; $69e3: $9b
	cp $00                                           ; $69e4: $fe $00
	nop                                              ; $69e6: $00
	ld a, b                                          ; $69e7: $78
	ld a, e                                          ; $69e8: $7b
	xor [hl]                                         ; $69e9: $ae
	ei                                               ; $69ea: $fb
	ld a, a                                          ; $69eb: $7f
	rst GetHLinHL                                          ; $69ec: $cf
	sub c                                            ; $69ed: $91
	jp $ff81                                         ; $69ee: $c3 $81 $ff


	ld a, [hl]                                       ; $69f1: $7e
	add e                                            ; $69f2: $83
	nop                                              ; $69f3: $00
	rst $38                                          ; $69f4: $ff
	rst FarCall                                          ; $69f5: $f7
	inc e                                            ; $69f6: $1c
	inc d                                            ; $69f7: $14
	inc e                                            ; $69f8: $1c

jr_073_69f9:
	inc d                                            ; $69f9: $14
	call c, $03d4                                    ; $69fa: $dc $d4 $03
	ret nz                                           ; $69fd: $c0

	sbc c                                            ; $69fe: $99
	nop                                              ; $69ff: $00
	inc sp                                           ; $6a00: $33
	adc $fc                                          ; $6a01: $ce $fc

jr_073_6a03:
	db $fc                                           ; $6a03: $fc
	ld a, b                                          ; $6a04: $78
	cp $7f                                           ; $6a05: $fe $7f
	ld l, [hl]                                       ; $6a07: $6e
	cpl                                              ; $6a08: $2f
	ret nz                                           ; $6a09: $c0

	sbc e                                            ; $6a0a: $9b
	add c                                            ; $6a0b: $81
	ld a, [hl]                                       ; $6a0c: $7e
	jp $17bd                                         ; $6a0d: $c3 $bd $17


	ret nz                                           ; $6a10: $c0

	sbc c                                            ; $6a11: $99
	ld c, b                                          ; $6a12: $48
	add [hl]                                         ; $6a13: $86
	rst $38                                          ; $6a14: $ff
	cp $fc                                           ; $6a15: $fe $fc
	ld a, b                                          ; $6a17: $78
	ld [hl], a                                       ; $6a18: $77
	cp [hl]                                          ; $6a19: $be
	ld [hl], a                                       ; $6a1a: $77
	ld a, h                                          ; $6a1b: $7c
	cpl                                              ; $6a1c: $2f
	ret nz                                           ; $6a1d: $c0

	sbc l                                            ; $6a1e: $9d
	ld h, c                                          ; $6a1f: $61
	ld e, [hl]                                       ; $6a20: $5e
	rra                                              ; $6a21: $1f
	ret nz                                           ; $6a22: $c0

	sbc b                                            ; $6a23: $98
	ld c, c                                          ; $6a24: $49
	add [hl]                                         ; $6a25: $86
	cp $ff                                           ; $6a26: $fe $ff
	db $fc                                           ; $6a28: $fc
	cp $7c                                           ; $6a29: $fe $7c
	ld l, e                                          ; $6a2b: $6b
	ld a, [hl]                                       ; $6a2c: $7e
	ld b, a                                          ; $6a2d: $47
	ret nz                                           ; $6a2e: $c0

	xor a                                            ; $6a2f: $af
	ld [bc], a                                       ; $6a30: $02
	push af                                          ; $6a31: $f5
	rst SubAFromDE                                          ; $6a32: $df
	ld bc, $028d                                     ; $6a33: $01 $8d $02
	inc bc                                           ; $6a36: $03
	dec b                                            ; $6a37: $05
	ld b, $0f                                        ; $6a38: $06 $0f
	inc c                                            ; $6a3a: $0c
	dec bc                                           ; $6a3b: $0b
	inc c                                            ; $6a3c: $0c
	dec c                                            ; $6a3d: $0d
	ld a, [bc]                                       ; $6a3e: $0a
	rrca                                             ; $6a3f: $0f
	ld a, [bc]                                       ; $6a40: $0a
	rra                                              ; $6a41: $1f
	dec de                                           ; $6a42: $1b
	inc de                                           ; $6a43: $13
	dec e                                            ; $6a44: $1d
	db $10                                           ; $6a45: $10
	rra                                              ; $6a46: $1f
	push de                                          ; $6a47: $d5
	ld bc, $03df                                     ; $6a48: $01 $df $03
	ld a, a                                          ; $6a4b: $7f
	ldh [rVBK], a                                    ; $6a4c: $e0 $4f
	cp $6f                                           ; $6a4e: $fe $6f
	ld [$1f99], a                                    ; $6a50: $ea $99 $1f
	inc e                                            ; $6a53: $1c
	ld h, a                                          ; $6a54: $67
	ld a, b                                          ; $6a55: $78
	rst SubAFromBC                                          ; $6a56: $e7
	sbc b                                            ; $6a57: $98
	ld l, a                                          ; $6a58: $6f
	cp $9b                                           ; $6a59: $fe $9b
	db $e3                                           ; $6a5b: $e3
	sbc h                                            ; $6a5c: $9c
	di                                               ; $6a5d: $f3
	adc h                                            ; $6a5e: $8c
	ld a, e                                          ; $6a5f: $7b
	cp $96                                           ; $6a60: $fe $96
	call z, Call_073_4cf3                            ; $6a62: $cc $f3 $4c
	di                                               ; $6a65: $f3
	ld c, h                                          ; $6a66: $4c
	pop af                                           ; $6a67: $f1
	ld c, [hl]                                       ; $6a68: $4e
	ld sp, hl                                        ; $6a69: $f9
	and $ef                                          ; $6a6a: $e6 $ef
	ld [hl], a                                       ; $6a6c: $77
	sbc d                                            ; $6a6d: $9a
	rst SubAFromDE                                          ; $6a6e: $df
	inc bc                                           ; $6a6f: $03
	add a                                            ; $6a70: $87
	rlca                                             ; $6a71: $07
	ld b, $05                                        ; $6a72: $06 $05
	ld b, $0a                                        ; $6a74: $06 $0a
	dec c                                            ; $6a76: $0d
	rrca                                             ; $6a77: $0f
	add hl, bc                                       ; $6a78: $09
	dec d                                            ; $6a79: $15
	dec de                                           ; $6a7a: $1b
	ld e, $13                                        ; $6a7b: $1e $13
	dec de                                           ; $6a7d: $1b
	ld d, $37                                        ; $6a7e: $16 $37
	inc l                                            ; $6a80: $2c
	scf                                              ; $6a81: $37
	inc l                                            ; $6a82: $2c
	ld e, e                                          ; $6a83: $5b
	ld l, h                                          ; $6a84: $6c
	ld e, e                                          ; $6a85: $5b
	ld l, h                                          ; $6a86: $6c
	ld e, d                                          ; $6a87: $5a
	ld l, l                                          ; $6a88: $6d
	ldh [$c1], a                                     ; $6a89: $e0 $c1
	sbc l                                            ; $6a8b: $9d
	or a                                             ; $6a8c: $b7
	ld c, d                                          ; $6a8d: $4a
	ld [hl], a                                       ; $6a8e: $77
	cp $9d                                           ; $6a8f: $fe $9d
	and [hl]                                         ; $6a91: $a6
	ld e, e                                          ; $6a92: $5b
	ld a, e                                          ; $6a93: $7b
	cp $80                                           ; $6a94: $fe $80
	ld d, a                                          ; $6a96: $57
	and h                                            ; $6a97: $a4
	ld d, a                                          ; $6a98: $57
	or h                                             ; $6a99: $b4
	ld d, a                                          ; $6a9a: $57
	push af                                          ; $6a9b: $f5
	push af                                          ; $6a9c: $f5
	sub l                                            ; $6a9d: $95
	push af                                          ; $6a9e: $f5
	dec d                                            ; $6a9f: $15
	push af                                          ; $6aa0: $f5
	sub l                                            ; $6aa1: $95
	ld [hl], l                                       ; $6aa2: $75
	sub l                                            ; $6aa3: $95
	ld [hl], l                                       ; $6aa4: $75
	push de                                          ; $6aa5: $d5
	dec [hl]                                         ; $6aa6: $35
	rst SubAFromHL                                          ; $6aa7: $d7
	scf                                              ; $6aa8: $37
	rst FarCall                                          ; $6aa9: $f7
	rla                                              ; $6aaa: $17
	db $ed                                           ; $6aab: $ed
	rra                                              ; $6aac: $1f
	rst AddAOntoHL                                          ; $6aad: $ef
	dec e                                            ; $6aae: $1d
	cp $0d                                           ; $6aaf: $fe $0d
	rst FarCall                                          ; $6ab1: $f7
	ld c, $fb                                        ; $6ab2: $0e $fb
	ld b, $9d                                        ; $6ab4: $06 $9d
	rst $38                                          ; $6ab6: $ff
	nop                                              ; $6ab7: $00
	ld [hl], a                                       ; $6ab8: $77
	cp $5f                                           ; $6ab9: $fe $5f
	ld l, d                                          ; $6abb: $6a
	add b                                            ; $6abc: $80
	rrca                                             ; $6abd: $0f
	ld c, $3f                                        ; $6abe: $0e $3f
	ld sp, $4f7e                                     ; $6ac0: $31 $7e $4f
	rst FarCall                                          ; $6ac3: $f7
	cp c                                             ; $6ac4: $b9
	ld e, a                                          ; $6ac5: $5f
	and $ec                                          ; $6ac6: $e6 $ec
	sbc b                                            ; $6ac8: $98
	db $d3                                           ; $6ac9: $d3
	ld sp, $67ae                                     ; $6aca: $31 $ae $67
	ld e, e                                          ; $6acd: $5b
	call c, $b0af                                    ; $6ace: $dc $af $b0
	push hl                                          ; $6ad1: $e5
	jp nz, $844a                                     ; $6ad2: $c2 $4a $84

	call nc, $8909                                   ; $6ad5: $d4 $09 $89
	ld [de], a                                       ; $6ad8: $12
	ld b, b                                          ; $6ad9: $40
	ld b, $aa                                        ; $6ada: $06 $aa
	sbc b                                            ; $6adc: $98
	ld b, h                                          ; $6add: $44
	ld de, $41cc                                     ; $6ade: $11 $cc $41
	sbc h                                            ; $6ae1: $9c
	ld l, c                                          ; $6ae2: $69
	sbc h                                            ; $6ae3: $9c
	ldh [$c1], a                                     ; $6ae4: $e0 $c1
	add b                                            ; $6ae6: $80
	ld c, c                                          ; $6ae7: $49
	rst $38                                          ; $6ae8: $ff
	ld c, c                                          ; $6ae9: $49
	rst $38                                          ; $6aea: $ff
	ld c, e                                          ; $6aeb: $4b
	rst $38                                          ; $6aec: $ff
	sub e                                            ; $6aed: $93
	rst $38                                          ; $6aee: $ff

jr_073_6aef:
	sbc a                                            ; $6aef: $9f
	db $fd                                           ; $6af0: $fd
	cp a                                             ; $6af1: $bf
	di                                               ; $6af2: $f3
	cp $c2                                           ; $6af3: $fe $c2
	cp $84                                           ; $6af5: $fe $84
	inc [hl]                                         ; $6af7: $34
	call z, $8c74                                    ; $6af8: $cc $74 $8c
	db $f4                                           ; $6afb: $f4
	inc c                                            ; $6afc: $0c
	db $e4                                           ; $6afd: $e4
	inc e                                            ; $6afe: $1c
	db $e4                                           ; $6aff: $e4
	inc e                                            ; $6b00: $1c
	rst SubAFromBC                                          ; $6b01: $e7
	rra                                              ; $6b02: $1f
	db $e4                                           ; $6b03: $e4
	inc e                                            ; $6b04: $1c
	and $8e                                          ; $6b05: $e6 $8e
	ld e, $f2                                        ; $6b07: $1e $f2
	ld c, $f2                                        ; $6b09: $0e $f2
	ld c, $fb                                        ; $6b0b: $0e $fb
	rlca                                             ; $6b0d: $07
	ld sp, hl                                        ; $6b0e: $f9
	rlca                                             ; $6b0f: $07
	db $fd                                           ; $6b10: $fd
	inc bc                                           ; $6b11: $03
	db $fd                                           ; $6b12: $fd
	inc bc                                           ; $6b13: $03
	cp $01                                           ; $6b14: $fe $01
	cp $01                                           ; $6b16: $fe $01
	ld h, a                                          ; $6b18: $67
	ld h, d                                          ; $6b19: $62
	rst SubAFromDE                                          ; $6b1a: $df
	rst $38                                          ; $6b1b: $ff
	adc a                                            ; $6b1c: $8f
	pop af                                           ; $6b1d: $f1
	rrca                                             ; $6b1e: $0f
	ret nz                                           ; $6b1f: $c0

	rst $38                                          ; $6b20: $ff
	ccf                                              ; $6b21: $3f
	rst $38                                          ; $6b22: $ff
	rst $38                                          ; $6b23: $ff
	ret nz                                           ; $6b24: $c0

	nop                                              ; $6b25: $00
	nop                                              ; $6b26: $00
	rst $38                                          ; $6b27: $ff
	rra                                              ; $6b28: $1f
	rst SubAFromBC                                          ; $6b29: $e7
	ld hl, sp+$7f                                    ; $6b2a: $f8 $7f
	add b                                            ; $6b2c: $80
	ld [hl], a                                       ; $6b2d: $77
	ld b, d                                          ; $6b2e: $42
	adc l                                            ; $6b2f: $8d
	cp a                                             ; $6b30: $bf
	ld b, b                                          ; $6b31: $40
	ld a, a                                          ; $6b32: $7f
	add b                                            ; $6b33: $80
	xor a                                            ; $6b34: $af
	db $10                                           ; $6b35: $10
	ld e, a                                          ; $6b36: $5f
	jr nz, jr_073_6aef                               ; $6b37: $20 $b6

	ld c, c                                          ; $6b39: $49
	sub d                                            ; $6b3a: $92
	ld c, c                                          ; $6b3b: $49
	ld c, d                                          ; $6b3c: $4a
	sub c                                            ; $6b3d: $91
	nop                                              ; $6b3e: $00
	sub e                                            ; $6b3f: $93
	inc h                                            ; $6b40: $24
	sub e                                            ; $6b41: $93
	ldh [$c1], a                                     ; $6b42: $e0 $c1
	sbc h                                            ; $6b44: $9c
	adc a                                            ; $6b45: $8f
	nop                                              ; $6b46: $00
	inc bc                                           ; $6b47: $03
	di                                               ; $6b48: $f3
	ld [hl], a                                       ; $6b49: $77
	sbc c                                            ; $6b4a: $99
	sbc [hl]                                         ; $6b4b: $9e
	ld a, a                                          ; $6b4c: $7f
	ld a, e                                          ; $6b4d: $7b
	cp $90                                           ; $6b4e: $fe $90

jr_073_6b50:
	ccf                                              ; $6b50: $3f
	ldh [$ef], a                                     ; $6b51: $e0 $ef
	jr jr_073_6b50                                   ; $6b53: $18 $fb

	nop                                              ; $6b55: $00
	jr nc, @+$41                                     ; $6b56: $30 $3f

	ccf                                              ; $6b58: $3f
	rst $38                                          ; $6b59: $ff
	ret nz                                           ; $6b5a: $c0

	add b                                            ; $6b5b: $80
	ld a, a                                          ; $6b5c: $7f
	ccf                                              ; $6b5d: $3f
	ret nz                                           ; $6b5e: $c0

	ld a, e                                          ; $6b5f: $7b
	jp hl                                            ; $6b60: $e9


	ld a, a                                          ; $6b61: $7f
	ld a, [hl]                                       ; $6b62: $7e
	ld a, e                                          ; $6b63: $7b
	cp $ff                                           ; $6b64: $fe $ff
	rst SubAFromDE                                          ; $6b66: $df
	sbc b                                            ; $6b67: $98
	rst SubAFromDE                                          ; $6b68: $df
	or b                                             ; $6b69: $b0
	sbc d                                            ; $6b6a: $9a
	ld d, b                                          ; $6b6b: $50
	ldh a, [$5f]                                     ; $6b6c: $f0 $5f
	rst $38                                          ; $6b6e: $ff
	ld d, b                                          ; $6b6f: $50
	ld a, e                                          ; $6b70: $7b
	db $ed                                           ; $6b71: $ed
	add b                                            ; $6b72: $80
	ld hl, sp-$01                                    ; $6b73: $f8 $ff
	rst $38                                          ; $6b75: $ff
	rlca                                             ; $6b76: $07
	ld bc, $fc00                                     ; $6b77: $01 $00 $fc
	ldh a, [$ef]                                     ; $6b7a: $f0 $ef
	rra                                              ; $6b7c: $1f
	db $fc                                           ; $6b7d: $fc
	inc bc                                           ; $6b7e: $03
	rst $38                                          ; $6b7f: $ff
	nop                                              ; $6b80: $00
	rst FarCall                                          ; $6b81: $f7
	ld [$04fb], sp                                   ; $6b82: $08 $fb $04
	cp b                                             ; $6b85: $b8
	ld b, [hl]                                       ; $6b86: $46
	db $dd                                           ; $6b87: $dd
	ld [hl+], a                                      ; $6b88: $22
	call z, $a233                                    ; $6b89: $cc $33 $a2
	add hl, de                                       ; $6b8c: $19
	and c                                            ; $6b8d: $a1
	jr @+$33                                         ; $6b8e: $18 $31

	ld [$9c31], sp                                   ; $6b90: $08 $31 $9c
	ld [$192a], sp                                   ; $6b93: $08 $2a $19
	ldh [$c1], a                                     ; $6b96: $e0 $c1
	sbc b                                            ; $6b98: $98
	rst $38                                          ; $6b99: $ff
	inc bc                                           ; $6b9a: $03
	rst AddAOntoHL                                          ; $6b9b: $ef
	inc bc                                           ; $6b9c: $03
	add $03                                          ; $6b9d: $c6 $03
	rlca                                             ; $6b9f: $07
	ld [hl], e                                       ; $6ba0: $73
	cp $7d                                           ; $6ba1: $fe $7d
	add c                                            ; $6ba3: $81
	ld a, a                                          ; $6ba4: $7f
	cp $9d                                           ; $6ba5: $fe $9d
	nop                                              ; $6ba7: $00
	cp $73                                           ; $6ba8: $fe $73
	cp $8c                                           ; $6baa: $fe $8c
	ld hl, sp+$00                                    ; $6bac: $f8 $00
	ret nz                                           ; $6bae: $c0

	ccf                                              ; $6baf: $3f
	cp a                                             ; $6bb0: $bf
	pop bc                                           ; $6bb1: $c1
	db $fd                                           ; $6bb2: $fd
	ld bc, $e3e1                                     ; $6bb3: $01 $e1 $e3
	db $e3                                           ; $6bb6: $e3
	ei                                               ; $6bb7: $fb
	ld a, [de]                                       ; $6bb8: $1a
	rrca                                             ; $6bb9: $0f
	or $e7                                           ; $6bba: $f6 $e7
	ld e, $ff                                        ; $6bbc: $1e $ff
	inc b                                            ; $6bbe: $04
	ld a, e                                          ; $6bbf: $7b
	cp $9c                                           ; $6bc0: $fe $9c
	inc c                                            ; $6bc2: $0c

jr_073_6bc3:
	rst $38                                          ; $6bc3: $ff
	ld [$dff9], sp                                   ; $6bc4: $08 $f9 $df
	ret nz                                           ; $6bc7: $c0

	add b                                            ; $6bc8: $80
	jr c, jr_073_6bc3                                ; $6bc9: $38 $f8

	cp $06                                           ; $6bcb: $fe $06
	dec b                                            ; $6bcd: $05
	ei                                               ; $6bce: $fb
	halt                                             ; $6bcf: $76
	adc a                                            ; $6bd0: $8f
	call Call_073_73f3                               ; $6bd1: $cd $f3 $73
	inc a                                            ; $6bd4: $3c
	sbc c                                            ; $6bd5: $99
	rrca                                             ; $6bd6: $0f
	db $e4                                           ; $6bd7: $e4
	rst JumpTable                                          ; $6bd8: $c7
	cp d                                             ; $6bd9: $ba
	ld [hl], e                                       ; $6bda: $73
	db $ed                                           ; $6bdb: $ed
	add hl, de                                       ; $6bdc: $19
	ld e, [hl]                                       ; $6bdd: $5e
	add h                                            ; $6bde: $84
	xor a                                            ; $6bdf: $af
	ld b, d                                          ; $6be0: $42
	ld b, a                                          ; $6be1: $47
	ld hl, $2552                                     ; $6be2: $21 $52 $25
	add hl, hl                                       ; $6be5: $29
	sub d                                            ; $6be6: $92
	ld [$9398], sp                                   ; $6be7: $08 $98 $93
	ld [bc], a                                       ; $6bea: $02
	sbc c                                            ; $6beb: $99
	ld b, $99                                        ; $6bec: $06 $99
	and [hl]                                         ; $6bee: $a6
	sbc c                                            ; $6bef: $99
	ldh [$c1], a                                     ; $6bf0: $e0 $c1
	sbc d                                            ; $6bf2: $9a
	sub d                                            ; $6bf3: $92
	rst $38                                          ; $6bf4: $ff
	db $db                                           ; $6bf5: $db
	rst $38                                          ; $6bf6: $ff
	ret                                              ; $6bf7: $c9


	ld a, d                                          ; $6bf8: $7a
	inc e                                            ; $6bf9: $1c
	adc c                                            ; $6bfa: $89
	push hl                                          ; $6bfb: $e5
	rst $38                                          ; $6bfc: $ff
	db $fc                                           ; $6bfd: $fc
	ccf                                              ; $6bfe: $3f
	cp $0f                                           ; $6bff: $fe $0f
	rst $38                                          ; $6c01: $ff
	ld bc, $ff80                                     ; $6c02: $01 $80 $ff
	add c                                            ; $6c05: $81
	cp $81                                           ; $6c06: $fe $81
	cp $83                                           ; $6c08: $fe $83
	db $fc                                           ; $6c0a: $fc
	add e                                            ; $6c0b: $83
	db $fc                                           ; $6c0c: $fc
	add a                                            ; $6c0d: $87
	ld hl, sp+$0f                                    ; $6c0e: $f8 $0f
	ldh a, [$72]                                     ; $6c10: $f0 $72
	ret z                                            ; $6c12: $c8

	ld d, e                                          ; $6c13: $53
	cp $f1                                           ; $6c14: $fe $f1
	rst SubAFromDE                                          ; $6c16: $df
	add b                                            ; $6c17: $80
	rst SubAFromDE                                          ; $6c18: $df
	ret nz                                           ; $6c19: $c0

	adc c                                            ; $6c1a: $89
	ld h, b                                          ; $6c1b: $60
	ldh [$b0], a                                     ; $6c1c: $e0 $b0
	ld [hl], b                                       ; $6c1e: $70
	ret nc                                           ; $6c1f: $d0

	or b                                             ; $6c20: $b0
	ld c, b                                          ; $6c21: $48
	ld hl, sp+$68                                    ; $6c22: $f8 $68
	ld hl, sp-$5c                                    ; $6c24: $f8 $a4
	db $fc                                           ; $6c26: $fc
	sub h                                            ; $6c27: $94
	db $fc                                           ; $6c28: $fc
	call nc, $cc7c                                   ; $6c29: $d4 $7c $cc
	db $fc                                           ; $6c2c: $fc
	ld a, [hl+]                                      ; $6c2d: $2a
	cp $a6                                           ; $6c2e: $fe $a6
	ld a, [hl]                                       ; $6c30: $7e
	ld [hl], a                                       ; $6c31: $77
	cp $94                                           ; $6c32: $fe $94
	sub d                                            ; $6c34: $92
	ld a, [hl]                                       ; $6c35: $7e
	ld [de], a                                       ; $6c36: $12
	cp $12                                           ; $6c37: $fe $12
	cp $11                                           ; $6c39: $fe $11
	rst $38                                          ; $6c3b: $ff
	ld de, $51ff                                     ; $6c3c: $11 $ff $51
	ld a, e                                          ; $6c3f: $7b
	cp $94                                           ; $6c40: $fe $94
	ld e, c                                          ; $6c42: $59
	rst $38                                          ; $6c43: $ff
	ld e, b                                          ; $6c44: $58
	rst $38                                          ; $6c45: $ff
	cp b                                             ; $6c46: $b8
	rst $38                                          ; $6c47: $ff
	xor b                                            ; $6c48: $a8
	rst $38                                          ; $6c49: $ff
	jr z, @+$01                                      ; $6c4a: $28 $ff

	ld l, b                                          ; $6c4c: $68
	ld a, e                                          ; $6c4d: $7b
	cp $7f                                           ; $6c4e: $fe $7f
	ld hl, sp-$64                                    ; $6c50: $f8 $9c
	xor h                                            ; $6c52: $ac
	rst $38                                          ; $6c53: $ff
	and h                                            ; $6c54: $a4
	ld a, e                                          ; $6c55: $7b
	cp $9c                                           ; $6c56: $fe $9c
	call nc, Call_073_54ef                           ; $6c58: $d4 $ef $54
	ld a, e                                          ; $6c5b: $7b
	cp $94                                           ; $6c5c: $fe $94
	ld d, [hl]                                       ; $6c5e: $56
	db $ed                                           ; $6c5f: $ed
	ld d, [hl]                                       ; $6c60: $56
	db $ed                                           ; $6c61: $ed
	ld d, a                                          ; $6c62: $57
	db $ec                                           ; $6c63: $ec
	rst SubAFromHL                                          ; $6c64: $d7
	ld l, h                                          ; $6c65: $6c
	sub $6c                                          ; $6c66: $d6 $6c
	add $7b                                          ; $6c68: $c6 $7b
	cp $90                                           ; $6c6a: $fe $90
	jp nz, $ca6e                                     ; $6c6c: $c2 $6e $ca

	ld h, [hl]                                       ; $6c6f: $66
	bit 4, [hl]                                      ; $6c70: $cb $66
	ld c, e                                          ; $6c72: $4b
	and $5a                                          ; $6c73: $e6 $5a
	rst SubAFromBC                                          ; $6c75: $e7
	ld e, d                                          ; $6c76: $5a
	rst SubAFromBC                                          ; $6c77: $e7
	ld c, d                                          ; $6c78: $4a
	rst FarCall                                          ; $6c79: $f7
	ld a, [hl+]                                      ; $6c7a: $2a
	ld [hl], e                                       ; $6c7b: $73
	cp $95                                           ; $6c7c: $fe $95
	xor d                                            ; $6c7e: $aa
	rst FarCall                                          ; $6c7f: $f7
	sbc d                                            ; $6c80: $9a
	rst FarCall                                          ; $6c81: $f7
	jp nc, $fdff                                     ; $6c82: $d2 $ff $fd

	dec a                                            ; $6c85: $3d
	rst $38                                          ; $6c86: $ff
	rlca                                             ; $6c87: $07
	ld [hl], l                                       ; $6c88: $75
	sbc b                                            ; $6c89: $98
	ld a, [hl]                                       ; $6c8a: $7e
	ld d, b                                          ; $6c8b: $50
	ld [hl], a                                       ; $6c8c: $77
	cp $9d                                           ; $6c8d: $fe $9d
	ld sp, hl                                        ; $6c8f: $f9
	ld b, $6f                                        ; $6c90: $06 $6f
	cp $9b                                           ; $6c92: $fe $9b
	pop af                                           ; $6c94: $f1
	ld c, $f3                                        ; $6c95: $0e $f3
	inc c                                            ; $6c97: $0c
	ld [hl], a                                       ; $6c98: $77
	cp $9d                                           ; $6c99: $fe $9d
	db $e3                                           ; $6c9b: $e3
	inc e                                            ; $6c9c: $1c
	db $e3                                           ; $6c9d: $e3
	reti                                             ; $6c9e: $d9


	add b                                            ; $6c9f: $80
	reti                                             ; $6ca0: $d9


	ret nz                                           ; $6ca1: $c0

	sbc l                                            ; $6ca2: $9d
	and b                                            ; $6ca3: $a0
	ldh [$67], a                                     ; $6ca4: $e0 $67

jr_073_6ca6:
	cp $7d                                           ; $6ca6: $fe $7d
	xor $67                                          ; $6ca8: $ee $67
	cp $9d                                           ; $6caa: $fe $9d
	jr z, jr_073_6ca6                                ; $6cac: $28 $f8

jr_073_6cae:
	ccf                                              ; $6cae: $3f
	cp $7f                                           ; $6caf: $fe $7f
	inc h                                            ; $6cb1: $24
	ld [hl], a                                       ; $6cb2: $77
	and $80                                          ; $6cb3: $e6 $80
	sub b                                            ; $6cb5: $90
	ldh a, [$a0]                                     ; $6cb6: $f0 $a0
	ldh [$60], a                                     ; $6cb8: $e0 $60
	ldh [$c0], a                                     ; $6cba: $e0 $c0
	ret nz                                           ; $6cbc: $c0

	ldh [$e0], a                                     ; $6cbd: $e0 $e0
	ret c                                            ; $6cbf: $d8

	jr c, jr_073_6cae                                ; $6cc0: $38 $ec

	inc e                                            ; $6cc2: $1c
	ld [$ed1e], a                                    ; $6cc3: $ea $1e $ed
	dec de                                           ; $6cc6: $1b
	rst FarCall                                          ; $6cc7: $f7
	add hl, de                                       ; $6cc8: $19
	ldh a, [$1f]                                     ; $6cc9: $f0 $1f
	ret nc                                           ; $6ccb: $d0

	ccf                                              ; $6ccc: $3f
	ldh [c], a                                       ; $6ccd: $e2
	dec a                                            ; $6cce: $3d
	and $39                                          ; $6ccf: $e6 $39
	xor l                                            ; $6cd1: $ad
	ld [hl], e                                       ; $6cd2: $73
	db $db                                           ; $6cd3: $db
	sbc d                                            ; $6cd4: $9a
	ld h, a                                          ; $6cd5: $67
	sub $6f                                          ; $6cd6: $d6 $6f
	ld c, [hl]                                       ; $6cd8: $4e
	db $fd                                           ; $6cd9: $fd
	daa                                              ; $6cda: $27
	adc [hl]                                         ; $6cdb: $8e
	ld h, a                                          ; $6cdc: $67
	or $23                                           ; $6cdd: $f6 $23
	nop                                              ; $6cdf: $00
	sub e                                            ; $6ce0: $93
	call z, $ddff                                    ; $6ce1: $cc $ff $dd
	rst $38                                          ; $6ce4: $ff
	rst $38                                          ; $6ce5: $ff
	sbc c                                            ; $6ce6: $99
	rst FarCall                                          ; $6ce7: $f7
	ld b, h                                          ; $6ce8: $44
	rst FarCall                                          ; $6ce9: $f7
	ld a, a                                          ; $6cea: $7f
	sbc c                                            ; $6ceb: $99
	and $77                                          ; $6cec: $e6 $77
	ei                                               ; $6cee: $fb
	sbc l                                            ; $6cef: $9d
	rst FarCall                                          ; $6cf0: $f7
	ld d, l                                          ; $6cf1: $55
	ld h, a                                          ; $6cf2: $67
	ei                                               ; $6cf3: $fb
	ld a, a                                          ; $6cf4: $7f
	pop af                                           ; $6cf5: $f1
	rst SubAFromDE                                          ; $6cf6: $df
	rst $38                                          ; $6cf7: $ff
	rst SubAFromDE                                          ; $6cf8: $df
	ld [hl], a                                       ; $6cf9: $77
	sbc [hl]                                         ; $6cfa: $9e
	ld d, l                                          ; $6cfb: $55
	sbc $ff                                          ; $6cfc: $de $ff
	sbc l                                            ; $6cfe: $9d
	call z, Call_073_69dd                            ; $6cff: $cc $dd $69
	ld bc, $5a96                                     ; $6d02: $01 $96 $5a
	ld l, l                                          ; $6d05: $6d
	ld e, d                                          ; $6d06: $5a
	ld l, l                                          ; $6d07: $6d
	ld e, b                                          ; $6d08: $58
	ld l, a                                          ; $6d09: $6f
	ld e, h                                          ; $6d0a: $5c
	ld l, a                                          ; $6d0b: $6f
	ld d, h                                          ; $6d0c: $54
	ld a, e                                          ; $6d0d: $7b
	cp $92                                           ; $6d0e: $fe $92
	ld d, [hl]                                       ; $6d10: $56
	ld l, e                                          ; $6d11: $6b
	ld d, [hl]                                       ; $6d12: $56
	ld l, e                                          ; $6d13: $6b
	push de                                          ; $6d14: $d5
	db $eb                                           ; $6d15: $eb
	sub l                                            ; $6d16: $95
	db $eb                                           ; $6d17: $eb
	xor e                                            ; $6d18: $ab
	sub $af                                          ; $6d19: $d6 $af
	push de                                          ; $6d1b: $d5
	xor l                                            ; $6d1c: $ad
	ld a, e                                          ; $6d1d: $7b
	cp $7f                                           ; $6d1e: $fe $7f
	ld a, [$af98]                                    ; $6d20: $fa $98 $af
	jp nc, $d2af                                     ; $6d23: $d2 $af $d2

	xor c                                            ; $6d26: $a9
	db $d3                                           ; $6d27: $d3
	adc b                                            ; $6d28: $88
	ld [hl], e                                       ; $6d29: $73
	cp $80                                           ; $6d2a: $fe $80
	add h                                            ; $6d2c: $84
	db $d3                                           ; $6d2d: $d3
	and l                                            ; $6d2e: $a5
	jp nc, $d6a1                                     ; $6d2f: $d2 $a1 $d6

	xor c                                            ; $6d32: $a9
	sub $69                                          ; $6d33: $d6 $69
	sub [hl]                                         ; $6d35: $96
	ld c, c                                          ; $6d36: $49
	or [hl]                                          ; $6d37: $b6
	ld e, e                                          ; $6d38: $5b
	and h                                            ; $6d39: $a4
	ld d, c                                          ; $6d3a: $51
	xor l                                            ; $6d3b: $ad
	ld d, c                                          ; $6d3c: $51
	xor l                                            ; $6d3d: $ad
	pop de                                           ; $6d3e: $d1
	dec l                                            ; $6d3f: $2d
	sub a                                            ; $6d40: $97
	ld l, c                                          ; $6d41: $69
	ld c, d                                          ; $6d42: $4a
	cp l                                             ; $6d43: $bd
	jp z, $88bd                                      ; $6d44: $ca $bd $88

	rst $38                                          ; $6d47: $ff
	sbc l                                            ; $6d48: $9d
	rst FarCall                                          ; $6d49: $f7
	db $dd                                           ; $6d4a: $dd
	ld a, a                                          ; $6d4b: $7f
	cp $df                                           ; $6d4c: $fe $df
	rst $38                                          ; $6d4e: $ff
	add b                                            ; $6d4f: $80
	or e                                             ; $6d50: $b3
	rst $38                                          ; $6d51: $ff
	or e                                             ; $6d52: $b3
	ld a, a                                          ; $6d53: $7f
	pop de                                           ; $6d54: $d1
	ld a, e                                          ; $6d55: $7b
	rst JumpTable                                          ; $6d56: $c7
	rst AddAOntoHL                                          ; $6d57: $ef
	rst SubAFromDE                                          ; $6d58: $df
	db $fc                                           ; $6d59: $fc
	cp h                                             ; $6d5a: $bc
	push de                                          ; $6d5b: $d5
	sub l                                            ; $6d5c: $95
	rst SubAFromHL                                          ; $6d5d: $d7
	rst JumpTable                                          ; $6d5e: $c7
	push bc                                          ; $6d5f: $c5
	ld b, [hl]                                       ; $6d60: $46
	rst JumpTable                                          ; $6d61: $c7
	jp Jump_073_40c0                                 ; $6d62: $c3 $c0 $40


	ldh [rLCDC], a                                   ; $6d65: $e0 $40
	ldh [$a0], a                                     ; $6d67: $e0 $a0
	ldh [$e0], a                                     ; $6d69: $e0 $e0
	or b                                             ; $6d6b: $b0
	ldh [$b0], a                                     ; $6d6c: $e0 $b0
	ldh a, [hDisp1_SCX]                                     ; $6d6e: $f0 $91
	ld hl, sp-$50                                    ; $6d70: $f8 $b0
	add sp, -$48                                     ; $6d72: $e8 $b8
	xor h                                            ; $6d74: $ac
	cp h                                             ; $6d75: $bc
	xor [hl]                                         ; $6d76: $ae
	cp [hl]                                          ; $6d77: $be
	xor e                                            ; $6d78: $ab
	cp a                                             ; $6d79: $bf
	xor c                                            ; $6d7a: $a9
	cp a                                             ; $6d7b: $bf
	add hl, hl                                       ; $6d7c: $29
	ld a, a                                          ; $6d7d: $7f
	ld [hl], a                                       ; $6d7e: $77
	cp $80                                           ; $6d7f: $fe $80
	ld c, c                                          ; $6d81: $49
	ld a, a                                          ; $6d82: $7f
	xor $93                                          ; $6d83: $ee $93
	or [hl]                                          ; $6d85: $b6
	db $db                                           ; $6d86: $db
	or [hl]                                          ; $6d87: $b6
	db $db                                           ; $6d88: $db
	db $db                                           ; $6d89: $db
	rst $38                                          ; $6d8a: $ff
	db $db                                           ; $6d8b: $db
	ld a, a                                          ; $6d8c: $7f
	rst SubAFromDE                                          ; $6d8d: $df
	or $ff                                           ; $6d8e: $f6 $ff
	ld [hl], $ff                                     ; $6d90: $36 $ff
	ld [hl-], a                                      ; $6d92: $32
	rst $38                                          ; $6d93: $ff
	ld [de], a                                       ; $6d94: $12
	ld a, a                                          ; $6d95: $7f
	add b                                            ; $6d96: $80
	rst $38                                          ; $6d97: $ff
	ret nz                                           ; $6d98: $c0

	ld a, a                                          ; $6d99: $7f
	ld h, b                                          ; $6d9a: $60
	rst SubAFromDE                                          ; $6d9b: $df
	ret nz                                           ; $6d9c: $c0

	ld d, c                                          ; $6d9d: $51
	ret nz                                           ; $6d9e: $c0

	ld b, b                                          ; $6d9f: $40
	rst SubAFromDE                                          ; $6da0: $df
	ret nz                                           ; $6da1: $c0

	adc [hl]                                         ; $6da2: $8e
	add b                                            ; $6da3: $80
	xor [hl]                                         ; $6da4: $ae
	add hl, de                                       ; $6da5: $19
	db $ec                                           ; $6da6: $ec
	dec de                                           ; $6da7: $1b
	ld d, l                                          ; $6da8: $55
	cp e                                             ; $6da9: $bb
	ld d, c                                          ; $6daa: $51
	cp a                                             ; $6dab: $bf
	inc sp                                           ; $6dac: $33
	cp $bb                                           ; $6dad: $fe $bb
	xor $bb                                          ; $6daf: $ee $bb
	rst AddAOntoHL                                          ; $6db1: $ef
	rst $38                                          ; $6db2: $ff
	ld h, [hl]                                       ; $6db3: $66
	ld a, e                                          ; $6db4: $7b
	cp $89                                           ; $6db5: $fe $89
	ld [hl+], a                                      ; $6db7: $22
	ei                                               ; $6db8: $fb
	rlca                                             ; $6db9: $07
	rst $38                                          ; $6dba: $ff
	rrca                                             ; $6dbb: $0f
	ld hl, sp+$18                                    ; $6dbc: $f8 $18
	db $eb                                           ; $6dbe: $eb
	dec bc                                           ; $6dbf: $0b
	ld l, [hl]                                       ; $6dc0: $6e
	rrca                                             ; $6dc1: $0f
	ld a, [bc]                                       ; $6dc2: $0a
	dec c                                            ; $6dc3: $0d
	and [hl]                                         ; $6dc4: $a6
	sbc c                                            ; $6dc5: $99
	call Call_073_4dbb                               ; $6dc6: $cd $bb $4d
	cp e                                             ; $6dc9: $bb
	add hl, bc                                       ; $6dca: $09
	rst $38                                          ; $6dcb: $ff
	sub d                                            ; $6dcc: $92
	ld a, e                                          ; $6dcd: $7b
	cp $80                                           ; $6dce: $fe $80
	sub $ff                                          ; $6dd0: $d6 $ff
	sub $7f                                          ; $6dd2: $d6 $7f
	cp $7b                                           ; $6dd4: $fe $7b
	cp $2b                                           ; $6dd6: $fe $2b
	ld a, a                                          ; $6dd8: $7f
	xor e                                            ; $6dd9: $ab
	rst $38                                          ; $6dda: $ff
	pop bc                                           ; $6ddb: $c1
	rst $38                                          ; $6ddc: $ff
	pop hl                                           ; $6ddd: $e1
	cp a                                             ; $6dde: $bf
	or e                                             ; $6ddf: $b3
	cp a                                             ; $6de0: $bf
	and d                                            ; $6de1: $a2
	cp [hl]                                          ; $6de2: $be
	add [hl]                                         ; $6de3: $86
	ld a, [hl]                                       ; $6de4: $7e
	ld b, $ff                                        ; $6de5: $06 $ff
	ld a, [bc]                                       ; $6de7: $0a
	ld a, a                                          ; $6de8: $7f
	dec c                                            ; $6de9: $0d
	ld a, a                                          ; $6dea: $7f
	add hl, de                                       ; $6deb: $19
	cp $13                                           ; $6dec: $fe $13
	cp $99                                           ; $6dee: $fe $99
	daa                                              ; $6df0: $27
	ld a, [$d23f]                                    ; $6df1: $fa $3f $d2
	ld a, a                                          ; $6df4: $7f
	jp nc, $d673                                     ; $6df5: $d2 $73 $d6

	ld e, a                                          ; $6df8: $5f
	cp $9c                                           ; $6df9: $fe $9c
	ld [bc], a                                       ; $6dfb: $02
	nop                                              ; $6dfc: $00
	inc bc                                           ; $6dfd: $03
	ld a, e                                          ; $6dfe: $7b
	cp $93                                           ; $6dff: $fe $93
	rlca                                             ; $6e01: $07
	ld [bc], a                                       ; $6e02: $02
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	rra                                              ; $6e05: $1f
	rrca                                             ; $6e06: $0f
	jr jr_073_6e21                                   ; $6e07: $18 $18

	rra                                              ; $6e09: $1f
	rrca                                             ; $6e0a: $0f
	dec c                                            ; $6e0b: $0d
	rlca                                             ; $6e0c: $07
	ld [hl], a                                       ; $6e0d: $77
	db $f4                                           ; $6e0e: $f4
	sub b                                            ; $6e0f: $90
	jp nz, $e080                                     ; $6e10: $c2 $80 $e0

	ret nz                                           ; $6e13: $c0

	ld hl, sp+$70                                    ; $6e14: $f8 $70
	rst $38                                          ; $6e16: $ff
	dec e                                            ; $6e17: $1d
	rst SubAFromDE                                          ; $6e18: $df
	rlca                                             ; $6e19: $07
	rrca                                             ; $6e1a: $0f
	rlca                                             ; $6e1b: $07
	nop                                              ; $6e1c: $00
	nop                                              ; $6e1d: $00
	add b                                            ; $6e1e: $80
	db $fc                                           ; $6e1f: $fc
	ld a, a                                          ; $6e20: $7f

jr_073_6e21:
	ld [hl], h                                       ; $6e21: $74
	adc e                                            ; $6e22: $8b
	pop bc                                           ; $6e23: $c1
	ret nz                                           ; $6e24: $c0

	pop bc                                           ; $6e25: $c1
	add b                                            ; $6e26: $80
	add e                                            ; $6e27: $83
	nop                                              ; $6e28: $00
	rlca                                             ; $6e29: $07
	ld bc, $030f                                     ; $6e2a: $01 $0f $03
	rra                                              ; $6e2d: $1f
	rlca                                             ; $6e2e: $07
	ccf                                              ; $6e2f: $3f
	rra                                              ; $6e30: $1f
	rst $38                                          ; $6e31: $ff
	ld [hl], e                                       ; $6e32: $73
	rst $38                                          ; $6e33: $ff
	jp $03ff                                         ; $6e34: $c3 $ff $03


	ld d, a                                          ; $6e37: $57
	ret nz                                           ; $6e38: $c0

	sbc d                                            ; $6e39: $9a
	dec e                                            ; $6e3a: $1d
	jr jr_073_6e4a                                   ; $6e3b: $18 $0d

	rrca                                             ; $6e3d: $0f
	rlca                                             ; $6e3e: $07
	ld a, e                                          ; $6e3f: $7b
	ret nc                                           ; $6e40: $d0

	ld a, a                                          ; $6e41: $7f
	di                                               ; $6e42: $f3
	ld a, a                                          ; $6e43: $7f
	call nc, $c02f                                   ; $6e44: $d4 $2f $c0
	sbc l                                            ; $6e47: $9d
	add c                                            ; $6e48: $81
	add b                                            ; $6e49: $80

jr_073_6e4a:
	ld a, e                                          ; $6e4a: $7b
	call nc, $c02b                                   ; $6e4b: $d4 $2b $c0
	sbc h                                            ; $6e4e: $9c
	dec e                                            ; $6e4f: $1d
	ld [$730f], sp                                   ; $6e50: $08 $0f $73
	jp nz, $f27f                                     ; $6e53: $c2 $7f $f2

	ld [hl], a                                       ; $6e56: $77
	call nc, $c037                                   ; $6e57: $d4 $37 $c0
	ld a, a                                          ; $6e5a: $7f
	jp nz, $019e                                     ; $6e5b: $c2 $9e $01

	ld [hl], a                                       ; $6e5e: $77
	call nc, $c023                                   ; $6e5f: $d4 $23 $c0
	ld h, a                                          ; $6e62: $67
	jp nz, $c027                                     ; $6e63: $c2 $27 $c0

	ld a, a                                          ; $6e66: $7f
	jp nz, $c03f                                     ; $6e67: $c2 $3f $c0

	ld l, e                                          ; $6e6a: $6b
	ld [bc], a                                       ; $6e6b: $02
	push af                                          ; $6e6c: $f5
	db $db                                           ; $6e6d: $db
	ld bc, $029d                                     ; $6e6e: $01 $9d $02
	inc bc                                           ; $6e71: $03
	ld [hl], a                                       ; $6e72: $77
	cp $97                                           ; $6e73: $fe $97
	inc b                                            ; $6e75: $04
	rlca                                             ; $6e76: $07
	dec b                                            ; $6e77: $05
	ld b, $05                                        ; $6e78: $06 $05
	ld b, $0b                                        ; $6e7a: $06 $0b
	inc c                                            ; $6e7c: $0c
	di                                               ; $6e7d: $f3
	ld h, a                                          ; $6e7e: $67
	ldh [$7f], a                                     ; $6e7f: $e0 $7f
	and $80                                          ; $6e81: $e6 $80
	rlca                                             ; $6e83: $07
	inc b                                            ; $6e84: $04
	dec bc                                           ; $6e85: $0b
	inc c                                            ; $6e86: $0c
	rla                                              ; $6e87: $17
	jr jr_073_6eb9                                   ; $6e88: $18 $2f

	jr nc, jr_073_6ebb                               ; $6e8a: $30 $2f

	jr nc, @+$41                                     ; $6e8c: $30 $3f

	jr nz, jr_073_6eef                               ; $6e8e: $20 $5f

	ld h, b                                          ; $6e90: $60
	ld a, e                                          ; $6e91: $7b
	ld b, h                                          ; $6e92: $44
	or a                                             ; $6e93: $b7
	ret z                                            ; $6e94: $c8

	and $99                                          ; $6e95: $e6 $99
	ld c, [hl]                                       ; $6e97: $4e
	or c                                             ; $6e98: $b1
	sbc [hl]                                         ; $6e99: $9e
	ld h, c                                          ; $6e9a: $61
	ld a, $c1                                        ; $6e9b: $3e $c1
	ld a, $c1                                        ; $6e9d: $3e $c1
	ld a, [hl]                                       ; $6e9f: $7e
	add c                                            ; $6ea0: $81
	ld a, a                                          ; $6ea1: $7f
	sub [hl]                                         ; $6ea2: $96
	add b                                            ; $6ea3: $80
	rst $38                                          ; $6ea4: $ff
	nop                                              ; $6ea5: $00
	add a                                            ; $6ea6: $87
	ld a, b                                          ; $6ea7: $78
	db $fc                                           ; $6ea8: $fc
	ccf                                              ; $6ea9: $3f
	sbc a                                            ; $6eaa: $9f
	ld a, a                                          ; $6eab: $7f
	db $e3                                           ; $6eac: $e3
	rst SubAFromDE                                          ; $6ead: $df
	ld bc, $1e8b                                     ; $6eae: $01 $8b $1e
	rra                                              ; $6eb1: $1f
	ld hl, $673e                                     ; $6eb2: $21 $3e $67
	ld a, b                                          ; $6eb5: $78
	ld e, a                                          ; $6eb6: $5f
	ld [hl], b                                       ; $6eb7: $70
	sub a                                            ; $6eb8: $97

jr_073_6eb9:
	ld hl, sp-$69                                    ; $6eb9: $f8 $97

jr_073_6ebb:
	ld hl, sp-$2d                                    ; $6ebb: $f8 $d3
	cp h                                             ; $6ebd: $bc
	ld d, c                                          ; $6ebe: $51
	cp [hl]                                          ; $6ebf: $be
	ld l, b                                          ; $6ec0: $68
	sbc a                                            ; $6ec1: $9f
	add sp, $1f                                      ; $6ec2: $e8 $1f
	ld [hl], a                                       ; $6ec4: $77
	cp $9b                                           ; $6ec5: $fe $9b
	db $e4                                           ; $6ec7: $e4
	rra                                              ; $6ec8: $1f
	push af                                          ; $6ec9: $f5
	ld c, $77                                        ; $6eca: $0e $77
	cp $99                                           ; $6ecc: $fe $99
	db $f4                                           ; $6ece: $f4
	dec c                                            ; $6ecf: $0d
	db $f4                                           ; $6ed0: $f4
	dec c                                            ; $6ed1: $0d
	ldh a, [c]                                       ; $6ed2: $f2
	ld a, [bc]                                       ; $6ed3: $0a

jr_073_6ed4:
	ld [hl], a                                       ; $6ed4: $77
	cp $89                                           ; $6ed5: $fe $89
	pop hl                                           ; $6ed7: $e1
	dec de                                           ; $6ed8: $1b
	pop hl                                           ; $6ed9: $e1
	inc de                                           ; $6eda: $13
	ld b, b                                          ; $6edb: $40
	or e                                             ; $6edc: $b3
	ld b, c                                          ; $6edd: $41
	or e                                             ; $6ede: $b3
	inc bc                                           ; $6edf: $03
	db $e3                                           ; $6ee0: $e3
	rlca                                             ; $6ee1: $07
	and $07                                          ; $6ee2: $e6 $07
	db $e4                                           ; $6ee4: $e4
	rrca                                             ; $6ee5: $0f
	ret z                                            ; $6ee6: $c8

	sbc a                                            ; $6ee7: $9f
	ld d, b                                          ; $6ee8: $50
	cp a                                             ; $6ee9: $bf
	ld h, b                                          ; $6eea: $60
	ccf                                              ; $6eeb: $3f
	ldh [$67], a                                     ; $6eec: $e0 $67
	cp b                                             ; $6eee: $b8

jr_073_6eef:
	ld [hl], a                                       ; $6eef: $77
	ld l, h                                          ; $6ef0: $6c
	ld [hl], a                                       ; $6ef1: $77
	ld l, [hl]                                       ; $6ef2: $6e
	ldh [$c1], a                                     ; $6ef3: $e0 $c1
	db $dd                                           ; $6ef5: $dd
	ld bc, $f667                                     ; $6ef6: $01 $67 $f6
	sub e                                            ; $6ef9: $93
	rra                                              ; $6efa: $1f
	ld e, $ff                                        ; $6efb: $1e $ff
	ldh [rP1], a                                     ; $6efd: $e0 $00
	rst $38                                          ; $6eff: $ff
	ret nz                                           ; $6f00: $c0

	ccf                                              ; $6f01: $3f
	ld hl, sp+$07                                    ; $6f02: $f8 $07
	rst $38                                          ; $6f04: $ff
	nop                                              ; $6f05: $00
	ld e, a                                          ; $6f06: $5f
	cp $80                                           ; $6f07: $fe $80
	ld [hl], e                                       ; $6f09: $73
	adc h                                            ; $6f0a: $8c
	jr c, jr_073_6ed4                                ; $6f0b: $38 $c7

	ld e, $e1                                        ; $6f0d: $1e $e1
	rrca                                             ; $6f0f: $0f
	ldh a, [hDisp0_OBP1]                                     ; $6f10: $f0 $87
	ld a, b                                          ; $6f12: $78
	db $e3                                           ; $6f13: $e3
	inc e                                            ; $6f14: $1c
	ld hl, sp+$07                                    ; $6f15: $f8 $07
	db $fc                                           ; $6f17: $fc
	inc bc                                           ; $6f18: $03
	rst $38                                          ; $6f19: $ff
	nop                                              ; $6f1a: $00
	ld a, a                                          ; $6f1b: $7f
	add b                                            ; $6f1c: $80
	ld a, a                                          ; $6f1d: $7f
	add b                                            ; $6f1e: $80
	ccf                                              ; $6f1f: $3f
	ld b, b                                          ; $6f20: $40
	rra                                              ; $6f21: $1f
	jr nz, @+$11                                     ; $6f22: $20 $0f

	db $10                                           ; $6f24: $10
	add a                                            ; $6f25: $87
	ret z                                            ; $6f26: $c8

	adc a                                            ; $6f27: $8f
	add b                                            ; $6f28: $80
	or b                                             ; $6f29: $b0
	add a                                            ; $6f2a: $87
	sbc b                                            ; $6f2b: $98
	add d                                            ; $6f2c: $82
	adc l                                            ; $6f2d: $8d
	add c                                            ; $6f2e: $81
	add [hl]                                         ; $6f2f: $86
	add c                                            ; $6f30: $81
	jp nz, $e380                                     ; $6f31: $c2 $80 $e3

	ret nz                                           ; $6f34: $c0

	pop af                                           ; $6f35: $f1
	ldh [$58], a                                     ; $6f36: $e0 $58
	ld c, $0e                                        ; $6f38: $0e $0e
	dec [hl]                                         ; $6f3a: $35
	dec sp                                           ; $6f3b: $3b
	ld a, [hl]                                       ; $6f3c: $7e
	ld a, l                                          ; $6f3d: $7d
	add e                                            ; $6f3e: $83
	cp $7d                                           ; $6f3f: $fe $7d
	add e                                            ; $6f41: $83
	add b                                            ; $6f42: $80
	ld a, a                                          ; $6f43: $7f
	rst FarCall                                          ; $6f44: $f7
	rrca                                             ; $6f45: $0f
	jr @+$01                                         ; $6f46: $18 $ff

	ldh [$c1], a                                     ; $6f48: $e0 $c1
	add b                                            ; $6f4a: $80
	dec hl                                           ; $6f4b: $2b
	ld [hl], $2f                                     ; $6f4c: $36 $2f
	scf                                              ; $6f4e: $37
	dec l                                            ; $6f4f: $2d
	ld [hl], $5f                                     ; $6f50: $36 $5f
	ld h, h                                          ; $6f52: $64
	ld e, e                                          ; $6f53: $5b
	ld l, h                                          ; $6f54: $6c
	rst $38                                          ; $6f55: $ff
	call z, $4fff                                    ; $6f56: $cc $ff $4f
	rst $38                                          ; $6f59: $ff
	ld c, b                                          ; $6f5a: $48
	ld a, c                                          ; $6f5b: $79
	adc $78                                          ; $6f5c: $ce $78
	rst GetHLinHL                                          ; $6f5e: $cf
	ld a, d                                          ; $6f5f: $7a
	call $ec5b                                       ; $6f60: $cd $5b $ec
	ei                                               ; $6f63: $fb
	inc l                                            ; $6f64: $2c
	ei                                               ; $6f65: $fb
	inc l                                            ; $6f66: $2c
	db $eb                                           ; $6f67: $eb
	inc a                                            ; $6f68: $3c
	db $fd                                           ; $6f69: $fd
	adc d                                            ; $6f6a: $8a
	ld d, $fd                                        ; $6f6b: $16 $fd
	ld d, $f5                                        ; $6f6d: $16 $f5
	ld e, $7e                                        ; $6f6f: $1e $7e
	adc e                                            ; $6f71: $8b
	ld a, [de]                                       ; $6f72: $1a
	rst AddAOntoHL                                          ; $6f73: $ef
	add [hl]                                         ; $6f74: $86

jr_073_6f75:
	ld a, a                                          ; $6f75: $7f
	ldh [c], a                                       ; $6f76: $e2
	rra                                              ; $6f77: $1f
	ld hl, sp+$07                                    ; $6f78: $f8 $07
	cp $01                                           ; $6f7a: $fe $01
	ld a, a                                          ; $6f7c: $7f
	add b                                            ; $6f7d: $80
	rra                                              ; $6f7e: $1f
	ldh [$57], a                                     ; $6f7f: $e0 $57
	ld b, d                                          ; $6f81: $42
	ld [hl], a                                       ; $6f82: $77
	cp $83                                           ; $6f83: $fe $83
	ccf                                              ; $6f85: $3f
	ret nz                                           ; $6f86: $c0

	rrca                                             ; $6f87: $0f
	or b                                             ; $6f88: $b0
	add c                                            ; $6f89: $81
	ld c, [hl]                                       ; $6f8a: $4e
	ret nz                                           ; $6f8b: $c0

	inc hl                                           ; $6f8c: $23
	ld h, b                                          ; $6f8d: $60
	sbc b                                            ; $6f8e: $98
	jr jr_073_6f75                                   ; $6f8f: $18 $e4

	cp e                                             ; $6f91: $bb
	or e                                             ; $6f92: $b3
	or h                                             ; $6f93: $b4
	push hl                                          ; $6f94: $e5
	db $e3                                           ; $6f95: $e3
	and h                                            ; $6f96: $a4
	rst SubAFromBC                                          ; $6f97: $e7
	xor c                                            ; $6f98: $a9
	adc [hl]                                         ; $6f99: $8e
	rst SubAFromHL                                          ; $6f9a: $d7
	adc c                                            ; $6f9b: $89

jr_073_6f9c:
	jp c, $d4d3                                      ; $6f9c: $da $d3 $d4

	jr c, jr_073_6f9c                                ; $6f9f: $38 $fb

	ldh [$c1], a                                     ; $6fa1: $e0 $c1
	sub c                                            ; $6fa3: $91
	sbc b                                            ; $6fa4: $98
	ld a, a                                          ; $6fa5: $7f
	rst $38                                          ; $6fa6: $ff
	rst $38                                          ; $6fa7: $ff
	rst SubAFromDE                                          ; $6fa8: $df
	ld [hl-], a                                      ; $6fa9: $32
	db $dd                                           ; $6faa: $dd
	scf                                              ; $6fab: $37
	rst SubAFromDE                                          ; $6fac: $df
	dec [hl]                                         ; $6fad: $35
	rst SubAFromDE                                          ; $6fae: $df
	ld [hl-], a                                      ; $6faf: $32
	rra                                              ; $6fb0: $1f
	ldh a, [$de]                                     ; $6fb1: $f0 $de
	rst $38                                          ; $6fb3: $ff
	sub h                                            ; $6fb4: $94
	jr z, @+$7e                                      ; $6fb5: $28 $7c

	xor e                                            ; $6fb7: $ab
	jr z, @+$01                                      ; $6fb8: $28 $ff

	jr z, @+$01                                      ; $6fba: $28 $ff

	xor e                                            ; $6fbc: $ab
	ld a, h                                          ; $6fbd: $7c
	rst AddAOntoHL                                          ; $6fbe: $ef
	jr c, jr_073_703c                                ; $6fbf: $38 $7b

	ld sp, hl                                        ; $6fc1: $f9
	ld h, e                                          ; $6fc2: $63
	cp $9d                                           ; $6fc3: $fe $9d
	ld a, a                                          ; $6fc5: $7f
	xor b                                            ; $6fc6: $a8
	ld [hl], a                                       ; $6fc7: $77
	ld sp, hl                                        ; $6fc8: $f9
	sbc l                                            ; $6fc9: $9d
	add hl, hl                                       ; $6fca: $29
	cp $47                                           ; $6fcb: $fe $47
	add sp, $7f                                      ; $6fcd: $e8 $7f
	cp $9b                                           ; $6fcf: $fe $9b
	cp $29                                           ; $6fd1: $fe $29
	add sp, $3e                                      ; $6fd3: $e8 $3e
	ld [hl], a                                       ; $6fd5: $77
	ld hl, sp-$77                                    ; $6fd6: $f8 $89
	ccf                                              ; $6fd8: $3f
	add sp, $29                                      ; $6fd9: $e8 $29
	cp $28                                           ; $6fdb: $fe $28
	dec hl                                           ; $6fdd: $2b
	ldh [$e0], a                                     ; $6fde: $e0 $e0
	jr @-$06                                         ; $6fe0: $18 $f8

	or $0e                                           ; $6fe2: $f6 $0e
	rst $38                                          ; $6fe4: $ff
	rst $38                                          ; $6fe5: $ff
	ld [hl], e                                       ; $6fe6: $73
	adc a                                            ; $6fe7: $8f
	cp h                                             ; $6fe8: $bc
	ld a, a                                          ; $6fe9: $7f
	di                                               ; $6fea: $f3
	rrca                                             ; $6feb: $0f
	inc c                                            ; $6fec: $0c
	di                                               ; $6fed: $f3
	ldh [$c1], a                                     ; $6fee: $e0 $c1
	sbc e                                            ; $6ff0: $9b
	ld d, [hl]                                       ; $6ff1: $56
	cp $f6                                           ; $6ff2: $fe $f6
	cp $77                                           ; $6ff4: $fe $77
	ld h, d                                          ; $6ff6: $62
	sub [hl]                                         ; $6ff7: $96
	db $dd                                           ; $6ff8: $dd
	ld [hl], $df                                     ; $6ff9: $36 $df
	scf                                              ; $6ffb: $37
	db $fc                                           ; $6ffc: $fc
	ld [hl], a                                       ; $6ffd: $77
	sbc h                                            ; $6ffe: $9c
	rst FarCall                                          ; $6fff: $f7
	inc e                                            ; $7000: $1c
	ld [hl], e                                       ; $7001: $73
	cp $89                                           ; $7002: $fe $89
	ld d, $fb                                        ; $7004: $16 $fb
	ld c, $fb                                        ; $7006: $0e $fb
	adc [hl]                                         ; $7008: $8e
	ld a, e                                          ; $7009: $7b
	jp z, $e73f                                      ; $700a: $ca $3f $e7

	dec e                                            ; $700d: $1d
	rst FarCall                                          ; $700e: $f7
	dec c                                            ; $700f: $0d
	ei                                               ; $7010: $fb
	rlca                                             ; $7011: $07
	db $fd                                           ; $7012: $fd

jr_073_7013:
	inc bc                                           ; $7013: $03
	cp $01                                           ; $7014: $fe $01
	rst $38                                          ; $7016: $ff
	nop                                              ; $7017: $00
	rra                                              ; $7018: $1f
	ldh [$75], a                                     ; $7019: $e0 $75
	ld a, [hl-]                                      ; $701b: $3a
	sub a                                            ; $701c: $97
	ldh [$1f], a                                     ; $701d: $e0 $1f
	rst AddAOntoHL                                          ; $701f: $ef
	rra                                              ; $7020: $1f
	rst AddAOntoHL                                          ; $7021: $ef
	jr jr_073_7013                                   ; $7022: $18 $ef

	rra                                              ; $7024: $1f
	halt                                             ; $7025: $76
	ret z                                            ; $7026: $c8

	ld a, a                                          ; $7027: $7f
	ld [$f88f], a                                    ; $7028: $ea $8f $f8
	ld b, $c0                                        ; $702b: $06 $c0
	jr c, jr_073_702f                                ; $702d: $38 $00

jr_073_702f:
	ret nz                                           ; $702f: $c0

	nop                                              ; $7030: $00
	rrca                                             ; $7031: $0f
	cp $01                                           ; $7032: $fe $01
	cp $01                                           ; $7034: $fe $01
	db $fc                                           ; $7036: $fc
	inc bc                                           ; $7037: $03
	ldh a, [rIF]                                     ; $7038: $f0 $0f
	ld a, e                                          ; $703a: $7b
	db $eb                                           ; $703b: $eb

jr_073_703c:
	db $fc                                           ; $703c: $fc
	rst SubAFromDE                                          ; $703d: $df
	add b                                            ; $703e: $80
	ld [hl], a                                       ; $703f: $77
	db $fc                                           ; $7040: $fc
	sbc h                                            ; $7041: $9c
	ld b, b                                          ; $7042: $40
	ret nz                                           ; $7043: $c0

	and b                                            ; $7044: $a0
	ld l, c                                          ; $7045: $69
	ld [hl], b                                       ; $7046: $70
	ldh [$bf], a                                     ; $7047: $e0 $bf
	db $dd                                           ; $7049: $dd
	add b                                            ; $704a: $80
	rst SubAFromDE                                          ; $704b: $df
	ldh a, [$9e]                                     ; $704c: $f0 $9e
	rrca                                             ; $704e: $0f
	ld h, d                                          ; $704f: $62
	ld c, e                                          ; $7050: $4b
	sbc e                                            ; $7051: $9b
	ld h, b                                          ; $7052: $60
	sub a                                            ; $7053: $97
	ldh a, [$0b]                                     ; $7054: $f0 $0b
	ld [hl], e                                       ; $7056: $73
	cp $98                                           ; $7057: $fe $98
	add hl, bc                                       ; $7059: $09
	ld hl, sp+$01                                    ; $705a: $f8 $01
	ld a, b                                          ; $705c: $78
	add h                                            ; $705d: $84
	db $fc                                           ; $705e: $fc
	add d                                            ; $705f: $82
	ld [hl], a                                       ; $7060: $77
	add b                                            ; $7061: $80
	ld a, a                                          ; $7062: $7f
	cp $7d                                           ; $7063: $fe $7d
	ld h, h                                          ; $7065: $64
	add b                                            ; $7066: $80

Jump_073_7067:
	ld a, $bf                                        ; $7067: $3e $bf
	cp $83                                           ; $7069: $fe $83
	cp [hl]                                          ; $706b: $be
	ld a, $c1                                        ; $706c: $3e $c1
	db $dd                                           ; $706e: $dd
	pop hl                                           ; $706f: $e1
	add hl, de                                       ; $7070: $19
	add c                                            ; $7071: $81
	ld [hl], c                                       ; $7072: $71
	inc bc                                           ; $7073: $03
	jp $0303                                         ; $7074: $c3 $03 $03


	rlca                                             ; $7077: $07
	rlca                                             ; $7078: $07
	ld bc, $01e1                                     ; $7079: $01 $e1 $01
	pop bc                                           ; $707c: $c1
	ld bc, $03c1                                     ; $707d: $01 $c1 $03
	di                                               ; $7080: $f3
	rlca                                             ; $7081: $07
	rst SubAFromBC                                          ; $7082: $e7
	rrca                                             ; $7083: $0f
	rst GetHLinHL                                          ; $7084: $cf
	dec sp                                           ; $7085: $3b
	sbc [hl]                                         ; $7086: $9e
	cp a                                             ; $7087: $bf
	rlca                                             ; $7088: $07
	sbc d                                            ; $7089: $9a
	add b                                            ; $708a: $80
	ld [hl], b                                       ; $708b: $70
	ldh a, [$0c]                                     ; $708c: $f0 $0c
	db $fc                                           ; $708e: $fc
	ld [bc], a                                       ; $708f: $02
	cp $02                                           ; $7090: $fe $02
	cp $05                                           ; $7092: $fe $05
	rst $38                                          ; $7094: $ff
	dec b                                            ; $7095: $05
	rst $38                                          ; $7096: $ff
	add hl, bc                                       ; $7097: $09
	rst $38                                          ; $7098: $ff
	inc c                                            ; $7099: $0c
	ei                                               ; $709a: $fb
	inc d                                            ; $709b: $14
	ei                                               ; $709c: $fb
	inc e                                            ; $709d: $1c
	rst FarCall                                          ; $709e: $f7
	ld l, $f5                                        ; $709f: $2e $f5
	ld a, [hl-]                                      ; $70a1: $3a
	db $ed                                           ; $70a2: $ed
	ld e, d                                          ; $70a3: $5a
	db $ed                                           ; $70a4: $ed
	halt                                             ; $70a5: $76
	reti                                             ; $70a6: $d9


	halt                                             ; $70a7: $76
	reti                                             ; $70a8: $d9


	xor a                                            ; $70a9: $af

jr_073_70aa:
	sub l                                            ; $70aa: $95
	ldh a, [$af]                                     ; $70ab: $f0 $af
	ldh a, [$df]                                     ; $70ad: $f0 $df
	ret nz                                           ; $70af: $c0

	rst SubAFromDE                                          ; $70b0: $df
	ldh [$9f], a                                     ; $70b1: $e0 $9f
	and b                                            ; $70b3: $a0
	cp a                                             ; $70b4: $bf
	ld a, c                                          ; $70b5: $79
	ld e, $7f                                        ; $70b6: $1e $7f

Call_073_70b8:
	cp $75                                           ; $70b8: $fe $75
	ld d, $5f                                        ; $70ba: $16 $5f
	cp $77                                           ; $70bc: $fe $77
	xor $3f                                          ; $70be: $ee $3f
	ld c, d                                          ; $70c0: $4a
	reti                                             ; $70c1: $d9


	add b                                            ; $70c2: $80
	ld a, [hl]                                       ; $70c3: $7e
	ldh a, [c]                                       ; $70c4: $f2
	ld c, a                                          ; $70c5: $4f
	cp $9b                                           ; $70c6: $fe $9b
	jr nz, jr_073_70aa                               ; $70c8: $20 $e0

	and b                                            ; $70ca: $a0
	ld h, b                                          ; $70cb: $60
	ld e, a                                          ; $70cc: $5f
	cp $9b                                           ; $70cd: $fe $9b
	sub b                                            ; $70cf: $90
	ld [hl], b                                       ; $70d0: $70
	ret nc                                           ; $70d1: $d0

	jr nc, jr_073_714b                               ; $70d2: $30 $77

	cp $1e                                           ; $70d4: $fe $1e
	nop                                              ; $70d6: $00
	call c, $9add                                    ; $70d7: $dc $dd $9a
	ld d, l                                          ; $70da: $55
	rst $38                                          ; $70db: $ff
	sbc c                                            ; $70dc: $99
	rst $38                                          ; $70dd: $ff
	ld d, l                                          ; $70de: $55
	ld l, a                                          ; $70df: $6f
	ei                                               ; $70e0: $fb
	sbc h                                            ; $70e1: $9c
	ld a, a                                          ; $70e2: $7f
	sbc c                                            ; $70e3: $99
	and $77                                          ; $70e4: $e6 $77
	or $9e                                           ; $70e6: $f6 $9e
	xor $77                                          ; $70e8: $ee $77
	ei                                               ; $70ea: $fb
	ld a, a                                          ; $70eb: $7f
	add sp, -$62                                     ; $70ec: $e8 $9e
	ld d, l                                          ; $70ee: $55
	ld a, e                                          ; $70ef: $7b
	db $e4                                           ; $70f0: $e4
	rst SubAFromDE                                          ; $70f1: $df
	db $dd                                           ; $70f2: $dd
	ld c, [hl]                                       ; $70f3: $4e
	ld bc, $1c81                                     ; $70f4: $01 $81 $1c
	inc de                                           ; $70f7: $13
	ld a, [hl+]                                      ; $70f8: $2a
	scf                                              ; $70f9: $37
	dec h                                            ; $70fa: $25
	ld a, $4b                                        ; $70fb: $3e $4b
	ld a, l                                          ; $70fd: $7d
	ld e, l                                          ; $70fe: $5d
	ld a, e                                          ; $70ff: $7b
	halt                                             ; $7100: $76
	ld a, e                                          ; $7101: $7b
	ld e, d                                          ; $7102: $5a
	ld d, a                                          ; $7103: $57
	dec l                                            ; $7104: $2d
	ld [hl], $25                                     ; $7105: $36 $25
	ld a, $2b                                        ; $7107: $3e $2b
	inc a                                            ; $7109: $3c
	dec hl                                           ; $710a: $2b
	inc a                                            ; $710b: $3c
	rla                                              ; $710c: $17
	jr @+$19                                         ; $710d: $18 $17

	jr jr_073_7127                                   ; $710f: $18 $16

	add hl, de                                       ; $7111: $19
	ld l, $31                                        ; $7112: $2e $31
	ld [hl], a                                       ; $7114: $77
	cp $9d                                           ; $7115: $fe $9d
	inc l                                            ; $7117: $2c
	inc sp                                           ; $7118: $33
	ld l, a                                          ; $7119: $6f
	cp $97                                           ; $711a: $fe $97
	inc d                                            ; $711c: $14
	dec de                                           ; $711d: $1b
	dec d                                            ; $711e: $15
	dec de                                           ; $711f: $1b
	ld de, $091f                                     ; $7120: $11 $1f $09
	rrca                                             ; $7123: $0f
	ld [hl], a                                       ; $7124: $77
	cp $9d                                           ; $7125: $fe $9d

jr_073_7127:
	dec b                                            ; $7127: $05
	rlca                                             ; $7128: $07
	ld [hl], a                                       ; $7129: $77
	cp $dd                                           ; $712a: $fe $dd
	inc bc                                           ; $712c: $03
	add b                                            ; $712d: $80
	ld h, [hl]                                       ; $712e: $66
	cp c                                             ; $712f: $b9
	ret c                                            ; $7130: $d8

	ld h, a                                          ; $7131: $67
	or c                                             ; $7132: $b1
	adc $73                                          ; $7133: $ce $73
	adc l                                            ; $7135: $8d
	ld [hl], e                                       ; $7136: $73
	adc l                                            ; $7137: $8d
	or $0b                                           ; $7138: $f6 $0b
	and $1b                                          ; $713a: $e6 $1b
	db $ec                                           ; $713c: $ec
	rla                                              ; $713d: $17
	call $9504                                       ; $713e: $cd $04 $95
	inc b                                            ; $7141: $04
	sbc l                                            ; $7142: $9d
	inc c                                            ; $7143: $0c
	dec l                                            ; $7144: $2d
	inc c                                            ; $7145: $0c
	inc [hl]                                         ; $7146: $34
	inc e                                            ; $7147: $1c
	ld d, d                                          ; $7148: $52
	ld e, $7e                                        ; $7149: $1e $7e

jr_073_714b:
	ld a, $a2                                        ; $714b: $3e $a2
	add b                                            ; $714d: $80
	ld a, $c7                                        ; $714e: $3e $c7
	ld a, c                                          ; $7150: $79
	rst $38                                          ; $7151: $ff
	ld a, a                                          ; $7152: $7f
	ld e, [hl]                                       ; $7153: $5e
	ld [hl], h                                       ; $7154: $74
	rst SubAFromDE                                          ; $7155: $df
	rst SubAFromBC                                          ; $7156: $e7
	jp $effc                                         ; $7157: $c3 $fc $ef


	or b                                             ; $715a: $b0
	cp a                                             ; $715b: $bf
	ldh [$ef], a                                     ; $715c: $e0 $ef
	ldh a, [$3f]                                     ; $715e: $f0 $3f
	jr nc, @+$19                                     ; $7160: $30 $17

	jr @+$1d                                         ; $7162: $18 $1b

	inc e                                            ; $7164: $1c
	dec d                                            ; $7165: $15
	ld e, $16                                        ; $7166: $1e $16
	rra                                              ; $7168: $1f
	inc de                                           ; $7169: $13
	rra                                              ; $716a: $1f
	rla                                              ; $716b: $17
	dec de                                           ; $716c: $1b
	add b                                            ; $716d: $80
	daa                                              ; $716e: $27
	ld a, [hl-]                                      ; $716f: $3a
	rrca                                             ; $7170: $0f
	adc a                                            ; $7171: $8f
	ld [bc], a                                       ; $7172: $02
	ld a, [hl-]                                      ; $7173: $3a
	add hl, de                                       ; $7174: $19
	ld h, l                                          ; $7175: $65
	inc l                                            ; $7176: $2c
	jp nc, $b946                                     ; $7177: $d2 $46 $b9

	ld b, e                                          ; $717a: $43
	xor h                                            ; $717b: $ac
	pop bc                                           ; $717c: $c1
	ld a, [hl+]                                      ; $717d: $2a
	call nc, $d63d                                   ; $717e: $d4 $3d $d6
	ld d, $53                                        ; $7181: $16 $53
	inc de                                           ; $7183: $13
	ld [$ad8b], a                                    ; $7184: $ea $8b $ad
	adc l                                            ; $7187: $8d
	ei                                               ; $7188: $fb
	rst GetHLinHL                                          ; $7189: $cf
	call c, $b4cf                                    ; $718a: $dc $cf $b4
	add b                                            ; $718d: $80
	rst SubAFromBC                                          ; $718e: $e7
	xor l                                            ; $718f: $ad
	rst SubAFromBC                                          ; $7190: $e7
	rst $38                                          ; $7191: $ff
	db $fc                                           ; $7192: $fc
	xor a                                            ; $7193: $af
	ld [hl], a                                       ; $7194: $77
	ld d, [hl]                                       ; $7195: $56
	cp e                                             ; $7196: $bb
	xor e                                            ; $7197: $ab
	db $dd                                           ; $7198: $dd
	sub a                                            ; $7199: $97
	db $ed                                           ; $719a: $ed
	ld d, l                                          ; $719b: $55
	cp $eb                                           ; $719c: $fe $eb
	ld a, [hl]                                       ; $719e: $7e
	and [hl]                                         ; $719f: $a6
	ld a, a                                          ; $71a0: $7f
	ld d, a                                          ; $71a1: $57
	inc de                                           ; $71a2: $13
	dec hl                                           ; $71a3: $2b
	ld [$8494], sp                                   ; $71a4: $08 $94 $84
	ld h, e                                          ; $71a7: $63
	db $e3                                           ; $71a8: $e3
	sbc b                                            ; $71a9: $98
	ld hl, sp+$07                                    ; $71aa: $f8 $07
	rst $38                                          ; $71ac: $ff
	add d                                            ; $71ad: $82
	ld a, d                                          ; $71ae: $7a
	rst $38                                          ; $71af: $ff
	add d                                            ; $71b0: $82
	cp $50                                           ; $71b1: $fe $50
	ldh a, [rAUD4LEN]                                ; $71b3: $f0 $20
	ldh [$d0], a                                     ; $71b5: $e0 $d0
	ldh a, [$a8]                                     ; $71b7: $f0 $a8
	ld a, b                                          ; $71b9: $78
	ld e, h                                          ; $71ba: $5c
	cp h                                             ; $71bb: $bc
	ret nc                                           ; $71bc: $d0

	or b                                             ; $71bd: $b0
	xor b                                            ; $71be: $a8
	ret c                                            ; $71bf: $d8

	ld l, b                                          ; $71c0: $68
	ret c                                            ; $71c1: $d8

	ld c, b                                          ; $71c2: $48
	ld hl, sp-$38                                    ; $71c3: $f8 $c8
	ld hl, sp-$08                                    ; $71c5: $f8 $f8
	jr c, @+$40                                      ; $71c7: $38 $3e

	adc $f8                                          ; $71c9: $ce $f8
	ld a, e                                          ; $71cb: $7b
	ld hl, sp+$7f                                    ; $71cc: $f8 $7f
	db $f4                                           ; $71ce: $f4
	ld a, a                                          ; $71cf: $7f
	ldh [c], a                                       ; $71d0: $e2
	ld a, a                                          ; $71d1: $7f
	cp $9b                                           ; $71d2: $fe $9b
	sub b                                            ; $71d4: $90
	ldh a, [$a0]                                     ; $71d5: $f0 $a0
	ldh [rPCM34], a                                  ; $71d7: $e0 $77
	cp $9b                                           ; $71d9: $fe $9b
	ld b, b                                          ; $71db: $40

Call_073_71dc:
	ret nz                                           ; $71dc: $c0

	ld b, b                                          ; $71dd: $40
	ret nz                                           ; $71de: $c0

	db $dd                                           ; $71df: $dd
	add b                                            ; $71e0: $80
	di                                               ; $71e1: $f3
	add b                                            ; $71e2: $80
	ld e, d                                          ; $71e3: $5a
	ld [hl], e                                       ; $71e4: $73
	ld d, d                                          ; $71e5: $52
	ld [hl], e                                       ; $71e6: $73
	cp c                                             ; $71e7: $b9
	xor c                                            ; $71e8: $a9
	db $fd                                           ; $71e9: $fd
	ld [hl], l                                       ; $71ea: $75

jr_073_71eb:
	cp $02                                           ; $71eb: $fe $02
	rst AddAOntoHL                                          ; $71ed: $ef
	ld de, $10ef                                     ; $71ee: $11 $ef $10
	rst FarCall                                          ; $71f1: $f7
	jr jr_073_71eb                                   ; $71f2: $18 $f7

	jr @-$01                                         ; $71f4: $18 $fd

	ld [bc], a                                       ; $71f6: $02
	push af                                          ; $71f7: $f5
	ld l, $ff                                        ; $71f8: $2e $ff
	nop                                              ; $71fa: $00
	rst SubAFromBC                                          ; $71fb: $e7
	jr jr_073_727c                                   ; $71fc: $18 $7e

	add c                                            ; $71fe: $81
	cp l                                             ; $71ff: $bd
	jp $8066                                         ; $7200: $c3 $66 $80


	rst $38                                          ; $7203: $ff
	ld h, e                                          ; $7204: $63
	sbc a                                            ; $7205: $9f
	cp $ff                                           ; $7206: $fe $ff
	cp e                                             ; $7208: $bb
	ld l, $fb                                        ; $7209: $2e $fb
	and $82                                          ; $720b: $e6 $82
	rst $38                                          ; $720d: $ff
	or e                                             ; $720e: $b3
	rst GetHLinHL                                          ; $720f: $cf
	push hl                                          ; $7210: $e5
	db $dd                                           ; $7211: $dd
	push hl                                          ; $7212: $e5
	dec a                                            ; $7213: $3d
	rst AddAOntoHL                                          ; $7214: $ef
	dec e                                            ; $7215: $1d
	rst GetHLinHL                                          ; $7216: $cf
	dec a                                            ; $7217: $3d
	push de                                          ; $7218: $d5
	ccf                                              ; $7219: $3f
	or l                                             ; $721a: $b5
	ld a, a                                          ; $721b: $7f
	halt                                             ; $721c: $76
	cp $d6                                           ; $721d: $fe $d6
	cp $54                                           ; $721f: $fe $54
	db $fc                                           ; $7221: $fc
	ld a, a                                          ; $7222: $7f
	cp $2f                                           ; $7223: $fe $2f
	ret nz                                           ; $7225: $c0

	sbc e                                            ; $7226: $9b
	ei                                               ; $7227: $fb
	inc e                                            ; $7228: $1c
	rst $38                                          ; $7229: $ff
	nop                                              ; $722a: $00
	inc bc                                           ; $722b: $03
	ret nz                                           ; $722c: $c0

	inc hl                                           ; $722d: $23
	ret nz                                           ; $722e: $c0

	sbc e                                            ; $722f: $9b
	rst $38                                          ; $7230: $ff
	ld h, $df                                        ; $7231: $26 $df
	inc a                                            ; $7233: $3c
	inc bc                                           ; $7234: $03
	ret nz                                           ; $7235: $c0

	inc de                                           ; $7236: $13
	ret nz                                           ; $7237: $c0

	sbc e                                            ; $7238: $9b
	db $dd                                           ; $7239: $dd
	ld a, $eb                                        ; $723a: $3e $eb
	inc e                                            ; $723c: $1c
	inc bc                                           ; $723d: $03
	ret nz                                           ; $723e: $c0

	ld [hl], e                                       ; $723f: $73
	ret nz                                           ; $7240: $c0

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

jr_073_727c:
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

Call_073_73f3:
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

Jump_073_7780:
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

Call_073_785e:
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

Jump_073_7897:
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

Call_073_78f8:
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

Jump_073_7a07:
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

Jump_073_7b7d:
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

Jump_073_7bfd:
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

Call_073_7dff:
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

Call_073_7e77:
	rst $38                                          ; $7e77: $ff
	rst $38                                          ; $7e78: $ff
	rst $38                                          ; $7e79: $ff
	rst $38                                          ; $7e7a: $ff

Jump_073_7e7b:
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

Call_073_7fca:
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

Call_073_7ffb:
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff
	rst $38                                          ; $7fff: $ff
