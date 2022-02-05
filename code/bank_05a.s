; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05a", ROMX[$4000], BANK[$5a]

	ret                                              ; $4000: $c9


	sbc h                                            ; $4001: $9c
	ld [bc], a                                       ; $4002: $02
	ldh [rAUD3ENA], a                                ; $4003: $e0 $1a
	inc b                                            ; $4005: $04
	halt                                             ; $4006: $76
	xor l                                            ; $4007: $ad
	sbc b                                            ; $4008: $98
	push de                                          ; $4009: $d5
	ld [$ff7f], a                                    ; $400a: $ea $7f $ff
	ld a, a                                          ; $400d: $7f
	ld a, a                                          ; $400e: $7f
	rst $38                                          ; $400f: $ff
	db $dd                                           ; $4010: $dd
	add b                                            ; $4011: $80
	sub e                                            ; $4012: $93
	push bc                                          ; $4013: $c5
	xor d                                            ; $4014: $aa
	push de                                          ; $4015: $d5
	rst $38                                          ; $4016: $ff
	nop                                              ; $4017: $00
	ld b, c                                          ; $4018: $41
	xor d                                            ; $4019: $aa
	call $cfcf                                       ; $401a: $cd $cf $cf
	rst SubAFromDE                                          ; $401d: $df
	rst SubAFromDE                                          ; $401e: $df
	sbc $10                                          ; $401f: $de $10
	sub [hl]                                         ; $4021: $96
	jr nc, jr_05a_4059                               ; $4022: $30 $35

	cp d                                             ; $4024: $ba
	ld [hl], l                                       ; $4025: $75
	cp $ab                                           ; $4026: $fe $ab
	ld e, e                                          ; $4028: $5b
	cp e                                             ; $4029: $bb
	ld a, e                                          ; $402a: $7b
	db $dd                                           ; $402b: $dd
	ei                                               ; $402c: $fb
	call c, $9c06                                    ; $402d: $dc $06 $9c
	xor [hl]                                         ; $4030: $ae
	ld d, [hl]                                       ; $4031: $56
	xor [hl]                                         ; $4032: $ae
	ld e, [hl]                                       ; $4033: $5e
	ret nz                                           ; $4034: $c0

	sbc $07                                          ; $4035: $de $07
	ld a, e                                          ; $4037: $7b
	ei                                               ; $4038: $fb
	call c, $9a1c                                    ; $4039: $dc $1c $9a
	inc c                                            ; $403c: $0c
	nop                                              ; $403d: $00
	nop                                              ; $403e: $00
	db $eb                                           ; $403f: $eb
	rst FarCall                                          ; $4040: $f7
	ld [hl], a                                       ; $4041: $77
	cp $df                                           ; $4042: $fe $df
	rst $38                                          ; $4044: $ff
	sbc h                                            ; $4045: $9c
	rlca                                             ; $4046: $07
	inc b                                            ; $4047: $04
	dec b                                            ; $4048: $05
	sbc $07                                          ; $4049: $de $07
	sbc h                                            ; $404b: $9c
	ld [hl], a                                       ; $404c: $77
	ld a, [hl]                                       ; $404d: $7e
	ld a, [$f8de]                                    ; $404e: $fa $de $f8
	sub b                                            ; $4051: $90
	ld a, [$aafd]                                    ; $4052: $fa $fd $aa
	ret nc                                           ; $4055: $d0

	rst AddAOntoHL                                          ; $4056: $ef
	ld l, e                                          ; $4057: $6b
	ld e, h                                          ; $4058: $5c

jr_05a_4059:
	xor e                                            ; $4059: $ab
	and e                                            ; $405a: $a3
	db $eb                                           ; $405b: $eb
	rst AddAOntoHL                                          ; $405c: $ef
	rst $38                                          ; $405d: $ff
	ldh a, [$15]                                     ; $405e: $f0 $15
	and e                                            ; $4060: $a3
	ld a, d                                          ; $4061: $7a
	call $c97f                                       ; $4062: $cd $7f $c9
	sub d                                            ; $4065: $92
	rra                                              ; $4066: $1f
	and a                                            ; $4067: $a7
	sub c                                            ; $4068: $91
	cpl                                              ; $4069: $2f
	rla                                              ; $406a: $17
	cpl                                              ; $406b: $2f
	sub a                                            ; $406c: $97
	cpl                                              ; $406d: $2f
	rlca                                             ; $406e: $07
	ld bc, $0100                                     ; $406f: $01 $00 $01
	ld [bc], a                                       ; $4072: $02
	ld a, e                                          ; $4073: $7b
	cp $df                                           ; $4074: $fe $df
	ret nz                                           ; $4076: $c0

	sub c                                            ; $4077: $91
	ldh a, [$b8]                                     ; $4078: $f0 $b8
	sbc [hl]                                         ; $407a: $9e
	adc a                                            ; $407b: $8f
	jp $df81                                         ; $407c: $c3 $81 $df


	rst SubAFromBC                                          ; $407f: $e7
	ei                                               ; $4080: $fb
	db $fc                                           ; $4081: $fc
	rst $38                                          ; $4082: $ff
	rst SubAFromDE                                          ; $4083: $df
	rst JumpTable                                          ; $4084: $c7
	ret                                              ; $4085: $c9


	ei                                               ; $4086: $fb
	ld [hl], d                                       ; $4087: $72
	or b                                             ; $4088: $b0
	sbc l                                            ; $4089: $9d
	ld a, a                                          ; $408a: $7f
	ccf                                              ; $408b: $3f
	ld a, e                                          ; $408c: $7b
	db $eb                                           ; $408d: $eb
	sbc [hl]                                         ; $408e: $9e
	inc b                                            ; $408f: $04
	halt                                             ; $4090: $76
	rlca                                             ; $4091: $07
	sbc h                                            ; $4092: $9c
	rlca                                             ; $4093: $07
	ld a, h                                          ; $4094: $7c
	add b                                            ; $4095: $80
	ld h, e                                          ; $4096: $63
	nop                                              ; $4097: $00
	sbc b                                            ; $4098: $98
	ld d, b                                          ; $4099: $50
	add sp, $14                                      ; $409a: $e8 $14
	ld [hl], d                                       ; $409c: $72
	and d                                            ; $409d: $a2
	dec l                                            ; $409e: $2d
	ld a, [de]                                       ; $409f: $1a
	db $db                                           ; $40a0: $db
	rst $38                                          ; $40a1: $ff
	sbc l                                            ; $40a2: $9d
	di                                               ; $40a3: $f3
	push af                                          ; $40a4: $f5
	ld a, [$e063]                                    ; $40a5: $fa $63 $e0
	ld b, [hl]                                       ; $40a8: $46
	ldh a, [$9d]                                     ; $40a9: $f0 $9d
	inc c                                            ; $40ab: $0c
	rrca                                             ; $40ac: $0f
	sbc $0c                                          ; $40ad: $de $0c
	sbc c                                            ; $40af: $99
	dec bc                                           ; $40b0: $0b
	ldh a, [$08]                                     ; $40b1: $f0 $08
	rst $38                                          ; $40b3: $ff
	rst $38                                          ; $40b4: $ff
	ei                                               ; $40b5: $fb
	ld a, e                                          ; $40b6: $7b
	ld h, d                                          ; $40b7: $62
	ld [hl], a                                       ; $40b8: $77
	ldh [$99], a                                     ; $40b9: $e0 $99
	ldh [rAUD3HIGH], a                               ; $40bb: $e0 $1e
	ld bc, $8000                                     ; $40bd: $01 $00 $80
	ld h, b                                          ; $40c0: $60
	ld d, a                                          ; $40c1: $57
	ret nc                                           ; $40c2: $d0

	sbc e                                            ; $40c3: $9b
	ldh [$1f], a                                     ; $40c4: $e0 $1f
	ld bc, $db02                                     ; $40c6: $01 $02 $db
	rst $38                                          ; $40c9: $ff
	ld a, [hl]                                       ; $40ca: $7e
	inc b                                            ; $40cb: $04

Call_05a_40cc:
	sbc $6f                                          ; $40cc: $de $6f
	sbc d                                            ; $40ce: $9a
	ld l, e                                          ; $40cf: $6b
	rla                                              ; $40d0: $17
	xor a                                            ; $40d1: $af
	rla                                              ; $40d2: $17
	ccf                                              ; $40d3: $3f
	db $dd                                           ; $40d4: $dd
	rst SubAFromBC                                          ; $40d5: $e7
	sbc e                                            ; $40d6: $9b
	rst AddAOntoHL                                          ; $40d7: $ef
	scf                                              ; $40d8: $37
	cpl                                              ; $40d9: $2f
	cpl                                              ; $40da: $2f
	db $db                                           ; $40db: $db
	rst $38                                          ; $40dc: $ff
	ld a, [hl]                                       ; $40dd: $7e
	cp c                                             ; $40de: $b9
	sub d                                            ; $40df: $92
	push af                                          ; $40e0: $f5
	cp $fd                                           ; $40e1: $fe $fd
	db $f4                                           ; $40e3: $f4
	ld sp, hl                                        ; $40e4: $f9
	adc d                                            ; $40e5: $8a
	rst $38                                          ; $40e6: $ff
	ld a, [$f5c5]                                    ; $40e7: $fa $c5 $f5
	rst FarCall                                          ; $40ea: $f7
	ldh a, [$fe]                                     ; $40eb: $f0 $fe
	ld a, e                                          ; $40ed: $7b
	ld c, e                                          ; $40ee: $4b
	sub a                                            ; $40ef: $97
	ld [de], a                                       ; $40f0: $12
	xor b                                            ; $40f1: $a8
	ld c, c                                          ; $40f2: $49
	ccf                                              ; $40f3: $3f
	ld d, l                                          ; $40f4: $55
	or l                                             ; $40f5: $b5
	dec sp                                           ; $40f6: $3b
	xor a                                            ; $40f7: $af
	push de                                          ; $40f8: $d5
	rst $38                                          ; $40f9: $ff
	ld [hl], a                                       ; $40fa: $77
	adc d                                            ; $40fb: $8a
	sbc $df                                          ; $40fc: $de $df
	rst SubAFromDE                                          ; $40fe: $df
	rst $38                                          ; $40ff: $ff
	sbc l                                            ; $4100: $9d
	db $fc                                           ; $4101: $fc
	ret nz                                           ; $4102: $c0

	ld [hl], e                                       ; $4103: $73
	ld [hl], b                                       ; $4104: $70
	ld a, e                                          ; $4105: $7b
	ld l, c                                          ; $4106: $69
	sbc [hl]                                         ; $4107: $9e
	add b                                            ; $4108: $80
	sbc $fb                                          ; $4109: $de $fb
	rst SubAFromDE                                          ; $410b: $df
	rst $38                                          ; $410c: $ff
	sbc h                                            ; $410d: $9c
	ccf                                              ; $410e: $3f
	inc bc                                           ; $410f: $03
	ld [bc], a                                       ; $4110: $02
	db $dd                                           ; $4111: $dd
	cp $7b                                           ; $4112: $fe $7b
	scf                                              ; $4114: $37
	sbc [hl]                                         ; $4115: $9e
	nop                                              ; $4116: $00
	call c, $9cf8                                    ; $4117: $dc $f8 $9c
	ld a, [$4203]                                    ; $411a: $fa $03 $42
	db $db                                           ; $411d: $db
	rlca                                             ; $411e: $07
	ld a, a                                          ; $411f: $7f
	and $7d                                          ; $4120: $e6 $7d
	or b                                             ; $4122: $b0
	ld [hl], a                                       ; $4123: $77
	cp $9d                                           ; $4124: $fe $9d
	ld b, b                                          ; $4126: $40
	xor d                                            ; $4127: $aa
	ld a, c                                          ; $4128: $79
	add d                                            ; $4129: $82
	ld [hl], e                                       ; $412a: $73
	cp $80                                           ; $412b: $fe $80
	ld a, b                                          ; $412d: $78
	ld a, a                                          ; $412e: $7f
	ld l, a                                          ; $412f: $6f
	ld a, b                                          ; $4130: $78
	ld a, b                                          ; $4131: $78
	ld a, [hl]                                       ; $4132: $7e
	ld a, a                                          ; $4133: $7f
	ld a, a                                          ; $4134: $7f
	cp b                                             ; $4135: $b8
	ret nc                                           ; $4136: $d0

	cp b                                             ; $4137: $b8
	ret nc                                           ; $4138: $d0

	xor b                                            ; $4139: $a8
	ret nc                                           ; $413a: $d0

	xor [hl]                                         ; $413b: $ae
	rst SubAFromHL                                          ; $413c: $d7
	ld a, [bc]                                       ; $413d: $0a
	ld d, l                                          ; $413e: $55

jr_05a_413f:
	xor d                                            ; $413f: $aa
	dec bc                                           ; $4140: $0b
	rla                                              ; $4141: $17
	ld a, a                                          ; $4142: $7f
	adc a                                            ; $4143: $8f
	rst SubAFromDE                                          ; $4144: $df
	dec b                                            ; $4145: $05
	cp $ff                                           ; $4146: $fe $ff
	inc b                                            ; $4148: $04
	rrca                                             ; $4149: $0f
	rlca                                             ; $414a: $07
	rra                                              ; $414b: $1f
	sub [hl]                                         ; $414c: $96
	rst AddAOntoHL                                          ; $414d: $ef
	rla                                              ; $414e: $17
	xor e                                            ; $414f: $ab
	sub l                                            ; $4150: $95
	dec hl                                           ; $4151: $2b
	sub l                                            ; $4152: $95
	xor e                                            ; $4153: $ab
	sub l                                            ; $4154: $95
	xor a                                            ; $4155: $af
	ld a, c                                          ; $4156: $79
	sbc d                                            ; $4157: $9a
	call c, $8c01                                    ; $4158: $dc $01 $8c
	call nc, $d5ca                                   ; $415b: $d4 $ca $d5
	xor $df                                          ; $415e: $ee $df
	xor $d5                                          ; $4160: $ee $d5
	ld [$80c0], a                                    ; $4162: $ea $c0 $80
	ret nz                                           ; $4165: $c0

	add h                                            ; $4166: $84
	jp nz, $c080                                     ; $4167: $c2 $80 $c0

	add b                                            ; $416a: $80
	ld a, b                                          ; $416b: $78
	ld e, $0f                                        ; $416c: $1e $0f
	ld a, c                                          ; $416e: $79
	ld sp, $267e                                     ; $416f: $31 $7e $26
	add b                                            ; $4172: $80
	db $fd                                           ; $4173: $fd
	ld a, $1f                                        ; $4174: $3e $1f
	and a                                            ; $4176: $a7
	ld d, c                                          ; $4177: $51
	xor [hl]                                         ; $4178: $ae
	ld d, a                                          ; $4179: $57
	xor a                                            ; $417a: $af
	inc d                                            ; $417b: $14
	adc d                                            ; $417c: $8a
	or l                                             ; $417d: $b5
	rst SubAFromDE                                          ; $417e: $df
	add a                                            ; $417f: $87
	ld h, l                                          ; $4180: $65
	and b                                            ; $4181: $a0
	ret nz                                           ; $4182: $c0

	db $eb                                           ; $4183: $eb
	ld [hl], l                                       ; $4184: $75
	ld a, [bc]                                       ; $4185: $0a
	add b                                            ; $4186: $80
	ret z                                            ; $4187: $c8

	jp nz, $8040                                     ; $4188: $c2 $40 $80

	ld c, d                                          ; $418b: $4a
	xor d                                            ; $418c: $aa
	ld c, c                                          ; $418d: $49
	and [hl]                                         ; $418e: $a6
	dec [hl]                                         ; $418f: $35
	ld [hl], a                                       ; $4190: $77
	xor c                                            ; $4191: $a9
	add b                                            ; $4192: $80
	inc [hl]                                         ; $4193: $34
	or c                                             ; $4194: $b1
	ld d, c                                          ; $4195: $51
	or [hl]                                          ; $4196: $b6
	ld e, a                                          ; $4197: $5f
	ld a, [bc]                                       ; $4198: $0a
	sub b                                            ; $4199: $90
	ld [hl], b                                       ; $419a: $70
	jr jr_05a_413f                                   ; $419b: $18 $a2

	push de                                          ; $419d: $d5

Call_05a_419e:
	ld b, d                                          ; $419e: $42
	xor l                                            ; $419f: $ad
	ld d, b                                          ; $41a0: $50
	db $ec                                           ; $41a1: $ec
	rst $38                                          ; $41a2: $ff

Jump_05a_41a3:
	db $dd                                           ; $41a3: $dd
	db $dd                                           ; $41a4: $dd
	ld l, d                                          ; $41a5: $6a
	cp l                                             ; $41a6: $bd
	ld e, d                                          ; $41a7: $5a
	xor a                                            ; $41a8: $af
	dec de                                           ; $41a9: $1b
	jr jr_05a_41b4                                   ; $41aa: $18 $08

	add d                                            ; $41ac: $82
	ld d, l                                          ; $41ad: $55
	xor d                                            ; $41ae: $aa
	ld d, l                                          ; $41af: $55
	xor d                                            ; $41b0: $aa
	ld d, a                                          ; $41b1: $57
	sbc h                                            ; $41b2: $9c
	adc a                                            ; $41b3: $8f

jr_05a_41b4:
	or d                                             ; $41b4: $b2
	ld a, l                                          ; $41b5: $7d
	ld a, e                                          ; $41b6: $7b
	ld sp, hl                                        ; $41b7: $f9
	add b                                            ; $41b8: $80
	ld d, l                                          ; $41b9: $55
	xor b                                            ; $41ba: $a8
	ld [hl], b                                       ; $41bb: $70
	inc c                                            ; $41bc: $0c
	or b                                             ; $41bd: $b0
	add hl, hl                                       ; $41be: $29
	or d                                             ; $41bf: $b2
	db $ed                                           ; $41c0: $ed
	or [hl]                                          ; $41c1: $b6
	adc a                                            ; $41c2: $8f
	or e                                             ; $41c3: $b3
	ret z                                            ; $41c4: $c8

	ld e, a                                          ; $41c5: $5f
	ld e, $5d                                        ; $41c6: $1e $5d
	ld e, d                                          ; $41c8: $5a
	ld e, c                                          ; $41c9: $59
	ld a, b                                          ; $41ca: $78
	ld e, b                                          ; $41cb: $58
	db $10                                           ; $41cc: $10
	jr jr_05a_41dd                                   ; $41cd: $18 $0e

	and l                                            ; $41cf: $a5
	ld e, [hl]                                       ; $41d0: $5e
	adc a                                            ; $41d1: $8f
	sub e                                            ; $41d2: $93
	ld h, c                                          ; $41d3: $61
	ld [bc], a                                       ; $41d4: $02
	rst $38                                          ; $41d5: $ff
	rst FarCall                                          ; $41d6: $f7
	ld e, d                                          ; $41d7: $5a
	add b                                            ; $41d8: $80
	and c                                            ; $41d9: $a1
	ld b, b                                          ; $41da: $40
	nop                                              ; $41db: $00
	inc bc                                           ; $41dc: $03

jr_05a_41dd:
	ld bc, $0105                                     ; $41dd: $01 $05 $01
	ld c, $38                                        ; $41e0: $0e $38
	jp c, Jump_05a_5df9                              ; $41e2: $da $f9 $5d

	xor d                                            ; $41e5: $aa
	ld hl, sp-$08                                    ; $41e6: $f8 $f8
	pop af                                           ; $41e8: $f1
	nop                                              ; $41e9: $00
	inc h                                            ; $41ea: $24
	nop                                              ; $41eb: $00
	db $e3                                           ; $41ec: $e3
	ld e, h                                          ; $41ed: $5c
	or a                                             ; $41ee: $b7
	ld a, a                                          ; $41ef: $7f
	or a                                             ; $41f0: $b7
	rst $38                                          ; $41f1: $ff
	scf                                              ; $41f2: $37
	ld l, e                                          ; $41f3: $6b
	rst SubAFromHL                                          ; $41f4: $d7
	dec hl                                           ; $41f5: $2b
	ld l, a                                          ; $41f6: $6f
	rst AddAOntoHL                                          ; $41f7: $ef
	sub h                                            ; $41f8: $94
	rst AddAOntoHL                                          ; $41f9: $ef
	ld l, a                                          ; $41fa: $6f
	ld l, a                                          ; $41fb: $6f
	rst $38                                          ; $41fc: $ff
	xor a                                            ; $41fd: $af
	ccf                                              ; $41fe: $3f
	ret z                                            ; $41ff: $c8

	ld bc, $3000                                     ; $4200: $01 $00 $30
	ld a, a                                          ; $4203: $7f
	sbc $ff                                          ; $4204: $de $ff
	sub a                                            ; $4206: $97
	ld [hl], a                                       ; $4207: $77
	rrca                                             ; $4208: $0f
	nop                                              ; $4209: $00
	nop                                              ; $420a: $00
	or b                                             ; $420b: $b0
	ei                                               ; $420c: $fb
	or $e4                                           ; $420d: $f6 $e4
	ld a, d                                          ; $420f: $7a
	db $dd                                           ; $4210: $dd
	ld a, [hl]                                       ; $4211: $7e
	jr z, @+$7c                                      ; $4212: $28 $7a

	inc l                                            ; $4214: $2c
	ld [hl], d                                       ; $4215: $72
	add [hl]                                         ; $4216: $86
	ld [hl], l                                       ; $4217: $75
	inc sp                                           ; $4218: $33
	sbc d                                            ; $4219: $9a
	ei                                               ; $421a: $fb
	ld hl, sp-$10                                    ; $421b: $f8 $f0
	ldh a, [$3c]                                     ; $421d: $f0 $3c
	ld a, e                                          ; $421f: $7b
	ldh a, [$9b]                                     ; $4220: $f0 $9b
	db $fc                                           ; $4222: $fc
	nop                                              ; $4223: $00
	nop                                              ; $4224: $00
	dec bc                                           ; $4225: $0b
	cp $92                                           ; $4226: $fe $92
	jp nz, $a084                                     ; $4228: $c2 $84 $a0

	push de                                          ; $422b: $d5
	adc a                                            ; $422c: $8f
	add a                                            ; $422d: $87
	nop                                              ; $422e: $00
	inc bc                                           ; $422f: $03
	add b                                            ; $4230: $80
	nop                                              ; $4231: $00
	ld h, b                                          ; $4232: $60
	ld a, [hl]                                       ; $4233: $7e
	sbc a                                            ; $4234: $9f
	db $fd                                           ; $4235: $fd
	sbc d                                            ; $4236: $9a
	rlca                                             ; $4237: $07
	dec hl                                           ; $4238: $2b
	or [hl]                                          ; $4239: $b6
	db $d3                                           ; $423a: $d3
	ei                                               ; $423b: $fb
	ld a, d                                          ; $423c: $7a
	rst JumpTable                                          ; $423d: $c7
	sbc e                                            ; $423e: $9b
	jr nz, @+$1e                                     ; $423f: $20 $1c

	rst GetHLinHL                                          ; $4241: $cf
	rst AddAOntoHL                                          ; $4242: $ef
	cp $9a                                           ; $4243: $fe $9a
	inc hl                                           ; $4245: $23
	rrca                                             ; $4246: $0f
	stop                                             ; $4247: $10 $00
	ld [hl], b                                       ; $4249: $70
	ld a, c                                          ; $424a: $79
	ld b, a                                          ; $424b: $47
	rst SubAFromDE                                          ; $424c: $df
	rra                                              ; $424d: $1f
	rst SubAFromDE                                          ; $424e: $df
	rrca                                             ; $424f: $0f
	sbc [hl]                                         ; $4250: $9e
	ld l, a                                          ; $4251: $6f
	ld a, e                                          ; $4252: $7b
	cp b                                             ; $4253: $b8
	sbc h                                            ; $4254: $9c
	ld d, h                                          ; $4255: $54
	ld hl, sp+$06                                    ; $4256: $f8 $06
	ld a, e                                          ; $4258: $7b
	db $10                                           ; $4259: $10
	ld a, l                                          ; $425a: $7d
	rst GetHLinHL                                          ; $425b: $cf
	jp c, $dfff                                      ; $425c: $da $ff $df

jr_05a_425f:
	ccf                                              ; $425f: $3f
	sub a                                            ; $4260: $97
	rlca                                             ; $4261: $07
	xor a                                            ; $4262: $af
	ld e, a                                          ; $4263: $5f
	ei                                               ; $4264: $fb
	dec b                                            ; $4265: $05
	ld b, $07                                        ; $4266: $06 $07

jr_05a_4268:
	rst AddAOntoHL                                          ; $4268: $ef
	ld [hl], h                                       ; $4269: $74
	inc [hl]                                         ; $426a: $34
	sbc d                                            ; $426b: $9a
	ei                                               ; $426c: $fb
	db $fd                                           ; $426d: $fd
	ld a, [$fbf7]                                    ; $426e: $fa $f7 $fb
	ld [hl], h                                       ; $4271: $74
	add hl, hl                                       ; $4272: $29
	ld a, a                                          ; $4273: $7f
	adc h                                            ; $4274: $8c
	sbc h                                            ; $4275: $9c
	rst SubAFromBC                                          ; $4276: $e7
	pop af                                           ; $4277: $f1
	db $fc                                           ; $4278: $fc
	ld [hl], l                                       ; $4279: $75
	add b                                            ; $427a: $80
	sub l                                            ; $427b: $95
	rst $38                                          ; $427c: $ff
	adc a                                            ; $427d: $8f
	xor a                                            ; $427e: $af
	add a                                            ; $427f: $87
	cpl                                              ; $4280: $2f
	sbc a                                            ; $4281: $9f
	set 4, e                                         ; $4282: $cb $e3
	ei                                               ; $4284: $fb
	dec b                                            ; $4285: $05
	ld a, b                                          ; $4286: $78
	and a                                            ; $4287: $a7
	sbc c                                            ; $4288: $99
	dec b                                            ; $4289: $05
	add c                                            ; $428a: $81
	pop bc                                           ; $428b: $c1
	ld bc, $fad5                                     ; $428c: $01 $d5 $fa
	ld [hl], b                                       ; $428f: $70
	ld c, c                                          ; $4290: $49
	ld a, [hl]                                       ; $4291: $7e
	ret nz                                           ; $4292: $c0

	sub [hl]                                         ; $4293: $96
	and b                                            ; $4294: $a0
	call nc, $d4aa                                   ; $4295: $d4 $aa $d4
	xor d                                            ; $4298: $aa
	add h                                            ; $4299: $84
	add b                                            ; $429a: $80
	ld d, a                                          ; $429b: $57
	xor e                                            ; $429c: $ab
	ld a, e                                          ; $429d: $7b
	ld [$ae9c], sp                                   ; $429e: $08 $9c $ae
	ld e, a                                          ; $42a1: $5f
	xor a                                            ; $42a2: $af
	ld [hl], b                                       ; $42a3: $70
	dec sp                                           ; $42a4: $3b
	ld a, [hl]                                       ; $42a5: $7e
	ld h, a                                          ; $42a6: $67
	add b                                            ; $42a7: $80
	dec b                                            ; $42a8: $05
	add b                                            ; $42a9: $80
	rst JumpTable                                          ; $42aa: $c7
	ld b, b                                          ; $42ab: $40
	adc c                                            ; $42ac: $89
	ld c, [hl]                                       ; $42ad: $4e
	or b                                             ; $42ae: $b0
	ld l, a                                          ; $42af: $6f
	sub d                                            ; $42b0: $92
	ret nz                                           ; $42b1: $c0

	ret nz                                           ; $42b2: $c0

	adc a                                            ; $42b3: $8f
	ld b, [hl]                                       ; $42b4: $46
	add c                                            ; $42b5: $81
	ld b, b                                          ; $42b6: $40
	sub b                                            ; $42b7: $90
	ld a, a                                          ; $42b8: $7f
	ld a, [hl-]                                      ; $42b9: $3a
	ld [$5929], a                                    ; $42ba: $ea $29 $59
	xor c                                            ; $42bd: $a9
	ret c                                            ; $42be: $d8

	xor b                                            ; $42bf: $a8
	db $dd                                           ; $42c0: $dd
	inc h                                            ; $42c1: $24
	rla                                              ; $42c2: $17
	rst FarCall                                          ; $42c3: $f7
	or a                                             ; $42c4: $b7
	ld [hl], a                                       ; $42c5: $77
	scf                                              ; $42c6: $37
	add a                                            ; $42c7: $87
	rla                                              ; $42c8: $17
	inc sp                                           ; $42c9: $33
	ld d, b                                          ; $42ca: $50
	adc b                                            ; $42cb: $88
	ld d, b                                          ; $42cc: $50
	ret c                                            ; $42cd: $d8

	jr nc, jr_05a_4268                               ; $42ce: $30 $98

	db $10                                           ; $42d0: $10
	sbc b                                            ; $42d1: $98
	ld [$8808], sp                                   ; $42d2: $08 $08 $88
	jr z, jr_05a_425f                                ; $42d5: $28 $88

	ld [$0888], sp                                   ; $42d7: $08 $88 $08
	inc c                                            ; $42da: $0c
	nop                                              ; $42db: $00
	inc bc                                           ; $42dc: $03
	ld a, [hl]                                       ; $42dd: $7e
	ccf                                              ; $42de: $3f
	rra                                              ; $42df: $1f
	rst FarCall                                          ; $42e0: $f7
	sub l                                            ; $42e1: $95
	inc d                                            ; $42e2: $14
	ld [$38e8], sp                                   ; $42e3: $08 $e8 $38
	adc e                                            ; $42e6: $8b
	sub [hl]                                         ; $42e7: $96
	dec hl                                           ; $42e8: $2b
	inc sp                                           ; $42e9: $33
	ld [$de1c], sp                                   ; $42ea: $08 $1c $de
	db $10                                           ; $42ed: $10

jr_05a_42ee:
	sub h                                            ; $42ee: $94
	add hl, de                                       ; $42ef: $19
	db $10                                           ; $42f0: $10
	jr jr_05a_42f7                                   ; $42f1: $18 $04

	ld b, $30                                        ; $42f3: $06 $30
	ld d, b                                          ; $42f5: $50
	ld [hl], c                                       ; $42f6: $71

jr_05a_42f7:
	ld [hl], a                                       ; $42f7: $77
	ld b, [hl]                                       ; $42f8: $46
	ld l, l                                          ; $42f9: $6d
	cp $92                                           ; $42fa: $fe $92
	jr nz, jr_05a_42ee                               ; $42fc: $20 $f0

	nop                                              ; $42fe: $00
	inc bc                                           ; $42ff: $03
	ld a, [hl-]                                      ; $4300: $3a
	or b                                             ; $4301: $b0
	jr nc, jr_05a_4315                               ; $4302: $30 $11

	ld a, [hl]                                       ; $4304: $7e
	ccf                                              ; $4305: $3f
	ld c, a                                          ; $4306: $4f
	cp [hl]                                          ; $4307: $be
	inc e                                            ; $4308: $1c
	cp $7c                                           ; $4309: $fe $7c
	or e                                             ; $430b: $b3
	sub b                                            ; $430c: $90
	or $fc                                           ; $430d: $f6 $fc
	jr jr_05a_4328                                   ; $430f: $18 $17

	dec hl                                           ; $4311: $2b
	rst FarCall                                          ; $4312: $f7
	cp e                                             ; $4313: $bb
	rst SubAFromHL                                          ; $4314: $d7

jr_05a_4315:
	dec hl                                           ; $4315: $2b
	rlca                                             ; $4316: $07
	dec hl                                           ; $4317: $2b
	cpl                                              ; $4318: $2f
	ccf                                              ; $4319: $3f
	ld l, a                                          ; $431a: $6f
	rst AddAOntoHL                                          ; $431b: $ef
	db $dd                                           ; $431c: $dd
	ccf                                              ; $431d: $3f
	ret c                                            ; $431e: $d8

	rst $38                                          ; $431f: $ff
	adc a                                            ; $4320: $8f
	or $e8                                           ; $4321: $f6 $e8
	push af                                          ; $4323: $f5
	ld [$5eb5], a                                    ; $4324: $ea $b5 $5e
	push af                                          ; $4327: $f5

jr_05a_4328:
	dec c                                            ; $4328: $0d
	cp $03                                           ; $4329: $fe $03
	ld b, b                                          ; $432b: $40
	ld a, a                                          ; $432c: $7f
	cp $3e                                           ; $432d: $fe $3e
	ccf                                              ; $432f: $3f
	ldh a, [c]                                       ; $4330: $f2
	ld a, b                                          ; $4331: $78
	ld c, [hl]                                       ; $4332: $4e
	rst SubAFromDE                                          ; $4333: $df
	cp $99                                           ; $4334: $fe $99
	ld e, $fe                                        ; $4336: $1e $fe
	ldh a, [$1f]                                     ; $4338: $f0 $1f
	ldh [rP1], a                                     ; $433a: $e0 $00
	ld [hl], l                                       ; $433c: $75
	add a                                            ; $433d: $87
	sbc [hl]                                         ; $433e: $9e
	rrca                                             ; $433f: $0f
	ld l, c                                          ; $4340: $69
	ld b, $9e                                        ; $4341: $06 $9e
	jr jr_05a_43bc                                   ; $4343: $18 $77

	di                                               ; $4345: $f3
	ld a, e                                          ; $4346: $7b
	db $fd                                           ; $4347: $fd
	ld a, l                                          ; $4348: $7d
	ld c, [hl]                                       ; $4349: $4e
	ei                                               ; $434a: $fb
	sbc h                                            ; $434b: $9c
	ld a, h                                          ; $434c: $7c
	rst SubAFromBC                                          ; $434d: $e7
	ld c, $77                                        ; $434e: $0e $77
	ldh a, [$9d]                                     ; $4350: $f0 $9d
	cp $83                                           ; $4352: $fe $83
	ld l, e                                          ; $4354: $6b
	ldh a, [$8e]                                     ; $4355: $f0 $8e
	inc bc                                           ; $4357: $03
	ret nz                                           ; $4358: $c0

	sbc h                                            ; $4359: $9c
	rra                                              ; $435a: $1f
	ld a, a                                          ; $435b: $7f
	sbc a                                            ; $435c: $9f
	sbc a                                            ; $435d: $9f
	rst $38                                          ; $435e: $ff
	db $fc                                           ; $435f: $fc
	rst $38                                          ; $4360: $ff
	inc bc                                           ; $4361: $03
	nop                                              ; $4362: $00
	sbc a                                            ; $4363: $9f
	add b                                            ; $4364: $80
	add b                                            ; $4365: $80
	sbc a                                            ; $4366: $9f
	rra                                              ; $4367: $1f
	ld h, e                                          ; $4368: $63
	sbc [hl]                                         ; $4369: $9e
	ld a, e                                          ; $436a: $7b
	sub h                                            ; $436b: $94
	ld a, e                                          ; $436c: $7b
	db $fd                                           ; $436d: $fd
	reti                                             ; $436e: $d9


	rlca                                             ; $436f: $07
	sbc [hl]                                         ; $4370: $9e
	ld sp, hl                                        ; $4371: $f9
	jp c, $92f8                                      ; $4372: $da $f8 $92

	cp a                                             ; $4375: $bf
	call c, Call_05a_7efd                            ; $4376: $dc $fd $7e
	cp h                                             ; $4379: $bc
	ret c                                            ; $437a: $d8

	ld hl, sp-$08                                    ; $437b: $f8 $f8
	ld a, h                                          ; $437d: $7c
	cp b                                             ; $437e: $b8
	ld a, c                                          ; $437f: $79
	add hl, sp                                       ; $4380: $39
	inc de                                           ; $4381: $13
	sbc $07                                          ; $4382: $de $07
	sbc e                                            ; $4384: $9b
	dec hl                                           ; $4385: $2b
	rrc e                                            ; $4386: $cb $0b
	dec bc                                           ; $4388: $0b
	sbc $09                                          ; $4389: $de $09
	sbc d                                            ; $438b: $9a
	dec bc                                           ; $438c: $0b
	ld sp, $f171                                     ; $438d: $31 $71 $f1
	pop af                                           ; $4390: $f1
	sbc $f3                                          ; $4391: $de $f3
	sbc [hl]                                         ; $4393: $9e
	pop af                                           ; $4394: $f1
	ld a, d                                          ; $4395: $7a
	call nz, $ffdf                                   ; $4396: $c4 $df $ff
	sbc h                                            ; $4399: $9c
	db $d3                                           ; $439a: $d3
	rst SubAFromBC                                          ; $439b: $e7
	db $d3                                           ; $439c: $d3
	ld a, c                                          ; $439d: $79
	add l                                            ; $439e: $85
	sbc c                                            ; $439f: $99
	ret nz                                           ; $43a0: $c0

	rst FarCall                                          ; $43a1: $f7
	xor $bd                                          ; $43a2: $ee $bd
	xor $57                                          ; $43a4: $ee $57
	ld [hl], l                                       ; $43a6: $75
	ret z                                            ; $43a7: $c8

	sbc $ff                                          ; $43a8: $de $ff
	sbc [hl]                                         ; $43aa: $9e
	xor a                                            ; $43ab: $af
	ld l, a                                          ; $43ac: $6f
	ld sp, hl                                        ; $43ad: $f9
	ld a, d                                          ; $43ae: $7a
	add [hl]                                         ; $43af: $86
	ld a, a                                          ; $43b0: $7f
	cp $86                                           ; $43b1: $fe $86
	push de                                          ; $43b3: $d5
	rst $38                                          ; $43b4: $ff
	rst FarCall                                          ; $43b5: $f7
	rst AddAOntoHL                                          ; $43b6: $ef
	jr nc, jr_05a_43f4                               ; $43b7: $30 $3b

	ccf                                              ; $43b9: $3f
	ld a, $41                                        ; $43ba: $3e $41

jr_05a_43bc:
	add a                                            ; $43bc: $87
	add d                                            ; $43bd: $82
	add a                                            ; $43be: $87
	xor d                                            ; $43bf: $aa
	push de                                          ; $43c0: $d5
	and [hl]                                         ; $43c1: $a6
	or e                                             ; $43c2: $b3
	ld e, d                                          ; $43c3: $5a
	rst $38                                          ; $43c4: $ff
	daa                                              ; $43c5: $27
	dec d                                            ; $43c6: $15
	push af                                          ; $43c7: $f5
	ldh [c], a                                       ; $43c8: $e2
	pop de                                           ; $43c9: $d1
	nop                                              ; $43ca: $00
	push af                                          ; $43cb: $f5
	sbc $ff                                          ; $43cc: $de $ff
	add d                                            ; $43ce: $82
	db $fd                                           ; $43cf: $fd
	ld e, l                                          ; $43d0: $5d
	jp hl                                            ; $43d1: $e9


	rst SubAFromHL                                          ; $43d2: $d7
	sbc l                                            ; $43d3: $9d
	db $dd                                           ; $43d4: $dd
	ld a, e                                          ; $43d5: $7b
	dec l                                            ; $43d6: $2d
	ld [$1fba], sp                                   ; $43d7: $08 $ba $1f
	ld [$ff0a], sp                                   ; $43da: $08 $0a $ff
	db $fc                                           ; $43dd: $fc
	ld a, [$a8d0]                                    ; $43de: $fa $d0 $a8
	ld e, b                                          ; $43e1: $58
	add b                                            ; $43e2: $80
	cp $75                                           ; $43e3: $fe $75
	ld a, [hl+]                                      ; $43e5: $2a
	rst $38                                          ; $43e6: $ff
	jr z, @-$0e                                      ; $43e7: $28 $f0

	ldh [rP1], a                                     ; $43e9: $e0 $00
	ld bc, $db79                                     ; $43eb: $01 $79 $db
	adc d                                            ; $43ee: $8a
	ld a, [hl+]                                      ; $43ef: $2a
	scf                                              ; $43f0: $37
	dec hl                                           ; $43f1: $2b
	ld a, [hl-]                                      ; $43f2: $3a
	and a                                            ; $43f3: $a7

jr_05a_43f4:
	ld a, d                                          ; $43f4: $7a
	db $eb                                           ; $43f5: $eb
	rst $38                                          ; $43f6: $ff
	ld de, $1018                                     ; $43f7: $11 $18 $10
	ld de, $9058                                     ; $43fa: $11 $58 $90
	db $10                                           ; $43fd: $10
	db $10                                           ; $43fe: $10
	or a                                             ; $43ff: $b7
	ld [$af1f], a                                    ; $4400: $ea $1f $af
	ld e, a                                          ; $4403: $5f
	ld a, e                                          ; $4404: $7b
	cp $9b                                           ; $4405: $fe $9b
	ld hl, sp+$37                                    ; $4407: $f8 $37
	nop                                              ; $4409: $00
	ld d, b                                          ; $440a: $50
	db $dd                                           ; $440b: $dd
	ldh a, [hLCDCIntHandlerIdx]                                     ; $440c: $f0 $81
	ld d, c                                          ; $440e: $51
	ld [$fbad], a                                    ; $440f: $ea $ad $fb
	cp a                                             ; $4412: $bf
	ld [$dab5], a                                    ; $4413: $ea $b5 $da
	ldh [$7f], a                                     ; $4416: $e0 $7f
	ld [hl], e                                       ; $4418: $73
	ld h, h                                          ; $4419: $64
	ld h, c                                          ; $441a: $61
	ld a, a                                          ; $441b: $7f
	ld l, [hl]                                       ; $441c: $6e
	ld l, l                                          ; $441d: $6d
	rst FarCall                                          ; $441e: $f7
	xor e                                            ; $441f: $ab
	ld [hl], a                                       ; $4420: $77
	db $eb                                           ; $4421: $eb

Call_05a_4422:
	rst SubAFromHL                                          ; $4422: $d7
	db $eb                                           ; $4423: $eb
	ld [hl], a                                       ; $4424: $77
	xor e                                            ; $4425: $ab
	ld a, a                                          ; $4426: $7f
	rst $38                                          ; $4427: $ff
	rst AddAOntoHL                                          ; $4428: $ef
	ld a, a                                          ; $4429: $7f
	rst AddAOntoHL                                          ; $442a: $ef
	rst $38                                          ; $442b: $ff
	ld a, c                                          ; $442c: $79
	ld a, [$2a74]                                    ; $442d: $fa $74 $2a
	sbc $ff                                          ; $4430: $de $ff
	ld a, h                                          ; $4432: $7c
	ld a, d                                          ; $4433: $7a
	sub e                                            ; $4434: $93
	ld a, [$f9f5]                                    ; $4435: $fa $f5 $f9
	cp $f7                                           ; $4438: $fe $f7
	ld a, [$7cfe]                                    ; $443a: $fa $fe $7c
	rst $38                                          ; $443d: $ff
	ld a, [hl]                                       ; $443e: $7e
	cp $1f                                           ; $443f: $fe $1f
	sbc $fe                                          ; $4441: $de $fe
	rst SubAFromDE                                          ; $4443: $df
	cp [hl]                                          ; $4444: $be
	rst SubAFromDE                                          ; $4445: $df

jr_05a_4446:
	db $fc                                           ; $4446: $fc
	sbc l                                            ; $4447: $9d
	cp h                                             ; $4448: $bc
	db $fc                                           ; $4449: $fc
	ld a, c                                          ; $444a: $79
	adc d                                            ; $444b: $8a
	ld l, [hl]                                       ; $444c: $6e
	rst GetHLinHL                                          ; $444d: $cf
	rst FarCall                                          ; $444e: $f7
	ld b, e                                          ; $444f: $43
	ldh a, [$7d]                                     ; $4450: $f0 $7d
	push af                                          ; $4452: $f5
	ld [hl], e                                       ; $4453: $73
	ldh a, [$6d]                                     ; $4454: $f0 $6d
	xor $7a                                          ; $4456: $ee $7a
	push bc                                          ; $4458: $c5
	ld a, [hl]                                       ; $4459: $7e
	call z, $ff9c                                    ; $445a: $cc $9c $ff
	rra                                              ; $445d: $1f
	rra                                              ; $445e: $1f
	ld a, d                                          ; $445f: $7a
	push bc                                          ; $4460: $c5
	ld a, c                                          ; $4461: $79
	ld a, e                                          ; $4462: $7b
	ld [hl], l                                       ; $4463: $75
	jr c, jr_05a_44e5                                ; $4464: $38 $7f

	ld c, e                                          ; $4466: $4b
	ld a, l                                          ; $4467: $7d
	and [hl]                                         ; $4468: $a6
	sub l                                            ; $4469: $95
	db $fc                                           ; $446a: $fc
	ret nz                                           ; $446b: $c0

	dec a                                            ; $446c: $3d
	ccf                                              ; $446d: $3f
	db $fd                                           ; $446e: $fd
	ccf                                              ; $446f: $3f
	rst $38                                          ; $4470: $ff
	dec a                                            ; $4471: $3d
	inc hl                                           ; $4472: $23
	rst $38                                          ; $4473: $ff
	sbc $f8                                          ; $4474: $de $f8
	ld a, l                                          ; $4476: $7d
	ld h, d                                          ; $4477: $62
	sbc e                                            ; $4478: $9b
	inc b                                            ; $4479: $04
	db $10                                           ; $447a: $10
	add b                                            ; $447b: $80
	rst FarCall                                          ; $447c: $f7
	ld a, c                                          ; $447d: $79
	add c                                            ; $447e: $81
	db $dd                                           ; $447f: $dd
	rst $38                                          ; $4480: $ff
	jp c, $9ef8                                      ; $4481: $da $f8 $9e

	ld sp, hl                                        ; $4484: $f9
	jp c, $9907                                      ; $4485: $da $07 $99

	ld b, $0b                                        ; $4488: $06 $0b
	dec bc                                           ; $448a: $0b
	dec de                                           ; $448b: $1b
	inc sp                                           ; $448c: $33
	ld [hl], e                                       ; $448d: $73
	sbc $f3                                          ; $448e: $de $f3
	adc b                                            ; $4490: $88
	ldh a, [$f1]                                     ; $4491: $f0 $f1
	pop hl                                           ; $4493: $e1
	pop bc                                           ; $4494: $c1
	add c                                            ; $4495: $81
	ld hl, $0141                                     ; $4496: $21 $41 $01
	set 2, e                                         ; $4499: $cb $d3
	rst JumpTable                                          ; $449b: $c7
	rst SubAFromDE                                          ; $449c: $df
	ei                                               ; $449d: $fb

Call_05a_449e:
	rst $38                                          ; $449e: $ff
	cp $f8                                           ; $449f: $fe $f8
	cp l                                             ; $44a1: $bd
	ld a, [hl]                                       ; $44a2: $7e
	cp l                                             ; $44a3: $bd
	cp $84                                           ; $44a4: $fe $84
	ret nc                                           ; $44a6: $d0

	and b                                            ; $44a7: $a0
	ld a, c                                          ; $44a8: $79
	jr c, jr_05a_4446                                ; $44a9: $38 $9b

	ld a, [$a070]                                    ; $44ab: $fa $70 $a0
	ld b, b                                          ; $44ae: $40
	ld [hl], a                                       ; $44af: $77
	xor b                                            ; $44b0: $a8
	sbc h                                            ; $44b1: $9c
	db $fc                                           ; $44b2: $fc
	ld hl, sp+$50                                    ; $44b3: $f8 $50
	ld a, b                                          ; $44b5: $78
	ldh [$9d], a                                     ; $44b6: $e0 $9d
	jp Jump_05a_7bad                                 ; $44b8: $c3 $ad $7b


	add [hl]                                         ; $44bb: $86
	rst SubAFromDE                                          ; $44bc: $df
	inc bc                                           ; $44bd: $03
	sbc h                                            ; $44be: $9c
	ld a, l                                          ; $44bf: $7d
	rst $38                                          ; $44c0: $ff
	rst SubAFromHL                                          ; $44c1: $d7
	db $fd                                           ; $44c2: $fd
	ld a, l                                          ; $44c3: $7d
	ld c, d                                          ; $44c4: $4a
	adc d                                            ; $44c5: $8a
	push de                                          ; $44c6: $d5
	xor a                                            ; $44c7: $af
	nop                                              ; $44c8: $00
	inc e                                            ; $44c9: $1c
	ld hl, sp-$5c                                    ; $44ca: $f8 $a4
	ld c, $1c                                        ; $44cc: $0e $1c
	ld a, [hl+]                                      ; $44ce: $2a
	ld d, b                                          ; $44cf: $50
	nop                                              ; $44d0: $00
	nop                                              ; $44d1: $00
	ld b, $5e                                        ; $44d2: $06 $5e
	db $fc                                           ; $44d4: $fc
	ldh [$d8], a                                     ; $44d5: $e0 $d8
	rst $38                                          ; $44d7: $ff
	rst AddAOntoHL                                          ; $44d8: $ef
	sbc h                                            ; $44d9: $9c

jr_05a_44da:
	ld bc, $657b                                     ; $44da: $01 $7b $65
	sbc [hl]                                         ; $44dd: $9e
	jr nz, jr_05a_44da                               ; $44de: $20 $fa

	sbc e                                            ; $44e0: $9b
	db $10                                           ; $44e1: $10
	ld a, [$c0cc]                                    ; $44e2: $fa $cc $c0

jr_05a_44e5:
	ld [hl], b                                       ; $44e5: $70
	xor b                                            ; $44e6: $a8
	ld a, [$2f99]                                    ; $44e7: $fa $99 $2f
	scf                                              ; $44ea: $37
	ld hl, $040c                                     ; $44eb: $21 $0c $04
	ld [bc], a                                       ; $44ee: $02
	ld a, e                                          ; $44ef: $7b
	add sp, -$21                                     ; $44f0: $e8 $df
	db $10                                           ; $44f2: $10
	db $fc                                           ; $44f3: $fc
	ld a, [hl]                                       ; $44f4: $7e
	add $99                                          ; $44f5: $c6 $99
	ld c, a                                          ; $44f7: $4f
	rla                                              ; $44f8: $17
	add a                                            ; $44f9: $87
	add b                                            ; $44fa: $80
	ld bc, $de61                                     ; $44fb: $01 $61 $de
	ldh a, [$9e]                                     ; $44fe: $f0 $9e
	ldh [$7b], a                                     ; $4500: $e0 $7b
	sbc c                                            ; $4502: $99
	sbc c                                            ; $4503: $99
	nop                                              ; $4504: $00
	and a                                            ; $4505: $a7
	pop bc                                           ; $4506: $c1
	or h                                             ; $4507: $b4
	cp $e5                                           ; $4508: $fe $e5
	sbc $ff                                          ; $450a: $de $ff
	sbc e                                            ; $450c: $9b
	ld c, l                                          ; $450d: $4d
	nop                                              ; $450e: $00
	jr jr_05a_4520                                   ; $450f: $18 $0f

	ld a, b                                          ; $4511: $78
	or c                                             ; $4512: $b1
	adc h                                            ; $4513: $8c
	nop                                              ; $4514: $00
	rst FarCall                                          ; $4515: $f7
	xor e                                            ; $4516: $ab
	rla                                              ; $4517: $17
	db $eb                                           ; $4518: $eb
	or a                                             ; $4519: $b7
	xor e                                            ; $451a: $ab
	rst FarCall                                          ; $451b: $f7
	res 5, a                                         ; $451c: $cb $af
	rra                                              ; $451e: $1f
	ccf                                              ; $451f: $3f

jr_05a_4520:
	ccf                                              ; $4520: $3f
	sbc a                                            ; $4521: $9f
	ccf                                              ; $4522: $3f
	ld a, a                                          ; $4523: $7f
	ld a, a                                          ; $4524: $7f
	rst $38                                          ; $4525: $ff
	cp $70                                           ; $4526: $fe $70
	ret                                              ; $4528: $c9


	sub [hl]                                         ; $4529: $96
	rst $38                                          ; $452a: $ff
	ld a, h                                          ; $452b: $7c
	cp e                                             ; $452c: $bb
	ld d, l                                          ; $452d: $55
	ldh [c], a                                       ; $452e: $e2
	push af                                          ; $452f: $f5
	cp [hl]                                          ; $4530: $be
	rst $38                                          ; $4531: $ff
	cp [hl]                                          ; $4532: $be
	ld a, e                                          ; $4533: $7b
	ldh a, [$79]                                     ; $4534: $f0 $79
	add c                                            ; $4536: $81
	sbc l                                            ; $4537: $9d
	inc a                                            ; $4538: $3c
	sbc h                                            ; $4539: $9c
	ld a, d                                          ; $453a: $7a
	jp $c27a                                         ; $453b: $c3 $7a $c2


	sbc l                                            ; $453e: $9d
	cp h                                             ; $453f: $bc
	call z, $9169                                    ; $4540: $cc $69 $91
	ld sp, hl                                        ; $4543: $f9
	sbc [hl]                                         ; $4544: $9e
	inc h                                            ; $4545: $24
	ld c, e                                          ; $4546: $4b
	ldh a, [rOCPD]                                   ; $4547: $f0 $6b
	di                                               ; $4549: $f3
	sbc [hl]                                         ; $454a: $9e
	db $fd                                           ; $454b: $fd
	ld sp, hl                                        ; $454c: $f9
	sbc [hl]                                         ; $454d: $9e
	xor b                                            ; $454e: $a8
	ld a, d                                          ; $454f: $7a
	push bc                                          ; $4550: $c5
	ld a, e                                          ; $4551: $7b
	db $fd                                           ; $4552: $fd
	sbc l                                            ; $4553: $9d
	ld a, a                                          ; $4554: $7f
	dec de                                           ; $4555: $1b
	ld a, d                                          ; $4556: $7a
	push bc                                          ; $4557: $c5
	ld a, a                                          ; $4558: $7f
	db $fd                                           ; $4559: $fd
	sbc e                                            ; $455a: $9b
	ld bc, $041e                                     ; $455b: $01 $1e $04
	ldh [$de], a                                     ; $455e: $e0 $de
	jp nz, $c09b                                     ; $4560: $c2 $9b $c0

	ret z                                            ; $4563: $c8

	call nz, $7b12                                   ; $4564: $c4 $12 $7b
	sub [hl]                                         ; $4567: $96
	sbc e                                            ; $4568: $9b
	ld a, a                                          ; $4569: $7f
	ld [hl], a                                       ; $456a: $77
	di                                               ; $456b: $f3
	ld [hl], b                                       ; $456c: $70
	ld [hl], a                                       ; $456d: $77
	ld b, h                                          ; $456e: $44
	ld [hl], a                                       ; $456f: $77
	cp $76                                           ; $4570: $fe $76
	xor b                                            ; $4572: $a8
	ld a, a                                          ; $4573: $7f
	sub l                                            ; $4574: $95
	ld a, l                                          ; $4575: $7d
	xor h                                            ; $4576: $ac
	sbc c                                            ; $4577: $99
	nop                                              ; $4578: $00
	db $ed                                           ; $4579: $ed
	rst SubAFromDE                                          ; $457a: $df
	xor a                                            ; $457b: $af
	dec d                                            ; $457c: $15
	ld a, [hl+]                                      ; $457d: $2a
	ld [hl], h                                       ; $457e: $74
	halt                                             ; $457f: $76
	ld a, [$fb9a]                                    ; $4580: $fa $9a $fb
	rst SubAFromHL                                          ; $4583: $d7
	xor e                                            ; $4584: $ab
	ld d, h                                          ; $4585: $54
	and b                                            ; $4586: $a0
	halt                                             ; $4587: $76
	ld [hl], d                                       ; $4588: $72
	ld l, [hl]                                       ; $4589: $6e
	ld [hl], c                                       ; $458a: $71
	sbc e                                            ; $458b: $9b
	nop                                              ; $458c: $00
	ret nc                                           ; $458d: $d0

	jp $fcc0                                         ; $458e: $c3 $c0 $fc


	rst SubAFromDE                                          ; $4591: $df
	add b                                            ; $4592: $80
	ld [hl], a                                       ; $4593: $77
	ld b, d                                          ; $4594: $42
	rst $38                                          ; $4595: $ff
	sbc h                                            ; $4596: $9c
	ld [hl], c                                       ; $4597: $71
	add c                                            ; $4598: $81
	add hl, bc                                       ; $4599: $09
	ld a, [$fb6a]                                    ; $459a: $fa $6a $fb
	sbc l                                            ; $459d: $9d
	db $ed                                           ; $459e: $ed
	rlca                                             ; $459f: $07
	db $fc                                           ; $45a0: $fc
	sbc h                                            ; $45a1: $9c
	rlca                                             ; $45a2: $07
	rra                                              ; $45a3: $1f
	ld hl, sp+$6f                                    ; $45a4: $f8 $6f
	ld a, a                                          ; $45a6: $7f
	halt                                             ; $45a7: $76
	xor e                                            ; $45a8: $ab
	cp $6f                                           ; $45a9: $fe $6f
	jp z, $cd6e                                      ; $45ab: $ca $6e $cd

	sbc h                                            ; $45ae: $9c
	ld [rRAMG], sp                                   ; $45af: $08 $00 $00
	halt                                             ; $45b2: $76
	push af                                          ; $45b3: $f5
	ldh [$dc], a                                     ; $45b4: $e0 $dc
	ld l, [hl]                                       ; $45b6: $6e
	cp d                                             ; $45b7: $ba
	ld e, c                                          ; $45b8: $59
	ldh [c], a                                       ; $45b9: $e2
	sbc c                                            ; $45ba: $99
	ld a, a                                          ; $45bb: $7f
	rra                                              ; $45bc: $1f
	adc a                                            ; $45bd: $8f
	ld b, e                                          ; $45be: $43
	ld bc, $6b04                                     ; $45bf: $01 $04 $6b
	ld [hl], d                                       ; $45c2: $72
	ld a, d                                          ; $45c3: $7a
	ret nz                                           ; $45c4: $c0

	sbc b                                            ; $45c5: $98
	ld l, e                                          ; $45c6: $6b
	rst FarCall                                          ; $45c7: $f7
	ld l, e                                          ; $45c8: $6b
	di                                               ; $45c9: $f3
	ld l, e                                          ; $45ca: $6b
	db $e3                                           ; $45cb: $e3
	ld l, e                                          ; $45cc: $6b
	jp c, Jump_05a_75ff                              ; $45cd: $da $ff $75

	ei                                               ; $45d0: $fb
	sub a                                            ; $45d1: $97
	ld hl, sp-$0f                                    ; $45d2: $f8 $f1
	pop hl                                           ; $45d4: $e1
	ld bc, $df80                                     ; $45d5: $01 $80 $df
	halt                                             ; $45d8: $76
	db $db                                           ; $45d9: $db
	ld l, l                                          ; $45da: $6d
	ld [hl], h                                       ; $45db: $74
	ld a, h                                          ; $45dc: $7c
	ld a, [hl-]                                      ; $45dd: $3a
	sub a                                            ; $45de: $97
	push hl                                          ; $45df: $e5
	sub b                                            ; $45e0: $90
	ret nz                                           ; $45e1: $c0

	add b                                            ; $45e2: $80
	add b                                            ; $45e3: $80
	db $f4                                           ; $45e4: $f4
	ldh [$60], a                                     ; $45e5: $e0 $60
	ld a, e                                          ; $45e7: $7b
	ld a, [$80df]                                    ; $45e8: $fa $df $80
	ld l, a                                          ; $45eb: $6f
	ld [hl-], a                                      ; $45ec: $32
	rst FarCall                                          ; $45ed: $f7
	ld e, d                                          ; $45ee: $5a
	ld b, l                                          ; $45ef: $45
	db $ec                                           ; $45f0: $ec
	ld l, a                                          ; $45f1: $6f
	ld a, [de]                                       ; $45f2: $1a
	rst FarCall                                          ; $45f3: $f7
	sbc [hl]                                         ; $45f4: $9e
	ld a, l                                          ; $45f5: $7d

jr_05a_45f6:
	ld l, e                                          ; $45f6: $6b
	rst AddAOntoHL                                          ; $45f7: $ef
	sbc [hl]                                         ; $45f8: $9e
	add d                                            ; $45f9: $82
	ld a, [$819e]                                    ; $45fa: $fa $9e $81
	ld h, a                                          ; $45fd: $67
	rst FarCall                                          ; $45fe: $f7
	ld a, [$2703]                                    ; $45ff: $fa $03 $27
	ldh [$cf], a                                     ; $4602: $e0 $cf
	ld a, l                                          ; $4604: $7d
	jr nz, @+$81                                     ; $4605: $20 $7f

	ld a, d                                          ; $4607: $7a
	ld h, e                                          ; $4608: $63
	ld a, c                                          ; $4609: $79
	ld e, d                                          ; $460a: $5a
	cp b                                             ; $460b: $b8
	ldh [$cc], a                                     ; $460c: $e0 $cc
	sbc c                                            ; $460e: $99
	ld bc, $0121                                     ; $460f: $01 $21 $01
	rrca                                             ; $4612: $0f
	dec e                                            ; $4613: $1d
	rlca                                             ; $4614: $07
	ld a, d                                          ; $4615: $7a
	ld e, h                                          ; $4616: $5c
	sbc e                                            ; $4617: $9b
	jr nc, jr_05a_461a                               ; $4618: $30 $00

jr_05a_461a:
	inc b                                            ; $461a: $04
	ld b, $7a                                        ; $461b: $06 $7a
	ld a, [hl+]                                      ; $461d: $2a
	sbc b                                            ; $461e: $98
	or e                                             ; $461f: $b3
	ld l, e                                          ; $4620: $6b
	and e                                            ; $4621: $a3
	ld a, a                                          ; $4622: $7f
	db $e3                                           ; $4623: $e3
	cp a                                             ; $4624: $bf
	ld e, a                                          ; $4625: $5f
	ld [hl], h                                       ; $4626: $74
	pop bc                                           ; $4627: $c1
	ld a, a                                          ; $4628: $7f
	cp $90                                           ; $4629: $fe $90
	rst GetHLinHL                                          ; $462b: $cf
	add e                                            ; $462c: $83
	rst $38                                          ; $462d: $ff
	nop                                              ; $462e: $00
	rrca                                             ; $462f: $0f
	rst $38                                          ; $4630: $ff
	ld sp, hl                                        ; $4631: $f9
	add c                                            ; $4632: $81
	add c                                            ; $4633: $81
	jr nc, jr_05a_45f6                               ; $4634: $30 $c0

	rst $38                                          ; $4636: $ff
	rst FarCall                                          ; $4637: $f7
	ld a, c                                          ; $4638: $79
	add a                                            ; $4639: $87
	db $dd                                           ; $463a: $dd
	rst $38                                          ; $463b: $ff
	db $db                                           ; $463c: $db
	add b                                            ; $463d: $80
	sbc l                                            ; $463e: $9d
	rst SubAFromBC                                          ; $463f: $e7
	ld hl, sp-$27                                    ; $4640: $f8 $d9
	add b                                            ; $4642: $80
	ld a, [$e165]                                    ; $4643: $fa $65 $e1
	ld [bc], a                                       ; $4646: $02
	cp c                                             ; $4647: $b9
	ldh [hLCDCIntHandlerIdx], a                                     ; $4648: $e0 $81
	sbc c                                            ; $464a: $99
	ldh [$a0], a                                     ; $464b: $e0 $a0
	ld b, b                                          ; $464d: $40
	jr @+$0a                                         ; $464e: $18 $08

	jr jr_05a_46c8                                   ; $4650: $18 $76

	ld h, a                                          ; $4652: $67
	ld a, a                                          ; $4653: $7f
	ld e, l                                          ; $4654: $5d
	sbc [hl]                                         ; $4655: $9e
	inc d                                            ; $4656: $14
	ldh [$be], a                                     ; $4657: $e0 $be
	sbc $01                                          ; $4659: $de $01
	ld l, e                                          ; $465b: $6b
	rst FarCall                                          ; $465c: $f7
	ei                                               ; $465d: $fb
	sub d                                            ; $465e: $92
	xor e                                            ; $465f: $ab
	ld [hl], e                                       ; $4660: $73
	dec bc                                           ; $4661: $0b
	inc de                                           ; $4662: $13
	dec bc                                           ; $4663: $0b
	rlca                                             ; $4664: $07
	ld bc, $f701                                     ; $4665: $01 $01 $f7
	sbc a                                            ; $4668: $9f
	rra                                              ; $4669: $1f
	rrca                                             ; $466a: $0f
	rlca                                             ; $466b: $07
	ld a, d                                          ; $466c: $7a
	ld e, d                                          ; $466d: $5a
	sub l                                            ; $466e: $95
	ld [bc], a                                       ; $466f: $02
	ld a, [de]                                       ; $4670: $1a
	ld b, b                                          ; $4671: $40
	and c                                            ; $4672: $a1
	ld b, b                                          ; $4673: $40
	nop                                              ; $4674: $00
	jr nz, jr_05a_4677                               ; $4675: $20 $00

jr_05a_4677:
	rst $38                                          ; $4677: $ff
	ldh a, [$fb]                                     ; $4678: $f0 $fb
	sbc b                                            ; $467a: $98
	ld [hl], b                                       ; $467b: $70
	ldh a, [$e4]                                     ; $467c: $f0 $e4
	db $fc                                           ; $467e: $fc
	or $f0                                           ; $467f: $f6 $f0
	and b                                            ; $4681: $a0
	ld [hl], d                                       ; $4682: $72
	rst SubAFromDE                                          ; $4683: $df
	ld a, c                                          ; $4684: $79
	ld [$c97f], sp                                   ; $4685: $08 $7f $c9
	sbc l                                            ; $4688: $9d
	ld [bc], a                                       ; $4689: $02
	ld bc, $dd51                                     ; $468a: $01 $51 $dd
	ld a, e                                          ; $468d: $7b
	di                                               ; $468e: $f3
	ld [bc], a                                       ; $468f: $02
	call nz, $925f                                   ; $4690: $c4 $5f $92
	ld h, a                                          ; $4693: $67
	ldh a, [c]                                       ; $4694: $f2
	sbc l                                            ; $4695: $9d
	dec e                                            ; $4696: $1d
	cp $02                                           ; $4697: $fe $02
	add d                                            ; $4699: $82
	ldh [$c9], a                                     ; $469a: $e0 $c9
	sbc e                                            ; $469c: $9b
	ld b, $0a                                        ; $469d: $06 $0a
	ld d, $1c                                        ; $469f: $16 $1c
	ld l, l                                          ; $46a1: $6d
	adc c                                            ; $46a2: $89
	ld [hl], a                                       ; $46a3: $77
	ld d, c                                          ; $46a4: $51
	ld a, [$609e]                                    ; $46a5: $fa $9e $60
	ld l, b                                          ; $46a8: $68
	ld a, c                                          ; $46a9: $79
	sbc l                                            ; $46aa: $9d
	db $10                                           ; $46ab: $10
	ld h, b                                          ; $46ac: $60
	ldh [$b0], a                                     ; $46ad: $e0 $b0
	ld c, b                                          ; $46af: $48
	rst GetHLinHL                                          ; $46b0: $cf
	sbc h                                            ; $46b1: $9c

Jump_05a_46b2:
	ldh a, [rAUDENA]                                 ; $46b2: $f0 $26
	rlca                                             ; $46b4: $07
	ld c, l                                          ; $46b5: $4d
	and h                                            ; $46b6: $a4
	ld a, h                                          ; $46b7: $7c
	ld c, c                                          ; $46b8: $49
	ldh [$b4], a                                     ; $46b9: $e0 $b4
	sbc e                                            ; $46bb: $9b
	or $7e                                           ; $46bc: $f6 $7e
	ld l, h                                          ; $46be: $6c

jr_05a_46bf:
	inc c                                            ; $46bf: $0c
	ld c, a                                          ; $46c0: $4f
	add b                                            ; $46c1: $80
	inc bc                                           ; $46c2: $03
	and b                                            ; $46c3: $a0
	ldh [$df], a                                     ; $46c4: $e0 $df
	ld a, [hl]                                       ; $46c6: $7e
	dec hl                                           ; $46c7: $2b

jr_05a_46c8:
	ld l, b                                          ; $46c8: $68
	ld [$596e], a                                    ; $46c9: $ea $6e $59
	sbc h                                            ; $46cc: $9c
	add b                                            ; $46cd: $80
	ld b, b                                          ; $46ce: $40
	add b                                            ; $46cf: $80
	ld l, a                                          ; $46d0: $6f
	xor e                                            ; $46d1: $ab
	ld a, a                                          ; $46d2: $7f
	rst FarCall                                          ; $46d3: $f7
	ld a, a                                          ; $46d4: $7f
	ld b, c                                          ; $46d5: $41
	ldh [hDisp1_BGP], a                                     ; $46d6: $e0 $92
	dec a                                            ; $46d8: $3d
	nop                                              ; $46d9: $00
	rst SubAFromDE                                          ; $46da: $df
	ld b, h                                          ; $46db: $44
	sbc l                                            ; $46dc: $9d
	ld b, l                                          ; $46dd: $45
	ld b, h                                          ; $46de: $44
	db $db                                           ; $46df: $db
	inc sp                                           ; $46e0: $33
	sbc d                                            ; $46e1: $9a
	ld b, h                                          ; $46e2: $44
	ld d, l                                          ; $46e3: $55
	ld d, l                                          ; $46e4: $55
	ld b, h                                          ; $46e5: $44
	inc [hl]                                         ; $46e6: $34
	ld l, e                                          ; $46e7: $6b
	or $9b                                           ; $46e8: $f6 $9b
	ld d, a                                          ; $46ea: $57
	ld [hl], h                                       ; $46eb: $74

jr_05a_46ec:
	inc [hl]                                         ; $46ec: $34
	ld b, e                                          ; $46ed: $43
	db $dd                                           ; $46ee: $dd
	inc sp                                           ; $46ef: $33
	sbc h                                            ; $46f0: $9c
	ld b, a                                          ; $46f1: $47
	ld [hl], e                                       ; $46f2: $73
	scf                                              ; $46f3: $37
	sbc $44                                          ; $46f4: $de $44
	db $dd                                           ; $46f6: $dd
	inc sp                                           ; $46f7: $33
	sbc c                                            ; $46f8: $99
	ld b, l                                          ; $46f9: $45
	ld h, [hl]                                       ; $46fa: $66
	ld h, l                                          ; $46fb: $65
	ld d, h                                          ; $46fc: $54
	ld b, h                                          ; $46fd: $44
	ld b, e                                          ; $46fe: $43
	ld [hl], a                                       ; $46ff: $77
	db $eb                                           ; $4700: $eb
	ld a, e                                          ; $4701: $7b
	or $7f                                           ; $4702: $f6 $7f
	rst SubAFromHL                                          ; $4704: $d7
	sbc [hl]                                         ; $4705: $9e
	ld b, e                                          ; $4706: $43
	ld [hl], a                                       ; $4707: $77
	sub $6f                                          ; $4708: $d6 $6f
	or $77                                           ; $470a: $f6 $77
	pop hl                                           ; $470c: $e1
	ld [hl], e                                       ; $470d: $73
	db $d3                                           ; $470e: $d3
	call c, $3733                                    ; $470f: $dc $33 $37
	or $d7                                           ; $4712: $f6 $d7
	inc sp                                           ; $4714: $33
	ld h, [hl]                                       ; $4715: $66
	adc c                                            ; $4716: $89
	cp $9a                                           ; $4717: $fe $9a
	jr nz, jr_05a_46ec                               ; $4719: $20 $d1

	ld e, e                                          ; $471b: $5b
	inc [hl]                                         ; $471c: $34
	add d                                            ; $471d: $82
	db $fd                                           ; $471e: $fd
	rst SubAFromDE                                          ; $471f: $df
	jr nz, jr_05a_46bf                               ; $4720: $20 $9d

	dec bc                                           ; $4722: $0b
	ld a, l                                          ; $4723: $7d
	ei                                               ; $4724: $fb
	sbc [hl]                                         ; $4725: $9e
	add b                                            ; $4726: $80
	ld hl, sp-$69                                    ; $4727: $f8 $97

jr_05a_4729:
	ld d, a                                          ; $4729: $57
	adc a                                            ; $472a: $8f

jr_05a_472b:
	rla                                              ; $472b: $17
	cpl                                              ; $472c: $2f
	ld e, h                                          ; $472d: $5c
	jr z, jr_05a_4760                                ; $472e: $28 $30

	jr nz, jr_05a_472b                               ; $4730: $20 $f9

	sbc b                                            ; $4732: $98
	db $fd                                           ; $4733: $fd
	ld a, [$88d5]                                    ; $4734: $fa $d5 $88
	ld d, c                                          ; $4737: $51
	ld [bc], a                                       ; $4738: $02
	inc b                                            ; $4739: $04
	ld hl, sp-$66                                    ; $473a: $f8 $9a
	ld a, a                                          ; $473c: $7f
	xor d                                            ; $473d: $aa

jr_05a_473e:
	ld d, h                                          ; $473e: $54
	and b                                            ; $473f: $a0
	ld b, b                                          ; $4740: $40
	or $99                                           ; $4741: $f6 $99
	pop bc                                           ; $4743: $c1
	add e                                            ; $4744: $83
	inc bc                                           ; $4745: $03
	ld [bc], a                                       ; $4746: $02
	inc b                                            ; $4747: $04
	ld [$98f7], sp                                   ; $4748: $08 $f7 $98
	rst $38                                          ; $474b: $ff
	cp $5d                                           ; $474c: $fe $5d
	ld a, [hl-]                                      ; $474e: $3a
	ld d, c                                          ; $474f: $51
	inc hl                                           ; $4750: $23
	ld b, c                                          ; $4751: $41
	ld e, a                                          ; $4752: $5f
	ldh a, [$9a]                                     ; $4753: $f0 $9a
	rst $38                                          ; $4755: $ff
	ld a, a                                          ; $4756: $7f
	ld a, [$a8f4]                                    ; $4757: $fa $f4 $a8
	ld e, e                                          ; $475a: $5b
	ldh [$9c], a                                     ; $475b: $e0 $9c
	ld [$a050], a                                    ; $475d: $ea $50 $a0

jr_05a_4760:
	push af                                          ; $4760: $f5
	sub l                                            ; $4761: $95
	ld [bc], a                                       ; $4762: $02
	dec b                                            ; $4763: $05
	ld c, $00                                        ; $4764: $0e $00
	ld bc, $0202                                     ; $4766: $01 $02 $02
	inc b                                            ; $4769: $04

jr_05a_476a:
	inc bc                                           ; $476a: $03
	rlca                                             ; $476b: $07
	ld a, e                                          ; $476c: $7b
	ld hl, sp-$21                                    ; $476d: $f8 $df
	inc bc                                           ; $476f: $03
	add b                                            ; $4770: $80
	rlca                                             ; $4771: $07
	jr nc, jr_05a_476a                               ; $4772: $30 $f6

	jp hl                                            ; $4774: $e9


	or a                                             ; $4775: $b7
	ld c, d                                          ; $4776: $4a
	call nc, $c966                                   ; $4777: $d4 $66 $c9
	ld hl, sp-$1f                                    ; $477a: $f8 $e1
	rst JumpTable                                          ; $477c: $c7
	rst GetHLinHL                                          ; $477d: $cf
	cp a                                             ; $477e: $bf
	ld a, $fc                                        ; $477f: $3e $fc
	db $fc                                           ; $4781: $fc
	adc $31                                          ; $4782: $ce $31
	rst SubAFromBC                                          ; $4784: $e7
	dec bc                                           ; $4785: $0b
	ld e, a                                          ; $4786: $5f
	inc hl                                           ; $4787: $23
	pop de                                           ; $4788: $d1
	ld b, l                                          ; $4789: $45
	inc a                                            ; $478a: $3c
	ld hl, sp-$3f                                    ; $478b: $f8 $c1
	sbc h                                            ; $478d: $9c
	ld [hl-], a                                      ; $478e: $32
	ld [hl], d                                       ; $478f: $72
	add b                                            ; $4790: $80
	ld h, e                                          ; $4791: $63
	db $e3                                           ; $4792: $e3
	jr z, jr_05a_4729                                ; $4793: $28 $94

	xor [hl]                                         ; $4795: $ae
	ld d, e                                          ; $4796: $53
	ld a, [hl+]                                      ; $4797: $2a
	xor d                                            ; $4798: $aa
	or d                                             ; $4799: $b2
	or [hl]                                          ; $479a: $b6
	rra                                              ; $479b: $1f
	rrca                                             ; $479c: $0f
	rst JumpTable                                          ; $479d: $c7
	rst SubAFromBC                                          ; $479e: $e7
	rst FarCall                                          ; $479f: $f7
	ld [hl], a                                       ; $47a0: $77
	ld a, a                                          ; $47a1: $7f
	ld a, a                                          ; $47a2: $7f
	ld [hl], b                                       ; $47a3: $70
	add e                                            ; $47a4: $83
	jr nz, @-$2a                                     ; $47a5: $20 $d4

	inc hl                                           ; $47a7: $23
	add c                                            ; $47a8: $81
	ld a, l                                          ; $47a9: $7d
	ld [bc], a                                       ; $47aa: $02
	add c                                            ; $47ab: $81
	nop                                              ; $47ac: $00
	ret nz                                           ; $47ad: $c0

	db $e3                                           ; $47ae: $e3
	rst JumpTable                                          ; $47af: $c7
	add b                                            ; $47b0: $80
	nop                                              ; $47b1: $00
	add e                                            ; $47b2: $83
	rst $38                                          ; $47b3: $ff
	jr nc, jr_05a_473e                               ; $47b4: $30 $88

	ld h, a                                          ; $47b6: $67
	rrca                                             ; $47b7: $0f
	ld hl, sp-$1b                                    ; $47b8: $f8 $e5

jr_05a_47ba:
	ld d, [hl]                                       ; $47ba: $56
	xor d                                            ; $47bb: $aa
	rst $38                                          ; $47bc: $ff
	ld a, a                                          ; $47bd: $7f
	rra                                              ; $47be: $1f
	rst $38                                          ; $47bf: $ff
	ldh a, [$c3]                                     ; $47c0: $f0 $c3
	adc a                                            ; $47c2: $8f
	inc e                                            ; $47c3: $1c
	jr nz, jr_05a_483e                               ; $47c4: $20 $78

	or h                                             ; $47c6: $b4
	ld c, d                                          ; $47c7: $4a
	pop hl                                           ; $47c8: $e1
	rst SubAFromHL                                          ; $47c9: $d7
	cp c                                             ; $47ca: $b9
	inc e                                            ; $47cb: $1c
	ldh [$f8], a                                     ; $47cc: $e0 $f8

jr_05a_47ce:
	call z, $9b86                                    ; $47ce: $cc $86 $9b
	add e                                            ; $47d1: $83
	rst AddAOntoHL                                          ; $47d2: $ef
	ld a, h                                          ; $47d3: $7c
	jr c, @+$71                                      ; $47d4: $38 $6f

	ld de, $609d                                     ; $47d6: $11 $9d $60
	ld e, b                                          ; $47d9: $58
	ld l, a                                          ; $47da: $6f
	ld hl, sp-$69                                    ; $47db: $f8 $97
	ldh [$38], a                                     ; $47dd: $e0 $38
	ld a, a                                          ; $47df: $7f
	xor d                                            ; $47e0: $aa
	inc d                                            ; $47e1: $14
	jr nz, jr_05a_47e4                               ; $47e2: $20 $00

jr_05a_47e4:
	ld bc, $9af7                                     ; $47e4: $01 $f7 $9a
	xor a                                            ; $47e7: $af
	ld e, a                                          ; $47e8: $5f
	cp d                                             ; $47e9: $ba
	ld d, l                                          ; $47ea: $55
	xor d                                            ; $47eb: $aa
	or $9b                                           ; $47ec: $f6 $9b
	rst $38                                          ; $47ee: $ff

jr_05a_47ef:
	rst SubAFromHL                                          ; $47ef: $d7
	xor h                                            ; $47f0: $ac
	ld d, b                                          ; $47f1: $50
	push af                                          ; $47f2: $f5
	add b                                            ; $47f3: $80
	dec b                                            ; $47f4: $05
	ld l, b                                          ; $47f5: $68
	ld a, [$f8f1]                                    ; $47f6: $fa $f1 $f8
	cp b                                             ; $47f9: $b8
	ld e, h                                          ; $47fa: $5c
	and b                                            ; $47fb: $a0

jr_05a_47fc:
	ld a, [$0491]                                    ; $47fc: $fa $91 $04
	ld c, $07                                        ; $47ff: $0e $07
	ld b, a                                          ; $4801: $47
	and e                                            ; $4802: $a3
	ld e, a                                          ; $4803: $5f
	jr nz, jr_05a_47ce                               ; $4804: $20 $c8

	jr jr_05a_47ba                                   ; $4806: $18 $b2

	ld [hl], a                                       ; $4808: $77

jr_05a_4809:
	ldh [c], a                                       ; $4809: $e2
	push hl                                          ; $480a: $e5
	pop af                                           ; $480b: $f1
	nop                                              ; $480c: $00
	jr nz, jr_05a_47ef                               ; $480d: $20 $e0

	ld c, c                                          ; $480f: $49
	adc b                                            ; $4810: $88
	inc e                                            ; $4811: $1c
	ld a, [de]                                       ; $4812: $1a
	ld a, a                                          ; $4813: $7f
	dec sp                                           ; $4814: $3b
	halt                                             ; $4815: $76
	or e                                             ; $4816: $b3
	sbc h                                            ; $4817: $9c
	ld [$1238], sp                                   ; $4818: $08 $38 $12
	ei                                               ; $481b: $fb
	sbc l                                            ; $481c: $9d
	inc b                                            ; $481d: $04
	ld l, h                                          ; $481e: $6c
	ld l, a                                          ; $481f: $6f
	res 3, l                                         ; $4820: $cb $9d
	ld a, [bc]                                       ; $4822: $0a
	inc e                                            ; $4823: $1c
	ld l, e                                          ; $4824: $6b
	jp nz, $039e                                     ; $4825: $c2 $9e $03

	cp $9a                                           ; $4828: $fe $9a
	db $10                                           ; $482a: $10
	ld l, b                                          ; $482b: $68
	ld b, e                                          ; $482c: $43
	inc d                                            ; $482d: $14

jr_05a_482e:
	ld hl, $9bfd                                     ; $482e: $21 $fd $9b
	db $10                                           ; $4831: $10
	cp b                                             ; $4832: $b8
	res 3, [hl]                                      ; $4833: $cb $9e
	db $fc                                           ; $4835: $fc
	sbc l                                            ; $4836: $9d
	jr nz, jr_05a_4809                               ; $4837: $20 $d0

	ld l, d                                          ; $4839: $6a
	cp [hl]                                          ; $483a: $be
	sbc l                                            ; $483b: $9d
	jr nz, jr_05a_482e                               ; $483c: $20 $f0

jr_05a_483e:
	ei                                               ; $483e: $fb
	sbc l                                            ; $483f: $9d
	ld bc, $f607                                     ; $4840: $01 $07 $f6
	sbc d                                            ; $4843: $9a
	ld [$c532], sp                                   ; $4844: $08 $32 $c5
	jr jr_05a_47fc                                   ; $4847: $18 $b3

	ld [hl], e                                       ; $4849: $73
	rst FarCall                                          ; $484a: $f7
	sbc h                                            ; $484b: $9c
	ld a, [hl-]                                      ; $484c: $3a
	rst SubAFromBC                                          ; $484d: $e7
	ld c, h                                          ; $484e: $4c
	ei                                               ; $484f: $fb
	sbc [hl]                                         ; $4850: $9e
	and b                                            ; $4851: $a0
	ld h, a                                          ; $4852: $67
	ld l, h                                          ; $4853: $6c
	sbc c                                            ; $4854: $99
	and b                                            ; $4855: $a0
	dec b                                            ; $4856: $05
	ld a, [bc]                                       ; $4857: $0a

jr_05a_4858:
	inc c                                            ; $4858: $0c
	add hl, bc                                       ; $4859: $09
	add hl, bc                                       ; $485a: $09
	ld a, e                                          ; $485b: $7b
	ld b, b                                          ; $485c: $40
	ld a, [hl]                                       ; $485d: $7e
	pop bc                                           ; $485e: $c1
	ld l, a                                          ; $485f: $6f
	ld hl, sp-$80                                    ; $4860: $f8 $80
	ld d, [hl]                                       ; $4862: $56
	sbc l                                            ; $4863: $9d
	xor e                                            ; $4864: $ab
	daa                                              ; $4865: $27
	ld b, [hl]                                       ; $4866: $46
	ld c, d                                          ; $4867: $4a
	bit 1, e                                         ; $4868: $cb $4b
	ld a, c                                          ; $486a: $79
	di                                               ; $486b: $f3
	rst FarCall                                          ; $486c: $f7
	rst $38                                          ; $486d: $ff
	rst $38                                          ; $486e: $ff
	ei                                               ; $486f: $fb
	ei                                               ; $4870: $fb
	ld a, e                                          ; $4871: $7b
	push bc                                          ; $4872: $c5
	push hl                                          ; $4873: $e5
	adc l                                            ; $4874: $8d
	adc e                                            ; $4875: $8b
	db $db                                           ; $4876: $db
	push de                                          ; $4877: $d5
	ld h, l                                          ; $4878: $65
	ld l, l                                          ; $4879: $6d
	db $e3                                           ; $487a: $e3
	jp $c7c3                                         ; $487b: $c3 $c3 $c7


	add a                                            ; $487e: $87
	adc a                                            ; $487f: $8f
	sbc a                                            ; $4880: $9f
	sub e                                            ; $4881: $93
	sbc a                                            ; $4882: $9f
	dec [hl]                                         ; $4883: $35
	ld a, [hl+]                                      ; $4884: $2a
	dec hl                                           ; $4885: $2b
	ld b, b                                          ; $4886: $40
	ld b, e                                          ; $4887: $43
	adc h                                            ; $4888: $8c
	add a                                            ; $4889: $87
	rra                                              ; $488a: $1f
	rst $38                                          ; $488b: $ff
	db $fd                                           ; $488c: $fd
	db $fc                                           ; $488d: $fc
	call c, $95ff                                    ; $488e: $dc $ff $95
	add l                                            ; $4891: $85
	ld a, d                                          ; $4892: $7a
	jr nc, jr_05a_4858                               ; $4893: $30 $c3

	ld c, $3d                                        ; $4895: $0e $3d
	ldh a, [hDisp0_SCY]                                     ; $4897: $f0 $83
	cp $fd                                           ; $4899: $fe $fd
	sbc $ff                                          ; $489b: $de $ff
	add b                                            ; $489d: $80
	cp $ff                                           ; $489e: $fe $ff
	rst $38                                          ; $48a0: $ff
	cp b                                             ; $48a1: $b8
	ld d, c                                          ; $48a2: $51
	and h                                            ; $48a3: $a4
	ld c, d                                          ; $48a4: $4a
	dec h                                            ; $48a5: $25
	jp c, $d86e                                      ; $48a6: $da $6e $d8

	ld [hl], b                                       ; $48a9: $70
	ldh [$c3], a                                     ; $48aa: $e0 $c3
	add a                                            ; $48ac: $87
	ld e, $3c                                        ; $48ad: $1e $3c
	pop af                                           ; $48af: $f1
	rst SubAFromBC                                          ; $48b0: $e7
	dec h                                            ; $48b1: $25
	ld a, [$8e8b]                                    ; $48b2: $fa $8b $8e
	dec l                                            ; $48b5: $2d
	sub e                                            ; $48b6: $93
	inc sp                                           ; $48b7: $33
	db $db                                           ; $48b8: $db
	dec de                                           ; $48b9: $1b
	inc c                                            ; $48ba: $0c
	inc e                                            ; $48bb: $1c
	rra                                              ; $48bc: $1f
	adc e                                            ; $48bd: $8b
	dec de                                           ; $48be: $1b
	ld a, c                                          ; $48bf: $79
	ld sp, hl                                        ; $48c0: $f9
	jp hl                                            ; $48c1: $e9


	add h                                            ; $48c2: $84
	ld h, d                                          ; $48c3: $62
	ld sp, $4489                                     ; $48c4: $31 $89 $44
	inc [hl]                                         ; $48c7: $34
	xor d                                            ; $48c8: $aa
	sbc d                                            ; $48c9: $9a
	db $fc                                           ; $48ca: $fc
	ld a, [hl]                                       ; $48cb: $7e
	rra                                              ; $48cc: $1f
	rst $38                                          ; $48cd: $ff
	rst $38                                          ; $48ce: $ff
	rst AddAOntoHL                                          ; $48cf: $ef
	ld [hl], a                                       ; $48d0: $77
	ld [hl], a                                       ; $48d1: $77
	ld [hl], d                                       ; $48d2: $72
	cp c                                             ; $48d3: $b9
	sbc l                                            ; $48d4: $9d
	add b                                            ; $48d5: $80
	ld b, b                                          ; $48d6: $40
	ld [hl], c                                       ; $48d7: $71
	db $ed                                           ; $48d8: $ed
	rst SubAFromDE                                          ; $48d9: $df
	add b                                            ; $48da: $80
	rst SubAFromDE                                          ; $48db: $df

Call_05a_48dc:
	ret nz                                           ; $48dc: $c0

	ld [$0877], a                                    ; $48dd: $ea $77 $08
	db $fc                                           ; $48e0: $fc
	sbc l                                            ; $48e1: $9d
	db $10                                           ; $48e2: $10
	ld bc, $936d                                     ; $48e3: $01 $6d $93
	sbc e                                            ; $48e6: $9b
	rst AddAOntoHL                                          ; $48e7: $ef
	cp $ff                                           ; $48e8: $fe $ff
	ld a, a                                          ; $48ea: $7f
	db $dd                                           ; $48eb: $dd
	rst $38                                          ; $48ec: $ff
	add b                                            ; $48ed: $80
	ld [$f2f4], a                                    ; $48ee: $ea $f4 $f2
	or [hl]                                          ; $48f1: $b6
	cp a                                             ; $48f2: $bf
	rra                                              ; $48f3: $1f
	ld [de], a                                       ; $48f4: $12
	nop                                              ; $48f5: $00
	ld de, $0d0b                                     ; $48f6: $11 $0b $0d
	ld c, c                                          ; $48f9: $49
	ld b, b                                          ; $48fa: $40
	ldh [$ed], a                                     ; $48fb: $e0 $ed
	rst $38                                          ; $48fd: $ff
	add hl, hl                                       ; $48fe: $29
	add l                                            ; $48ff: $85
	ld c, [hl]                                       ; $4900: $4e
	sub a                                            ; $4901: $97
	and e                                            ; $4902: $a3
	db $eb                                           ; $4903: $eb
	push hl                                          ; $4904: $e5
	reti                                             ; $4905: $d9


	sub [hl]                                         ; $4906: $96
	ld a, [hl-]                                      ; $4907: $3a

jr_05a_4908:
	or b                                             ; $4908: $b0
	ld h, b                                          ; $4909: $60
	ld b, b                                          ; $490a: $40
	inc b                                            ; $490b: $04
	ld [bc], a                                       ; $490c: $02
	add b                                            ; $490d: $80
	ld b, $a2                                        ; $490e: $06 $a2
	ld d, h                                          ; $4910: $54
	adc b                                            ; $4911: $88
	ld bc, $e043                                     ; $4912: $01 $43 $e0
	ldh [$b0], a                                     ; $4915: $e0 $b0
	ld de, $77a3                                     ; $4917: $11 $a3 $77
	cp $bc                                           ; $491a: $fe $bc
	rra                                              ; $491c: $1f
	rra                                              ; $491d: $1f
	ld c, a                                          ; $491e: $4f
	rst FarCall                                          ; $491f: $f7
	ld a, a                                          ; $4920: $7f
	ld sp, hl                                        ; $4921: $f9
	ld hl, sp+$10                                    ; $4922: $f8 $10
	ld hl, $0020                                     ; $4924: $21 $20 $00
	ld [$0680], sp                                   ; $4927: $08 $80 $06
	rlca                                             ; $492a: $07
	rst AddAOntoHL                                          ; $492b: $ef
	sbc $80                                          ; $492c: $de $80
	rst SubAFromDE                                          ; $492e: $df
	rst $38                                          ; $492f: $ff
	add d                                            ; $4930: $82
	db $e4                                           ; $4931: $e4
	rst AddAOntoHL                                          ; $4932: $ef
	ld a, a                                          ; $4933: $7f
	rst $38                                          ; $4934: $ff
	ld b, a                                          ; $4935: $47
	rrca                                             ; $4936: $0f
	rrca                                             ; $4937: $0f
	ld a, h                                          ; $4938: $7c
	ld a, [de]                                       ; $4939: $1a
	db $10                                           ; $493a: $10
	add b                                            ; $493b: $80
	nop                                              ; $493c: $00
	cp b                                             ; $493d: $b8
	ldh a, [$f0]                                     ; $493e: $f0 $f0
	dec e                                            ; $4940: $1d
	ld [$a090], sp                                   ; $4941: $08 $90 $a0
	ldh [$f0], a                                     ; $4944: $e0 $f0
	db $fd                                           ; $4946: $fd
	rst $38                                          ; $4947: $ff
	ld [bc], a                                       ; $4948: $02
	rla                                              ; $4949: $17
	rrca                                             ; $494a: $0f
	ld e, a                                          ; $494b: $5f
	rra                                              ; $494c: $1f
	sub [hl]                                         ; $494d: $96
	rrca                                             ; $494e: $0f
	ld [bc], a                                       ; $494f: $02
	nop                                              ; $4950: $00
	ei                                               ; $4951: $fb
	rst $38                                          ; $4952: $ff
	rst SubAFromBC                                          ; $4953: $e7
	or d                                             ; $4954: $b2
	add c                                            ; $4955: $81
	ld c, b                                          ; $4956: $48
	ld a, d                                          ; $4957: $7a
	halt                                             ; $4958: $76
	adc b                                            ; $4959: $88
	nop                                              ; $495a: $00
	jr jr_05a_49aa                                   ; $495b: $18 $4d

	ld a, [hl]                                       ; $495d: $7e
	or a                                             ; $495e: $b7
	rst $38                                          ; $495f: $ff
	rst $38                                          ; $4960: $ff
	ld a, [bc]                                       ; $4961: $0a
	add h                                            ; $4962: $84
	or h                                             ; $4963: $b4
	ldh a, [$7b]                                     ; $4964: $f0 $7b
	cp h                                             ; $4966: $bc
	ld hl, $f083                                     ; $4967: $21 $83 $f0
	ld a, d                                          ; $496a: $7a
	ld c, e                                          ; $496b: $4b
	rrca                                             ; $496c: $0f
	add h                                            ; $496d: $84
	ld b, e                                          ; $496e: $43
	sbc $7c                                          ; $496f: $de $7c
	ld [hl], c                                       ; $4971: $71
	inc b                                            ; $4972: $04
	sbc h                                            ; $4973: $9c
	jr z, jr_05a_4908                                ; $4974: $28 $92

	add l                                            ; $4976: $85
	ld [hl], a                                       ; $4977: $77
	ld b, c                                          ; $4978: $41
	rst SubAFromDE                                          ; $4979: $df
	ret nz                                           ; $497a: $c0

	add l                                            ; $497b: $85
	ld l, b                                          ; $497c: $68
	ld a, d                                          ; $497d: $7a
	ld d, e                                          ; $497e: $53
	ld d, e                                          ; $497f: $53
	ld [hl-], a                                      ; $4980: $32
	ld [hl-], a                                      ; $4981: $32
	inc [hl]                                         ; $4982: $34
	dec d                                            ; $4983: $15
	ld b, $0c                                        ; $4984: $06 $0c
	ld [hl], e                                       ; $4986: $73
	ld [hl], e                                       ; $4987: $73
	inc sp                                           ; $4988: $33
	inc sp                                           ; $4989: $33
	scf                                              ; $498a: $37
	rla                                              ; $498b: $17
	ld b, $0c                                        ; $498c: $06 $0c
	dec c                                            ; $498e: $0d
	inc d                                            ; $498f: $14
	ld [hl-], a                                      ; $4990: $32
	ld d, d                                          ; $4991: $52
	ret                                              ; $4992: $c9


	ret z                                            ; $4993: $c8

	and h                                            ; $4994: $a4
	and d                                            ; $4995: $a2
	reti                                             ; $4996: $d9


	rst $38                                          ; $4997: $ff
	add a                                            ; $4998: $87
	ld a, h                                          ; $4999: $7c
	ld a, a                                          ; $499a: $7f
	db $fc                                           ; $499b: $fc
	ld hl, sp-$07                                    ; $499c: $f8 $f9
	pop af                                           ; $499e: $f1
	ld [hl], d                                       ; $499f: $72
	inc sp                                           ; $49a0: $33
	rst $38                                          ; $49a1: $ff
	rst JumpTable                                          ; $49a2: $c7
	cp a                                             ; $49a3: $bf
	sbc a                                            ; $49a4: $9f
	xor a                                            ; $49a5: $af
	sbc a                                            ; $49a6: $9f
	rst SubAFromDE                                          ; $49a7: $df
	cp $1f                                           ; $49a8: $fe $1f

jr_05a_49aa:
	db $fc                                           ; $49aa: $fc
	adc c                                            ; $49ab: $89
	cp [hl]                                          ; $49ac: $be
	ld [hl], c                                       ; $49ad: $71
	ld a, a                                          ; $49ae: $7f
	rst $38                                          ; $49af: $ff
	and e                                            ; $49b0: $a3
	sbc $ff                                          ; $49b1: $de $ff
	add b                                            ; $49b3: $80
	rst SubAFromDE                                          ; $49b4: $df
	adc [hl]                                         ; $49b5: $8e
	add c                                            ; $49b6: $81
	nop                                              ; $49b7: $00
	ld e, [hl]                                       ; $49b8: $5e
	ld [hl], a                                       ; $49b9: $77
	dec sp                                           ; $49ba: $3b
	rst SubAFromDE                                          ; $49bb: $df
	db $fc                                           ; $49bc: $fc
	ret nz                                           ; $49bd: $c0

	and b                                            ; $49be: $a0
	ld a, h                                          ; $49bf: $7c
	ld [hl+], a                                      ; $49c0: $22
	adc a                                            ; $49c1: $8f
	db $fc                                           ; $49c2: $fc
	ldh [rP1], a                                     ; $49c3: $e0 $00
	nop                                              ; $49c5: $00
	ret nz                                           ; $49c6: $c0

	cp $1c                                           ; $49c7: $fe $1c
	ld a, l                                          ; $49c9: $7d
	push de                                          ; $49ca: $d5
	ld a, [de]                                       ; $49cb: $1a
	dec de                                           ; $49cc: $1b
	ld h, $2a                                        ; $49cd: $26 $2a
	ld d, [hl]                                       ; $49cf: $56
	ld l, a                                          ; $49d0: $6f
	adc e                                            ; $49d1: $8b
	dec de                                           ; $49d2: $1b
	sbc c                                            ; $49d3: $99
	rla                                              ; $49d4: $17
	ld d, $3e                                        ; $49d5: $16 $3e
	ld a, $7a                                        ; $49d7: $3e $7a
	ld [hl], d                                       ; $49d9: $72
	db $dd                                           ; $49da: $dd
	ld e, d                                          ; $49db: $5a
	sbc e                                            ; $49dc: $9b
	ld a, [de]                                       ; $49dd: $1a
	sbc d                                            ; $49de: $9a
	ld a, [hl+]                                      ; $49df: $2a
	inc a                                            ; $49e0: $3c
	db $dd                                           ; $49e1: $dd
	scf                                              ; $49e2: $37
	rst SubAFromDE                                          ; $49e3: $df
	ld [hl], a                                       ; $49e4: $77
	sbc l                                            ; $49e5: $9d
	rst FarCall                                          ; $49e6: $f7
	rst SubAFromBC                                          ; $49e7: $e7
	db $dd                                           ; $49e8: $dd
	ld b, b                                          ; $49e9: $40
	sbc e                                            ; $49ea: $9b
	ld b, c                                          ; $49eb: $41
	adc a                                            ; $49ec: $8f
	rst $38                                          ; $49ed: $ff
	rst $38                                          ; $49ee: $ff
	call c, $dec0                                    ; $49ef: $dc $c0 $de
	add b                                            ; $49f2: $80
	ld a, d                                          ; $49f3: $7a
	ld [hl], $9e                                     ; $49f4: $36 $9e
	ccf                                              ; $49f6: $3f
	db $dd                                           ; $49f7: $dd
	rst $38                                          ; $49f8: $ff
	ld sp, hl                                        ; $49f9: $f9
	ld a, d                                          ; $49fa: $7a
	sbc d                                            ; $49fb: $9a
	call c, $f1ff                                    ; $49fc: $dc $ff $f1
	reti                                             ; $49ff: $d9


	rst $38                                          ; $4a00: $ff
	ld a, [hl]                                       ; $4a01: $7e
	and a                                            ; $4a02: $a7
	ld a, a                                          ; $4a03: $7f
	inc e                                            ; $4a04: $1c
	adc [hl]                                         ; $4a05: $8e
	ld bc, $f3a1                                     ; $4a06: $01 $a1 $f3
	scf                                              ; $4a09: $37
	db $fc                                           ; $4a0a: $fc
	rst $38                                          ; $4a0b: $ff
	db $fd                                           ; $4a0c: $fd
	rst $38                                          ; $4a0d: $ff
	cp $5e                                           ; $4a0e: $fe $5e
	inc c                                            ; $4a10: $0c
	ret z                                            ; $4a11: $c8

	ldh [$30], a                                     ; $4a12: $e0 $30
	ld e, $3f                                        ; $4a14: $1e $3f
	rra                                              ; $4a16: $1f
	ld a, e                                          ; $4a17: $7b
	cp [hl]                                          ; $4a18: $be
	sbc d                                            ; $4a19: $9a
	rra                                              ; $4a1a: $1f
	rst GetHLinHL                                          ; $4a1b: $cf
	pop hl                                           ; $4a1c: $e1
	ret nz                                           ; $4a1d: $c0

	ldh [$7a], a                                     ; $4a1e: $e0 $7a
	ld [hl], d                                       ; $4a20: $72
	add b                                            ; $4a21: $80
	ld a, [de]                                       ; $4a22: $1a
	add b                                            ; $4a23: $80
	ret z                                            ; $4a24: $c8

	inc h                                            ; $4a25: $24
	ld l, b                                          ; $4a26: $68
	ld hl, sp-$20                                    ; $4a27: $f8 $e0
	ldh [$e5], a                                     ; $4a29: $e0 $e5
	ld a, a                                          ; $4a2b: $7f
	scf                                              ; $4a2c: $37
	db $db                                           ; $4a2d: $db
	sub a                                            ; $4a2e: $97
	rlca                                             ; $4a2f: $07
	rra                                              ; $4a30: $1f
	rra                                              ; $4a31: $1f
	nop                                              ; $4a32: $00
	dec b                                            ; $4a33: $05
	ld a, [hl+]                                      ; $4a34: $2a
	ld d, a                                          ; $4a35: $57
	rrca                                             ; $4a36: $0f
	rra                                              ; $4a37: $1f
	cpl                                              ; $4a38: $2f
	rra                                              ; $4a39: $1f
	rst $38                                          ; $4a3a: $ff
	ld a, [$a8d5]                                    ; $4a3b: $fa $d5 $a8
	ldh a, [$e0]                                     ; $4a3e: $f0 $e0
	ret nc                                           ; $4a40: $d0

	add b                                            ; $4a41: $80
	ldh [$3e], a                                     ; $4a42: $e0 $3e
	ld e, h                                          ; $4a44: $5c
	cp $fe                                           ; $4a45: $fe $fe
	db $fc                                           ; $4a47: $fc
	ld hl, sp-$08                                    ; $4a48: $f8 $f8
	ldh [$c1], a                                     ; $4a4a: $e0 $c1
	and e                                            ; $4a4c: $a3
	ld bc, $0301                                     ; $4a4d: $01 $01 $03
	rlca                                             ; $4a50: $07
	rlca                                             ; $4a51: $07
	rra                                              ; $4a52: $1f
	ld a, b                                          ; $4a53: $78
	ld a, [de]                                       ; $4a54: $1a
	inc c                                            ; $4a55: $0c
	dec b                                            ; $4a56: $05
	rlca                                             ; $4a57: $07
	rla                                              ; $4a58: $17
	ld e, $3c                                        ; $4a59: $1e $3c
	add a                                            ; $4a5b: $87
	push hl                                          ; $4a5c: $e5
	di                                               ; $4a5d: $f3
	ld a, [$e8f8]                                    ; $4a5e: $fa $f8 $e8
	sbc l                                            ; $4a61: $9d
	pop hl                                           ; $4a62: $e1
	jp Jump_05a_716d                                 ; $4a63: $c3 $6d $71


	ld a, a                                          ; $4a66: $7f
	and $db                                          ; $4a67: $e6 $db
	rst $38                                          ; $4a69: $ff
	ld a, a                                          ; $4a6a: $7f
	push de                                          ; $4a6b: $d5
	cp $9e                                           ; $4a6c: $fe $9e
	ccf                                              ; $4a6e: $3f
	ld l, l                                          ; $4a6f: $6d
	add $df                                          ; $4a70: $c6 $df
	rst $38                                          ; $4a72: $ff
	ld l, a                                          ; $4a73: $6f
	db $e3                                           ; $4a74: $e3
	ld e, a                                          ; $4a75: $5f
	ld [hl], h                                       ; $4a76: $74
	ld [hl], a                                       ; $4a77: $77
	ld e, e                                          ; $4a78: $5b
	ld a, c                                          ; $4a79: $79
	scf                                              ; $4a7a: $37
	adc l                                            ; $4a7b: $8d
	ccf                                              ; $4a7c: $3f
	ret nz                                           ; $4a7d: $c0

	nop                                              ; $4a7e: $00
	add l                                            ; $4a7f: $85
	jp z, $8008                                      ; $4a80: $ca $08 $80

	ret nz                                           ; $4a83: $c0

	rst $38                                          ; $4a84: $ff
	ld sp, hl                                        ; $4a85: $f9
	di                                               ; $4a86: $f3
	ld h, e                                          ; $4a87: $63
	rlca                                             ; $4a88: $07
	ld d, c                                          ; $4a89: $51
	ld a, a                                          ; $4a8a: $7f
	ld hl, sp+$30                                    ; $4a8b: $f8 $30
	ld h, b                                          ; $4a8d: $60
	ld a, e                                          ; $4a8e: $7b
	ld a, [hl+]                                      ; $4a8f: $2a
	rst SubAFromDE                                          ; $4a90: $df
	ld a, a                                          ; $4a91: $7f
	db $db                                           ; $4a92: $db
	rst $38                                          ; $4a93: $ff
	sub [hl]                                         ; $4a94: $96
	rla                                              ; $4a95: $17
	rst SubAFromHL                                          ; $4a96: $d7
	cpl                                              ; $4a97: $2f
	rra                                              ; $4a98: $1f
	rrca                                             ; $4a99: $0f
	rlca                                             ; $4a9a: $07
	rlca                                             ; $4a9b: $07
	inc bc                                           ; $4a9c: $03
	db $fc                                           ; $4a9d: $fc
	ld a, e                                          ; $4a9e: $7b
	adc e                                            ; $4a9f: $8b
	add b                                            ; $4aa0: $80
	ld hl, sp-$04                                    ; $4aa1: $f8 $fc
	db $fc                                           ; $4aa3: $fc
	cp $3f                                           ; $4aa4: $fe $3f
	inc h                                            ; $4aa6: $24
	ld hl, sp-$09                                    ; $4aa7: $f8 $f7
	cp e                                             ; $4aa9: $bb
	rst SubAFromDE                                          ; $4aaa: $df
	add $cc                                          ; $4aab: $c6 $cc
	ld e, a                                          ; $4aad: $5f
	ret                                              ; $4aae: $c9


	jr @+$41                                         ; $4aaf: $18 $3f

	rla                                              ; $4ab1: $17
	ld c, $0c                                        ; $4ab2: $0e $0c
	nop                                              ; $4ab4: $00
	ret nz                                           ; $4ab5: $c0

	add c                                            ; $4ab6: $81
	pop hl                                           ; $4ab7: $e1
	ldh [$e0], a                                     ; $4ab8: $e0 $e0
	ld b, b                                          ; $4aba: $40
	nop                                              ; $4abb: $00
	ld bc, $c180                                     ; $4abc: $01 $80 $c1
	ret nz                                           ; $4abf: $c0

	sbc [hl]                                         ; $4ac0: $9e
	ret nz                                           ; $4ac1: $c0

	ld [hl], l                                       ; $4ac2: $75
	xor e                                            ; $4ac3: $ab
	add h                                            ; $4ac4: $84
	sub $a6                                          ; $4ac5: $d6 $a6
	ld c, h                                          ; $4ac7: $4c
	dec e                                            ; $4ac8: $1d
	ld e, e                                          ; $4ac9: $5b
	ld l, a                                          ; $4aca: $6f
	ld l, a                                          ; $4acb: $6f
	xor $e3                                          ; $4acc: $ee $e3
	jp $2787                                         ; $4ace: $c3 $87 $27


	cpl                                              ; $4ad1: $2f
	dec a                                            ; $4ad2: $3d
	ld sp, $5533                                     ; $4ad3: $31 $33 $55
	ld h, l                                          ; $4ad6: $65
	adc c                                            ; $4ad7: $89
	dec bc                                           ; $4ad8: $0b
	inc de                                           ; $4ad9: $13
	daa                                              ; $4ada: $27
	ld c, a                                          ; $4adb: $4f
	sbc a                                            ; $4adc: $9f
	rst AddAOntoHL                                          ; $4add: $ef
	rst SubAFromDE                                          ; $4ade: $df
	rst $38                                          ; $4adf: $ff
	ld a, e                                          ; $4ae0: $7b
	ld b, a                                          ; $4ae1: $47
	rst SubAFromDE                                          ; $4ae2: $df
	db $fc                                           ; $4ae3: $fc
	ld e, e                                          ; $4ae4: $5b
	add l                                            ; $4ae5: $85
	ld d, e                                          ; $4ae6: $53
	ld [hl], h                                       ; $4ae7: $74
	daa                                              ; $4ae8: $27
	ldh a, [$9c]                                     ; $4ae9: $f0 $9c
	ld hl, $5901                                     ; $4aeb: $21 $01 $59
	ld [hl], h                                       ; $4aee: $74
	and $9a                                          ; $4aef: $e6 $9a
	rst $38                                          ; $4af1: $ff
	sbc $fe                                          ; $4af2: $de $fe
	and [hl]                                         ; $4af4: $a6
	inc c                                            ; $4af5: $0c
	ld [hl], h                                       ; $4af6: $74
	adc e                                            ; $4af7: $8b
	ld l, e                                          ; $4af8: $6b
	ld l, c                                          ; $4af9: $69
	sbc [hl]                                         ; $4afa: $9e
	rst $38                                          ; $4afb: $ff
	ld [hl], c                                       ; $4afc: $71
	ld l, e                                          ; $4afd: $6b
	ld [hl], e                                       ; $4afe: $73
	ret nc                                           ; $4aff: $d0

	sbc d                                            ; $4b00: $9a
	ei                                               ; $4b01: $fb
	ld sp, hl                                        ; $4b02: $f9
	ld sp, hl                                        ; $4b03: $f9
	and b                                            ; $4b04: $a0
	ret nz                                           ; $4b05: $c0

	ld a, e                                          ; $4b06: $7b
	pop af                                           ; $4b07: $f1
	add e                                            ; $4b08: $83
	inc b                                            ; $4b09: $04
	ld b, $06                                        ; $4b0a: $06 $06
	ld e, a                                          ; $4b0c: $5f
	ccf                                              ; $4b0d: $3f
	ld a, a                                          ; $4b0e: $7f
	ret z                                            ; $4b0f: $c8

	ldh a, [$f0]                                     ; $4b10: $f0 $f0
	ldh [$30], a                                     ; $4b12: $e0 $30
	jr nc, jr_05a_4b74                               ; $4b14: $30 $5e

	ld a, h                                          ; $4b16: $7c
	scf                                              ; $4b17: $37
	rrca                                             ; $4b18: $0f
	rrca                                             ; $4b19: $0f
	rra                                              ; $4b1a: $1f
	rst GetHLinHL                                          ; $4b1b: $cf
	rst GetHLinHL                                          ; $4b1c: $cf
	and c                                            ; $4b1d: $a1
	add e                                            ; $4b1e: $83
	ccf                                              ; $4b1f: $3f
	inc e                                            ; $4b20: $1c
	ld a, [de]                                       ; $4b21: $1a
	db $10                                           ; $4b22: $10
	jr nc, jr_05a_4b85                               ; $4b23: $30 $60

	ld a, d                                          ; $4b25: $7a
	dec h                                            ; $4b26: $25
	sbc d                                            ; $4b27: $9a
	db $e3                                           ; $4b28: $e3
	push hl                                          ; $4b29: $e5
	rst AddAOntoHL                                          ; $4b2a: $ef
	rst GetHLinHL                                          ; $4b2b: $cf
	sbc a                                            ; $4b2c: $9f
	ld a, d                                          ; $4b2d: $7a
	ld c, b                                          ; $4b2e: $48
	sbc h                                            ; $4b2f: $9c
	inc c                                            ; $4b30: $0c
	rla                                              ; $4b31: $17
	rlca                                             ; $4b32: $07
	ld a, b                                          ; $4b33: $78
	adc c                                            ; $4b34: $89
	ld a, a                                          ; $4b35: $7f
	dec bc                                           ; $4b36: $0b
	sbc h                                            ; $4b37: $9c
	di                                               ; $4b38: $f3
	add sp, -$08                                     ; $4b39: $e8 $f8
	ld a, b                                          ; $4b3b: $78
	pop bc                                           ; $4b3c: $c1
	ld a, l                                          ; $4b3d: $7d
	ldh [hDisp0_OBP0], a                                     ; $4b3e: $e0 $86
	rst SubAFromDE                                          ; $4b40: $df
	push af                                          ; $4b41: $f5
	adc [hl]                                         ; $4b42: $8e
	jp nz, $0506                                     ; $4b43: $c2 $06 $05

	ld [bc], a                                       ; $4b46: $02
	add e                                            ; $4b47: $83
	jr nz, jr_05a_4b54                               ; $4b48: $20 $0a

	ld [hl], c                                       ; $4b4a: $71
	dec a                                            ; $4b4b: $3d
	ld sp, hl                                        ; $4b4c: $f9
	ei                                               ; $4b4d: $fb
	rst $38                                          ; $4b4e: $ff
	rra                                              ; $4b4f: $1f
	cpl                                              ; $4b50: $2f
	ld d, a                                          ; $4b51: $57
	ld d, a                                          ; $4b52: $57
	rst SubAFromHL                                          ; $4b53: $d7

jr_05a_4b54:
	ret nc                                           ; $4b54: $d0

	ld [hl], e                                       ; $4b55: $73
	rst $38                                          ; $4b56: $ff
	ld hl, sp-$10                                    ; $4b57: $f8 $f0
	db $dd                                           ; $4b59: $dd
	ldh [$9d], a                                     ; $4b5a: $e0 $9d
	and b                                            ; $4b5c: $a0
	ld hl, $ffde                                     ; $4b5d: $21 $de $ff
	sbc e                                            ; $4b60: $9b
	db $fc                                           ; $4b61: $fc
	add c                                            ; $4b62: $81
	ccf                                              ; $4b63: $3f
	rst $38                                          ; $4b64: $ff
	ld a, c                                          ; $4b65: $79
	db $e3                                           ; $4b66: $e3
	ld l, d                                          ; $4b67: $6a
	ld [hl+], a                                      ; $4b68: $22
	sbc b                                            ; $4b69: $98
	cp $c0                                           ; $4b6a: $fe $c0
	rra                                              ; $4b6c: $1f
	rst $38                                          ; $4b6d: $ff
	ld hl, sp+$03                                    ; $4b6e: $f8 $03
	ld a, a                                          ; $4b70: $7f
	db $fd                                           ; $4b71: $fd
	ld a, [hl]                                       ; $4b72: $7e
	sbc e                                            ; $4b73: $9b

jr_05a_4b74:
	add c                                            ; $4b74: $81
	db $fc                                           ; $4b75: $fc
	add b                                            ; $4b76: $80
	sub l                                            ; $4b77: $95
	dec hl                                           ; $4b78: $2b
	rst SubAFromHL                                          ; $4b79: $d7
	xor a                                            ; $4b7a: $af
	db $db                                           ; $4b7b: $db
	inc sp                                           ; $4b7c: $33
	and $c4                                          ; $4b7d: $e6 $c4
	ld c, $1c                                        ; $4b7f: $0e $1c
	jr c, jr_05a_4bf3                                ; $4b81: $38 $70

	and $ce                                          ; $4b83: $e6 $ce

jr_05a_4b85:
	dec e                                            ; $4b85: $1d
	ccf                                              ; $4b86: $3f
	adc b                                            ; $4b87: $88
	db $e3                                           ; $4b88: $e3
	push bc                                          ; $4b89: $c5
	adc e                                            ; $4b8a: $8b
	rla                                              ; $4b8b: $17
	cpl                                              ; $4b8c: $2f
	ld e, a                                          ; $4b8d: $5f
	cp a                                             ; $4b8e: $bf
	ld [hl], a                                       ; $4b8f: $77
	rra                                              ; $4b90: $1f
	ld a, $7c                                        ; $4b91: $3e $7c
	ld a, e                                          ; $4b93: $7b
	cp h                                             ; $4b94: $bc
	add a                                            ; $4b95: $87
	ret nz                                           ; $4b96: $c0

	ld sp, hl                                        ; $4b97: $f9
	dec b                                            ; $4b98: $05
	add e                                            ; $4b99: $83
	db $e3                                           ; $4b9a: $e3
	pop af                                           ; $4b9b: $f1
	pop af                                           ; $4b9c: $f1
	ld sp, hl                                        ; $4b9d: $f9
	adc c                                            ; $4b9e: $89
	rst $38                                          ; $4b9f: $ff
	rst $38                                          ; $4ba0: $ff
	ld a, a                                          ; $4ba1: $7f
	rra                                              ; $4ba2: $1f
	rrca                                             ; $4ba3: $0f
	rrca                                             ; $4ba4: $0f
	rlca                                             ; $4ba5: $07
	ld a, a                                          ; $4ba6: $7f
	add h                                            ; $4ba7: $84
	add b                                            ; $4ba8: $80
	nop                                              ; $4ba9: $00
	inc a                                            ; $4baa: $3c
	inc hl                                           ; $4bab: $23
	ld a, [de]                                       ; $4bac: $1a
	ld c, $77                                        ; $4bad: $0e $77
	ld b, c                                          ; $4baf: $41
	add l                                            ; $4bb0: $85
	inc e                                            ; $4bb1: $1c
	ld a, $26                                        ; $4bb2: $3e $26
	inc e                                            ; $4bb4: $1c
	nop                                              ; $4bb5: $00
	rlca                                             ; $4bb6: $07
	ld c, $6a                                        ; $4bb7: $0e $6a
	dec a                                            ; $4bb9: $3d
	halt                                             ; $4bba: $76
	ld a, [bc]                                       ; $4bbb: $0a
	dec c                                            ; $4bbc: $0d
	rla                                              ; $4bbd: $17
	ld bc, $0f06                                     ; $4bbe: $01 $06 $0f
	ld c, e                                          ; $4bc1: $4b
	rst GetHLinHL                                          ; $4bc2: $cf
	push bc                                          ; $4bc3: $c5
	inc bc                                           ; $4bc4: $03
	ld c, $df                                        ; $4bc5: $0e $df
	ld a, [hl]                                       ; $4bc7: $7e
	db $fc                                           ; $4bc8: $fc
	db $fd                                           ; $4bc9: $fd
	ld a, e                                          ; $4bca: $7b
	sbc $ff                                          ; $4bcb: $de $ff
	sub l                                            ; $4bcd: $95
	or e                                             ; $4bce: $b3
	rst SubAFromDE                                          ; $4bcf: $df
	rst SubAFromDE                                          ; $4bd0: $df
	rst AddAOntoHL                                          ; $4bd1: $ef
	adc $8c                                          ; $4bd2: $ce $8c
	jr jr_05a_4bd6                                   ; $4bd4: $18 $00

jr_05a_4bd6:
	sbc a                                            ; $4bd6: $9f
	cp a                                             ; $4bd7: $bf
	db $db                                           ; $4bd8: $db
	rst $38                                          ; $4bd9: $ff
	sbc e                                            ; $4bda: $9b
	db $fc                                           ; $4bdb: $fc
	db $ec                                           ; $4bdc: $ec
	db $ec                                           ; $4bdd: $ec
	call nz, $9275                                   ; $4bde: $c4 $75 $92
	ld [bc], a                                       ; $4be1: $02
	ret nz                                           ; $4be2: $c0

	ld c, e                                          ; $4be3: $4b
	ldh a, [$80]                                     ; $4be4: $f0 $80
	rst SubAFromDE                                          ; $4be6: $df
	sbc h                                            ; $4be7: $9c
	inc l                                            ; $4be8: $2c
	adc e                                            ; $4be9: $8b
	adc b                                            ; $4bea: $88
	ret nz                                           ; $4beb: $c0

	call nz, $2088                                   ; $4bec: $c4 $88 $20
	ld h, e                                          ; $4bef: $63
	db $d3                                           ; $4bf0: $d3
	ld [hl], h                                       ; $4bf1: $74
	ld [hl], a                                       ; $4bf2: $77

jr_05a_4bf3:
	ccf                                              ; $4bf3: $3f
	dec sp                                           ; $4bf4: $3b
	ld [hl], a                                       ; $4bf5: $77
	sbc $fe                                          ; $4bf6: $de $fe
	ld h, a                                          ; $4bf8: $67
	ei                                               ; $4bf9: $fb
	ld e, h                                          ; $4bfa: $5c
	jr @-$7d                                         ; $4bfb: $18 $81

	adc b                                            ; $4bfd: $88
	ld hl, $9801                                     ; $4bfe: $21 $01 $98
	inc b                                            ; $4c01: $04
	and e                                            ; $4c02: $a3
	rst SubAFromBC                                          ; $4c03: $e7
	ld a, [hl]                                       ; $4c04: $7e
	sbc [hl]                                         ; $4c05: $9e
	ld [hl], a                                       ; $4c06: $77
	ld a, c                                          ; $4c07: $79
	db $d3                                           ; $4c08: $d3
	ld l, e                                          ; $4c09: $6b
	ret z                                            ; $4c0a: $c8

	halt                                             ; $4c0b: $76
	ldh a, [c]                                       ; $4c0c: $f2
	rst SubAFromDE                                          ; $4c0d: $df
	rst $38                                          ; $4c0e: $ff
	sub e                                            ; $4c0f: $93
	dec a                                            ; $4c10: $3d
	db $fc                                           ; $4c11: $fc
	ld a, b                                          ; $4c12: $78
	ld c, h                                          ; $4c13: $4c
	ld c, $0e                                        ; $4c14: $0e $0e
	ld b, $07                                        ; $4c16: $06 $07
	jp nz, $8703                                     ; $4c18: $c2 $03 $87

	or e                                             ; $4c1b: $b3
	ld a, e                                          ; $4c1c: $7b
	ld c, b                                          ; $4c1d: $48
	sbc [hl]                                         ; $4c1e: $9e
	ld hl, sp+$71                                    ; $4c1f: $f8 $71
	or c                                             ; $4c21: $b1
	sbc l                                            ; $4c22: $9d
	ld c, $17                                        ; $4c23: $0e $17
	ld [hl], c                                       ; $4c25: $71
	inc e                                            ; $4c26: $1c
	rst SubAFromDE                                          ; $4c27: $df
	rst $38                                          ; $4c28: $ff
	sbc [hl]                                         ; $4c29: $9e
	ld hl, sp+$77                                    ; $4c2a: $f8 $77
	xor b                                            ; $4c2c: $a8
	sbc d                                            ; $4c2d: $9a
	rrca                                             ; $4c2e: $0f
	rst FarCall                                          ; $4c2f: $f7
	rst SubAFromDE                                          ; $4c30: $df
	db $fd                                           ; $4c31: $fd
	rst JumpTable                                          ; $4c32: $c7
	ld [hl], e                                       ; $4c33: $73
	ldh a, [c]                                       ; $4c34: $f2
	add a                                            ; $4c35: $87
	ccf                                              ; $4c36: $3f
	inc bc                                           ; $4c37: $03
	ld hl, sp+$05                                    ; $4c38: $f8 $05
	dec de                                           ; $4c3a: $1b
	rst AddAOntoHL                                          ; $4c3b: $ef
	ccf                                              ; $4c3c: $3f
	rst $38                                          ; $4c3d: $ff
	add $90                                          ; $4c3e: $c6 $90
	ld a, a                                          ; $4c40: $7f
	cp $fc                                           ; $4c41: $fe $fc
	pop af                                           ; $4c43: $f1
	add $39                                          ; $4c44: $c6 $39
	rst $38                                          ; $4c46: $ff
	rst AddAOntoHL                                          ; $4c47: $ef
	ldh [$fe], a                                     ; $4c48: $e0 $fe
	ldh [rIE], a                                     ; $4c4a: $e0 $ff
	rst $38                                          ; $4c4c: $ff
	ldh [$78], a                                     ; $4c4d: $e0 $78
	db $ed                                           ; $4c4f: $ed
	ld a, l                                          ; $4c50: $7d
	dec hl                                           ; $4c51: $2b
	sbc [hl]                                         ; $4c52: $9e
	add b                                            ; $4c53: $80
	ld a, d                                          ; $4c54: $7a
	ret c                                            ; $4c55: $d8

	ld a, l                                          ; $4c56: $7d

jr_05a_4c57:
	and [hl]                                         ; $4c57: $a6
	sbc [hl]                                         ; $4c58: $9e
	rrca                                             ; $4c59: $0f
	sbc $ff                                          ; $4c5a: $de $ff
	ld [hl], l                                       ; $4c5c: $75
	ld [hl], e                                       ; $4c5d: $73
	sbc e                                            ; $4c5e: $9b
	ldh a, [rP1]                                     ; $4c5f: $f0 $00
	nop                                              ; $4c61: $00
	db $fc                                           ; $4c62: $fc
	ld [hl], a                                       ; $4c63: $77
	or e                                             ; $4c64: $b3
	ld b, a                                          ; $4c65: $47
	ld h, b                                          ; $4c66: $60
	sub a                                            ; $4c67: $97
	push bc                                          ; $4c68: $c5
	push hl                                          ; $4c69: $e5
	ld [$ccea], a                                    ; $4c6a: $ea $ea $cc
	call $cdca                                       ; $4c6d: $cd $ca $cd
	db $dd                                           ; $4c70: $dd
	ccf                                              ; $4c71: $3f
	sbc $7f                                          ; $4c72: $de $7f
	adc l                                            ; $4c74: $8d
	ld a, [hl]                                       ; $4c75: $7e
	ld a, a                                          ; $4c76: $7f
	cp a                                             ; $4c77: $bf
	rst SubAFromDE                                          ; $4c78: $df
	ld a, [hl]                                       ; $4c79: $7e

jr_05a_4c7a:
	cp [hl]                                          ; $4c7a: $be
	ld a, [hl]                                       ; $4c7b: $7e
	cp $fe                                           ; $4c7c: $fe $fe
	and b                                            ; $4c7e: $a0
	ld h, b                                          ; $4c7f: $60
	ld h, b                                          ; $4c80: $60
	pop bc                                           ; $4c81: $c1
	pop bc                                           ; $4c82: $c1
	add c                                            ; $4c83: $81
	ld bc, $0901                                     ; $4c84: $01 $01 $09
	db $dd                                           ; $4c87: $dd
	inc de                                           ; $4c88: $13
	rst SubAFromDE                                          ; $4c89: $df
	rla                                              ; $4c8a: $17
	halt                                             ; $4c8b: $76
	add a                                            ; $4c8c: $87
	ld [hl], l                                       ; $4c8d: $75
	ret nz                                           ; $4c8e: $c0

	sbc h                                            ; $4c8f: $9c
	ld hl, sp+$40                                    ; $4c90: $f8 $40
	cp l                                             ; $4c92: $bd
	ld l, d                                          ; $4c93: $6a
	nop                                              ; $4c94: $00
	sbc l                                            ; $4c95: $9d
	jp $6f7e                                         ; $4c96: $c3 $7e $6f


	jr nz, jr_05a_4c7a                               ; $4c99: $20 $df

	rst AddAOntoHL                                          ; $4c9b: $ef
	call c, $9aff                                    ; $4c9c: $dc $ff $9a
	inc a                                            ; $4c9f: $3c
	ld hl, sp+$38                                    ; $4ca0: $f8 $38
	jr nc, jr_05a_4cb4                               ; $4ca2: $30 $10

	ld h, e                                          ; $4ca4: $63
	and b                                            ; $4ca5: $a0
	rst SubAFromDE                                          ; $4ca6: $df
	db $e3                                           ; $4ca7: $e3
	ei                                               ; $4ca8: $fb
	rst SubAFromDE                                          ; $4ca9: $df
	inc e                                            ; $4caa: $1c
	ld l, $e0                                        ; $4cab: $2e $e0
	rst SubAFromDE                                          ; $4cad: $df
	adc a                                            ; $4cae: $8f
	ei                                               ; $4caf: $fb
	rst SubAFromDE                                          ; $4cb0: $df
	ld [hl], b                                       ; $4cb1: $70
	ld b, $c0                                        ; $4cb2: $06 $c0

jr_05a_4cb4:
	sbc e                                            ; $4cb4: $9b
	ld b, e                                          ; $4cb5: $43
	nop                                              ; $4cb6: $00
	add hl, bc                                       ; $4cb7: $09
	ld e, b                                          ; $4cb8: $58
	ld [hl], l                                       ; $4cb9: $75
	jr z, jr_05a_4c57                                ; $4cba: $28 $9b

	cp h                                             ; $4cbc: $bc
	rst $38                                          ; $4cbd: $ff
	or $a7                                           ; $4cbe: $f6 $a7
	halt                                             ; $4cc0: $76
	ld [hl], l                                       ; $4cc1: $75
	sbc e                                            ; $4cc2: $9b
	ld d, b                                          ; $4cc3: $50
	stop                                             ; $4cc4: $10 $00
	jr nz, @-$01                                     ; $4cc6: $20 $fd

	sbc e                                            ; $4cc8: $9b
	xor a                                            ; $4cc9: $af
	rst AddAOntoHL                                          ; $4cca: $ef
	rst $38                                          ; $4ccb: $ff

Call_05a_4ccc:
	rst SubAFromDE                                          ; $4ccc: $df
	ld l, e                                          ; $4ccd: $6b
	ret c                                            ; $4cce: $d8

	sbc h                                            ; $4ccf: $9c
	ld bc, $0f07                                     ; $4cd0: $01 $07 $0f
	ld [hl], h                                       ; $4cd3: $74
	ld a, $7b                                        ; $4cd4: $3e $7b
	ld e, [hl]                                       ; $4cd6: $5e
	ld a, h                                          ; $4cd7: $7c
	cp a                                             ; $4cd8: $bf
	sbc d                                            ; $4cd9: $9a
	push hl                                          ; $4cda: $e5
	rlca                                             ; $4cdb: $07
	rra                                              ; $4cdc: $1f
	ld a, [hl]                                       ; $4cdd: $7e
	db $fd                                           ; $4cde: $fd
	db $db                                           ; $4cdf: $db
	rst $38                                          ; $4ce0: $ff
	sub a                                            ; $4ce1: $97
	ei                                               ; $4ce2: $fb
	and $c4                                          ; $4ce3: $e6 $c4
	adc b                                            ; $4ce5: $88
	db $10                                           ; $4ce6: $10
	db $10                                           ; $4ce7: $10
	jp nz, $da77                                     ; $4ce8: $c2 $77 $da

	rst $38                                          ; $4ceb: $ff
	sub l                                            ; $4cec: $95
	adc h                                            ; $4ced: $8c
	ld [$2010], sp                                   ; $4cee: $08 $10 $20
	jr nz, jr_05a_4d34                               ; $4cf1: $20 $41

	ld b, c                                          ; $4cf3: $41
	ld a, $a1                                        ; $4cf4: $3e $a1
	cp $7a                                           ; $4cf6: $fe $7a
	sub a                                            ; $4cf8: $97
	ld a, e                                          ; $4cf9: $7b
	db $dd                                           ; $4cfa: $dd
	adc c                                            ; $4cfb: $89
	ld a, a                                          ; $4cfc: $7f
	ld b, c                                          ; $4cfd: $41
	ld b, c                                          ; $4cfe: $41
	add c                                            ; $4cff: $81
	add c                                            ; $4d00: $81
	inc bc                                           ; $4d01: $03
	inc bc                                           ; $4d02: $03
	rst SubAFromDE                                          ; $4d03: $df
	or a                                             ; $4d04: $b7
	db $ed                                           ; $4d05: $ed
	sub a                                            ; $4d06: $97
	ld l, [hl]                                       ; $4d07: $6e
	push af                                          ; $4d08: $f5
	push hl                                          ; $4d09: $e5
	and $38                                          ; $4d0a: $e6 $38
	adc $f3                                          ; $4d0c: $ce $f3
	ld hl, sp-$61                                    ; $4d0e: $f8 $9f
	rrca                                             ; $4d10: $0f
	rra                                              ; $4d11: $1f
	ld a, e                                          ; $4d12: $7b
	jr jr_05a_4d94                                   ; $4d13: $18 $7f

	and $7f                                          ; $4d15: $e6 $7f
	db $ec                                           ; $4d17: $ec
	sub l                                            ; $4d18: $95
	ld e, e                                          ; $4d19: $5b
	or l                                             ; $4d1a: $b5
	nop                                              ; $4d1b: $00
	nop                                              ; $4d1c: $00
	add b                                            ; $4d1d: $80
	ldh [$38], a                                     ; $4d1e: $e0 $38
	call z, $fbe6                                    ; $4d20: $cc $e6 $fb
	halt                                             ; $4d23: $76
	dec b                                            ; $4d24: $05
	sbc h                                            ; $4d25: $9c
	rst SubAFromDE                                          ; $4d26: $df
	ret nz                                           ; $4d27: $c0

	rst $38                                          ; $4d28: $ff
	ld [hl], h                                       ; $4d29: $74
	jr c, @-$6f                                      ; $4d2a: $38 $8f

	inc bc                                           ; $4d2c: $03
	ccf                                              ; $4d2d: $3f
	ccf                                              ; $4d2e: $3f
	nop                                              ; $4d2f: $00
	inc bc                                           ; $4d30: $03
	rst $38                                          ; $4d31: $ff
	pop af                                           ; $4d32: $f1
	add c                                            ; $4d33: $81

jr_05a_4d34:
	nop                                              ; $4d34: $00
	nop                                              ; $4d35: $00
	ld hl, sp+$07                                    ; $4d36: $f8 $07
	nop                                              ; $4d38: $00
	nop                                              ; $4d39: $00
	ld c, $7e                                        ; $4d3a: $0e $7e
	call c, $92ff                                    ; $4d3c: $dc $ff $92
	rst GetHLinHL                                          ; $4d3f: $cf
	set 1, a                                         ; $4d40: $cb $cf
	rst SubAFromHL                                          ; $4d42: $d7
	rst SubAFromDE                                          ; $4d43: $df
	ld l, a                                          ; $4d44: $6f
	rst $38                                          ; $4d45: $ff
	ccf                                              ; $4d46: $3f
	ld a, h                                          ; $4d47: $7c
	ld a, h                                          ; $4d48: $7c
	ld a, b                                          ; $4d49: $78
	ld a, b                                          ; $4d4a: $78
	ld [hl], b                                       ; $4d4b: $70
	ld a, c                                          ; $4d4c: $79
	ld c, h                                          ; $4d4d: $4c

jr_05a_4d4e:
	db $dd                                           ; $4d4e: $dd
	cp $74                                           ; $4d4f: $fe $74
	ld d, h                                          ; $4d51: $54
	db $dd                                           ; $4d52: $dd
	ld bc, $03df                                     ; $4d53: $01 $df $03
	rst SubAFromDE                                          ; $4d56: $df
	rlca                                             ; $4d57: $07
	reti                                             ; $4d58: $d9


	rra                                              ; $4d59: $1f
	ld a, l                                          ; $4d5a: $7d
	ld [hl], h                                       ; $4d5b: $74
	db $db                                           ; $4d5c: $db
	ldh a, [rPCM34]                                  ; $4d5d: $f0 $77
	ld e, c                                          ; $4d5f: $59
	sbc $fe                                          ; $4d60: $de $fe
	ld [hl], e                                       ; $4d62: $73
	ld c, b                                          ; $4d63: $48
	sbc $01                                          ; $4d64: $de $01
	halt                                             ; $4d66: $76
	ld [$309a], sp                                   ; $4d67: $08 $9a $30
	ld [bc], a                                       ; $4d6a: $02
	ld bc, $1f0f                                     ; $4d6b: $01 $0f $1f
	ld a, e                                          ; $4d6e: $7b
	pop af                                           ; $4d6f: $f1
	adc d                                            ; $4d70: $8a
	adc $f1                                          ; $4d71: $ce $f1
	adc $f0                                          ; $4d73: $ce $f0
	ldh [$e3], a                                     ; $4d75: $e0 $e3
	pop bc                                           ; $4d77: $c1
	ld bc, $3841                                     ; $4d78: $01 $41 $38
	ld hl, sp-$08                                    ; $4d7b: $f8 $f8
	db $fc                                           ; $4d7d: $fc
	inc e                                            ; $4d7e: $1c
	ld a, $ce                                        ; $4d7f: $3e $ce
	ld a, $c7                                        ; $4d81: $3e $c7
	rlca                                             ; $4d83: $07
	rlca                                             ; $4d84: $07
	inc bc                                           ; $4d85: $03
	halt                                             ; $4d86: $76
	add hl, de                                       ; $4d87: $19
	sbc e                                            ; $4d88: $9b
	pop bc                                           ; $4d89: $c1
	ld [$3f07], sp                                   ; $4d8a: $08 $07 $3f
	ld [hl], l                                       ; $4d8d: $75
	ld de, $389a                                     ; $4d8e: $11 $9a $38
	rst JumpTable                                          ; $4d91: $c7
	jr c, @-$3e                                      ; $4d92: $38 $c0

jr_05a_4d94:
	adc a                                            ; $4d94: $8f
	ld [hl], a                                       ; $4d95: $77

jr_05a_4d96:
	db $eb                                           ; $4d96: $eb
	rst SubAFromDE                                          ; $4d97: $df
	db $e3                                           ; $4d98: $e3
	sub [hl]                                         ; $4d99: $96
	pop af                                           ; $4d9a: $f1
	ld [hl], b                                       ; $4d9b: $70

jr_05a_4d9c:
	jr c, jr_05a_4d96                                ; $4d9c: $38 $f8

	jr c, jr_05a_4d9c                                ; $4d9e: $38 $fc

	inc e                                            ; $4da0: $1c
	inc e                                            ; $4da1: $1c
	ld c, $2e                                        ; $4da2: $0e $2e
	ret nz                                           ; $4da4: $c0

	sbc [hl]                                         ; $4da5: $9e
	db $fc                                           ; $4da6: $fc
	ld l, b                                          ; $4da7: $68
	ret nc                                           ; $4da8: $d0

	rst FarCall                                          ; $4da9: $f7
	ld e, e                                          ; $4daa: $5b
	ret c                                            ; $4dab: $d8

	rst SubAFromDE                                          ; $4dac: $df
	ld bc, $02df                                     ; $4dad: $01 $df $02
	sbc [hl]                                         ; $4db0: $9e
	inc b                                            ; $4db1: $04
	reti                                             ; $4db2: $d9


	rst $38                                          ; $4db3: $ff
	ld h, h                                          ; $4db4: $64
	jr nc, jr_05a_4d4e                               ; $4db5: $30 $97

	jp z, $948a                                      ; $4db7: $ca $8a $94

	inc d                                            ; $4dba: $14
	jr z, jr_05a_4de5                                ; $4dbb: $28 $28

	ld d, b                                          ; $4dbd: $50
	ld d, c                                          ; $4dbe: $51
	reti                                             ; $4dbf: $d9


	rst $38                                          ; $4dc0: $ff
	rst SubAFromDE                                          ; $4dc1: $df
	jr nz, @-$1f                                     ; $4dc2: $20 $df

	ld b, b                                          ; $4dc4: $40
	sbc e                                            ; $4dc5: $9b
	ret nz                                           ; $4dc6: $c0

	pop bc                                           ; $4dc7: $c1
	add c                                            ; $4dc8: $81
	add c                                            ; $4dc9: $81
	reti                                             ; $4dca: $d9


	rst $38                                          ; $4dcb: $ff
	sbc [hl]                                         ; $4dcc: $9e
	ld b, c                                          ; $4dcd: $41
	sbc $82                                          ; $4dce: $de $82
	sbc e                                            ; $4dd0: $9b
	add h                                            ; $4dd1: $84
	inc b                                            ; $4dd2: $04
	inc b                                            ; $4dd3: $04
	inc c                                            ; $4dd4: $0c
	halt                                             ; $4dd5: $76
	and a                                            ; $4dd6: $a7
	db $dd                                           ; $4dd7: $dd
	ei                                               ; $4dd8: $fb
	sbc $03                                          ; $4dd9: $de $03
	call c, $9c07                                    ; $4ddb: $dc $07 $9c
	and $c6                                          ; $4dde: $e6 $c6
	rst JumpTable                                          ; $4de0: $c7
	call c, Call_05a_7e85                            ; $4de1: $dc $85 $7e
	ld a, [hl]                                       ; $4de4: $7e

jr_05a_4de5:
	ld [hl], l                                       ; $4de5: $75
	pop bc                                           ; $4de6: $c1
	rst SubAFromDE                                          ; $4de7: $df
	ld a, a                                          ; $4de8: $7f
	sub h                                            ; $4de9: $94
	xor d                                            ; $4dea: $aa
	ld d, h                                          ; $4deb: $54
	or [hl]                                          ; $4dec: $b6
	and h                                            ; $4ded: $a4
	or h                                             ; $4dee: $b4
	or h                                             ; $4def: $b4
	xor l                                            ; $4df0: $ad
	cp a                                             ; $4df1: $bf
	db $dd                                           ; $4df2: $dd
	rst AddAOntoHL                                          ; $4df3: $ef
	ld l, a                                          ; $4df4: $6f
	ld [hl], l                                       ; $4df5: $75
	or c                                             ; $4df6: $b1
	sbc l                                            ; $4df7: $9d
	ld l, [hl]                                       ; $4df8: $6e
	ldh [$de], a                                     ; $4df9: $e0 $de
	add b                                            ; $4dfb: $80
	sbc d                                            ; $4dfc: $9a
	ld b, c                                          ; $4dfd: $41
	ld c, a                                          ; $4dfe: $4f
	rst $38                                          ; $4dff: $ff
	cp $9f                                           ; $4e00: $fe $9f
	ld [hl], a                                       ; $4e02: $77
	rlca                                             ; $4e03: $07

Jump_05a_4e04:
	sbc h                                            ; $4e04: $9c
	ldh a, [rLCDC]                                   ; $4e05: $f0 $40
	ld hl, $7f7b                                     ; $4e07: $21 $7b $7f
	sbc d                                            ; $4e0a: $9a
	ccf                                              ; $4e0b: $3f
	ei                                               ; $4e0c: $fb
	db $ed                                           ; $4e0d: $ed
	or e                                             ; $4e0e: $b3
	rst GetHLinHL                                          ; $4e0f: $cf
	sbc $ff                                          ; $4e10: $de $ff
	sub [hl]                                         ; $4e12: $96
	ret nz                                           ; $4e13: $c0

	rlca                                             ; $4e14: $07
	ld e, $7c                                        ; $4e15: $1e $7c
	ldh a, [rIE]                                     ; $4e17: $f0 $ff
	ccf                                              ; $4e19: $3f
	ccf                                              ; $4e1a: $3f
	cp a                                             ; $4e1b: $bf
	halt                                             ; $4e1c: $76
	ld [hl], $de                                     ; $4e1d: $36 $de
	ldh [$9a], a                                     ; $4e1f: $e0 $9a
	ld h, b                                          ; $4e21: $60
	jr nz, jr_05a_4e84                               ; $4e22: $20 $60

	ld b, b                                          ; $4e24: $40
	ld b, b                                          ; $4e25: $40
	ld a, b                                          ; $4e26: $78
	ld c, l                                          ; $4e27: $4d
	sbc [hl]                                         ; $4e28: $9e
	ret nz                                           ; $4e29: $c0

	ld [hl], h                                       ; $4e2a: $74
	sbc b                                            ; $4e2b: $98
	ld a, d                                          ; $4e2c: $7a
	dec l                                            ; $4e2d: $2d
	ld a, e                                          ; $4e2e: $7b
	xor a                                            ; $4e2f: $af
	rst SubAFromDE                                          ; $4e30: $df
	rst $38                                          ; $4e31: $ff
	ld a, e                                          ; $4e32: $7b
	ld sp, hl                                        ; $4e33: $f9
	sbc d                                            ; $4e34: $9a
	ccf                                              ; $4e35: $3f
	ld e, a                                          ; $4e36: $5f
	ld e, c                                          ; $4e37: $59
	ld e, b                                          ; $4e38: $58
	adc h                                            ; $4e39: $8c
	ld a, d                                          ; $4e3a: $7a
	and l                                            ; $4e3b: $a5
	ld a, a                                          ; $4e3c: $7f
	and $9d                                          ; $4e3d: $e6 $9d
	add $c5                                          ; $4e3f: $c6 $c5
	ld h, e                                          ; $4e41: $63
	ld [hl], b                                       ; $4e42: $70
	ld sp, hl                                        ; $4e43: $f9
	ld a, h                                          ; $4e44: $7c
	dec hl                                           ; $4e45: $2b
	rst SubAFromDE                                          ; $4e46: $df
	adc a                                            ; $4e47: $8f
	sub c                                            ; $4e48: $91
	add a                                            ; $4e49: $87
	rst JumpTable                                          ; $4e4a: $c7
	rst JumpTable                                          ; $4e4b: $c7
	jp $f0e0                                         ; $4e4c: $c3 $e0 $f0


	ld [hl], b                                       ; $4e4f: $70
	ld [hl], b                                       ; $4e50: $70
	ld a, b                                          ; $4e51: $78
	jr c, @+$3a                                      ; $4e52: $38 $38

	inc a                                            ; $4e54: $3c
	db $fc                                           ; $4e55: $fc
	db $fc                                           ; $4e56: $fc
	halt                                             ; $4e57: $76
	and d                                            ; $4e58: $a2
	rst SubAFromDE                                          ; $4e59: $df
	rst $38                                          ; $4e5a: $ff
	rst SubAFromDE                                          ; $4e5b: $df
	inc bc                                           ; $4e5c: $03
	halt                                             ; $4e5d: $76
	and d                                            ; $4e5e: $a2
	rst $38                                          ; $4e5f: $ff
	rst SubAFromDE                                          ; $4e60: $df
	ld a, a                                          ; $4e61: $7f
	sbc $3f                                          ; $4e62: $de $3f
	sbc d                                            ; $4e64: $9a
	rra                                              ; $4e65: $1f
	ld e, $10                                        ; $4e66: $1e $10
	add b                                            ; $4e68: $80
	add b                                            ; $4e69: $80
	sbc $c0                                          ; $4e6a: $de $c0
	sbc $e0                                          ; $4e6c: $de $e0
	rst SubAFromDE                                          ; $4e6e: $df
	pop af                                           ; $4e6f: $f1
	sbc $f8                                          ; $4e70: $de $f8
	ld a, h                                          ; $4e72: $7c
	jp hl                                            ; $4e73: $e9


	ld a, [hl]                                       ; $4e74: $7e
	ld b, c                                          ; $4e75: $41
	sbc [hl]                                         ; $4e76: $9e
	ld c, $de                                        ; $4e77: $0e $de
	rlca                                             ; $4e79: $07
	sbc $03                                          ; $4e7a: $de $03
	ld [hl], h                                       ; $4e7c: $74
	call c, $def8                                    ; $4e7d: $dc $f8 $de
	add b                                            ; $4e80: $80
	jp hl                                            ; $4e81: $e9


	reti                                             ; $4e82: $d9


	rst $38                                          ; $4e83: $ff

jr_05a_4e84:
	sbc [hl]                                         ; $4e84: $9e
	rlca                                             ; $4e85: $07
	sbc $0b                                          ; $4e86: $de $0b
	rst SubAFromDE                                          ; $4e88: $df
	inc de                                           ; $4e89: $13
	sbc l                                            ; $4e8a: $9d
	ld de, $de22                                     ; $4e8b: $11 $22 $de
	db $fc                                           ; $4e8e: $fc
	sbc $fd                                          ; $4e8f: $de $fd
	reti                                             ; $4e91: $d9


	rst $38                                          ; $4e92: $ff
	rst SubAFromDE                                          ; $4e93: $df
	ld a, l                                          ; $4e94: $7d
	sbc b                                            ; $4e95: $98
	sub c                                            ; $4e96: $91
	and c                                            ; $4e97: $a1
	and e                                            ; $4e98: $a3
	inc hl                                           ; $4e99: $23
	ld b, e                                          ; $4e9a: $43
	ld b, e                                          ; $4e9b: $43
	rst JumpTable                                          ; $4e9c: $c7
	ld [hl], b                                       ; $4e9d: $70
	ld l, b                                          ; $4e9e: $68
	db $dd                                           ; $4e9f: $dd
	rst $38                                          ; $4ea0: $ff
	rst SubAFromDE                                          ; $4ea1: $df
	add e                                            ; $4ea2: $83
	sbc [hl]                                         ; $4ea3: $9e
	inc bc                                           ; $4ea4: $03
	call c, $d906                                    ; $4ea5: $dc $06 $d9
	rst $38                                          ; $4ea8: $ff
	reti                                             ; $4ea9: $d9


	inc c                                            ; $4eaa: $0c
	reti                                             ; $4eab: $d9


	ei                                               ; $4eac: $fb
	reti                                             ; $4ead: $d9


	rlca                                             ; $4eae: $07
	reti                                             ; $4eaf: $d9


	add l                                            ; $4eb0: $85
	reti                                             ; $4eb1: $d9


	ld a, a                                          ; $4eb2: $7f
	sub d                                            ; $4eb3: $92
	cp e                                             ; $4eb4: $bb
	cp c                                             ; $4eb5: $b9
	or h                                             ; $4eb6: $b4
	or h                                             ; $4eb7: $b4
	or a                                             ; $4eb8: $b7
	and [hl]                                         ; $4eb9: $a6
	sub h                                            ; $4eba: $94
	sub h                                            ; $4ebb: $94
	ld l, d                                          ; $4ebc: $6a
	ld l, c                                          ; $4ebd: $69
	ld l, h                                          ; $4ebe: $6c
	ld l, h                                          ; $4ebf: $6c
	ld l, l                                          ; $4ec0: $6d
	sbc $7f                                          ; $4ec1: $de $7f
	add b                                            ; $4ec3: $80
	ei                                               ; $4ec4: $fb
	ld c, h                                          ; $4ec5: $4c
	or a                                             ; $4ec6: $b7
	rst SubAFromDE                                          ; $4ec7: $df
	sbc $3b                                          ; $4ec8: $de $3b
	ld [hl+], a                                      ; $4eca: $22
	inc l                                            ; $4ecb: $2c
	rra                                              ; $4ecc: $1f
	cp a                                             ; $4ecd: $bf
	db $fc                                           ; $4ece: $fc
	ld h, d                                          ; $4ecf: $62
	db $e3                                           ; $4ed0: $e3
	rst SubAFromBC                                          ; $4ed1: $e7
	rst $38                                          ; $4ed2: $ff
	rst $38                                          ; $4ed3: $ff
	dec e                                            ; $4ed4: $1d
	ld a, e                                          ; $4ed5: $7b
	db $d3                                           ; $4ed6: $d3
	rst SubAFromBC                                          ; $4ed7: $e7
	adc a                                            ; $4ed8: $8f
	rrca                                             ; $4ed9: $0f
	rla                                              ; $4eda: $17
	ld h, c                                          ; $4edb: $61
	and $8c                                          ; $4edc: $e6 $8c
	inc a                                            ; $4ede: $3c
	ld a, c                                          ; $4edf: $79
	pop af                                           ; $4ee0: $f1
	ld sp, hl                                        ; $4ee1: $f9
	ld sp, hl                                        ; $4ee2: $f9
	rst SubAFromDE                                          ; $4ee3: $df
	rst $38                                          ; $4ee4: $ff
	ld a, [hl]                                       ; $4ee5: $7e
	jp nz, Jump_05a_7fdd                             ; $4ee6: $c2 $dd $7f

	sbc l                                            ; $4ee9: $9d
	ld a, l                                          ; $4eea: $7d
	ld b, b                                          ; $4eeb: $40
	ld a, d                                          ; $4eec: $7a
	jp z, $80df                                      ; $4eed: $ca $df $80

	sbc l                                            ; $4ef0: $9d
	add h                                            ; $4ef1: $84
	add [hl]                                         ; $4ef2: $86
	ld [hl], l                                       ; $4ef3: $75
	xor d                                            ; $4ef4: $aa
	db $dd                                           ; $4ef5: $dd
	ld [bc], a                                       ; $4ef6: $02
	ld [hl], b                                       ; $4ef7: $70
	ldh a, [$de]                                     ; $4ef8: $f0 $de
	cp $94                                           ; $4efa: $fe $94
	adc h                                            ; $4efc: $8c
	inc c                                            ; $4efd: $0c
	nop                                              ; $4efe: $00
	rlca                                             ; $4eff: $07
	inc b                                            ; $4f00: $04
	inc b                                            ; $4f01: $04
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	add d                                            ; $4f04: $82
	inc bc                                           ; $4f05: $03
	rrca                                             ; $4f06: $0f
	sbc $08                                          ; $4f07: $de $08
	rst SubAFromDE                                          ; $4f09: $df
	inc b                                            ; $4f0a: $04
	ld a, a                                          ; $4f0b: $7f
	call nz, $0f96                                   ; $4f0c: $c4 $96 $0f
	add a                                            ; $4f0f: $87
	ld b, a                                          ; $4f10: $47
	rlca                                             ; $4f11: $07
	inc hl                                           ; $4f12: $23
	ld [hl+], a                                      ; $4f13: $22
	ld [hl], b                                       ; $4f14: $70
	ldh a, [$f0]                                     ; $4f15: $f0 $f0
	ld a, d                                          ; $4f17: $7a
	pop de                                           ; $4f18: $d1
	rst SubAFromDE                                          ; $4f19: $df
	inc e                                            ; $4f1a: $1c
	rst SubAFromDE                                          ; $4f1b: $df
	db $e3                                           ; $4f1c: $e3
	sbc d                                            ; $4f1d: $9a
	pop hl                                           ; $4f1e: $e1
	pop af                                           ; $4f1f: $f1
	ldh a, [$f0]                                     ; $4f20: $f0 $f0
	ret nz                                           ; $4f22: $c0

	ld a, b                                          ; $4f23: $78
	ld d, [hl]                                       ; $4f24: $56
	sbc c                                            ; $4f25: $99
	ld e, $0e                                        ; $4f26: $1e $0e
	ld c, $0f                                        ; $4f28: $0e $0f
	rlca                                             ; $4f2a: $07
	rlca                                             ; $4f2b: $07
	add hl, sp                                       ; $4f2c: $39
	push bc                                          ; $4f2d: $c5
	ld l, b                                          ; $4f2e: $68
	ld d, [hl]                                       ; $4f2f: $56
	sbc [hl]                                         ; $4f30: $9e
	ld [hl], b                                       ; $4f31: $70
	ldh [$c4], a                                     ; $4f32: $e0 $c4
	reti                                             ; $4f34: $d9


	rst $38                                          ; $4f35: $ff
	sbc $22                                          ; $4f36: $de $22
	call c, Call_05a_5e42                            ; $4f38: $dc $42 $5e
	add $95                                          ; $4f3b: $c6 $95
	ld e, l                                          ; $4f3d: $5d
	ld c, l                                          ; $4f3e: $4d
	ld b, l                                          ; $4f3f: $45
	ld b, l                                          ; $4f40: $45
	ld b, h                                          ; $4f41: $44
	ld b, d                                          ; $4f42: $42
	rst JumpTable                                          ; $4f43: $c7
	rst JumpTable                                          ; $4f44: $c7
	rst SubAFromBC                                          ; $4f45: $e7
	rst FarCall                                          ; $4f46: $f7
	ld [hl], b                                       ; $4f47: $70
	ld c, d                                          ; $4f48: $4a
	db $dd                                           ; $4f49: $dd
	ei                                               ; $4f4a: $fb
	sbc h                                            ; $4f4b: $9c
	ld a, e                                          ; $4f4c: $7b
	ei                                               ; $4f4d: $fb
	ei                                               ; $4f4e: $fb
	call c, $de0e                                    ; $4f4f: $dc $0e $de
	adc [hl]                                         ; $4f52: $8e
	ld l, h                                          ; $4f53: $6c
	dec [hl]                                         ; $4f54: $35
	sbc l                                            ; $4f55: $9d
	ei                                               ; $4f56: $fb
	ld [$0cdc], a                                    ; $4f57: $ea $dc $0c
	rst SubAFromDE                                          ; $4f5a: $df
	ld c, $9e                                        ; $4f5b: $0e $9e
	rra                                              ; $4f5d: $1f
	sbc $f3                                          ; $4f5e: $de $f3
	sbc d                                            ; $4f60: $9a
	ldh a, [c]                                       ; $4f61: $f2
	ldh [c], a                                       ; $4f62: $e2
	jp nz, $0202                                     ; $4f63: $c2 $02 $02

	db $dd                                           ; $4f66: $dd
	rrca                                             ; $4f67: $0f
	ld a, l                                          ; $4f68: $7d
	db $e4                                           ; $4f69: $e4
	rst SubAFromDE                                          ; $4f6a: $df
	rst $38                                          ; $4f6b: $ff
	rst SubAFromDE                                          ; $4f6c: $df
	add l                                            ; $4f6d: $85
	sbc [hl]                                         ; $4f6e: $9e
	dec b                                            ; $4f6f: $05
	ld l, d                                          ; $4f70: $6a
	ret nz                                           ; $4f71: $c0

	ld e, d                                          ; $4f72: $5a
	sbc b                                            ; $4f73: $98
	sbc h                                            ; $4f74: $9c
	ld b, $15                                        ; $4f75: $06 $15
	inc [hl]                                         ; $4f77: $34
	db $db                                           ; $4f78: $db
	rst $38                                          ; $4f79: $ff
	sub d                                            ; $4f7a: $92
	rst AddAOntoHL                                          ; $4f7b: $ef
	rst GetHLinHL                                          ; $4f7c: $cf
	dec [hl]                                         ; $4f7d: $35
	daa                                              ; $4f7e: $27
	daa                                              ; $4f7f: $27
	cpl                                              ; $4f80: $2f
	ccf                                              ; $4f81: $3f
	ld e, a                                          ; $4f82: $5f
	sbc a                                            ; $4f83: $9f
	rra                                              ; $4f84: $1f
	rst $38                                          ; $4f85: $ff
	cp $fc                                           ; $4f86: $fe $fc
	ld a, b                                          ; $4f88: $78
	ld a, l                                          ; $4f89: $7d
	rst SubAFromDE                                          ; $4f8a: $df
	pop af                                           ; $4f8b: $f1
	sbc [hl]                                         ; $4f8c: $9e
	jp $ffd9                                         ; $4f8d: $c3 $d9 $ff


	sbc b                                            ; $4f90: $98
	dec a                                            ; $4f91: $3d
	ld d, c                                          ; $4f92: $51
	ld d, c                                          ; $4f93: $51
	ld h, c                                          ; $4f94: $61
	ld b, c                                          ; $4f95: $41
	ld hl, $de21                                     ; $4f96: $21 $21 $de
	ld a, l                                          ; $4f99: $7d
	rst SubAFromDE                                          ; $4f9a: $df
	ld a, h                                          ; $4f9b: $7c
	sbc $3a                                          ; $4f9c: $de $3a
	sbc $86                                          ; $4f9e: $de $86
	rst SubAFromDE                                          ; $4fa0: $df
	add a                                            ; $4fa1: $87
	sbc $c7                                          ; $4fa2: $de $c7
	reti                                             ; $4fa4: $d9


	inc b                                            ; $4fa5: $04
	reti                                             ; $4fa6: $d9


	db $fc                                           ; $4fa7: $fc
	sbc l                                            ; $4fa8: $9d
	ld [bc], a                                       ; $4fa9: $02
	nop                                              ; $4faa: $00
	ld a, c                                          ; $4fab: $79
	cp d                                             ; $4fac: $ba
	add a                                            ; $4fad: $87
	ld bc, $0004                                     ; $4fae: $01 $04 $00
	inc b                                            ; $4fb1: $04
	ld [bc], a                                       ; $4fb2: $02
	ld [bc], a                                       ; $4fb3: $02
	inc bc                                           ; $4fb4: $03
	ld c, $30                                        ; $4fb5: $0e $30
	inc hl                                           ; $4fb7: $23
	rra                                              ; $4fb8: $1f
	jr nz, jr_05a_4ffb                               ; $4fb9: $20 $40

	nop                                              ; $4fbb: $00
	inc b                                            ; $4fbc: $04
	jr nz, jr_05a_4fbf                               ; $4fbd: $20 $00

jr_05a_4fbf:
	rlca                                             ; $4fbf: $07
	dec a                                            ; $4fc0: $3d
	inc e                                            ; $4fc1: $1c
	ccf                                              ; $4fc2: $3f
	ld hl, sp-$3d                                    ; $4fc3: $f8 $c3
	rra                                              ; $4fc5: $1f
	ld [hl], c                                       ; $4fc6: $71
	jp $cd7d                                         ; $4fc7: $c3 $7d $cd


	sub a                                            ; $4fca: $97
	db $10                                           ; $4fcb: $10
	ldh [$80], a                                     ; $4fcc: $e0 $80
	nop                                              ; $4fce: $00
	ldh [rAUD4LEN], a                                ; $4fcf: $e0 $20
	ld [hl], b                                       ; $4fd1: $70
	ldh a, [$2e]                                     ; $4fd2: $f0 $2e
	add $e0                                          ; $4fd4: $c6 $e0
	cp a                                             ; $4fd6: $bf
	halt                                             ; $4fd7: $76
	dec l                                            ; $4fd8: $2d
	reti                                             ; $4fd9: $d9


	rst $38                                          ; $4fda: $ff
	db $dd                                           ; $4fdb: $dd
	add d                                            ; $4fdc: $82
	sbc h                                            ; $4fdd: $9c
	ld [hl], d                                       ; $4fde: $72
	ld a, [hl]                                       ; $4fdf: $7e
	ld a, [hl-]                                      ; $4fe0: $3a
	ld [hl], b                                       ; $4fe1: $70
	ld b, b                                          ; $4fe2: $40
	sbc d                                            ; $4fe3: $9a
	adc a                                            ; $4fe4: $8f
	add e                                            ; $4fe5: $83
	rst JumpTable                                          ; $4fe6: $c7
	rst $38                                          ; $4fe7: $ff
	ld b, d                                          ; $4fe8: $42
	sbc $22                                          ; $4fe9: $de $22
	ld a, [hl]                                       ; $4feb: $7e
	cp e                                             ; $4fec: $bb
	sbc l                                            ; $4fed: $9d
	inc h                                            ; $4fee: $24
	ld h, h                                          ; $4fef: $64
	ld [hl], d                                       ; $4ff0: $72
	and h                                            ; $4ff1: $a4
	sbc h                                            ; $4ff2: $9c
	and [hl]                                         ; $4ff3: $a6
	rst $38                                          ; $4ff4: $ff
	rst $38                                          ; $4ff5: $ff
	sbc $8a                                          ; $4ff6: $de $8a
	sbc d                                            ; $4ff8: $9a
	adc [hl]                                         ; $4ff9: $8e
	rst AddAOntoHL                                          ; $4ffa: $ef

jr_05a_4ffb:
	rst FarCall                                          ; $4ffb: $f7
	sbc a                                            ; $4ffc: $9f
	sub d                                            ; $4ffd: $92
	halt                                             ; $4ffe: $76
	jp z, $9adf                                      ; $4fff: $ca $df $9a

	sub [hl]                                         ; $5002: $96
	ldh a, [c]                                       ; $5003: $f2
	rst $38                                          ; $5004: $ff
	ld a, [bc]                                       ; $5005: $0a
	ld a, [bc]                                       ; $5006: $0a
	add hl, bc                                       ; $5007: $09
	ccf                                              ; $5008: $3f
	rst $38                                          ; $5009: $ff
	jp hl                                            ; $500a: $e9


	inc b                                            ; $500b: $04
	ld [hl], a                                       ; $500c: $77
	ret nc                                           ; $500d: $d0

	sub h                                            ; $500e: $94
	ret                                              ; $500f: $c9


	add hl, bc                                       ; $5010: $09
	rra                                              ; $5011: $1f
	rst $38                                          ; $5012: $ff
	rst $38                                          ; $5013: $ff
	ld [bc], a                                       ; $5014: $02
	ld [bc], a                                       ; $5015: $02
	ld bc, $f1e1                                     ; $5016: $01 $e1 $f1
	rrca                                             ; $5019: $0f
	ld [hl], b                                       ; $501a: $70
	jr z, jr_05a_5099                                ; $501b: $28 $7c

	push bc                                          ; $501d: $c5
	sbc [hl]                                         ; $501e: $9e
	pop af                                           ; $501f: $f1
	halt                                             ; $5020: $76
	ret nz                                           ; $5021: $c0

	ld a, d                                          ; $5022: $7a
	add e                                            ; $5023: $83
	rst SubAFromDE                                          ; $5024: $df
	ld b, d                                          ; $5025: $42
	sbc [hl]                                         ; $5026: $9e
	ld b, c                                          ; $5027: $41
	reti                                             ; $5028: $d9


	rst $38                                          ; $5029: $ff
	sub h                                            ; $502a: $94
	ld [hl], h                                       ; $502b: $74
	ld [hl], d                                       ; $502c: $72
	ld b, d                                          ; $502d: $42
	add d                                            ; $502e: $82
	add d                                            ; $502f: $82
	add c                                            ; $5030: $81
	ld b, c                                          ; $5031: $41
	ld b, c                                          ; $5032: $41
	adc a                                            ; $5033: $8f
	adc a                                            ; $5034: $8f
	cp a                                             ; $5035: $bf
	call c, $dfff                                    ; $5036: $dc $ff $df
	rra                                              ; $5039: $1f
	rst SubAFromDE                                          ; $503a: $df
	rla                                              ; $503b: $17
	sbc [hl]                                         ; $503c: $9e
	ld [de], a                                       ; $503d: $12
	sbc $02                                          ; $503e: $de $02
	ld a, l                                          ; $5040: $7d
	sub h                                            ; $5041: $94
	ld a, l                                          ; $5042: $7d
	inc de                                           ; $5043: $13
	db $db                                           ; $5044: $db
	cp $9d                                           ; $5045: $fe $9d
	cp [hl]                                          ; $5047: $be
	inc e                                            ; $5048: $1c
	db $dd                                           ; $5049: $dd
	inc b                                            ; $504a: $04
	sbc e                                            ; $504b: $9b
	inc hl                                           ; $504c: $23
	db $e3                                           ; $504d: $e3
	and a                                            ; $504e: $a7
	rra                                              ; $504f: $1f
	db $dd                                           ; $5050: $dd
	rlca                                             ; $5051: $07
	rst SubAFromDE                                          ; $5052: $df
	dec a                                            ; $5053: $3d
	sbc [hl]                                         ; $5054: $9e
	inc a                                            ; $5055: $3c
	sbc $1e                                          ; $5056: $de $1e
	ld a, a                                          ; $5058: $7f
	or l                                             ; $5059: $b5
	sbc $c3                                          ; $505a: $de $c3
	sbc $e1                                          ; $505c: $de $e1
	ld a, h                                          ; $505e: $7c
	ld a, d                                          ; $505f: $7a
	sub [hl]                                         ; $5060: $96
	inc b                                            ; $5061: $04
	ld [$8888], sp                                   ; $5062: $08 $88 $88
	ld c, b                                          ; $5065: $48
	ld c, b                                          ; $5066: $48
	jr z, @+$2a                                      ; $5067: $28 $28

	db $fc                                           ; $5069: $fc
	jp c, $9cf8                                      ; $506a: $da $f8 $9c

	ld bc, $0a07                                     ; $506d: $01 $07 $0a
	db $fc                                           ; $5070: $fc
	sbc l                                            ; $5071: $9d
	ld e, $08                                        ; $5072: $1e $08
	ei                                               ; $5074: $fb
	sbc h                                            ; $5075: $9c
	ld [$a054], a                                    ; $5076: $ea $54 $a0
	ldh [hDisp1_OBP1], a                                     ; $5079: $e0 $94
	ld c, [hl]                                       ; $507b: $4e
	nop                                              ; $507c: $00
	sbc [hl]                                         ; $507d: $9e
	ld d, l                                          ; $507e: $55
	sbc $33                                          ; $507f: $de $33
	sbc [hl]                                         ; $5081: $9e
	ld [hl-], a                                      ; $5082: $32
	sbc $22                                          ; $5083: $de $22
	sbc l                                            ; $5085: $9d
	inc hl                                           ; $5086: $23
	inc sp                                           ; $5087: $33
	db $dd                                           ; $5088: $dd
	ld d, l                                          ; $5089: $55
	sbc [hl]                                         ; $508a: $9e
	ld d, d                                          ; $508b: $52
	db $dd                                           ; $508c: $dd
	ld [hl+], a                                      ; $508d: $22
	sbc [hl]                                         ; $508e: $9e
	scf                                              ; $508f: $37
	call c, $de55                                    ; $5090: $dc $55 $de
	ld [hl+], a                                      ; $5093: $22
	sbc l                                            ; $5094: $9d
	daa                                              ; $5095: $27
	ld [hl], a                                       ; $5096: $77
	sbc $55                                          ; $5097: $de $55

jr_05a_5099:
	sbc e                                            ; $5099: $9b
	ld d, [hl]                                       ; $509a: $56
	ld h, [hl]                                       ; $509b: $66
	inc [hl]                                         ; $509c: $34
	ld b, d                                          ; $509d: $42
	ld l, a                                          ; $509e: $6f
	or $9e                                           ; $509f: $f6 $9e
	ld d, e                                          ; $50a1: $53
	ld [hl], a                                       ; $50a2: $77
	sub $df                                          ; $50a3: $d6 $df
	ld [hl], a                                       ; $50a5: $77
	rst SubAFromDE                                          ; $50a6: $df
	ld d, l                                          ; $50a7: $55
	sbc d                                            ; $50a8: $9a
	ld h, [hl]                                       ; $50a9: $66
	ld h, e                                          ; $50aa: $63
	inc sp                                           ; $50ab: $33
	inc sp                                           ; $50ac: $33
	ld [hl], d                                       ; $50ad: $72
	sbc $77                                          ; $50ae: $de $77
	ld a, a                                          ; $50b0: $7f
	rst FarCall                                          ; $50b1: $f7

jr_05a_50b2:
	db $dd                                           ; $50b2: $dd
	inc sp                                           ; $50b3: $33
	db $dd                                           ; $50b4: $dd
	ld [hl], a                                       ; $50b5: $77
	ld [hl], a                                       ; $50b6: $77
	cp d                                             ; $50b7: $ba
	ld l, a                                          ; $50b8: $6f
	or $9e                                           ; $50b9: $f6 $9e
	ld d, [hl]                                       ; $50bb: $56
	db $dd                                           ; $50bc: $dd
	inc sp                                           ; $50bd: $33
	sbc [hl]                                         ; $50be: $9e
	scf                                              ; $50bf: $37
	db $dd                                           ; $50c0: $dd
	ld [hl], a                                       ; $50c1: $77
	ld a, e                                          ; $50c2: $7b
	pop de                                           ; $50c3: $d1
	sbc l                                            ; $50c4: $9d
	inc sp                                           ; $50c5: $33
	ld b, h                                          ; $50c6: $44
	ld c, e                                          ; $50c7: $4b
	or $96                                           ; $50c8: $f6 $96
	rlca                                             ; $50ca: $07
	rst $38                                          ; $50cb: $ff
	sbc [hl]                                         ; $50cc: $9e
	ld d, l                                          ; $50cd: $55
	cp $7f                                           ; $50ce: $fe $7f
	db $fc                                           ; $50d0: $fc
	sbc [hl]                                         ; $50d1: $9e
	add b                                            ; $50d2: $80
	ld a, e                                          ; $50d3: $7b
	db $fc                                           ; $50d4: $fc
	sbc [hl]                                         ; $50d5: $9e
	and d                                            ; $50d6: $a2
	ld l, e                                          ; $50d7: $6b
	db $f4                                           ; $50d8: $f4
	rst $38                                          ; $50d9: $ff
	sbc [hl]                                         ; $50da: $9e
	ld b, l                                          ; $50db: $45
	cp $9e                                           ; $50dc: $fe $9e
	ld d, h                                          ; $50de: $54
	ld [hl], e                                       ; $50df: $73
	db $ec                                           ; $50e0: $ec
	ld h, a                                          ; $50e1: $67
	ldh [rPCM34], a                                  ; $50e2: $e0 $77
	db $fc                                           ; $50e4: $fc
	sbc [hl]                                         ; $50e5: $9e
	and b                                            ; $50e6: $a0
	ld c, e                                          ; $50e7: $4b
	ldh a, [rBGP]                                    ; $50e8: $f0 $47
	db $fc                                           ; $50ea: $fc
	sbc d                                            ; $50eb: $9a
	xor d                                            ; $50ec: $aa
	nop                                              ; $50ed: $00
	ld d, a                                          ; $50ee: $57
	nop                                              ; $50ef: $00
	ld bc, $c87b                                     ; $50f0: $01 $7b $c8
	ld a, e                                          ; $50f3: $7b
	db $fc                                           ; $50f4: $fc
	sbc h                                            ; $50f5: $9c
	ld bc, $010a                                     ; $50f6: $01 $0a $01
	ld a, e                                          ; $50f9: $7b
	ldh a, [$7b]                                     ; $50fa: $f0 $7b
	db $fc                                           ; $50fc: $fc
	ei                                               ; $50fd: $fb
	ld a, a                                          ; $50fe: $7f
	or [hl]                                          ; $50ff: $b6
	sbc [hl]                                         ; $5100: $9e
	ld b, b                                          ; $5101: $40
	ld a, e                                          ; $5102: $7b
	db $fc                                           ; $5103: $fc
	add b                                            ; $5104: $80
	ld d, b                                          ; $5105: $50
	db $10                                           ; $5106: $10
	sbc b                                            ; $5107: $98
	jr jr_05a_510a                                   ; $5108: $18 $00

jr_05a_510a:
	nop                                              ; $510a: $00
	ld bc, $0201                                     ; $510b: $01 $01 $02
	inc bc                                           ; $510e: $03
	inc b                                            ; $510f: $04
	ld b, $05                                        ; $5110: $06 $05
	inc b                                            ; $5112: $04
	ld a, [bc]                                       ; $5113: $0a
	dec c                                            ; $5114: $0d
	dec bc                                           ; $5115: $0b
	rrca                                             ; $5116: $0f
	inc d                                            ; $5117: $14
	ld e, $d0                                        ; $5118: $1e $d0
	ld hl, sp+$11                                    ; $511a: $f8 $11
	ld hl, sp+$77                                    ; $511c: $f8 $77
	jr jr_05a_50b2                                   ; $511e: $18 $92

	ld a, l                                          ; $5120: $7d
	add hl, sp                                       ; $5121: $39
	cp $cb                                           ; $5122: $fe $cb
	add b                                            ; $5124: $80
	cp $1e                                           ; $5125: $fe $1e
	adc h                                            ; $5127: $8c
	ld a, [hl+]                                      ; $5128: $2a
	inc e                                            ; $5129: $1c
	ldh a, [rIF]                                     ; $512a: $f0 $0f
	jp $1c3c                                         ; $512c: $c3 $3c $1c


	ldh [$71], a                                     ; $512f: $e0 $71
	add b                                            ; $5131: $80
	add a                                            ; $5132: $87
	nop                                              ; $5133: $00
	inc e                                            ; $5134: $1c
	inc bc                                           ; $5135: $03
	ld [hl], c                                       ; $5136: $71
	rrca                                             ; $5137: $0f
	adc $3f                                          ; $5138: $ce $3f
	ccf                                              ; $513a: $3f
	ret nz                                           ; $513b: $c0

	add a                                            ; $513c: $87

jr_05a_513d:
	nop                                              ; $513d: $00
	inc a                                            ; $513e: $3c
	inc bc                                           ; $513f: $03
	db $e3                                           ; $5140: $e3
	inc e                                            ; $5141: $1c
	rra                                              ; $5142: $1f
	ldh [$80], a                                     ; $5143: $e0 $80
	ld a, h                                          ; $5145: $7c
	add e                                            ; $5146: $83
	db $e3                                           ; $5147: $e3
	rst $38                                          ; $5148: $ff
	inc e                                            ; $5149: $1c
	ccf                                              ; $514a: $3f
	nop                                              ; $514b: $00
	rst $38                                          ; $514c: $ff
	add b                                            ; $514d: $80
	ld a, a                                          ; $514e: $7f
	ccf                                              ; $514f: $3f
	ret nz                                           ; $5150: $c0

	ld hl, sp+$07                                    ; $5151: $f8 $07
	add b                                            ; $5153: $80
	ld a, a                                          ; $5154: $7f
	rra                                              ; $5155: $1f
	rst $38                                          ; $5156: $ff
	rst SubAFromBC                                          ; $5157: $e7
	ld hl, sp-$01                                    ; $5158: $f8 $ff
	nop                                              ; $515a: $00
	jr nz, jr_05a_513d                               ; $515b: $20 $e0

	db $10                                           ; $515d: $10
	ldh a, [hDisp0_WY]                                     ; $515e: $f0 $88
	ld a, b                                          ; $5160: $78
	dec bc                                           ; $5161: $0b
	ei                                               ; $5162: $fb
	ld a, h                                          ; $5163: $7c
	adc b                                            ; $5164: $88

jr_05a_5165:
	cp $bc                                           ; $5165: $fe $bc
	rst JumpTable                                          ; $5167: $c7
	and $1f                                          ; $5168: $e6 $1f
	ld a, [de]                                       ; $516a: $1a
	rst $38                                          ; $516b: $ff
	inc l                                            ; $516c: $2c
	inc h                                            ; $516d: $24
	ld c, b                                          ; $516e: $48
	ld c, b                                          ; $516f: $48
	sbc b                                            ; $5170: $98
	adc b                                            ; $5171: $88
	jr nc, @+$12                                     ; $5172: $30 $10

	cp $7e                                           ; $5174: $fe $7e
	ld sp, $06c3                                     ; $5176: $31 $c3 $06
	ld hl, sp+$39                                    ; $5179: $f8 $39
	cp $f7                                           ; $517b: $fe $f7
	rst SubAFromDE                                          ; $517d: $df
	add b                                            ; $517e: $80
	rst SubAFromDE                                          ; $517f: $df
	ld b, b                                          ; $5180: $40
	sbc l                                            ; $5181: $9d
	and b                                            ; $5182: $a0
	jr nz, jr_05a_5165                               ; $5183: $20 $e0

	or c                                             ; $5185: $b1
	ld a, a                                          ; $5186: $7f
	inc c                                            ; $5187: $0c
	ld [hl], a                                       ; $5188: $77
	ld [$fc77], sp                                   ; $5189: $08 $77 $fc
	sbc d                                            ; $518c: $9a
	ld e, l                                          ; $518d: $5d
	nop                                              ; $518e: $00
	cp [hl]                                          ; $518f: $be
	nop                                              ; $5190: $00
	rst $38                                          ; $5191: $ff
	ld e, e                                          ; $5192: $5b
	ldh a, [$9e]                                     ; $5193: $f0 $9e
	ld a, l                                          ; $5195: $7d
	ld a, e                                          ; $5196: $7b
	ldh a, [c]                                       ; $5197: $f2
	ld e, a                                          ; $5198: $5f
	ldh a, [$9a]                                     ; $5199: $f0 $9a
	xor e                                            ; $519b: $ab
	nop                                              ; $519c: $00
	ld e, a                                          ; $519d: $5f
	nop                                              ; $519e: $00
	cp a                                             ; $519f: $bf
	ld e, e                                          ; $51a0: $5b
	ldh a, [$9e]                                     ; $51a1: $f0 $9e
	cp d                                             ; $51a3: $ba
	ld [hl], e                                       ; $51a4: $73
	ldh [c], a                                       ; $51a5: $e2
	ld l, a                                          ; $51a6: $6f
	ldh a, [$7f]                                     ; $51a7: $f0 $7f
	db $e4                                           ; $51a9: $e4
	ld a, a                                          ; $51aa: $7f
	db $fc                                           ; $51ab: $fc
	sbc [hl]                                         ; $51ac: $9e
	cp e                                             ; $51ad: $bb
	ld l, e                                          ; $51ae: $6b
	ldh a, [hDisp1_WX]                                     ; $51af: $f0 $96
	xor [hl]                                         ; $51b1: $ae
	ld bc, $055e                                     ; $51b2: $01 $5e $05
	cp a                                             ; $51b5: $bf
	inc bc                                           ; $51b6: $03
	rst $38                                          ; $51b7: $ff
	ld bc, $6bfe                                     ; $51b8: $01 $fe $6b
	cp $80                                           ; $51bb: $fe $80
	inc d                                            ; $51bd: $14
	inc e                                            ; $51be: $1c
	ld a, [bc]                                       ; $51bf: $0a
	ld c, $f9                                        ; $51c0: $0e $f9
	db $fd                                           ; $51c2: $fd
	inc b                                            ; $51c3: $04
	cp $ce                                           ; $51c4: $fe $ce
	rst $38                                          ; $51c6: $ff
	ld [hl], e                                       ; $51c7: $73
	ld a, a                                          ; $51c8: $7f
	ld h, c                                          ; $51c9: $61
	ld [hl], e                                       ; $51ca: $73
	set 4, a                                         ; $51cb: $cb $e7
	jr jr_05a_51eb                                   ; $51cd: $18 $1c

	ld sp, $e638                                     ; $51cf: $31 $38 $e6
	pop af                                           ; $51d2: $f1
	jr z, jr_05a_520c                                ; $51d3: $28 $37

	ccf                                              ; $51d5: $3f
	rst $38                                          ; $51d6: $ff
	ld b, h                                          ; $51d7: $44

jr_05a_51d8:
	jp $c1ff                                         ; $51d8: $c3 $ff $c1


	ld b, c                                          ; $51db: $41
	add b                                            ; $51dc: $80
	rst $38                                          ; $51dd: $ff
	srl h                                            ; $51de: $cb $3c
	add a                                            ; $51e0: $87
	ld a, h                                          ; $51e1: $7c
	inc b                                            ; $51e2: $04
	rst $38                                          ; $51e3: $ff
	ld sp, $fcff                                     ; $51e4: $31 $ff $fc
	add $e0                                          ; $51e7: $c6 $e0
	sbc a                                            ; $51e9: $9f
	add e                                            ; $51ea: $83

jr_05a_51eb:
	ccf                                              ; $51eb: $3f
	ld c, d                                          ; $51ec: $4a
	ld a, a                                          ; $51ed: $7f
	or c                                             ; $51ee: $b1
	ld a, e                                          ; $51ef: $7b
	ld b, b                                          ; $51f0: $40
	ldh a, [$f8]                                     ; $51f1: $f0 $f8
	cp $06                                           ; $51f3: $fe $06
	add a                                            ; $51f5: $87
	ld sp, $b403                                     ; $51f6: $31 $03 $b4
	ld a, b                                          ; $51f9: $78
	ld c, d                                          ; $51fa: $4a
	sbc h                                            ; $51fb: $9c
	add b                                            ; $51fc: $80
	and l                                            ; $51fd: $a5
	adc $04                                          ; $51fe: $ce $04
	adc a                                            ; $5200: $8f
	jp nz, $21e7                                     ; $5201: $c2 $e7 $21

	ld [hl], e                                       ; $5204: $73
	inc b                                            ; $5205: $04
	add hl, de                                       ; $5206: $19
	and d                                            ; $5207: $a2
	call z, $e651                                    ; $5208: $cc $51 $e6
	add hl, hl                                       ; $520b: $29

jr_05a_520c:
	ld [hl], e                                       ; $520c: $73
	inc d                                            ; $520d: $14
	add hl, sp                                       ; $520e: $39
	jr c, jr_05a_51d8                                ; $520f: $38 $c7

	inc bc                                           ; $5211: $03
	rst $38                                          ; $5212: $ff
	inc c                                            ; $5213: $0c
	rst $38                                          ; $5214: $ff

jr_05a_5215:
	rst FarCall                                          ; $5215: $f7
	ld hl, sp+$46                                    ; $5216: $f8 $46
	ld sp, hl                                        ; $5218: $f9
	jr nc, jr_05a_529a                               ; $5219: $30 $7f

	ld [$bf80], sp                                   ; $521b: $08 $80 $bf
	and h                                            ; $521e: $a4
	rst GetHLinHL                                          ; $521f: $cf
	ld h, d                                          ; $5220: $62
	rst $38                                          ; $5221: $ff
	inc hl                                           ; $5222: $23
	rst SubAFromDE                                          ; $5223: $df
	rst JumpTable                                          ; $5224: $c7
	ccf                                              ; $5225: $3f
	add l                                            ; $5226: $85
	ld a, a                                          ; $5227: $7f
	dec c                                            ; $5228: $0d
	ei                                               ; $5229: $fb
	add hl, bc                                       ; $522a: $09
	rst $38                                          ; $522b: $ff
	ld a, [de]                                       ; $522c: $1a
	rst FarCall                                          ; $522d: $f7
	ld [hl-], a                                      ; $522e: $32
	rst AddAOntoHL                                          ; $522f: $ef
	ld [hl], $cf                                     ; $5230: $36 $cf
	rrca                                             ; $5232: $0f
	pop af                                           ; $5233: $f1
	rlca                                             ; $5234: $07
	ld hl, sp-$7f                                    ; $5235: $f8 $81
	cp $70                                           ; $5237: $fe $70
	rst $38                                          ; $5239: $ff
	adc b                                            ; $523a: $88
	rst $38                                          ; $523b: $ff
	adc e                                            ; $523c: $8b
	sub [hl]                                         ; $523d: $96
	rst AddAOntoHL                                          ; $523e: $ef
	sbc e                                            ; $523f: $9b
	rst SubAFromBC                                          ; $5240: $e7
	ld d, b                                          ; $5241: $50
	sub b                                            ; $5242: $90
	jr nc, jr_05a_5215                               ; $5243: $30 $d0

	cp b                                             ; $5245: $b8
	ret z                                            ; $5246: $c8

	ld e, h                                          ; $5247: $5c
	ld h, h                                          ; $5248: $64
	xor h                                            ; $5249: $ac
	inc [hl]                                         ; $524a: $34
	ld d, [hl]                                       ; $524b: $56
	sbc d                                            ; $524c: $9a
	halt                                             ; $524d: $76
	sbc d                                            ; $524e: $9a
	add hl, hl                                       ; $524f: $29
	rst GetHLinHL                                          ; $5250: $cf
	ldh [$b1], a                                     ; $5251: $e0 $b1
	ld l, a                                          ; $5253: $6f
	ld a, [bc]                                       ; $5254: $0a
	ld a, a                                          ; $5255: $7f
	cp $9a                                           ; $5256: $fe $9a
	cp a                                             ; $5258: $bf
	ld b, b                                          ; $5259: $40
	ld e, a                                          ; $525a: $5f
	add b                                            ; $525b: $80
	rst SubAFromDE                                          ; $525c: $df
	ld h, e                                          ; $525d: $63
	ldh a, [c]                                       ; $525e: $f2
	inc bc                                           ; $525f: $03
	cp $97                                           ; $5260: $fe $97
	nop                                              ; $5262: $00
	rst FarCall                                          ; $5263: $f7
	ld [$10ef], sp                                   ; $5264: $08 $ef $10
	rst AddAOntoHL                                          ; $5267: $ef
	db $10                                           ; $5268: $10
	ei                                               ; $5269: $fb
	ccf                                              ; $526a: $3f
	and $9e                                          ; $526b: $e6 $9e
	ld bc, $c47a                                     ; $526d: $01 $7a $c4
	add b                                            ; $5270: $80
	inc bc                                           ; $5271: $03
	db $fd                                           ; $5272: $fd
	rlca                                             ; $5273: $07
	cp $07                                           ; $5274: $fe $07
	cp $0d                                           ; $5276: $fe $0d
	cp $09                                           ; $5278: $fe $09
	cp $09                                           ; $527a: $fe $09
	sbc h                                            ; $527c: $9c
	rst SubAFromDE                                          ; $527d: $df
	ld a, c                                          ; $527e: $79
	db $fc                                           ; $527f: $fc
	sub d                                            ; $5280: $92
	sbc c                                            ; $5281: $99
	inc h                                            ; $5282: $24
	inc sp                                           ; $5283: $33
	add hl, hl                                       ; $5284: $29
	daa                                              ; $5285: $27
	ld c, d                                          ; $5286: $4a
	ld h, a                                          ; $5287: $67
	ld d, h                                          ; $5288: $54
	ld c, [hl]                                       ; $5289: $4e
	xor c                                            ; $528a: $a9
	call c, $fe73                                    ; $528b: $dc $73 $fe
	ld l, [hl]                                       ; $528e: $6e
	adc $8a                                          ; $528f: $ce $8a
	ld d, d                                          ; $5291: $52
	and $ea                                          ; $5292: $e6 $ea
	ldh a, [c]                                       ; $5294: $f2
	ld d, d                                          ; $5295: $52
	cp $4f                                           ; $5296: $fe $4f
	ld e, [hl]                                       ; $5298: $5e
	and a                                            ; $5299: $a7

jr_05a_529a:
	ld l, l                                          ; $529a: $6d
	or l                                             ; $529b: $b5
	ld h, l                                          ; $529c: $65
	ld d, c                                          ; $529d: $51
	ld a, [hl]                                       ; $529e: $7e
	sub e                                            ; $529f: $93
	cp $e7                                           ; $52a0: $fe $e7
	cp l                                             ; $52a2: $bd
	push af                                          ; $52a3: $f5
	xor h                                            ; $52a4: $ac
	and h                                            ; $52a5: $a4
	ld a, e                                          ; $52a6: $7b
	cp $80                                           ; $52a7: $fe $80
	ld h, [hl]                                       ; $52a9: $66
	xor h                                            ; $52aa: $ac
	ld l, [hl]                                       ; $52ab: $6e
	inc h                                            ; $52ac: $24
	ld d, b                                          ; $52ad: $50
	ld h, a                                          ; $52ae: $67
	add hl, hl                                       ; $52af: $29
	inc sp                                           ; $52b0: $33
	sub h                                            ; $52b1: $94
	add hl, sp                                       ; $52b2: $39
	jp z, $d59c                                      ; $52b3: $ca $9c $d5

	ld l, [hl]                                       ; $52b6: $6e
	ld l, d                                          ; $52b7: $6a
	scf                                              ; $52b8: $37
	ld sp, $181f                                     ; $52b9: $31 $1f $18
	rrca                                             ; $52bc: $0f
	xor e                                            ; $52bd: $ab
	inc e                                            ; $52be: $1c
	ld d, l                                          ; $52bf: $55
	adc [hl]                                         ; $52c0: $8e
	xor c                                            ; $52c1: $a9
	rst JumpTable                                          ; $52c2: $c7
	ld e, [hl]                                       ; $52c3: $5e
	pop hl                                           ; $52c4: $e1
	and a                                            ; $52c5: $a7
	ld a, b                                          ; $52c6: $78
	reti                                             ; $52c7: $d9


	adc l                                            ; $52c8: $8d
	ld a, $74                                        ; $52c9: $3e $74
	adc a                                            ; $52cb: $8f
	jp Jump_05a_52ff                                 ; $52cc: $c3 $ff $52


	rst SubAFromBC                                          ; $52cf: $e7
	xor l                                            ; $52d0: $ad
	ld [hl], e                                       ; $52d1: $73
	ld d, [hl]                                       ; $52d2: $56
	cp c                                             ; $52d3: $b9
	xor e                                            ; $52d4: $ab
	call c, $ef54                                    ; $52d5: $dc $54 $ef
	and d                                            ; $52d8: $a2
	ld a, a                                          ; $52d9: $7f
	ld de, $dc7a                                     ; $52da: $11 $7a $dc
	add b                                            ; $52dd: $80
	and $dd                                          ; $52de: $e6 $dd
	ld b, h                                          ; $52e0: $44
	cp a                                             ; $52e1: $bf
	adc h                                            ; $52e2: $8c
	ei                                               ; $52e3: $fb
	ld e, b                                          ; $52e4: $58
	rst FarCall                                          ; $52e5: $f7
	jr nc, @+$01                                     ; $52e6: $30 $ff

	dec c                                            ; $52e8: $0d
	rst $38                                          ; $52e9: $ff
	add e                                            ; $52ea: $83
	rst $38                                          ; $52eb: $ff
	ld h, a                                          ; $52ec: $67
	rst $38                                          ; $52ed: $ff
	adc l                                            ; $52ee: $8d
	di                                               ; $52ef: $f3
	ld b, a                                          ; $52f0: $47
	ld sp, hl                                        ; $52f1: $f9
	ldh [c], a                                       ; $52f2: $e2
	db $fd                                           ; $52f3: $fd
	sub e                                            ; $52f4: $93
	db $fc                                           ; $52f5: $fc
	adc c                                            ; $52f6: $89
	cp $8c                                           ; $52f7: $fe $8c
	rst $38                                          ; $52f9: $ff
	ld a, [bc]                                       ; $52fa: $0a
	rst $38                                          ; $52fb: $ff
	dec b                                            ; $52fc: $05
	adc [hl]                                         ; $52fd: $8e
	db $fd                                           ; $52fe: $fd

Jump_05a_52ff:
	sbc l                                            ; $52ff: $9d
	rst AddAOntoHL                                          ; $5300: $ef
	ld e, a                                          ; $5301: $5f
	ld h, a                                          ; $5302: $67
	xor l                                            ; $5303: $ad
	or l                                             ; $5304: $b5
	ld d, h                                          ; $5305: $54
	call c, Call_05a_4ccc                            ; $5306: $dc $cc $4c
	and h                                            ; $5309: $a4
	ld h, h                                          ; $530a: $64
	ld h, h                                          ; $530b: $64
	and h                                            ; $530c: $a4
	ld d, b                                          ; $530d: $50
	or b                                             ; $530e: $b0
	ldh [$b1], a                                     ; $530f: $e0 $b1
	ld [bc], a                                       ; $5311: $02
	sub $63                                          ; $5312: $d6 $63
	cp $94                                           ; $5314: $fe $94
	ei                                               ; $5316: $fb
	inc b                                            ; $5317: $04
	rst FarCall                                          ; $5318: $f7
	ld [$00fd], sp                                   ; $5319: $08 $fd $00
	ei                                               ; $531c: $fb
	nop                                              ; $531d: $00
	rst AddAOntoHL                                          ; $531e: $ef
	nop                                              ; $531f: $00
	rst FarCall                                          ; $5320: $f7
	dec de                                           ; $5321: $1b
	jp c, $8e7d                                      ; $5322: $da $7d $8e

	halt                                             ; $5325: $76
	cp [hl]                                          ; $5326: $be
	ld l, a                                          ; $5327: $6f
	cp $75                                           ; $5328: $fe $75
	add b                                            ; $532a: $80
	add b                                            ; $532b: $80
	reti                                             ; $532c: $d9


	cp h                                             ; $532d: $bc
	or d                                             ; $532e: $b2
	ld a, c                                          ; $532f: $79
	ld d, h                                          ; $5330: $54
	db $d3                                           ; $5331: $d3
	and l                                            ; $5332: $a5
	or e                                             ; $5333: $b3
	xor d                                            ; $5334: $aa
	and a                                            ; $5335: $a7
	ld [hl-], a                                      ; $5336: $32
	ld l, $35                                        ; $5337: $2e $35
	ld l, $2e                                        ; $5339: $2e $2e
	dec a                                            ; $533b: $3d
	ld l, l                                          ; $533c: $6d
	push af                                          ; $533d: $f5
	ld d, a                                          ; $533e: $57
	db $fd                                           ; $533f: $fd
	adc e                                            ; $5340: $8b
	db $dd                                           ; $5341: $dd
	dec l                                            ; $5342: $2d
	sbc e                                            ; $5343: $9b
	ld d, [hl]                                       ; $5344: $56
	dec sp                                           ; $5345: $3b
	sbc d                                            ; $5346: $9a
	ld [hl], a                                       ; $5347: $77
	inc h                                            ; $5348: $24
	rst $38                                          ; $5349: $ff
	ld a, c                                          ; $534a: $79
	add b                                            ; $534b: $80
	rst $38                                          ; $534c: $ff
	ld l, $64                                        ; $534d: $2e $64
	ld c, [hl]                                       ; $534f: $4e
	ld l, b                                          ; $5350: $68
	sbc $48                                          ; $5351: $de $48
	sbc $48                                          ; $5353: $de $48
	ld l, [hl]                                       ; $5355: $6e
	ret c                                            ; $5356: $d8

	ld a, h                                          ; $5357: $7c
	ret nc                                           ; $5358: $d0

	sbc h                                            ; $5359: $9c
	ldh a, [$38]                                     ; $535a: $f0 $38
	pop hl                                           ; $535c: $e1
	ld c, $07                                        ; $535d: $0e $07
	rlca                                             ; $535f: $07
	ld bc, $0001                                     ; $5360: $01 $01 $00
	inc b                                            ; $5363: $04
	inc c                                            ; $5364: $0c
	inc c                                            ; $5365: $0c
	jr @+$20                                         ; $5366: $18 $1e

	jr c, jr_05a_53a9                                ; $5368: $38 $3f

	ld [hl], b                                       ; $536a: $70
	add b                                            ; $536b: $80
	rst $38                                          ; $536c: $ff
	ldh [rSVBK], a                                   ; $536d: $e0 $70
	rst $38                                          ; $536f: $ff
	xor b                                            ; $5370: $a8
	rst $38                                          ; $5371: $ff
	rst SubAFromDE                                          ; $5372: $df
	ld [hl], a                                       ; $5373: $77
	dec a                                            ; $5374: $3d
	dec sp                                           ; $5375: $3b
	ld b, $01                                        ; $5376: $06 $01
	rrca                                             ; $5378: $0f
	nop                                              ; $5379: $00
	rrca                                             ; $537a: $0f
	nop                                              ; $537b: $00
	rlca                                             ; $537c: $07
	nop                                              ; $537d: $00
	ld h, [hl]                                       ; $537e: $66
	rst $38                                          ; $537f: $ff
	rra                                              ; $5380: $1f
	rst $38                                          ; $5381: $ff
	inc bc                                           ; $5382: $03
	rst $38                                          ; $5383: $ff
	db $fd                                           ; $5384: $fd
	cp $7f                                           ; $5385: $fe $7f
	rst $38                                          ; $5387: $ff
	rst $38                                          ; $5388: $ff
	nop                                              ; $5389: $00
	add a                                            ; $538a: $87
	add b                                            ; $538b: $80
	ld a, b                                          ; $538c: $78
	ld a, l                                          ; $538d: $7d
	cp $1c                                           ; $538e: $fe $1c
	rst $38                                          ; $5390: $ff
	db $ec                                           ; $5391: $ec
	rst $38                                          ; $5392: $ff
	call c, $d6ff                                    ; $5393: $dc $ff $d6
	ld a, a                                          ; $5396: $7f
	sub $7f                                          ; $5397: $d6 $7f
	push de                                          ; $5399: $d5
	ld a, l                                          ; $539a: $7d
	push hl                                          ; $539b: $e5
	ld a, l                                          ; $539c: $7d
	or h                                             ; $539d: $b4
	ld l, h                                          ; $539e: $6c
	add h                                            ; $539f: $84
	db $fc                                           ; $53a0: $fc
	ld b, h                                          ; $53a1: $44
	db $fc                                           ; $53a2: $fc
	ld h, d                                          ; $53a3: $62
	cp $32                                           ; $53a4: $fe $32
	cp $31                                           ; $53a6: $fe $31
	rst $38                                          ; $53a8: $ff

jr_05a_53a9:
	add hl, hl                                       ; $53a9: $29
	rst AddAOntoHL                                          ; $53aa: $ef
	ld a, a                                          ; $53ab: $7f
	cp $99                                           ; $53ac: $fe $99
	and l                                            ; $53ae: $a5
	rst SubAFromBC                                          ; $53af: $e7
	sub b                                            ; $53b0: $90
	ldh a, [$50]                                     ; $53b1: $f0 $50
	ld [hl], b                                       ; $53b3: $70
	db $dd                                           ; $53b4: $dd
	jr nc, @-$21                                     ; $53b5: $30 $dd

	db $10                                           ; $53b7: $10
	push af                                          ; $53b8: $f5
	ld a, h                                          ; $53b9: $7c
	adc $6f                                          ; $53ba: $ce $6f
	db $fc                                           ; $53bc: $fc
	ld d, a                                          ; $53bd: $57
	db $f4                                           ; $53be: $f4
	inc bc                                           ; $53bf: $03
	ldh a, [$3b]                                     ; $53c0: $f0 $3b
	ldh a, [rSC]                                     ; $53c2: $f0 $02
	jp z, $de03                                      ; $53c4: $ca $03 $de

	ld b, [hl]                                       ; $53c7: $46
	ret nz                                           ; $53c8: $c0

	ld l, a                                          ; $53c9: $6f
	cp $77                                           ; $53ca: $fe $77
	and [hl]                                         ; $53cc: $a6
	ld a, h                                          ; $53cd: $7c
	cp b                                             ; $53ce: $b8
	sbc c                                            ; $53cf: $99
	ld [bc], a                                       ; $53d0: $02
	db $fd                                           ; $53d1: $fd
	inc [hl]                                         ; $53d2: $34
	scf                                              ; $53d3: $37
	dec [hl]                                         ; $53d4: $35
	scf                                              ; $53d5: $37
	db $dd                                           ; $53d6: $dd
	ld h, $df                                        ; $53d7: $26 $df
	inc h                                            ; $53d9: $24
	add b                                            ; $53da: $80
	rst $38                                          ; $53db: $ff
	inc b                                            ; $53dc: $04
	db $e4                                           ; $53dd: $e4
	rra                                              ; $53de: $1f
	ret nz                                           ; $53df: $c0

	ccf                                              ; $53e0: $3f
	sub $ff                                          ; $53e1: $d6 $ff
	ld e, c                                          ; $53e3: $59
	ld a, a                                          ; $53e4: $7f
	cp a                                             ; $53e5: $bf
	rst $38                                          ; $53e6: $ff
	xor c                                            ; $53e7: $a9
	rst AddAOntoHL                                          ; $53e8: $ef
	xor [hl]                                         ; $53e9: $ae
	rst AddAOntoHL                                          ; $53ea: $ef
	call $ddff                                       ; $53eb: $cd $ff $dd
	rst $38                                          ; $53ee: $ff
	xor [hl]                                         ; $53ef: $ae
	ld hl, sp+$77                                    ; $53f0: $f8 $77
	db $e3                                           ; $53f2: $e3
	xor l                                            ; $53f3: $ad
	or $ff                                           ; $53f4: $f6 $ff
	ldh a, [$7e]                                     ; $53f6: $f0 $7e
	reti                                             ; $53f8: $d9


	rst SubAFromDE                                          ; $53f9: $df
	add l                                            ; $53fa: $85
	cp l                                             ; $53fb: $bd
	xor l                                            ; $53fc: $ad
	ld a, $3f                                        ; $53fd: $3e $3f
	ld l, [hl]                                       ; $53ff: $6e
	ld l, d                                          ; $5400: $6a
	ld c, a                                          ; $5401: $4f
	rst $38                                          ; $5402: $ff
	add b                                            ; $5403: $80
	cp d                                             ; $5404: $ba
	ld a, h                                          ; $5405: $7c
	ld a, [hl]                                       ; $5406: $7e
	cp $cc                                           ; $5407: $fe $cc
	adc $54                                          ; $5409: $ce $54
	call c, Call_05a_7c74                            ; $540b: $dc $74 $7c
	cp h                                             ; $540e: $bc
	ld l, h                                          ; $540f: $6c
	db $dd                                           ; $5410: $dd
	jr c, jr_05a_5419                                ; $5411: $38 $06

	ld bc, $7b03                                     ; $5413: $01 $03 $7b
	or h                                             ; $5416: $b4
	db $fd                                           ; $5417: $fd
	add a                                            ; $5418: $87

jr_05a_5419:
	ld h, b                                          ; $5419: $60
	nop                                              ; $541a: $00
	ldh [rP1], a                                     ; $541b: $e0 $00
	ldh a, [rAUD4LEN]                                ; $541d: $f0 $20
	rst $38                                          ; $541f: $ff
	rst $38                                          ; $5420: $ff
	adc l                                            ; $5421: $8d
	adc [hl]                                         ; $5422: $8e
	db $dd                                           ; $5423: $dd
	call nc, Call_05a_74d4                           ; $5424: $d4 $d4 $74
	ld e, h                                          ; $5427: $5c
	ld l, b                                          ; $5428: $68
	ld a, b                                          ; $5429: $78
	jr nc, jr_05a_542c                               ; $542a: $30 $00

jr_05a_542c:
	nop                                              ; $542c: $00
	ld bc, $f800                                     ; $542d: $01 $00 $f8
	jr z, jr_05a_54a5                                ; $5430: $28 $73

jr_05a_5432:
	cp $8e                                           ; $5432: $fe $8e
	jr c, jr_05a_5432                                ; $5434: $38 $fc

	inc a                                            ; $5436: $3c
	db $d3                                           ; $5437: $d3
	ld a, a                                          ; $5438: $7f
	ret nc                                           ; $5439: $d0

	ld a, a                                          ; $543a: $7f
	ret nz                                           ; $543b: $c0

	ld a, a                                          ; $543c: $7f
	or l                                             ; $543d: $b5
	rst SubAFromBC                                          ; $543e: $e7
	jp nz, $d7c2                                     ; $543f: $c2 $c2 $d7

	jp nz, $80aa                                     ; $5442: $c2 $aa $80

	ld [hl], e                                       ; $5445: $73

jr_05a_5446:
	inc h                                            ; $5446: $24
	sbc h                                            ; $5447: $9c
	add b                                            ; $5448: $80
	ld b, b                                          ; $5449: $40
	rst $38                                          ; $544a: $ff
	ld l, a                                          ; $544b: $6f
	jr @-$60                                         ; $544c: $18 $9e

	xor d                                            ; $544e: $aa
	ld h, e                                          ; $544f: $63
	inc d                                            ; $5450: $14
	inc bc                                           ; $5451: $03
	ldh a, [$03]                                     ; $5452: $f0 $03

Jump_05a_5454:
	ldh a, [rVBK]                                    ; $5454: $f0 $4f
	ldh a, [$03]                                     ; $5456: $f0 $03
	cp $03                                           ; $5458: $fe $03
	cp $4f                                           ; $545a: $fe $4f
	cp $76                                           ; $545c: $fe $76
	call z, $fc7f                                    ; $545e: $cc $7f $fc
	sbc b                                            ; $5461: $98
	add d                                            ; $5462: $82
	db $fd                                           ; $5463: $fd
	add [hl]                                         ; $5464: $86
	ld sp, hl                                        ; $5465: $f9
	add b                                            ; $5466: $80
	rst $38                                          ; $5467: $ff
	add b                                            ; $5468: $80
	sbc $ff                                          ; $5469: $de $ff
	ld l, h                                          ; $546b: $6c
	dec l                                            ; $546c: $2d
	add b                                            ; $546d: $80
	ld [bc], a                                       ; $546e: $02
	rst $38                                          ; $546f: $ff
	ld [bc], a                                       ; $5470: $02
	cp $04                                           ; $5471: $fe $04
	db $fc                                           ; $5473: $fc
	inc b                                            ; $5474: $04
	rst $38                                          ; $5475: $ff
	ei                                               ; $5476: $fb
	rst $38                                          ; $5477: $ff
	adc $f8                                          ; $5478: $ce $f8
	adc [hl]                                         ; $547a: $8e
	ld hl, sp+$07                                    ; $547b: $f8 $07
	db $fc                                           ; $547d: $fc
	rlca                                             ; $547e: $07
	db $fc                                           ; $547f: $fc
	inc bc                                           ; $5480: $03
	cp $03                                           ; $5481: $fe $03
	ld a, $01                                        ; $5483: $3e $01
	sbc a                                            ; $5485: $9f
	nop                                              ; $5486: $00
	rst GetHLinHL                                          ; $5487: $cf
	ld c, e                                          ; $5488: $4b
	rrca                                             ; $5489: $0f
	dec bc                                           ; $548a: $0b
	rrca                                             ; $548b: $0f
	ld c, $80                                        ; $548c: $0e $80
	rlca                                             ; $548e: $07
	ld b, $07                                        ; $548f: $06 $07
	add a                                            ; $5491: $87
	ld [bc], a                                       ; $5492: $02
	add e                                            ; $5493: $83
	ld [bc], a                                       ; $5494: $02
	ret nz                                           ; $5495: $c0

	nop                                              ; $5496: $00
	ldh [$80], a                                     ; $5497: $e0 $80
	pop bc                                           ; $5499: $c1
	nop                                              ; $549a: $00
	ld [hl], b                                       ; $549b: $70
	add b                                            ; $549c: $80
	ldh a, [$80]                                     ; $549d: $f0 $80
	ld a, b                                          ; $549f: $78
	ret nz                                           ; $54a0: $c0

	inc a                                            ; $54a1: $3c
	ldh [$9e], a                                     ; $54a2: $e0 $9e
	ld a, b                                          ; $54a4: $78

jr_05a_54a5:
	rst SubAFromHL                                          ; $54a5: $d7
	ld a, $73                                        ; $54a6: $3e $73
	rra                                              ; $54a8: $1f
	ldh a, [$30]                                     ; $54a9: $f0 $30
	ret nc                                           ; $54ab: $d0

	jr nc, jr_05a_5446                               ; $54ac: $30 $98

	jr jr_05a_54b0                                   ; $54ae: $18 $00

jr_05a_54b0:
	inc d                                            ; $54b0: $14
	inc e                                            ; $54b1: $1c
	nop                                              ; $54b2: $00
	nop                                              ; $54b3: $00
	ld [$80fe], sp                                   ; $54b4: $08 $fe $80
	ret nz                                           ; $54b7: $c0

	add b                                            ; $54b8: $80
	ld bc, $0300                                     ; $54b9: $01 $00 $03
	nop                                              ; $54bc: $00
	inc bc                                           ; $54bd: $03
	ld bc, $0306                                     ; $54be: $01 $06 $03
	ld c, $05                                        ; $54c1: $0e $05
	ld a, [de]                                       ; $54c3: $1a
	add hl, bc                                       ; $54c4: $09
	inc sp                                           ; $54c5: $33
	ld de, $63e5                                     ; $54c6: $11 $e5 $63
	add b                                            ; $54c9: $80
	rst $38                                          ; $54ca: $ff
	add c                                            ; $54cb: $81
	cp $81                                           ; $54cc: $fe $81
	cp $83                                           ; $54ce: $fe $83
	db $fc                                           ; $54d0: $fc
	add e                                            ; $54d1: $83
	db $fc                                           ; $54d2: $fc
	add a                                            ; $54d3: $87
	ld hl, sp+$07                                    ; $54d4: $f8 $07
	ld a, e                                          ; $54d6: $7b
	cp $99                                           ; $54d7: $fe $99
	ldh [$3f], a                                     ; $54d9: $e0 $3f
	ldh a, [$1f]                                     ; $54db: $f0 $1f
	ld hl, sp+$0f                                    ; $54dd: $f8 $0f
	ld a, e                                          ; $54df: $7b
	sbc a                                            ; $54e0: $9f
	adc h                                            ; $54e1: $8c
	rlca                                             ; $54e2: $07
	cp $03                                           ; $54e3: $fe $03
	rst $38                                          ; $54e5: $ff
	ld bc, $01fd                                     ; $54e6: $01 $fd $01
	rrca                                             ; $54e9: $0f
	ldh a, [$03]                                     ; $54ea: $f0 $03
	db $fc                                           ; $54ec: $fc
	nop                                              ; $54ed: $00
	rst $38                                          ; $54ee: $ff
	rra                                              ; $54ef: $1f
	ldh [rIF], a                                     ; $54f0: $e0 $0f
	ldh a, [rSB]                                     ; $54f2: $f0 $01
	cp $77                                           ; $54f4: $fe $77
	ld [hl], h                                       ; $54f6: $74
	ld d, a                                          ; $54f7: $57
	ld d, h                                          ; $54f8: $54
	sbc l                                            ; $54f9: $9d
	ld a, a                                          ; $54fa: $7f
	add b                                            ; $54fb: $80
	ld c, a                                          ; $54fc: $4f
	ldh a, [$7f]                                     ; $54fd: $f0 $7f
	cp $03                                           ; $54ff: $fe $03
	ldh a, [$0b]                                     ; $5501: $f0 $0b
	ldh a, [$03]                                     ; $5503: $f0 $03
	cp $43                                           ; $5505: $fe $43
	cp $9e                                           ; $5507: $fe $9e
	ldh a, [$7b]                                     ; $5509: $f0 $7b
	db $fc                                           ; $550b: $fc
	sbc l                                            ; $550c: $9d
	ldh [$1f], a                                     ; $550d: $e0 $1f
	ld l, a                                          ; $550f: $6f
	cp $7f                                           ; $5510: $fe $7f
	ld b, [hl]                                       ; $5512: $46
	ld a, a                                          ; $5513: $7f
	cp $76                                           ; $5514: $fe $76
	ld l, d                                          ; $5516: $6a
	ld a, a                                          ; $5517: $7f
	ld l, b                                          ; $5518: $68
	sbc l                                            ; $5519: $9d
	ld a, [hl]                                       ; $551a: $7e
	add c                                            ; $551b: $81
	ld l, a                                          ; $551c: $6f
	db $fc                                           ; $551d: $fc
	sub h                                            ; $551e: $94
	ld a, [hl+]                                      ; $551f: $2a
	push de                                          ; $5520: $d5
	rrca                                             ; $5521: $0f
	inc e                                            ; $5522: $1c
	rrca                                             ; $5523: $0f
	db $fc                                           ; $5524: $fc
	rrca                                             ; $5525: $0f
	ld hl, sp+$0e                                    ; $5526: $f8 $0e
	ld hl, sp+$1e                                    ; $5528: $f8 $1e
	ld [hl], a                                       ; $552a: $77
	db $e3                                           ; $552b: $e3
	ld a, e                                          ; $552c: $7b
	cp $80                                           ; $552d: $fe $80
	ret nz                                           ; $552f: $c0

	db $e3                                           ; $5530: $e3
	ldh [$39], a                                     ; $5531: $e0 $39
	ld a, b                                          ; $5533: $78
	inc e                                            ; $5534: $1c
	inc [hl]                                         ; $5535: $34
	ld c, $1a                                        ; $5536: $0e $1a
	rlca                                             ; $5538: $07
	db $fd                                           ; $5539: $fd
	db $e3                                           ; $553a: $e3
	cp $1d                                           ; $553b: $fe $1d
	dec sp                                           ; $553d: $3b
	ld b, $e0                                        ; $553e: $06 $e0
	add b                                            ; $5540: $80
	ld [hl], b                                       ; $5541: $70
	ret nz                                           ; $5542: $c0

	ld a, b                                          ; $5543: $78
	ret nz                                           ; $5544: $c0

	jr c, jr_05a_55a7                                ; $5545: $38 $60

	inc a                                            ; $5547: $3c
	jr nz, jr_05a_5566                               ; $5548: $20 $1c

	sub b                                            ; $554a: $90
	sbc [hl]                                         ; $554b: $9e
	ret nc                                           ; $554c: $d0

	ld e, [hl]                                       ; $554d: $5e
	sbc d                                            ; $554e: $9a
	ldh a, [$7f]                                     ; $554f: $f0 $7f
	ld de, $103f                                     ; $5551: $11 $3f $10
	ld a, e                                          ; $5554: $7b
	cp $80                                           ; $5555: $fe $80
	jr @+$41                                         ; $5557: $18 $3f

	ld e, $1f                                        ; $5559: $1e $1f
	add hl, de                                       ; $555b: $19
	rla                                              ; $555c: $17
	inc e                                            ; $555d: $1c
	ld d, $1c                                        ; $555e: $16 $1c
	di                                               ; $5560: $f3
	ldh [rIE], a                                     ; $5561: $e0 $ff
	rst $38                                          ; $5563: $ff
	cp l                                             ; $5564: $bd
	ld a, [hl]                                       ; $5565: $7e

jr_05a_5566:
	jp nz, $fc3c                                     ; $5566: $c2 $3c $fc

	nop                                              ; $5569: $00
	ldh a, [$80]                                     ; $556a: $f0 $80
	di                                               ; $556c: $f3
	ld b, b                                          ; $556d: $40
	nop                                              ; $556e: $00
	jr @-$38                                         ; $556f: $18 $c6

	add e                                            ; $5571: $83
	adc [hl]                                         ; $5572: $8e
	inc bc                                           ; $5573: $03
	inc c                                            ; $5574: $0c
	rlca                                             ; $5575: $07
	sub h                                            ; $5576: $94
	inc e                                            ; $5577: $1c
	rlca                                             ; $5578: $07
	jr @+$11                                         ; $5579: $18 $0f

	ld hl, sp+$0f                                    ; $557b: $f8 $0f
	ldh a, [$1f]                                     ; $557d: $f0 $1f
	ldh [$3f], a                                     ; $557f: $e0 $3f
	rlca                                             ; $5581: $07
	ld a, e                                          ; $5582: $7b
	ld sp, hl                                        ; $5583: $f9
	ld l, a                                          ; $5584: $6f
	cp $6f                                           ; $5585: $fe $6f
	ld a, e                                          ; $5587: $7b
	adc b                                            ; $5588: $88
	ld hl, sp+$00                                    ; $5589: $f8 $00
	pop af                                           ; $558b: $f1
	nop                                              ; $558c: $00
	ldh a, [c]                                       ; $558d: $f2
	ld bc, $03e5                                     ; $558e: $01 $e5 $03
	rst AddAOntoHL                                          ; $5591: $ef
	ld [bc], a                                       ; $5592: $02
	rlc [hl]                                         ; $5593: $cb $06
	sub a                                            ; $5595: $97
	inc c                                            ; $5596: $0c
	ld a, $08                                        ; $5597: $3e $08
	rst $38                                          ; $5599: $ff
	rst $38                                          ; $559a: $ff
	add b                                            ; $559b: $80
	ret nz                                           ; $559c: $c0

	add b                                            ; $559d: $80
	rst $38                                          ; $559e: $ff
	ret nz                                           ; $559f: $c0

	ld a, c                                          ; $55a0: $79

jr_05a_55a1:
	ld h, [hl]                                       ; $55a1: $66
	ld l, a                                          ; $55a2: $6f
	cp $7b                                           ; $55a3: $fe $7b
	rrca                                             ; $55a5: $0f
	ld c, a                                          ; $55a6: $4f

jr_05a_55a7:
	ld a, $03                                        ; $55a7: $3e $03
	ldh a, [$0b]                                     ; $55a9: $f0 $0b
	ldh a, [$03]                                     ; $55ab: $f0 $03
	cp $10                                           ; $55ad: $fe $10
	ld d, d                                          ; $55af: $52
	ld a, a                                          ; $55b0: $7f
	ld a, [hl+]                                      ; $55b1: $2a
	ld l, [hl]                                       ; $55b2: $6e
	jp hl                                            ; $55b3: $e9


	ld [hl], e                                       ; $55b4: $73
	cp $7e                                           ; $55b5: $fe $7e
	add hl, de                                       ; $55b7: $19
	rst $38                                          ; $55b8: $ff
	sbc e                                            ; $55b9: $9b
	ld a, h                                          ; $55ba: $7c
	add e                                            ; $55bb: $83
	ld a, [hl+]                                      ; $55bc: $2a
	push de                                          ; $55bd: $d5
	ld [hl], a                                       ; $55be: $77
	db $fc                                           ; $55bf: $fc
	sbc l                                            ; $55c0: $9d
	ld d, h                                          ; $55c1: $54
	xor e                                            ; $55c2: $ab
	ld a, e                                          ; $55c3: $7b
	sub l                                            ; $55c4: $95
	ld a, e                                          ; $55c5: $7b
	sub h                                            ; $55c6: $94
	ld a, [hl]                                       ; $55c7: $7e
	ret z                                            ; $55c8: $c8

	ld h, a                                          ; $55c9: $67
	cp $7f                                           ; $55ca: $fe $7f
	rst SubAFromDE                                          ; $55cc: $df
	sub [hl]                                         ; $55cd: $96
	rst $38                                          ; $55ce: $ff
	ld hl, sp+$0f                                    ; $55cf: $f8 $0f
	jr c, jr_05a_55d8                                ; $55d1: $38 $05

	inc bc                                           ; $55d3: $03
	ld [bc], a                                       ; $55d4: $02
	ld bc, $7801                                     ; $55d5: $01 $01 $78

jr_05a_55d8:
	adc b                                            ; $55d8: $88
	sub h                                            ; $55d9: $94
	rrca                                             ; $55da: $0f
	nop                                              ; $55db: $00
	ccf                                              ; $55dc: $3f
	inc bc                                           ; $55dd: $03
	ccf                                              ; $55de: $3f
	inc c                                            ; $55df: $0c
	ld a, a                                          ; $55e0: $7f
	jr nc, jr_05a_55a1                               ; $55e1: $30 $be

	ldh a, [$7e]                                     ; $55e3: $f0 $7e
	ld [hl], e                                       ; $55e5: $73
	ldh [c], a                                       ; $55e6: $e2
	ld a, a                                          ; $55e7: $7f
	ld a, [$9e91]                                    ; $55e8: $fa $91 $9e

jr_05a_55eb:
	ldh a, [rAUD3LEVEL]                              ; $55eb: $f0 $1c
	ldh a, [$3c]                                     ; $55ed: $f0 $3c
	ldh [rAUD1ENV], a                                ; $55ef: $e0 $12
	ld e, $12                                        ; $55f1: $1e $12
	ld e, $13                                        ; $55f3: $1e $13
	ld e, $11                                        ; $55f5: $1e $11
	rra                                              ; $55f7: $1f
	ld [hl], a                                       ; $55f8: $77
	cp $9b                                           ; $55f9: $fe $9b
	db $10                                           ; $55fb: $10
	rra                                              ; $55fc: $1f
	db $10                                           ; $55fd: $10
	db $10                                           ; $55fe: $10
	ld [hl], h                                       ; $55ff: $74
	ld b, e                                          ; $5600: $43
	ld [hl], l                                       ; $5601: $75
	adc h                                            ; $5602: $8c
	sub e                                            ; $5603: $93
	add e                                            ; $5604: $83
	ld bc, $0187                                     ; $5605: $01 $87 $01
	adc [hl]                                         ; $5608: $8e
	add d                                            ; $5609: $82
	call c, $e084                                    ; $560a: $dc $84 $e0
	ccf                                              ; $560d: $3f
	ret nz                                           ; $560e: $c0

	ld a, a                                          ; $560f: $7f
	ld [hl], l                                       ; $5610: $75
	ld h, $6b                                        ; $5611: $26 $6b
	ld a, a                                          ; $5613: $7f
	add b                                            ; $5614: $80
	ccf                                              ; $5615: $3f
	rra                                              ; $5616: $1f
	ldh [$3e], a                                     ; $5617: $e0 $3e
	ret nz                                           ; $5619: $c0

	ld a, $c0                                        ; $561a: $3e $c0
	inc a                                            ; $561c: $3c
	ret nz                                           ; $561d: $c0

	ld a, h                                          ; $561e: $7c
	add b                                            ; $561f: $80
	ld a, c                                          ; $5620: $79
	add b                                            ; $5621: $80
	ld a, b                                          ; $5622: $78
	add c                                            ; $5623: $81
	ld [hl], c                                       ; $5624: $71
	add e                                            ; $5625: $83
	inc l                                            ; $5626: $2c
	jr jr_05a_56a5                                   ; $5627: $18 $7c

	db $10                                           ; $5629: $10
	ld a, a                                          ; $562a: $7f
	jr nz, jr_05a_55eb                               ; $562b: $20 $be

	ld l, h                                          ; $562d: $6c
	ld hl, sp+$70                                    ; $562e: $f8 $70
	ld h, b                                          ; $5630: $60
	ret nz                                           ; $5631: $c0

	ldh [$80], a                                     ; $5632: $e0 $80
	ld a, l                                          ; $5634: $7d
	ld l, $98                                        ; $5635: $2e $98
	ld b, b                                          ; $5637: $40
	ld a, a                                          ; $5638: $7f
	ld b, b                                          ; $5639: $40
	ld a, a                                          ; $563a: $7f
	ldh [$3f], a                                     ; $563b: $e0 $3f
	ld h, b                                          ; $563d: $60
	ld a, e                                          ; $563e: $7b
	cp $7f                                           ; $563f: $fe $7f
	ld hl, sp-$21                                    ; $5641: $f8 $df
	ld a, a                                          ; $5643: $7f
	sbc l                                            ; $5644: $9d
	ret nz                                           ; $5645: $c0

	ld b, b                                          ; $5646: $40
	halt                                             ; $5647: $76
	ld [hl+], a                                      ; $5648: $22
	ld l, a                                          ; $5649: $6f
	cp $6f                                           ; $564a: $fe $6f
	ld h, b                                          ; $564c: $60
	ld d, c                                          ; $564d: $51
	or h                                             ; $564e: $b4
	inc bc                                           ; $564f: $03
	ldh a, [rAUD2ENV]                                ; $5650: $f0 $17
	ldh a, [$03]                                     ; $5652: $f0 $03
	cp $6b                                           ; $5654: $fe $6b
	cp $7c                                           ; $5656: $fe $7c
	add l                                            ; $5658: $85
	ld h, a                                          ; $5659: $67
	cp $7c                                           ; $565a: $fe $7c
	sbc $78                                          ; $565c: $de $78
	call c, $f67e                                    ; $565e: $dc $7e $f6

jr_05a_5661:
	ld l, d                                          ; $5661: $6a
	nop                                              ; $5662: $00
	ld [hl], a                                       ; $5663: $77
	cp $9b                                           ; $5664: $fe $9b
	ld a, [bc]                                       ; $5666: $0a
	push af                                          ; $5667: $f5
	cp $01                                           ; $5668: $fe $01
	ld l, a                                          ; $566a: $6f
	cp $6f                                           ; $566b: $fe $6f
	sbc $9d                                          ; $566d: $de $9d
	xor b                                            ; $566f: $a8
	ld d, a                                          ; $5670: $57
	ld a, c                                          ; $5671: $79
	reti                                             ; $5672: $d9


	sbc h                                            ; $5673: $9c
	ei                                               ; $5674: $fb

jr_05a_5675:
	rrca                                             ; $5675: $0f
	db $fc                                           ; $5676: $fc
	halt                                             ; $5677: $76
	and c                                            ; $5678: $a1
	ld a, e                                          ; $5679: $7b
	or $78                                           ; $567a: $f6 $78
	ld b, [hl]                                       ; $567c: $46
	adc l                                            ; $567d: $8d
	db $fc                                           ; $567e: $fc
	jp $0ff0                                         ; $567f: $c3 $f0 $0f


	ret nz                                           ; $5682: $c0

	ccf                                              ; $5683: $3f
	sbc b                                            ; $5684: $98
	ld h, a                                          ; $5685: $67
	ld [hl], b                                       ; $5686: $70
	adc a                                            ; $5687: $8f
	ldh [$1f], a                                     ; $5688: $e0 $1f
	ret nz                                           ; $568a: $c0

	ccf                                              ; $568b: $3f
	add b                                            ; $568c: $80
	ld a, a                                          ; $568d: $7f
	inc a                                            ; $568e: $3c
	ldh [$6f], a                                     ; $568f: $e0 $6f
	cp $9c                                           ; $5691: $fe $9c
	jr c, jr_05a_5675                                ; $5693: $38 $e0

	ld a, b                                          ; $5695: $78
	ld a, c                                          ; $5696: $79
	ld a, b                                          ; $5697: $78
	ld a, a                                          ; $5698: $7f
	cp $de                                           ; $5699: $fe $de
	db $10                                           ; $569b: $10
	db $dd                                           ; $569c: $dd
	rra                                              ; $569d: $1f
	sbc [hl]                                         ; $569e: $9e
	add hl, bc                                       ; $569f: $09
	ld [hl], e                                       ; $56a0: $73
	cp $8c                                           ; $56a1: $fe $8c
	dec bc                                           ; $56a3: $0b
	rra                                              ; $56a4: $1f

jr_05a_56a5:
	dec bc                                           ; $56a5: $0b
	ld a, b                                          ; $56a6: $78
	ld c, a                                          ; $56a7: $4f
	ldh a, [$df]                                     ; $56a8: $f0 $df
	cp $ff                                           ; $56aa: $fe $ff
	rst $38                                          ; $56ac: $ff
	cp c                                             ; $56ad: $b9
	ld hl, sp+$28                                    ; $56ae: $f8 $28
	cp b                                             ; $56b0: $b8
	jr z, jr_05a_5661                                ; $56b1: $28 $ae

	ld [$0eaf], sp                                   ; $56b3: $08 $af $0e
	ld a, d                                          ; $56b6: $7a
	add a                                            ; $56b7: $87
	sub l                                            ; $56b8: $95
	jp $f000                                         ; $56b9: $c3 $00 $f0


	ret nz                                           ; $56bc: $c0

	db $fc                                           ; $56bd: $fc
	ld a, b                                          ; $56be: $78
	ccf                                              ; $56bf: $3f
	ld c, $07                                        ; $56c0: $0e $07
	inc bc                                           ; $56c2: $03
	ld a, d                                          ; $56c3: $7a
	and e                                            ; $56c4: $a3
	sub a                                            ; $56c5: $97
	ld sp, $23c3                                     ; $56c6: $31 $c3 $23
	add $23                                          ; $56c9: $c6 $23
	add $07                                          ; $56cb: $c6 $07
	inc c                                            ; $56cd: $0c
	ld a, e                                          ; $56ce: $7b
	cp $99                                           ; $56cf: $fe $99
	call c, $f88e                                    ; $56d1: $dc $8e $f8
	db $fc                                           ; $56d4: $fc
	ld a, b                                          ; $56d5: $78
	ld hl, sp+$78                                    ; $56d6: $f8 $78
	xor $93                                          ; $56d8: $ee $93
	pop hl                                           ; $56da: $e1
	ld bc, $01c3                                     ; $56db: $01 $c3 $01
	add d                                            ; $56de: $82
	inc bc                                           ; $56df: $03
	ld [bc], a                                       ; $56e0: $02
	inc bc                                           ; $56e1: $03
	ld b, $03                                        ; $56e2: $06 $03
	ld c, $07                                        ; $56e4: $0e $07
	ld [hl], h                                       ; $56e6: $74
	ld [hl+], a                                      ; $56e7: $22
	ld l, a                                          ; $56e8: $6f
	ld d, c                                          ; $56e9: $51
	ld [hl], h                                       ; $56ea: $74
	ld [hl+], a                                      ; $56eb: $22
	ld a, a                                          ; $56ec: $7f
	cp $03                                           ; $56ed: $fe $03
	jr nz, @+$05                                     ; $56ef: $20 $03

	cp $3f                                           ; $56f1: $fe $3f
	cp $95                                           ; $56f3: $fe $95
	ld e, a                                          ; $56f5: $5f
	and b                                            ; $56f6: $a0
	rst $38                                          ; $56f7: $ff
	nop                                              ; $56f8: $00
	ld d, a                                          ; $56f9: $57
	xor b                                            ; $56fa: $a8
	rst $38                                          ; $56fb: $ff
	nop                                              ; $56fc: $00
	ld d, l                                          ; $56fd: $55
	xor d                                            ; $56fe: $aa
	ld c, a                                          ; $56ff: $4f
	add sp, $7a                                      ; $5700: $e8 $7a
	rla                                              ; $5702: $17
	dec a                                            ; $5703: $3d
	adc [hl]                                         ; $5704: $8e
	ld [hl], d                                       ; $5705: $72
	jp z, $fe67                                      ; $5706: $ca $67 $fe

	sbc l                                            ; $5709: $9d
	rst $38                                          ; $570a: $ff
	inc bc                                           ; $570b: $03
	halt                                             ; $570c: $76
	call z, $fc77                                    ; $570d: $cc $77 $fc
	sbc e                                            ; $5710: $9b
	dec b                                            ; $5711: $05
	ld a, [$f50a]                                    ; $5712: $fa $0a $f5
	halt                                             ; $5715: $76
	ld l, [hl]                                       ; $5716: $6e
	ld a, a                                          ; $5717: $7f
	ld d, a                                          ; $5718: $57
	sub l                                            ; $5719: $95
	xor d                                            ; $571a: $aa
	ld d, l                                          ; $571b: $55
	cp $01                                           ; $571c: $fe $01
	xor d                                            ; $571e: $aa
	ld d, l                                          ; $571f: $55
	ld d, l                                          ; $5720: $55
	xor d                                            ; $5721: $aa
	xor d                                            ; $5722: $aa
	ld d, l                                          ; $5723: $55
	ld [hl], a                                       ; $5724: $77
	ldh a, [$7e]                                     ; $5725: $f0 $7e
	adc $7f                                          ; $5727: $ce $7f
	cp $6f                                           ; $5729: $fe $6f
	db $d3                                           ; $572b: $d3
	sbc h                                            ; $572c: $9c
	ld bc, $01ff                                     ; $572d: $01 $ff $01
	sbc $ff                                          ; $5730: $de $ff
	ld a, a                                          ; $5732: $7f
	call $b276                                       ; $5733: $cd $76 $b2
	sbc h                                            ; $5736: $9c
	ccf                                              ; $5737: $3f
	ldh [$7f], a                                     ; $5738: $e0 $7f
	ld a, e                                          ; $573a: $7b
	cp $97                                           ; $573b: $fe $97
	cp a                                             ; $573d: $bf
	ldh [rIE], a                                     ; $573e: $e0 $ff
	pop af                                           ; $5740: $f1
	ld hl, sp-$40                                    ; $5741: $f8 $c0
	ld hl, sp+$40                                    ; $5743: $f8 $40
	ld a, e                                          ; $5745: $7b
	cp $9e                                           ; $5746: $fe $9e
	add b                                            ; $5748: $80
	ld l, e                                          ; $5749: $6b
	cp $7e                                           ; $574a: $fe $7e
	pop hl                                           ; $574c: $e1
	sbc h                                            ; $574d: $9c
	dec bc                                           ; $574e: $0b
	rrca                                             ; $574f: $0f
	add hl, bc                                       ; $5750: $09
	ld a, e                                          ; $5751: $7b
	cp $7f                                           ; $5752: $fe $7f
	ld a, [$0e9c]                                    ; $5754: $fa $9c $0e
	rrca                                             ; $5757: $0f
	inc c                                            ; $5758: $0c
	ld [hl], a                                       ; $5759: $77
	or $8b                                           ; $575a: $f6 $8b
	adc a                                            ; $575c: $8f
	add hl, bc                                       ; $575d: $09
	ret z                                            ; $575e: $c8

	ld [$90f0], sp                                   ; $575f: $08 $f0 $90
	ld hl, sp+$78                                    ; $5762: $f8 $78
	xor $46                                          ; $5764: $ee $46
	rst AddAOntoHL                                          ; $5766: $ef
	ld b, c                                          ; $5767: $41
	db $ed                                           ; $5768: $ed
	ld b, b                                          ; $5769: $40
	db $e4                                           ; $576a: $e4
	ld b, b                                          ; $576b: $40
	ldh a, [$d0]                                     ; $576c: $f0 $d0
	ld [hl], b                                       ; $576e: $70
	jr nc, @+$73                                     ; $576f: $30 $71

	ld l, [hl]                                       ; $5771: $6e
	sub b                                            ; $5772: $90
	ld bc, $030e                                     ; $5773: $01 $0e $03
	db $fc                                           ; $5776: $fc

jr_05a_5777:
	add a                                            ; $5777: $87
	ld a, [$3c6f]                                    ; $5778: $fa $6f $3c
	db $10                                           ; $577b: $10
	ld a, b                                          ; $577c: $78
	jr nc, jr_05a_5777                               ; $577d: $30 $f8

	ld h, b                                          ; $577f: $60
	cp b                                             ; $5780: $b8
	ldh [$7b], a                                     ; $5781: $e0 $7b
	xor h                                            ; $5783: $ac
	sbc [hl]                                         ; $5784: $9e
	rst GetHLinHL                                          ; $5785: $cf
	ld [hl], l                                       ; $5786: $75
	xor d                                            ; $5787: $aa
	sbc b                                            ; $5788: $98
	ld e, $0b                                        ; $5789: $1e $0b
	ld a, $13                                        ; $578b: $3e $13
	ld a, h                                          ; $578d: $7c
	rlca                                             ; $578e: $07
	ld a, h                                          ; $578f: $7c
	ld a, e                                          ; $5790: $7b
	sbc e                                            ; $5791: $9b
	sbc c                                            ; $5792: $99
	db $fc                                           ; $5793: $fc
	rst SubAFromBC                                          ; $5794: $e7
	db $fc                                           ; $5795: $fc
	rlca                                             ; $5796: $07
	rst $38                                          ; $5797: $ff
	rrca                                             ; $5798: $0f
	ld [hl], a                                       ; $5799: $77
	ld h, h                                          ; $579a: $64
	ld a, l                                          ; $579b: $7d
	ld e, h                                          ; $579c: $5c
	ld a, a                                          ; $579d: $7f
	db $fc                                           ; $579e: $fc
	sbc e                                            ; $579f: $9b
	dec d                                            ; $57a0: $15
	ld [$d52a], a                                    ; $57a1: $ea $2a $d5
	ld [hl], a                                       ; $57a4: $77
	ld [hl], b                                       ; $57a5: $70
	ld a, a                                          ; $57a6: $7f
	ld a, $7f                                        ; $57a7: $3e $7f
	ld l, b                                          ; $57a9: $68
	ld [hl], a                                       ; $57aa: $77
	db $fc                                           ; $57ab: $fc
	ld h, a                                          ; $57ac: $67
	ld h, b                                          ; $57ad: $60
	inc bc                                           ; $57ae: $03
	ldh a, [$0b]                                     ; $57af: $f0 $0b
	ldh a, [$7f]                                     ; $57b1: $f0 $7f
	ld hl, sp-$63                                    ; $57b3: $f8 $9d
	xor e                                            ; $57b5: $ab
	ld d, h                                          ; $57b6: $54
	ld [hl], a                                       ; $57b7: $77
	db $f4                                           ; $57b8: $f4
	ld a, a                                          ; $57b9: $7f
	db $fc                                           ; $57ba: $fc
	ld a, a                                          ; $57bb: $7f
	and b                                            ; $57bc: $a0
	ld a, a                                          ; $57bd: $7f
	sbc h                                            ; $57be: $9c
	ld a, a                                          ; $57bf: $7f
	sbc b                                            ; $57c0: $98
	ld h, [hl]                                       ; $57c1: $66
	cp b                                             ; $57c2: $b8
	ld a, a                                          ; $57c3: $7f
	db $fc                                           ; $57c4: $fc
	sbc c                                            ; $57c5: $99
	xor a                                            ; $57c6: $af
	ld d, b                                          ; $57c7: $50
	ld d, l                                          ; $57c8: $55
	xor d                                            ; $57c9: $aa
	jr z, @-$27                                      ; $57ca: $28 $d7

	halt                                             ; $57cc: $76
	cp h                                             ; $57cd: $bc
	ld e, [hl]                                       ; $57ce: $5e
	and b                                            ; $57cf: $a0
	ld a, a                                          ; $57d0: $7f
	ret c                                            ; $57d1: $d8

	ld a, c                                          ; $57d2: $79
	add hl, bc                                       ; $57d3: $09
	ld a, h                                          ; $57d4: $7c
	or h                                             ; $57d5: $b4
	sbc h                                            ; $57d6: $9c
	db $fc                                           ; $57d7: $fc
	add d                                            ; $57d8: $82
	db $fd                                           ; $57d9: $fd
	ld [hl], a                                       ; $57da: $77
	db $fc                                           ; $57db: $fc
	ld a, [hl]                                       ; $57dc: $7e
	ld h, $7f                                        ; $57dd: $26 $7f
	db $fc                                           ; $57df: $fc
	ld l, l                                          ; $57e0: $6d
	ld a, $5b                                        ; $57e1: $3e $5b
	xor h                                            ; $57e3: $ac
	ld c, e                                          ; $57e4: $4b
	ldh a, [$9e]                                     ; $57e5: $f0 $9e
	ld c, [hl]                                       ; $57e7: $4e
	ld a, c                                          ; $57e8: $79
	halt                                             ; $57e9: $76
	ld a, l                                          ; $57ea: $7d
	adc [hl]                                         ; $57eb: $8e
	sub b                                            ; $57ec: $90
	and b                                            ; $57ed: $a0
	ld e, a                                          ; $57ee: $5f
	ret nc                                           ; $57ef: $d0

	cpl                                              ; $57f0: $2f
	and b                                            ; $57f1: $a0
	ld e, a                                          ; $57f2: $5f
	ld b, c                                          ; $57f3: $41
	cp a                                             ; $57f4: $bf
	and c                                            ; $57f5: $a1
	ld e, a                                          ; $57f6: $5f
	rst SubAFromDE                                          ; $57f7: $df
	pop af                                           ; $57f8: $f1
	rst SubAFromDE                                          ; $57f9: $df
	pop af                                           ; $57fa: $f1
	sbc a                                            ; $57fb: $9f
	ld a, e                                          ; $57fc: $7b
	cp $9a                                           ; $57fd: $fe $9a
	adc a                                            ; $57ff: $8f
	ld sp, hl                                        ; $5800: $f9
	adc a                                            ; $5801: $8f
	ld sp, hl                                        ; $5802: $f9
	rrca                                             ; $5803: $0f
	ld a, e                                          ; $5804: $7b
	cp $9d                                           ; $5805: $fe $9d
	db $fc                                           ; $5807: $fc
	nop                                              ; $5808: $00
	ld l, a                                          ; $5809: $6f
	cp $9e                                           ; $580a: $fe $9e
	cp $7b                                           ; $580c: $fe $7b
	cp $77                                           ; $580e: $fe $77
	add $9d                                          ; $5810: $c6 $9d
	rrca                                             ; $5812: $0f
	ld a, [bc]                                       ; $5813: $0a
	ld a, e                                          ; $5814: $7b
	cp $92                                           ; $5815: $fe $92
	inc c                                            ; $5817: $0c
	rra                                              ; $5818: $1f
	inc c                                            ; $5819: $0c
	rra                                              ; $581a: $1f
	ld [$083f], sp                                   ; $581b: $08 $3f $08
	ccf                                              ; $581e: $3f
	db $10                                           ; $581f: $10
	rst $38                                          ; $5820: $ff
	db $10                                           ; $5821: $10
	ld h, h                                          ; $5822: $64
	ld b, b                                          ; $5823: $40
	ld e, a                                          ; $5824: $5f
	cp $83                                           ; $5825: $fe $83
	ld h, c                                          ; $5827: $61
	ld b, c                                          ; $5828: $41
	ld h, d                                          ; $5829: $62
	ld b, d                                          ; $582a: $42
	ld sp, $203f                                     ; $582b: $31 $3f $20
	ccf                                              ; $582e: $3f
	ld b, c                                          ; $582f: $41
	ld a, [hl]                                       ; $5830: $7e
	ld h, e                                          ; $5831: $63
	ld a, h                                          ; $5832: $7c
	ld d, e                                          ; $5833: $53
	ld e, h                                          ; $5834: $5c
	adc c                                            ; $5835: $89
	adc [hl]                                         ; $5836: $8e
	inc b                                            ; $5837: $04
	rlca                                             ; $5838: $07
	ld [bc], a                                       ; $5839: $02
	inc bc                                           ; $583a: $03
	ccf                                              ; $583b: $3f
	ret nz                                           ; $583c: $c0

	cp [hl]                                          ; $583d: $be
	pop bc                                           ; $583e: $c1
	sbc [hl]                                         ; $583f: $9e
	ld h, c                                          ; $5840: $61
	rst JumpTable                                          ; $5841: $c7
	jr c, jr_05a_58be                                ; $5842: $38 $7a

	ld h, e                                          ; $5844: $63
	ld a, a                                          ; $5845: $7f
	cp $96                                           ; $5846: $fe $96
	ld [bc], a                                       ; $5848: $02
	rst $38                                          ; $5849: $ff
	inc b                                            ; $584a: $04
	ldh a, [$3e]                                     ; $584b: $f0 $3e
	ld b, b                                          ; $584d: $40
	rst $38                                          ; $584e: $ff
	ret nz                                           ; $584f: $c0

	rst $38                                          ; $5850: $ff
	ld e, d                                          ; $5851: $5a
	rlca                                             ; $5852: $07
	ld [hl], e                                       ; $5853: $73
	ei                                               ; $5854: $fb
	ld l, a                                          ; $5855: $6f
	ld l, $77                                        ; $5856: $2e $77
	ld l, [hl]                                       ; $5858: $6e
	inc bc                                           ; $5859: $03
	ldh a, [$03]                                     ; $585a: $f0 $03
	ldh a, [rVBK]                                    ; $585c: $f0 $4f
	ldh a, [$35]                                     ; $585e: $f0 $35
	nop                                              ; $5860: $00
	sbc $22                                          ; $5861: $de $22
	sbc [hl]                                         ; $5863: $9e
	dec h                                            ; $5864: $25
	sbc $55                                          ; $5865: $de $55
	sbc [hl]                                         ; $5867: $9e
	ld d, d                                          ; $5868: $52
	call c, $dd22                                    ; $5869: $dc $22 $dd
	ld d, l                                          ; $586c: $55
	rra                                              ; $586d: $1f
	or $7b                                           ; $586e: $f6 $7b
	ret c                                            ; $5870: $d8

	sbc [hl]                                         ; $5871: $9e
	ld [hl], d                                       ; $5872: $72
	db $db                                           ; $5873: $db
	ld [hl+], a                                      ; $5874: $22
	sbc e                                            ; $5875: $9b
	ld b, a                                          ; $5876: $47
	ld d, l                                          ; $5877: $55
	ld d, l                                          ; $5878: $55
	ld h, h                                          ; $5879: $64
	db $db                                           ; $587a: $db
	ld [hl+], a                                      ; $587b: $22
	sbc d                                            ; $587c: $9a
	ld b, [hl]                                       ; $587d: $46
	ld [hl], a                                       ; $587e: $77
	ld d, a                                          ; $587f: $57
	ld h, [hl]                                       ; $5880: $66
	ld b, d                                          ; $5881: $42
	ld b, e                                          ; $5882: $43
	or $9e                                           ; $5883: $f6 $9e
	halt                                             ; $5885: $76
	ld l, e                                          ; $5886: $6b
	ldh [c], a                                       ; $5887: $e2
	sbc h                                            ; $5888: $9c
	ld b, a                                          ; $5889: $47
	ld d, a                                          ; $588a: $57
	inc sp                                           ; $588b: $33
	ld l, e                                          ; $588c: $6b
	or $9c                                           ; $588d: $f6 $9c
	daa                                              ; $588f: $27
	ld d, a                                          ; $5890: $57
	ld [hl], $77                                     ; $5891: $36 $77
	or $b2                                           ; $5893: $f6 $b2
	add a                                            ; $5895: $87
	ldh [$cc], a                                     ; $5896: $e0 $cc
	sbc h                                            ; $5898: $9c
	ld bc, $0402                                     ; $5899: $01 $02 $04

jr_05a_589c:
	or $9a                                           ; $589c: $f6 $9a
	ld b, b                                          ; $589e: $40
	add d                                            ; $589f: $82
	dec d                                            ; $58a0: $15
	ld a, [hl+]                                      ; $58a1: $2a
	ld d, h                                          ; $58a2: $54
	ld sp, hl                                        ; $58a3: $f9
	ld a, a                                          ; $58a4: $7f
	and $99                                          ; $58a5: $e6 $99
	ld [$a010], sp                                   ; $58a7: $08 $10 $a0
	ld b, b                                          ; $58aa: $40
	add d                                            ; $58ab: $82
	inc d                                            ; $58ac: $14
	dec de                                           ; $58ad: $1b
	jp $039a                                         ; $58ae: $c3 $9a $03


	dec b                                            ; $58b1: $05
	rrca                                             ; $58b2: $0f
	ld [hl], $dc                                     ; $58b3: $36 $dc
	ld [hl], a                                       ; $58b5: $77
	cp e                                             ; $58b6: $bb
	sub [hl]                                         ; $58b7: $96
	ld b, $0c                                        ; $58b8: $06 $0c
	jr c, jr_05a_589c                                ; $58ba: $38 $e0

	nop                                              ; $58bc: $00
	nop                                              ; $58bd: $00

jr_05a_58be:
	ret nz                                           ; $58be: $c0

	and b                                            ; $58bf: $a0
	ldh [$de], a                                     ; $58c0: $e0 $de
	ld h, b                                          ; $58c2: $60
	ld a, e                                          ; $58c3: $7b
	ld hl, sp-$62                                    ; $58c4: $f8 $9e
	ld h, b                                          ; $58c6: $60
	db $dd                                           ; $58c7: $dd
	jr nz, @+$79                                     ; $58c8: $20 $77

	cp l                                             ; $58ca: $bd
	sbc l                                            ; $58cb: $9d
	dec d                                            ; $58cc: $15
	ld a, [bc]                                       ; $58cd: $0a
	ld h, a                                          ; $58ce: $67
	or h                                             ; $58cf: $b4
	ld e, a                                          ; $58d0: $5f
	call z, Call_05a_73fa                            ; $58d1: $cc $fa $73
	ld hl, sp-$65                                    ; $58d4: $f8 $9b
	inc bc                                           ; $58d6: $03
	dec e                                            ; $58d7: $1d
	add sp, -$5f                                     ; $58d8: $e8 $a1
	ld [hl], e                                       ; $58da: $73
	ld hl, sp-$64                                    ; $58db: $f8 $9c
	ld e, $70                                        ; $58dd: $1e $70
	ret nz                                           ; $58df: $c0

	cp $9a                                           ; $58e0: $fe $9a
	ld a, a                                          ; $58e2: $7f
	and b                                            ; $58e3: $a0
	inc bc                                           ; $58e4: $03
	ld a, a                                          ; $58e5: $7f
	cp a                                             ; $58e6: $bf
	ld [hl], a                                       ; $58e7: $77
	ld hl, sp+$7b                                    ; $58e8: $f8 $7b
	di                                               ; $58ea: $f3
	sbc [hl]                                         ; $58eb: $9e
	ld b, b                                          ; $58ec: $40
	cp $9a                                           ; $58ed: $fe $9a
	ldh a, [$28]                                     ; $58ef: $f0 $28
	ret c                                            ; $58f1: $d8

	ld hl, sp-$10                                    ; $58f2: $f8 $f0
	ld [hl], a                                       ; $58f4: $77
	ld hl, sp-$65                                    ; $58f5: $f8 $9b
	jr jr_05a_5901                                   ; $58f7: $18 $08

	ld [$e010], sp                                   ; $58f9: $08 $10 $e0
	pop de                                           ; $58fc: $d1
	sub a                                            ; $58fd: $97
	ld [$0a11], sp                                   ; $58fe: $08 $11 $0a

jr_05a_5901:
	ld de, $4522                                     ; $5901: $11 $22 $45
	nop                                              ; $5904: $00
	ld bc, $7ff9                                     ; $5905: $01 $f9 $7f
	ld [hl], $99                                     ; $5908: $36 $99
	jr z, jr_05a_5960                                ; $590a: $28 $54

	adc b                                            ; $590c: $88
	inc d                                            ; $590d: $14
	jr z, jr_05a_5961                                ; $590e: $28 $51

	ld sp, hl                                        ; $5910: $f9
	sbc h                                            ; $5911: $9c
	ld a, [hl+]                                      ; $5912: $2a
	ld b, l                                          ; $5913: $45
	ld a, [bc]                                       ; $5914: $0a
	ld a, e                                          ; $5915: $7b
	ldh a, [c]                                       ; $5916: $f2
	sbc l                                            ; $5917: $9d
	and d                                            ; $5918: $a2
	ld b, l                                          ; $5919: $45
	ldh a, [c]                                       ; $591a: $f2
	ld e, [hl]                                       ; $591b: $5e
	ldh a, [$7f]                                     ; $591c: $f0 $7f
	add $7a                                          ; $591e: $c6 $7a
	ldh [c], a                                       ; $5920: $e2
	sbc [hl]                                         ; $5921: $9e
	ld [$c063], sp                                   ; $5922: $08 $63 $c0
	sbc [hl]                                         ; $5925: $9e
	add b                                            ; $5926: $80
	ld a, e                                          ; $5927: $7b
	ld a, [hl-]                                      ; $5928: $3a
	ld d, a                                          ; $5929: $57
	ret nc                                           ; $592a: $d0

	sub a                                            ; $592b: $97
	ld [$2a15], sp                                   ; $592c: $08 $15 $2a
	ld d, l                                          ; $592f: $55
	xor d                                            ; $5930: $aa
	ld d, l                                          ; $5931: $55
	xor b                                            ; $5932: $a8
	ld d, l                                          ; $5933: $55
	ld h, a                                          ; $5934: $67
	ld sp, $a89c                                     ; $5935: $31 $9c $a8
	ld d, c                                          ; $5938: $51
	and d                                            ; $5939: $a2
	ld a, e                                          ; $593a: $7b
	ldh a, [$7f]                                     ; $593b: $f0 $7f
	cp $f9                                           ; $593d: $fe $f9
	sbc d                                            ; $593f: $9a
	jr z, @+$52                                      ; $5940: $28 $50

	and b                                            ; $5942: $a0
	ld b, b                                          ; $5943: $40
	add b                                            ; $5944: $80
	ld a, e                                          ; $5945: $7b
	db $fc                                           ; $5946: $fc
	ld sp, hl                                        ; $5947: $f9
	add [hl]                                         ; $5948: $86
	inc bc                                           ; $5949: $03
	dec c                                            ; $594a: $0d
	dec bc                                           ; $594b: $0b
	rla                                              ; $594c: $17
	ld e, $1c                                        ; $594d: $1e $1c
	dec l                                            ; $594f: $2d
	inc a                                            ; $5950: $3c
	inc bc                                           ; $5951: $03
	ld c, $0c                                        ; $5952: $0e $0c
	jr @+$12                                         ; $5954: $18 $10

	db $10                                           ; $5956: $10
	jr nc, jr_05a_5979                               ; $5957: $30 $20

	ld [hl], b                                       ; $5959: $70
	ldh [$c1], a                                     ; $595a: $e0 $c1
	ld [bc], a                                       ; $595c: $02
	dec b                                            ; $595d: $05
	ld [hl], $b8                                     ; $595e: $36 $b8

jr_05a_5960:
	ret nc                                           ; $5960: $d0

jr_05a_5961:
	add b                                            ; $5961: $80
	halt                                             ; $5962: $76
	db $eb                                           ; $5963: $eb
	sbc c                                            ; $5964: $99
	ld c, $78                                        ; $5965: $0e $78
	jr nc, jr_05a_5989                               ; $5967: $30 $20

	ret nz                                           ; $5969: $c0

	ld b, b                                          ; $596a: $40
	ld a, e                                          ; $596b: $7b
	push af                                          ; $596c: $f5
	ld a, a                                          ; $596d: $7f
	reti                                             ; $596e: $d9


	sbc h                                            ; $596f: $9c
	ld h, b                                          ; $5970: $60
	ld b, b                                          ; $5971: $40
	ret nz                                           ; $5972: $c0

	ld [hl], e                                       ; $5973: $73
	ld hl, sp+$6e                                    ; $5974: $f8 $6e
	jp nc, $c69d                                     ; $5976: $d2 $9d $c6

jr_05a_5979:
	inc a                                            ; $5979: $3c
	ld l, [hl]                                       ; $597a: $6e
	ld e, c                                          ; $597b: $59
	sub c                                            ; $597c: $91
	call nz, $0df8                                   ; $597d: $c4 $f8 $0d
	inc d                                            ; $5980: $14
	ld [hl], b                                       ; $5981: $70
	db $e4                                           ; $5982: $e4
	inc bc                                           ; $5983: $03
	rlca                                             ; $5984: $07
	rrca                                             ; $5985: $0f
	ccf                                              ; $5986: $3f
	ld c, $18                                        ; $5987: $0e $18

jr_05a_5989:
	jr nz, @-$3b                                     ; $5989: $20 $c3

	ld [hl], a                                       ; $598b: $77
	rst SubAFromDE                                          ; $598c: $df
	ld a, a                                          ; $598d: $7f
	or $9b                                           ; $598e: $f6 $9b
	ld a, a                                          ; $5990: $7f
	cp $7b                                           ; $5991: $fe $7b
	sbc b                                            ; $5993: $98
	ld [hl], e                                       ; $5994: $73
	and b                                            ; $5995: $a0
	sub a                                            ; $5996: $97
	ld bc, $7887                                     ; $5997: $01 $87 $78
	ld h, b                                          ; $599a: $60
	ret nz                                           ; $599b: $c0

	cp a                                             ; $599c: $bf
	sbc e                                            ; $599d: $9b
	sbc [hl]                                         ; $599e: $9e
	halt                                             ; $599f: $76
	cp h                                             ; $59a0: $bc
	sbc e                                            ; $59a1: $9b
	rlca                                             ; $59a2: $07
	ld b, b                                          ; $59a3: $40
	ld h, a                                          ; $59a4: $67
	ld a, h                                          ; $59a5: $7c
	ld [hl], e                                       ; $59a6: $73
	ld hl, sp-$62                                    ; $59a7: $f8 $9e
	ld h, b                                          ; $59a9: $60
	ld [hl], a                                       ; $59aa: $77
	db $db                                           ; $59ab: $db
	sbc e                                            ; $59ac: $9b
	nop                                              ; $59ad: $00
	rst AddAOntoHL                                          ; $59ae: $ef
	ld c, h                                          ; $59af: $4c
	ldh [$73], a                                     ; $59b0: $e0 $73
	ld hl, sp-$63                                    ; $59b2: $f8 $9d
	rst $38                                          ; $59b4: $ff
	cp b                                             ; $59b5: $b8
	ld l, e                                          ; $59b6: $6b
	ld a, [hl-]                                      ; $59b7: $3a
	ld [hl], a                                       ; $59b8: $77
	db $e4                                           ; $59b9: $e4
	ld [hl], a                                       ; $59ba: $77
	ld hl, sp+$63                                    ; $59bb: $f8 $63
	ld l, b                                          ; $59bd: $68
	push af                                          ; $59be: $f5
	sbc l                                            ; $59bf: $9d
	db $10                                           ; $59c0: $10
	ld h, b                                          ; $59c1: $60
	ld l, e                                          ; $59c2: $6b
	jp hl                                            ; $59c3: $e9


	sbc l                                            ; $59c4: $9d
	db $10                                           ; $59c5: $10
	jr nz, jr_05a_5a42                               ; $59c6: $20 $7a

	ret nz                                           ; $59c8: $c0

	ld [hl], l                                       ; $59c9: $75
	cp $9e                                           ; $59ca: $fe $9e
	jr nz, jr_05a_5a30                               ; $59cc: $20 $62

	ret nc                                           ; $59ce: $d0

	sbc l                                            ; $59cf: $9d
	and d                                            ; $59d0: $a2
	ld b, h                                          ; $59d1: $44
	ld a, e                                          ; $59d2: $7b
	ldh a, [c]                                       ; $59d3: $f2
	sbc [hl]                                         ; $59d4: $9e
	ld b, b                                          ; $59d5: $40
	ld e, a                                          ; $59d6: $5f
	jr nc, jr_05a_5a57                               ; $59d7: $30 $7e

	jp nz, $d47d                                     ; $59d9: $c2 $7d $d4

	ld a, a                                          ; $59dc: $7f
	inc c                                            ; $59dd: $0c
	ld a, d                                          ; $59de: $7a
	sbc [hl]                                         ; $59df: $9e
	ld h, [hl]                                       ; $59e0: $66
	ldh a, [$7e]                                     ; $59e1: $f0 $7e
	ld e, [hl]                                       ; $59e3: $5e
	ld [hl], l                                       ; $59e4: $75
	call nc, Call_05a_419e                           ; $59e5: $d4 $9e $41
	ld h, c                                          ; $59e8: $61
	ret nz                                           ; $59e9: $c0

	sbc l                                            ; $59ea: $9d
	dec b                                            ; $59eb: $05
	ld a, [bc]                                       ; $59ec: $0a
	ld a, d                                          ; $59ed: $7a
	sbc $7f                                          ; $59ee: $de $7f
	sbc $f9                                          ; $59f0: $de $f9
	halt                                             ; $59f2: $76
	db $e4                                           ; $59f3: $e4
	ld a, e                                          ; $59f4: $7b
	cp $67                                           ; $59f5: $fe $67
	ldh a, [$9e]                                     ; $59f7: $f0 $9e
	inc b                                            ; $59f9: $04
	ld l, e                                          ; $59fa: $6b
	ldh a, [$62]                                     ; $59fb: $f0 $62
	ret nc                                           ; $59fd: $d0

	ld a, a                                          ; $59fe: $7f
	or $7f                                           ; $59ff: $f6 $7f
	sbc [hl]                                         ; $5a01: $9e
	sbc h                                            ; $5a02: $9c
	adc b                                            ; $5a03: $88
	db $10                                           ; $5a04: $10
	jr z, jr_05a_5a56                                ; $5a05: $28 $4f

	ld l, b                                          ; $5a07: $68
	ld a, a                                          ; $5a08: $7f
	rlca                                             ; $5a09: $07
	ld l, l                                          ; $5a0a: $6d
	ret nc                                           ; $5a0b: $d0

	ld a, [hl]                                       ; $5a0c: $7e
	rst FarCall                                          ; $5a0d: $f7
	sub l                                            ; $5a0e: $95
	ld [bc], a                                       ; $5a0f: $02
	jr c, jr_05a_5a6a                                ; $5a10: $38 $58

	ld a, b                                          ; $5a12: $78
	cp b                                             ; $5a13: $b8
	ld hl, sp+$70                                    ; $5a14: $f8 $70
	ldh a, [$f0]                                     ; $5a16: $f0 $f0
	jr nz, jr_05a_5a90                               ; $5a18: $20 $76

	rst SubAFromDE                                          ; $5a1a: $df
	ld a, e                                          ; $5a1b: $7b
	inc l                                            ; $5a1c: $2c
	add b                                            ; $5a1d: $80
	ld d, b                                          ; $5a1e: $50
	ld h, b                                          ; $5a1f: $60
	ld h, b                                          ; $5a20: $60
	and e                                            ; $5a21: $a3
	call z, $f2cf                                    ; $5a22: $cc $cf $f2
	rst $38                                          ; $5a25: $ff
	jr nc, @+$22                                     ; $5a26: $30 $20

	jr nz, jr_05a_5a8d                               ; $5a28: $20 $63

	ld c, a                                          ; $5a2a: $4f
	ld c, a                                          ; $5a2b: $4f
	ld a, a                                          ; $5a2c: $7f
	ld b, c                                          ; $5a2d: $41
	inc c                                            ; $5a2e: $0c
	inc sp                                           ; $5a2f: $33

jr_05a_5a30:
	rst GetHLinHL                                          ; $5a30: $cf
	db $ec                                           ; $5a31: $ec
	or e                                             ; $5a32: $b3
	jp Jump_05a_7fff                                 ; $5a33: $c3 $ff $7f


	inc c                                            ; $5a36: $0c
	jr nc, @-$3b                                     ; $5a37: $30 $c3

	inc e                                            ; $5a39: $1c
	ld [hl], b                                       ; $5a3a: $70
	db $ec                                           ; $5a3b: $ec
	add c                                            ; $5a3c: $81
	sbc e                                            ; $5a3d: $9b
	add $b8                                          ; $5a3e: $c6 $b8
	db $dd                                           ; $5a40: $dd
	rrca                                             ; $5a41: $0f

jr_05a_5a42:
	db $dd                                           ; $5a42: $dd
	rst $38                                          ; $5a43: $ff
	adc [hl]                                         ; $5a44: $8e
	ld hl, sp+$78                                    ; $5a45: $f8 $78
	call nz, $0732                                   ; $5a47: $c4 $32 $07
	jr jr_05a_5aad                                   ; $5a4a: $18 $61

	add a                                            ; $5a4c: $87
	rra                                              ; $5a4d: $1f
	ld a, a                                          ; $5a4e: $7f
	rst $38                                          ; $5a4f: $ff
	cp $fc                                           ; $5a50: $fe $fc
	ld hl, sp+$3c                                    ; $5a52: $f8 $3c
	sbc a                                            ; $5a54: $9f
	rst GetHLinHL                                          ; $5a55: $cf

jr_05a_5a56:
	halt                                             ; $5a56: $76

jr_05a_5a57:
	ld a, [hl+]                                      ; $5a57: $2a
	adc a                                            ; $5a58: $8f
	ret z                                            ; $5a59: $c8

	db $e4                                           ; $5a5a: $e4
	di                                               ; $5a5b: $f3
	ld hl, sp-$80                                    ; $5a5c: $f8 $80
	ld bc, $1a06                                     ; $5a5e: $01 $06 $1a
	ld l, b                                          ; $5a61: $68
	and b                                            ; $5a62: $a0
	add b                                            ; $5a63: $80

jr_05a_5a64:
	ld bc, $0180                                     ; $5a64: $01 $80 $01
	rlca                                             ; $5a67: $07
	inc e                                            ; $5a68: $1c
	ld [hl], l                                       ; $5a69: $75

jr_05a_5a6a:
	add d                                            ; $5a6a: $82
	sub [hl]                                         ; $5a6b: $96
	dec sp                                           ; $5a6c: $3b
	ret c                                            ; $5a6d: $d8

	add b                                            ; $5a6e: $80
	nop                                              ; $5a6f: $00
	ld d, b                                          ; $5a70: $50
	ld l, b                                          ; $5a71: $68
	rst SubAFromBC                                          ; $5a72: $e7
	rst FarCall                                          ; $5a73: $f7
	inc a                                            ; $5a74: $3c
	ld a, c                                          ; $5a75: $79
	ld [hl], $92                                     ; $5a76: $36 $92
	jr nz, jr_05a_5a8a                               ; $5a78: $20 $10

	jr jr_05a_5a84                                   ; $5a7a: $18 $08

	ret c                                            ; $5a7c: $d8

	sbc b                                            ; $5a7d: $98
	sbc h                                            ; $5a7e: $9c
	sbc a                                            ; $5a7f: $9f
	ld d, a                                          ; $5a80: $57
	rst AddAOntoHL                                          ; $5a81: $ef
	rst FarCall                                          ; $5a82: $f7
	ld a, b                                          ; $5a83: $78

jr_05a_5a84:
	jr nc, jr_05a_5a64                               ; $5a84: $30 $de

	ld [hl], b                                       ; $5a86: $70
	sub h                                            ; $5a87: $94
	jr c, jr_05a_5aa2                                ; $5a88: $38 $18

jr_05a_5a8a:
	dec c                                            ; $5a8a: $0d
	ld hl, sp+$20                                    ; $5a8b: $f8 $20

jr_05a_5a8d:
	ld d, b                                          ; $5a8d: $50
	sub b                                            ; $5a8e: $90
	sub b                                            ; $5a8f: $90

jr_05a_5a90:
	or b                                             ; $5a90: $b0
	jr nz, @-$3e                                     ; $5a91: $20 $c0

	ld a, e                                          ; $5a93: $7b
	db $e4                                           ; $5a94: $e4
	sbc $50                                          ; $5a95: $de $50
	sbc [hl]                                         ; $5a97: $9e
	ldh [rOCPS], a                                   ; $5a98: $e0 $6a
	cp c                                             ; $5a9a: $b9
	ld a, d                                          ; $5a9b: $7a
	sub $4b                                          ; $5a9c: $d6 $4b
	ld d, b                                          ; $5a9e: $50
	sbc [hl]                                         ; $5a9f: $9e
	dec b                                            ; $5aa0: $05
	ld h, d                                          ; $5aa1: $62

jr_05a_5aa2:
	ret nc                                           ; $5aa2: $d0

	sbc c                                            ; $5aa3: $99
	ld b, l                                          ; $5aa4: $45
	adc d                                            ; $5aa5: $8a
	db $10                                           ; $5aa6: $10
	jr nz, jr_05a_5aea                               ; $5aa7: $20 $41

	and b                                            ; $5aa9: $a0
	ld h, d                                          ; $5aaa: $62
	ldh a, [$7f]                                     ; $5aab: $f0 $7f

jr_05a_5aad:
	sbc b                                            ; $5aad: $98
	ld a, d                                          ; $5aae: $7a
	xor $9e                                          ; $5aaf: $ee $9e
	ld d, b                                          ; $5ab1: $50
	ld l, c                                          ; $5ab2: $69
	ret nc                                           ; $5ab3: $d0

	sub l                                            ; $5ab4: $95
	rlca                                             ; $5ab5: $07
	ld [bc], a                                       ; $5ab6: $02
	nop                                              ; $5ab7: $00
	adc d                                            ; $5ab8: $8a
	inc d                                            ; $5ab9: $14
	jr z, jr_05a_5b0c                                ; $5aba: $28 $50

	jr nz, jr_05a_5aff                               ; $5abc: $20 $41

	add d                                            ; $5abe: $82
	ld [hl], c                                       ; $5abf: $71
	sub b                                            ; $5ac0: $90
	halt                                             ; $5ac1: $76
	ld e, l                                          ; $5ac2: $5d
	ld [hl], a                                       ; $5ac3: $77
	ldh [$9e], a                                     ; $5ac4: $e0 $9e
	ld [$f06b], sp                                   ; $5ac6: $08 $6b $f0
	ld l, e                                          ; $5ac9: $6b
	ret nz                                           ; $5aca: $c0

	sbc l                                            ; $5acb: $9d
	dec b                                            ; $5acc: $05
	adc d                                            ; $5acd: $8a
	ld a, d                                          ; $5ace: $7a
	cp [hl]                                          ; $5acf: $be
	ld sp, hl                                        ; $5ad0: $f9
	ld a, a                                          ; $5ad1: $7f
	add $6d                                          ; $5ad2: $c6 $6d
	and b                                            ; $5ad4: $a0
	sbc h                                            ; $5ad5: $9c
	ld b, $02                                        ; $5ad6: $06 $02
	inc e                                            ; $5ad8: $1c
	ld l, [hl]                                       ; $5ad9: $6e
	ret nc                                           ; $5ada: $d0

	sbc [hl]                                         ; $5adb: $9e
	ld d, c                                          ; $5adc: $51
	ld [hl], d                                       ; $5add: $72
	ret nz                                           ; $5ade: $c0

	ld h, b                                          ; $5adf: $60
	ld d, b                                          ; $5ae0: $50
	sbc h                                            ; $5ae1: $9c
	add b                                            ; $5ae2: $80
	ld b, h                                          ; $5ae3: $44
	adc b                                            ; $5ae4: $88
	ld a, c                                          ; $5ae5: $79
	sub d                                            ; $5ae6: $92
	ld e, a                                          ; $5ae7: $5f
	ret nz                                           ; $5ae8: $c0

	sub e                                            ; $5ae9: $93

jr_05a_5aea:
	dec b                                            ; $5aea: $05
	rlca                                             ; $5aeb: $07
	dec bc                                           ; $5aec: $0b
	rrca                                             ; $5aed: $0f
	rla                                              ; $5aee: $17
	rra                                              ; $5aef: $1f
	rra                                              ; $5af0: $1f
	cpl                                              ; $5af1: $2f
	ld b, $04                                        ; $5af2: $06 $04
	inc c                                            ; $5af4: $0c
	ld [$8f75], sp                                   ; $5af5: $08 $75 $8f
	sbc [hl]                                         ; $5af8: $9e
	ldh a, [$de]                                     ; $5af9: $f0 $de
	ldh [$df], a                                     ; $5afb: $e0 $df
	ret nz                                           ; $5afd: $c0

	halt                                             ; $5afe: $76

jr_05a_5aff:
	add $fb                                          ; $5aff: $c6 $fb
	sbc $ff                                          ; $5b01: $de $ff
	sub l                                            ; $5b03: $95
	ei                                               ; $5b04: $fb
	ld [hl], c                                       ; $5b05: $71
	ld [hl], c                                       ; $5b06: $71
	ld de, $4101                                     ; $5b07: $11 $01 $41
	ld b, b                                          ; $5b0a: $40
	ld b, c                                          ; $5b0b: $41

jr_05a_5b0c:
	ld b, c                                          ; $5b0c: $41
	ld hl, $01de                                     ; $5b0d: $21 $de $01
	ld a, [hl]                                       ; $5b10: $7e
	ldh [$80], a                                     ; $5b11: $e0 $80
	ld a, [hl]                                       ; $5b13: $7e
	ld a, b                                          ; $5b14: $78
	ld a, b                                          ; $5b15: $78
	db $ec                                           ; $5b16: $ec
	rst $38                                          ; $5b17: $ff
	cp a                                             ; $5b18: $bf
	ret c                                            ; $5b19: $d8

	pop hl                                           ; $5b1a: $e1
	rst JumpTable                                          ; $5b1b: $c7
	rst SubAFromDE                                          ; $5b1c: $df
	rst SubAFromDE                                          ; $5b1d: $df
	ld e, a                                          ; $5b1e: $5f
	ld c, a                                          ; $5b1f: $4f
	ld l, h                                          ; $5b20: $6c
	ldh [$80], a                                     ; $5b21: $e0 $80
	inc bc                                           ; $5b23: $03
	rrca                                             ; $5b24: $0f
	ccf                                              ; $5b25: $3f
	rst $38                                          ; $5b26: $ff
	cp $f9                                           ; $5b27: $fe $f9
	ld a, a                                          ; $5b29: $7f
	rst $38                                          ; $5b2a: $ff
	rst $38                                          ; $5b2b: $ff
	db $fc                                           ; $5b2c: $fc
	pop af                                           ; $5b2d: $f1
	add $18                                          ; $5b2e: $c6 $18
	ld h, c                                          ; $5b30: $61
	ld [hl], a                                       ; $5b31: $77
	adc l                                            ; $5b32: $8d
	cp $ff                                           ; $5b33: $fe $ff
	db $fd                                           ; $5b35: $fd
	ldh [c], a                                       ; $5b36: $e2
	sbc a                                            ; $5b37: $9f
	ld [hl], l                                       ; $5b38: $75
	set 5, a                                         ; $5b39: $cb $ef
	call nz, $631b                                   ; $5b3b: $c4 $1b $63
	add l                                            ; $5b3e: $85
	inc e                                            ; $5b3f: $1c
	ld a, [hl]                                       ; $5b40: $7e
	or $83                                           ; $5b41: $f6 $83
	rlca                                             ; $5b43: $07
	sbc a                                            ; $5b44: $9f
	sbc $ff                                          ; $5b45: $de $ff
	sbc l                                            ; $5b47: $9d
	ld e, [hl]                                       ; $5b48: $5e
	db $ec                                           ; $5b49: $ec
	call c, $9080                                    ; $5b4a: $dc $80 $90
	pop hl                                           ; $5b4d: $e1
	jp nc, $fb7c                                     ; $5b4e: $d2 $7c $fb

	db $f4                                           ; $5b51: $f4
	ld hl, sp-$20                                    ; $5b52: $f8 $e0
	ret nz                                           ; $5b54: $c0

	inc bc                                           ; $5b55: $03
	inc e                                            ; $5b56: $1c
	pop af                                           ; $5b57: $f1
	rlca                                             ; $5b58: $07
	inc c                                            ; $5b59: $0c
	jr jr_05a_5b7c                                   ; $5b5a: $18 $20

	ld a, e                                          ; $5b5c: $7b
	ld hl, sp+$75                                    ; $5b5d: $f8 $75
	adc c                                            ; $5b5f: $89
	sbc d                                            ; $5b60: $9a
	rrca                                             ; $5b61: $0f
	ld a, [hl]                                       ; $5b62: $7e
	add d                                            ; $5b63: $82
	dec b                                            ; $5b64: $05
	dec c                                            ; $5b65: $0d
	ld [hl], a                                       ; $5b66: $77
	ld hl, sp-$65                                    ; $5b67: $f8 $9b
	ld [hl], c                                       ; $5b69: $71
	add c                                            ; $5b6a: $81
	inc bc                                           ; $5b6b: $03
	add e                                            ; $5b6c: $83
	cp $9a                                           ; $5b6d: $fe $9a
	ld hl, sp+$44                                    ; $5b6f: $f8 $44
	adc d                                            ; $5b71: $8a
	sub d                                            ; $5b72: $92
	ldh a, [c]                                       ; $5b73: $f2
	ld [hl], a                                       ; $5b74: $77
	ld hl, sp-$65                                    ; $5b75: $f8 $9b
	add h                                            ; $5b77: $84
	ld [bc], a                                       ; $5b78: $02
	ld a, [bc]                                       ; $5b79: $0a
	ld a, [bc]                                       ; $5b7a: $0a
	pop af                                           ; $5b7b: $f1

jr_05a_5b7c:
	ld a, [hl]                                       ; $5b7c: $7e
	xor $76                                          ; $5b7d: $ee $76
	jp nz, $405f                                     ; $5b7f: $c2 $5f $40

	ld a, a                                          ; $5b82: $7f
	db $f4                                           ; $5b83: $f4
	ld a, [hl]                                       ; $5b84: $7e
	sbc $7d                                          ; $5b85: $de $7d
	ld a, h                                          ; $5b87: $7c
	sbc l                                            ; $5b88: $9d
	ld [hl+], a                                      ; $5b89: $22
	ld b, h                                          ; $5b8a: $44
	ld h, c                                          ; $5b8b: $61
	ldh [$9b], a                                     ; $5b8c: $e0 $9b
	ld d, h                                          ; $5b8e: $54
	jr z, jr_05a_5bd1                                ; $5b8f: $28 $40

	add d                                            ; $5b91: $82
	ld a, d                                          ; $5b92: $7a
	cp [hl]                                          ; $5b93: $be
	ld h, c                                          ; $5b94: $61
	sub b                                            ; $5b95: $90
	ld [hl], e                                       ; $5b96: $73
	ret nc                                           ; $5b97: $d0

	sbc [hl]                                         ; $5b98: $9e
	ld a, [bc]                                       ; $5b99: $0a
	ld h, d                                          ; $5b9a: $62
	ldh [$7f], a                                     ; $5b9b: $e0 $7f
	ldh a, [c]                                       ; $5b9d: $f2
	ld [hl], l                                       ; $5b9e: $75
	sub b                                            ; $5b9f: $90
	ld d, l                                          ; $5ba0: $55
	or b                                             ; $5ba1: $b0
	ld c, [hl]                                       ; $5ba2: $4e
	ldh [rBGP], a                                    ; $5ba3: $e0 $47
	ldh a, [$78]                                     ; $5ba5: $f0 $78
	ld d, b                                          ; $5ba7: $50
	ld a, c                                          ; $5ba8: $79
	sub b                                            ; $5ba9: $90
	ld e, a                                          ; $5baa: $5f
	and b                                            ; $5bab: $a0
	pop af                                           ; $5bac: $f1
	sbc e                                            ; $5bad: $9b
	cpl                                              ; $5bae: $2f
	ccf                                              ; $5baf: $3f
	ld a, $5e                                        ; $5bb0: $3e $5e
	sbc $5c                                          ; $5bb2: $de $5c
	ld a, b                                          ; $5bb4: $78
	ld h, a                                          ; $5bb5: $67
	ld a, l                                          ; $5bb6: $7d
	adc [hl]                                         ; $5bb7: $8e
	sbc $60                                          ; $5bb8: $de $60
	ld b, b                                          ; $5bba: $40
	ret nc                                           ; $5bbb: $d0

	call nc, $fe01                                   ; $5bbc: $d4 $01 $fe
	add h                                            ; $5bbf: $84
	cp a                                             ; $5bc0: $bf
	rst $38                                          ; $5bc1: $ff
	cp $dd                                           ; $5bc2: $fe $dd
	ld e, a                                          ; $5bc4: $5f
	adc a                                            ; $5bc5: $8f
	rst GetHLinHL                                          ; $5bc6: $cf
	rst JumpTable                                          ; $5bc7: $c7
	ld h, c                                          ; $5bc8: $61
	ld h, $38                                        ; $5bc9: $26 $38
	ld sp, $f9b3                                     ; $5bcb: $31 $b3 $f9
	ld hl, sp-$04                                    ; $5bce: $f8 $fc
	rst SubAFromBC                                          ; $5bd0: $e7

jr_05a_5bd1:
	sbc l                                            ; $5bd1: $9d
	ld [hl], a                                       ; $5bd2: $77
	push de                                          ; $5bd3: $d5

jr_05a_5bd4:
	ld c, d                                          ; $5bd4: $4a
	add b                                            ; $5bd5: $80
	add b                                            ; $5bd6: $80
	push de                                          ; $5bd7: $d5
	add a                                            ; $5bd8: $87
	ld e, $78                                        ; $5bd9: $1e $78
	ld a, d                                          ; $5bdb: $7a
	db $f4                                           ; $5bdc: $f4
	rst SubAFromDE                                          ; $5bdd: $df
	add b                                            ; $5bde: $80
	sub [hl]                                         ; $5bdf: $96
	ld a, l                                          ; $5be0: $7d
	rst $38                                          ; $5be1: $ff
	xor d                                            ; $5be2: $aa
	ld d, l                                          ; $5be3: $55
	add b                                            ; $5be4: $80
	inc bc                                           ; $5be5: $03
	ld c, $78                                        ; $5be6: $0e $78
	add e                                            ; $5be8: $83
	ld [hl], a                                       ; $5be9: $77
	jp nc, $847d                                     ; $5bea: $d2 $7d $84

	adc l                                            ; $5bed: $8d
	add hl, de                                       ; $5bee: $19
	rst $38                                          ; $5bef: $ff
	ld e, b                                          ; $5bf0: $58
	ldh a, [rBCPS]                                   ; $5bf1: $f0 $68
	ld a, b                                          ; $5bf3: $78
	or h                                             ; $5bf4: $b4
	ld a, d                                          ; $5bf5: $7a
	ld a, [$b83f]                                    ; $5bf6: $fa $3f $b8
	sub b                                            ; $5bf9: $90
	ret c                                            ; $5bfa: $d8

	ret z                                            ; $5bfb: $c8

	adc h                                            ; $5bfc: $8c
	ld b, $82                                        ; $5bfd: $06 $82
	add e                                            ; $5bff: $83
	ld a, b                                          ; $5c00: $78
	inc hl                                           ; $5c01: $23
	sbc e                                            ; $5c02: $9b
	rra                                              ; $5c03: $1f
	ld a, $7f                                        ; $5c04: $3e $7f
	ld l, h                                          ; $5c06: $6c
	ld l, a                                          ; $5c07: $6f
	and e                                            ; $5c08: $a3
	ld a, l                                          ; $5c09: $7d
	ld c, l                                          ; $5c0a: $4d
	sbc d                                            ; $5c0b: $9a
	ld a, l                                          ; $5c0c: $7d
	ld a, [hl]                                       ; $5c0d: $7e
	cp a                                             ; $5c0e: $bf
	sbc e                                            ; $5c0f: $9b
	call c, Call_05a_7479                            ; $5c10: $dc $79 $74
	sbc e                                            ; $5c13: $9b
	add e                                            ; $5c14: $83
	add c                                            ; $5c15: $81
	ld b, b                                          ; $5c16: $40
	ld h, a                                          ; $5c17: $67
	ld [hl], l                                       ; $5c18: $75
	ld l, h                                          ; $5c19: $6c
	sbc h                                            ; $5c1a: $9c
	ld [hl], d                                       ; $5c1b: $72
	xor h                                            ; $5c1c: $ac
	ld e, b                                          ; $5c1d: $58
	ld [hl], l                                       ; $5c1e: $75
	adc e                                            ; $5c1f: $8b
	sbc e                                            ; $5c20: $9b
	ld [hl], b                                       ; $5c21: $70
	adc d                                            ; $5c22: $8a
	call nc, Call_05a_77f8                           ; $5c23: $d4 $f8 $77
	ld hl, sp-$62                                    ; $5c26: $f8 $9e
	jr nc, @+$78                                     ; $5c28: $30 $76

	cp $7a                                           ; $5c2a: $fe $7a
	db $fc                                           ; $5c2c: $fc
	ld hl, sp+$78                                    ; $5c2d: $f8 $78
	ld d, b                                          ; $5c2f: $50
	sbc e                                            ; $5c30: $9b
	ld bc, $4522                                     ; $5c31: $01 $22 $45
	adc d                                            ; $5c34: $8a
	ld h, e                                          ; $5c35: $63
	jr nc, jr_05a_5cb7                               ; $5c36: $30 $7f

	jr nz, jr_05a_5bd4                               ; $5c38: $20 $9a

	xor d                                            ; $5c3a: $aa
	inc d                                            ; $5c3b: $14
	jr z, jr_05a_5c8f                                ; $5c3c: $28 $51

	and d                                            ; $5c3e: $a2
	ld h, b                                          ; $5c3f: $60
	ld h, b                                          ; $5c40: $60
	ld a, b                                          ; $5c41: $78
	ld b, b                                          ; $5c42: $40
	sbc h                                            ; $5c43: $9c
	ld de, $15a2                                     ; $5c44: $11 $a2 $15
	ld e, d                                          ; $5c47: $5a
	ldh [$78], a                                     ; $5c48: $e0 $78
	ld b, d                                          ; $5c4a: $42
	halt                                             ; $5c4b: $76
	cp $f9                                           ; $5c4c: $fe $f9
	ld a, l                                          ; $5c4e: $7d
	sub d                                            ; $5c4f: $92
	ld [hl], d                                       ; $5c50: $72
	ret nz                                           ; $5c51: $c0

	ld e, [hl]                                       ; $5c52: $5e
	ldh [$7e], a                                     ; $5c53: $e0 $7e
	add h                                            ; $5c55: $84
	sbc b                                            ; $5c56: $98
	ld b, b                                          ; $5c57: $40
	adc b                                            ; $5c58: $88
	nop                                              ; $5c59: $00
	jr nz, jr_05a_5c9c                               ; $5c5a: $20 $40

	nop                                              ; $5c5c: $00
	ld b, b                                          ; $5c5d: $40
	ld l, l                                          ; $5c5e: $6d
	call $a89b                                       ; $5c5f: $cd $9b $a8
	inc d                                            ; $5c62: $14
	jr z, jr_05a_5ca5                                ; $5c63: $28 $40

	ld d, a                                          ; $5c65: $57
	sub b                                            ; $5c66: $90
	ld a, l                                          ; $5c67: $7d
	ld [hl+], a                                      ; $5c68: $22
	db $ed                                           ; $5c69: $ed
	ld [hl], d                                       ; $5c6a: $72
	push af                                          ; $5c6b: $f5
	ld [hl], e                                       ; $5c6c: $73
	ld hl, sp-$21                                    ; $5c6d: $f8 $df
	ld a, b                                          ; $5c6f: $78
	rst SubAFromDE                                          ; $5c70: $df
	ld [hl], b                                       ; $5c71: $70
	sbc e                                            ; $5c72: $9b
	or b                                             ; $5c73: $b0
	ldh a, [rSVBK]                                   ; $5c74: $f0 $70
	ldh [$dd], a                                     ; $5c76: $e0 $dd
	ld b, b                                          ; $5c78: $40
	ld e, c                                          ; $5c79: $59
	adc c                                            ; $5c7a: $89
	ld e, [hl]                                       ; $5c7b: $5e
	db $10                                           ; $5c7c: $10
	rst SubAFromDE                                          ; $5c7d: $df
	inc bc                                           ; $5c7e: $03
	sbc d                                            ; $5c7f: $9a
	dec b                                            ; $5c80: $05
	ld c, $1e                                        ; $5c81: $0e $1e
	ld a, [hl-]                                      ; $5c83: $3a
	ld [hl], l                                       ; $5c84: $75
	sbc $01                                          ; $5c85: $de $01
	sbc $03                                          ; $5c87: $de $03
	add b                                            ; $5c89: $80
	rlca                                             ; $5c8a: $07
	ld c, $b7                                        ; $5c8b: $0e $b7
	xor e                                            ; $5c8d: $ab
	sbc c                                            ; $5c8e: $99

jr_05a_5c8f:
	pop af                                           ; $5c8f: $f1
	ld hl, sp-$08                                    ; $5c90: $f8 $f8
	ei                                               ; $5c92: $fb
	cp d                                             ; $5c93: $ba
	db $fc                                           ; $5c94: $fc
	cp [hl]                                          ; $5c95: $be
	cp a                                             ; $5c96: $bf
	ld a, a                                          ; $5c97: $7f
	rrca                                             ; $5c98: $0f
	rrca                                             ; $5c99: $0f
	rlca                                             ; $5c9a: $07
	dec bc                                           ; $5c9b: $0b

jr_05a_5c9c:
	ld [$eeff], a                                    ; $5c9c: $ea $ff $ee
	ld hl, sp-$0c                                    ; $5c9f: $f8 $f4
	db $fc                                           ; $5ca1: $fc
	rst SubAFromDE                                          ; $5ca2: $df
	xor $40                                          ; $5ca3: $ee $40

jr_05a_5ca5:
	ld hl, $1936                                     ; $5ca5: $21 $36 $19
	add a                                            ; $5ca8: $87
	add b                                            ; $5ca9: $80
	ld c, a                                          ; $5caa: $4f
	ld b, a                                          ; $5cab: $47
	and b                                            ; $5cac: $a0
	ldh [hDisp1_OBP1], a                                     ; $5cad: $e0 $94
	rla                                              ; $5caf: $17
	ld a, $79                                        ; $5cb0: $3e $79
	and [hl]                                         ; $5cb2: $a6
	sbc c                                            ; $5cb3: $99
	ld h, a                                          ; $5cb4: $67
	ld h, c                                          ; $5cb5: $61
	adc l                                            ; $5cb6: $8d

jr_05a_5cb7:
	inc a                                            ; $5cb7: $3c
	adc h                                            ; $5cb8: $8c
	pop bc                                           ; $5cb9: $c1
	add $19                                          ; $5cba: $c6 $19
	ld h, a                                          ; $5cbc: $67
	db $db                                           ; $5cbd: $db
	and a                                            ; $5cbe: $a7
	sbc c                                            ; $5cbf: $99
	ld h, c                                          ; $5cc0: $61
	adc c                                            ; $5cc1: $89
	ld [hl], c                                       ; $5cc2: $71
	pop af                                           ; $5cc3: $f1
	pop hl                                           ; $5cc4: $e1
	db $e3                                           ; $5cc5: $e3
	rst JumpTable                                          ; $5cc6: $c7
	dec de                                           ; $5cc7: $1b
	ld h, e                                          ; $5cc8: $63
	sub a                                            ; $5cc9: $97
	sub e                                            ; $5cca: $93
	ld a, e                                          ; $5ccb: $7b
	di                                               ; $5ccc: $f3
	jp $a0d8                                         ; $5ccd: $c3 $d8 $a0


	cp a                                             ; $5cd0: $bf
	ld c, a                                          ; $5cd1: $4f
	ld a, d                                          ; $5cd2: $7a
	db $eb                                           ; $5cd3: $eb
	sbc e                                            ; $5cd4: $9b
	ld bc, $6030                                     ; $5cd5: $01 $30 $60
	ld a, a                                          ; $5cd8: $7f
	ld a, e                                          ; $5cd9: $7b
	ld sp, hl                                        ; $5cda: $f9
	ld a, c                                          ; $5cdb: $79
	adc e                                            ; $5cdc: $8b
	sub l                                            ; $5cdd: $95
	or $bd                                           ; $5cde: $f6 $bd
	pop bc                                           ; $5ce0: $c1
	add hl, bc                                       ; $5ce1: $09
	add hl, de                                       ; $5ce2: $19
	ld a, h                                          ; $5ce3: $7c
	cp $0f                                           ; $5ce4: $fe $0f
	ld sp, hl                                        ; $5ce6: $f9
	jp $07de                                         ; $5ce7: $c3 $de $07


	adc e                                            ; $5cea: $8b
	inc bc                                           ; $5ceb: $03
	ld bc, $c4e8                                     ; $5cec: $01 $e8 $c4
	inc d                                            ; $5cef: $14
	add h                                            ; $5cf0: $84
	db $e4                                           ; $5cf1: $e4
	ld h, h                                          ; $5cf2: $64
	add sp, -$10                                     ; $5cf3: $e8 $f0
	ret c                                            ; $5cf5: $d8

	adc h                                            ; $5cf6: $8c
	add h                                            ; $5cf7: $84
	inc d                                            ; $5cf8: $14
	inc d                                            ; $5cf9: $14
	sbc h                                            ; $5cfa: $9c
	sbc b                                            ; $5cfb: $98
	ldh a, [rSC]                                     ; $5cfc: $f0 $02
	db $10                                           ; $5cfe: $10
	ld a, c                                          ; $5cff: $79
	ret nz                                           ; $5d00: $c0

	ld e, e                                          ; $5d01: $5b
	inc a                                            ; $5d02: $3c
	sbc [hl]                                         ; $5d03: $9e
	ld [$5278], sp                                   ; $5d04: $08 $78 $52
	ld d, h                                          ; $5d07: $54
	sub b                                            ; $5d08: $90
	ld a, l                                          ; $5d09: $7d
	and [hl]                                         ; $5d0a: $a6
	ld c, c                                          ; $5d0b: $49
	ret nz                                           ; $5d0c: $c0

	ld a, [hl]                                       ; $5d0d: $7e
	ret nc                                           ; $5d0e: $d0

	sbc e                                            ; $5d0f: $9b
	ld d, l                                          ; $5d10: $55
	adc d                                            ; $5d11: $8a
	inc d                                            ; $5d12: $14
	xor b                                            ; $5d13: $a8
	ld h, c                                          ; $5d14: $61
	add b                                            ; $5d15: $80
	ld a, b                                          ; $5d16: $78
	ld b, h                                          ; $5d17: $44
	rst $38                                          ; $5d18: $ff
	ld a, a                                          ; $5d19: $7f
	ldh a, [c]                                       ; $5d1a: $f2
	sbc [hl]                                         ; $5d1b: $9e
	ld b, c                                          ; $5d1c: $41
	ld h, d                                          ; $5d1d: $62
	ret nc                                           ; $5d1e: $d0

	ld a, l                                          ; $5d1f: $7d
	ld h, d                                          ; $5d20: $62
	ldh [$cf], a                                     ; $5d21: $e0 $cf
	ld a, l                                          ; $5d23: $7d
	ld hl, sp-$62                                    ; $5d24: $f8 $9e
	dec de                                           ; $5d26: $1b
	ld l, d                                          ; $5d27: $6a
	db $10                                           ; $5d28: $10
	sub d                                            ; $5d29: $92
	inc e                                            ; $5d2a: $1c
	ld [bc], a                                       ; $5d2b: $02
	dec b                                            ; $5d2c: $05
	dec bc                                           ; $5d2d: $0b
	scf                                              ; $5d2e: $37
	sbc $7e                                          ; $5d2f: $de $7e
	db $fc                                           ; $5d31: $fc
	ld hl, sp+$03                                    ; $5d32: $f8 $03
	ld b, $0c                                        ; $5d34: $06 $0c
	jr c, jr_05a_5dac                                ; $5d36: $38 $74

	jp $b37c                                         ; $5d38: $c3 $7c $b3


	ld a, a                                          ; $5d3b: $7f
	ei                                               ; $5d3c: $fb
	sbc e                                            ; $5d3d: $9b
	jr jr_05a_5d57                                   ; $5d3e: $18 $17

	dec e                                            ; $5d40: $1d
	dec bc                                           ; $5d41: $0b
	db $fc                                           ; $5d42: $fc
	sbc e                                            ; $5d43: $9b
	jr jr_05a_5d54                                   ; $5d44: $18 $0e

	rlca                                             ; $5d46: $07
	nop                                              ; $5d47: $00
	ld [hl], b                                       ; $5d48: $70
	ld [hl], c                                       ; $5d49: $71
	sbc l                                            ; $5d4a: $9d
	ei                                               ; $5d4b: $fb
	sbc h                                            ; $5d4c: $9c
	ld l, e                                          ; $5d4d: $6b
	ret nc                                           ; $5d4e: $d0

	adc d                                            ; $5d4f: $8a
	rst $38                                          ; $5d50: $ff
	ld sp, hl                                        ; $5d51: $f9
	jp hl                                            ; $5d52: $e9


	pop de                                           ; $5d53: $d1

jr_05a_5d54:
	and c                                            ; $5d54: $a1
	ld b, c                                          ; $5d55: $41
	add e                                            ; $5d56: $83

jr_05a_5d57:
	rlca                                             ; $5d57: $07
	rra                                              ; $5d58: $1f
	ld c, $1e                                        ; $5d59: $0e $1e
	ld a, $7e                                        ; $5d5b: $3e $7e
	cp $fc                                           ; $5d5d: $fe $fc
	ld hl, sp-$20                                    ; $5d5f: $f8 $e0
	add hl, de                                       ; $5d61: $19
	rra                                              ; $5d62: $1f
	rra                                              ; $5d63: $1f
	rlca                                             ; $5d64: $07
	cp $9d                                           ; $5d65: $fe $9d
	add b                                            ; $5d67: $80
	dec bc                                           ; $5d68: $0b
	ld [hl], a                                       ; $5d69: $77
	ld a, [$80fe]                                    ; $5d6a: $fa $fe $80
	sub c                                            ; $5d6d: $91
	ld d, $88                                        ; $5d6e: $16 $88
	sbc b                                            ; $5d70: $98
	cp $5f                                           ; $5d71: $fe $5f
	scf                                              ; $5d73: $37
	ld e, $f1                                        ; $5d74: $1e $f1
	or $f8                                           ; $5d76: $f6 $f8
	and $61                                          ; $5d78: $e6 $61
	jr c, jr_05a_5d8b                                ; $5d7a: $38 $0f

	ld bc, $7e9f                                     ; $5d7c: $01 $9f $7e
	ld hl, sp+$63                                    ; $5d7f: $f8 $63
	inc c                                            ; $5d81: $0c
	or e                                             ; $5d82: $b3
	ld e, $f8                                        ; $5d83: $1e $f8
	sbc a                                            ; $5d85: $9f
	ld a, h                                          ; $5d86: $7c
	ld [hl], b                                       ; $5d87: $70
	inc bc                                           ; $5d88: $03
	adc a                                            ; $5d89: $8f
	ld a, a                                          ; $5d8a: $7f

jr_05a_5d8b:
	db $fc                                           ; $5d8b: $fc
	adc c                                            ; $5d8c: $89
	ldh a, [$8d]                                     ; $5d8d: $f0 $8d
	ld [hl-], a                                      ; $5d8f: $32
	adc $32                                          ; $5d90: $ce $32
	jp nz, $0a03                                     ; $5d92: $c2 $03 $0a

	cpl                                              ; $5d95: $2f
	rrca                                             ; $5d96: $0f
	ld a, $fe                                        ; $5d97: $3e $fe
	cp $e6                                           ; $5d99: $fe $e6
	add [hl]                                         ; $5d9b: $86
	rla                                              ; $5d9c: $17
	rra                                              ; $5d9d: $1f
	rra                                              ; $5d9e: $1f
	ld e, $23                                        ; $5d9f: $1e $23
	ld l, h                                          ; $5da1: $6c
	or b                                             ; $5da2: $b0
	halt                                             ; $5da3: $76
	inc d                                            ; $5da4: $14
	sbc e                                            ; $5da5: $9b
	ld bc, $1c1f                                     ; $5da6: $01 $1f $1c
	ld [hl], b                                       ; $5da9: $70
	ld a, e                                          ; $5daa: $7b
	add h                                            ; $5dab: $84

jr_05a_5dac:
	sbc l                                            ; $5dac: $9d
	rst AddAOntoHL                                          ; $5dad: $ef
	ldh a, [$fb]                                     ; $5dae: $f0 $fb
	sbc [hl]                                         ; $5db0: $9e
	rra                                              ; $5db1: $1f
	ld l, e                                          ; $5db2: $6b
	ld hl, sp-$0f                                    ; $5db3: $f8 $f1
	ld a, e                                          ; $5db5: $7b
	nop                                              ; $5db6: $00
	ld [hl], c                                       ; $5db7: $71
	adc $48                                          ; $5db8: $ce $48
	and b                                            ; $5dba: $a0
	inc hl                                           ; $5dbb: $23
	ldh a, [$7d]                                     ; $5dbc: $f0 $7d
	ret nz                                           ; $5dbe: $c0

	sbc d                                            ; $5dbf: $9a
	xor b                                            ; $5dc0: $a8
	ld b, l                                          ; $5dc1: $45
	adc b                                            ; $5dc2: $88
	db $10                                           ; $5dc3: $10
	add b                                            ; $5dc4: $80
	ld h, e                                          ; $5dc5: $63
	ldh a, [$9a]                                     ; $5dc6: $f0 $9a
	add d                                            ; $5dc8: $82
	ld b, h                                          ; $5dc9: $44
	xor b                                            ; $5dca: $a8
	db $10                                           ; $5dcb: $10
	jr nz, jr_05a_5e27                               ; $5dcc: $20 $59

	ld h, b                                          ; $5dce: $60
	ld a, [$426b]                                    ; $5dcf: $fa $6b $42
	ld l, a                                          ; $5dd2: $6f
	ld hl, sp-$65                                    ; $5dd3: $f8 $9b
	inc bc                                           ; $5dd5: $03
	dec e                                            ; $5dd6: $1d
	rst AddAOntoHL                                          ; $5dd7: $ef
	ccf                                              ; $5dd8: $3f
	ld [hl], e                                       ; $5dd9: $73
	ld hl, sp-$69                                    ; $5dda: $f8 $97
	ld e, $f0                                        ; $5ddc: $1e $f0
	ret nz                                           ; $5dde: $c0

	nop                                              ; $5ddf: $00
	ld bc, $770e                                     ; $5de0: $01 $0e $77
	cp a                                             ; $5de3: $bf
	sbc $ff                                          ; $5de4: $de $ff
	ld a, a                                          ; $5de6: $7f
	ld hl, sp-$63                                    ; $5de7: $f8 $9d
	rrca                                             ; $5de9: $0f
	ld a, b                                          ; $5dea: $78
	ld [hl], h                                       ; $5deb: $74
	rst $38                                          ; $5dec: $ff
	sbc [hl]                                         ; $5ded: $9e
	ld l, a                                          ; $5dee: $6f
	ld a, b                                          ; $5def: $78
	adc a                                            ; $5df0: $8f
	sbc [hl]                                         ; $5df1: $9e
	ld hl, sp+$7b                                    ; $5df2: $f8 $7b
	jp hl                                            ; $5df4: $e9


	ld a, a                                          ; $5df5: $7f
	ld d, h                                          ; $5df6: $54
	ei                                               ; $5df7: $fb
	ld a, e                                          ; $5df8: $7b

Jump_05a_5df9:
	push af                                          ; $5df9: $f5
	db $f4                                           ; $5dfa: $f4
	sbc l                                            ; $5dfb: $9d
	ld b, $03                                        ; $5dfc: $06 $03

jr_05a_5dfe:
	ld l, l                                          ; $5dfe: $6d
	ld [hl], l                                       ; $5dff: $75
	ld l, c                                          ; $5e00: $69
	ld l, a                                          ; $5e01: $6f
	ld a, b                                          ; $5e02: $78
	or a                                             ; $5e03: $b7
	rst SubAFromDE                                          ; $5e04: $df
	rst $38                                          ; $5e05: $ff
	sbc c                                            ; $5e06: $99
	ld a, a                                          ; $5e07: $7f
	ccf                                              ; $5e08: $3f
	rrca                                             ; $5e09: $0f
	inc bc                                           ; $5e0a: $03
	rst $38                                          ; $5e0b: $ff
	ld a, h                                          ; $5e0c: $7c
	ei                                               ; $5e0d: $fb
	sbc [hl]                                         ; $5e0e: $9e
	ld a, a                                          ; $5e0f: $7f
	jp c, Jump_05a_65ff                              ; $5e10: $da $ff $65

	ld h, [hl]                                       ; $5e13: $66
	sbc h                                            ; $5e14: $9c
	add b                                            ; $5e15: $80
	ldh [$fc], a                                     ; $5e16: $e0 $fc
	call c, $63ff                                    ; $5e18: $dc $ff $63
	ld [hl], a                                       ; $5e1b: $77
	rst SubAFromDE                                          ; $5e1c: $df
	inc bc                                           ; $5e1d: $03
	sbc $ff                                          ; $5e1e: $de $ff
	ld a, [hl]                                       ; $5e20: $7e
	adc a                                            ; $5e21: $8f
	ld l, d                                          ; $5e22: $6a
	ld d, a                                          ; $5e23: $57
	add b                                            ; $5e24: $80
	rlca                                             ; $5e25: $07
	ld d, b                                          ; $5e26: $50

jr_05a_5e27:
	ld d, e                                          ; $5e27: $53
	ld e, e                                          ; $5e28: $5b
	ld e, l                                          ; $5e29: $5d
	ld [hl], h                                       ; $5e2a: $74
	jr nz, jr_05a_5e8d                               ; $5e2b: $20 $60

	and d                                            ; $5e2d: $a2
	ldh [$e4], a                                     ; $5e2e: $e0 $e4
	rst SubAFromBC                                          ; $5e30: $e7
	xor $f8                                          ; $5e31: $ee $f8
	ldh a, [$f0]                                     ; $5e33: $f0 $f0
	or b                                             ; $5e35: $b0
	ld a, [hl]                                       ; $5e36: $7e
	sub $46                                          ; $5e37: $d6 $46
	ld b, $06                                        ; $5e39: $06 $06
	ld a, [bc]                                       ; $5e3b: $0a
	ld c, $76                                        ; $5e3c: $0e $76
	ld [hl-], a                                      ; $5e3e: $32
	ldh [c], a                                       ; $5e3f: $e2
	add d                                            ; $5e40: $82
	ld [bc], a                                       ; $5e41: $02

Call_05a_5e42:
	ld [bc], a                                       ; $5e42: $02
	ld d, $7d                                        ; $5e43: $16 $7d
	scf                                              ; $5e45: $37
	xor $9e                                          ; $5e46: $ee $9e
	inc b                                            ; $5e48: $04
	ld l, e                                          ; $5e49: $6b
	db $fc                                           ; $5e4a: $fc
	ld l, b                                          ; $5e4b: $68
	ld h, b                                          ; $5e4c: $60
	ld a, a                                          ; $5e4d: $7f
	cp e                                             ; $5e4e: $bb
	ld b, $d0                                        ; $5e4f: $06 $d0
	ld a, l                                          ; $5e51: $7d
	sbc [hl]                                         ; $5e52: $9e
	ld [hl], e                                       ; $5e53: $73
	ldh a, [$7c]                                     ; $5e54: $f0 $7c
	push hl                                          ; $5e56: $e5
	ld [hl], e                                       ; $5e57: $73
	ldh a, [rSVBK]                                   ; $5e58: $f0 $70
	ld [hl], b                                       ; $5e5a: $70
	ld a, e                                          ; $5e5b: $7b
	ldh a, [$9e]                                     ; $5e5c: $f0 $9e
	ld h, b                                          ; $5e5e: $60
	ld a, d                                          ; $5e5f: $7a
	ld [hl], d                                       ; $5e60: $72
	ld [hl], h                                       ; $5e61: $74
	jr nc, jr_05a_5dfe                               ; $5e62: $30 $9a

	and b                                            ; $5e64: $a0
	ld b, c                                          ; $5e65: $41
	add d                                            ; $5e66: $82
	dec d                                            ; $5e67: $15
	ld [hl+], a                                      ; $5e68: $22
	ld h, d                                          ; $5e69: $62
	ret nc                                           ; $5e6a: $d0

	ld a, c                                          ; $5e6b: $79
	ld [hl], b                                       ; $5e6c: $70
	sbc d                                            ; $5e6d: $9a
	ld d, b                                          ; $5e6e: $50
	and b                                            ; $5e6f: $a0
	ld b, b                                          ; $5e70: $40
	add b                                            ; $5e71: $80
	dec b                                            ; $5e72: $05
	ld sp, hl                                        ; $5e73: $f9
	sbc e                                            ; $5e74: $9b
	jr c, @-$3b                                      ; $5e75: $38 $c3

	rrca                                             ; $5e77: $0f
	ccf                                              ; $5e78: $3f
	ld [hl], a                                       ; $5e79: $77
	inc l                                            ; $5e7a: $2c
	sbc h                                            ; $5e7b: $9c
	ccf                                              ; $5e7c: $3f
	db $fc                                           ; $5e7d: $fc
	ldh a, [$73]                                     ; $5e7e: $f0 $73
	ret nc                                           ; $5e80: $d0

	db $dd                                           ; $5e81: $dd
	rst $38                                          ; $5e82: $ff
	ld a, c                                          ; $5e83: $79
	add sp, $62                                      ; $5e84: $e8 $62
	ld [$e97f], a                                    ; $5e86: $ea $7f $e9
	ld [hl], l                                       ; $5e89: $75
	xor d                                            ; $5e8a: $aa
	ldh [$d4], a                                     ; $5e8b: $e0 $d4

jr_05a_5e8d:
	ld a, h                                          ; $5e8d: $7c
	ld h, a                                          ; $5e8e: $67
	sbc h                                            ; $5e8f: $9c
	rlca                                             ; $5e90: $07
	rrca                                             ; $5e91: $0f
	ld e, $67                                        ; $5e92: $1e $67
	db $f4                                           ; $5e94: $f4
	sbc d                                            ; $5e95: $9a
	ccf                                              ; $5e96: $3f
	ld b, e                                          ; $5e97: $43
	ldh [$f3], a                                     ; $5e98: $e0 $f3
	db $ec                                           ; $5e9a: $ec
	ld [hl], l                                       ; $5e9b: $75
	rst SubAFromDE                                          ; $5e9c: $df
	sbc h                                            ; $5e9d: $9c
	inc a                                            ; $5e9e: $3c
	rra                                              ; $5e9f: $1f
	rrca                                             ; $5ea0: $0f
	ld [hl], l                                       ; $5ea1: $75
	rst SubAFromDE                                          ; $5ea2: $df
	ld a, d                                          ; $5ea3: $7a
	or d                                             ; $5ea4: $b2
	ld l, e                                          ; $5ea5: $6b
	or b                                             ; $5ea6: $b0
	ld l, [hl]                                       ; $5ea7: $6e
	cp l                                             ; $5ea8: $bd
	sbc h                                            ; $5ea9: $9c
	rst $38                                          ; $5eaa: $ff
	di                                               ; $5eab: $f3
	db $fc                                           ; $5eac: $fc
	ei                                               ; $5ead: $fb
	sbc [hl]                                         ; $5eae: $9e
	rrca                                             ; $5eaf: $0f
	ld l, a                                          ; $5eb0: $6f
	ld hl, sp-$62                                    ; $5eb1: $f8 $9e
	cp h                                             ; $5eb3: $bc
	ld l, e                                          ; $5eb4: $6b
	add [hl]                                         ; $5eb5: $86
	sbc [hl]                                         ; $5eb6: $9e
	ld a, h                                          ; $5eb7: $7c
	ld l, e                                          ; $5eb8: $6b
	ld hl, sp-$6e                                    ; $5eb9: $f8 $92
	ld hl, $3d2f                                     ; $5ebb: $21 $2f $3d
	inc h                                            ; $5ebe: $24
	jr nz, jr_05a_5ee2                               ; $5ebf: $20 $21

	daa                                              ; $5ec1: $27
	dec a                                            ; $5ec2: $3d

jr_05a_5ec3:
	ld [hl-], a                                      ; $5ec3: $32
	inc sp                                           ; $5ec4: $33
	ld a, $38                                        ; $5ec5: $3e $38
	jr nc, jr_05a_5f44                               ; $5ec7: $30 $7b

	ei                                               ; $5ec9: $fb
	ld a, [hl]                                       ; $5eca: $7e
	pop bc                                           ; $5ecb: $c1
	sub b                                            ; $5ecc: $90
	ld a, [bc]                                       ; $5ecd: $0a
	inc c                                            ; $5ece: $0c
	ld [hl], h                                       ; $5ecf: $74
	call nc, $0444                                   ; $5ed0: $d4 $44 $04
	ldh [c], a                                       ; $5ed3: $e2
	add d                                            ; $5ed4: $82
	ld d, $1c                                        ; $5ed5: $16 $1c
	inc a                                            ; $5ed7: $3c
	db $e4                                           ; $5ed8: $e4
	add h                                            ; $5ed9: $84
	inc b                                            ; $5eda: $04
	jr nz, jr_05a_5f55                               ; $5edb: $20 $78

	ld [hl], h                                       ; $5edd: $74
	ld a, a                                          ; $5ede: $7f
	ld [hl-], a                                      ; $5edf: $32
	sbc [hl]                                         ; $5ee0: $9e
	ld a, [bc]                                       ; $5ee1: $0a

jr_05a_5ee2:
	ld e, h                                          ; $5ee2: $5c
	ld [hl], b                                       ; $5ee3: $70
	sbc b                                            ; $5ee4: $98
	ld de, $4522                                     ; $5ee5: $11 $22 $45
	adc d                                            ; $5ee8: $8a
	inc d                                            ; $5ee9: $14
	jr z, jr_05a_5f3d                                ; $5eea: $28 $51

	ld [de], a                                       ; $5eec: $12
	ret nc                                           ; $5eed: $d0

	ld a, l                                          ; $5eee: $7d
	ret nz                                           ; $5eef: $c0

	ld d, $b0                                        ; $5ef0: $16 $b0
	sbc [hl]                                         ; $5ef2: $9e
	ld d, h                                          ; $5ef3: $54
	ld a, d                                          ; $5ef4: $7a
	adc $62                                          ; $5ef5: $ce $62
	add b                                            ; $5ef7: $80
	ld a, a                                          ; $5ef8: $7f
	or h                                             ; $5ef9: $b4
	sbc d                                            ; $5efa: $9a
	jr nz, jr_05a_5f4d                               ; $5efb: $20 $50

	xor b                                            ; $5efd: $a8
	ld b, h                                          ; $5efe: $44
	ld [$f161], sp                                   ; $5eff: $08 $61 $f1
	ld a, [hl]                                       ; $5f02: $7e
	and d                                            ; $5f03: $a2
	sbc l                                            ; $5f04: $9d
	ld [$7910], sp                                   ; $5f05: $08 $10 $79
	inc a                                            ; $5f08: $3c
	ld h, e                                          ; $5f09: $63
	ldh [$7a], a                                     ; $5f0a: $e0 $7a
	db $d3                                           ; $5f0c: $d3
	ld a, [hl]                                       ; $5f0d: $7e
	sbc $59                                          ; $5f0e: $de $59
	cp h                                             ; $5f10: $bc
	ld [bc], a                                       ; $5f11: $02
	db $d3                                           ; $5f12: $d3
	ld [hl-], a                                      ; $5f13: $32
	pop de                                           ; $5f14: $d1
	sbc l                                            ; $5f15: $9d
	ld a, $fd                                        ; $5f16: $3e $fd
	ld h, a                                          ; $5f18: $67
	db $f4                                           ; $5f19: $f4
	sub a                                            ; $5f1a: $97
	ld a, l                                          ; $5f1b: $7d
	ld a, [$e8f4]                                    ; $5f1c: $fa $f4 $e8
	ret nc                                           ; $5f1f: $d0

	ld h, b                                          ; $5f20: $60
	add b                                            ; $5f21: $80
	nop                                              ; $5f22: $00
	ld a, b                                          ; $5f23: $78
	jr nc, jr_05a_5ec3                               ; $5f24: $30 $9d

	jr @+$32                                         ; $5f26: $18 $30

	ld a, d                                          ; $5f28: $7a
	add l                                            ; $5f29: $85
	ld l, a                                          ; $5f2a: $6f
	or b                                             ; $5f2b: $b0
	sbc l                                            ; $5f2c: $9d
	jr nz, jr_05a_5f6f                               ; $5f2d: $20 $40

	ld e, a                                          ; $5f2f: $5f
	pop de                                           ; $5f30: $d1
	sbc c                                            ; $5f31: $99
	ld [bc], a                                       ; $5f32: $02
	dec b                                            ; $5f33: $05
	ld a, [bc]                                       ; $5f34: $0a
	inc b                                            ; $5f35: $04
	jr z, jr_05a_5f79                                ; $5f36: $28 $41

	ld sp, hl                                        ; $5f38: $f9
	ld a, h                                          ; $5f39: $7c
	db $e4                                           ; $5f3a: $e4
	ld a, a                                          ; $5f3b: $7f
	db $10                                           ; $5f3c: $10

jr_05a_5f3d:
	sbc h                                            ; $5f3d: $9c
	ld [hl+], a                                      ; $5f3e: $22
	ld b, h                                          ; $5f3f: $44
	xor d                                            ; $5f40: $aa
	ld e, h                                          ; $5f41: $5c
	ldh a, [$74]                                     ; $5f42: $f0 $74

jr_05a_5f44:
	ld [hl], h                                       ; $5f44: $74
	ld [hl], a                                       ; $5f45: $77
	db $fc                                           ; $5f46: $fc
	ld a, [$c37e]                                    ; $5f47: $fa $7e $c3
	add b                                            ; $5f4a: $80
	dec h                                            ; $5f4b: $25
	dec hl                                           ; $5f4c: $2b

jr_05a_5f4d:
	ld h, $3a                                        ; $5f4d: $26 $3a
	ld [$3841], sp                                   ; $5f4f: $08 $41 $38
	jr nc, jr_05a_5f84                               ; $5f52: $30 $30

	dec [hl]                                         ; $5f54: $35

jr_05a_5f55:
	ccf                                              ; $5f55: $3f
	inc a                                            ; $5f56: $3c
	jr nc, jr_05a_5fb9                               ; $5f57: $30 $60

	inc e                                            ; $5f59: $1c
	ld e, b                                          ; $5f5a: $58
	add sp, -$58                                     ; $5f5b: $e8 $a8
	sbc b                                            ; $5f5d: $98
	jr z, jr_05a_5f90                                ; $5f5e: $28 $30

	ret nc                                           ; $5f60: $d0

	inc h                                            ; $5f61: $24
	jr c, jr_05a_5fdc                                ; $5f62: $38 $78

	ret z                                            ; $5f64: $c8

	ld [$7058], sp                                   ; $5f65: $08 $58 $70
	ldh a, [rP1]                                     ; $5f68: $f0 $00
	sbc d                                            ; $5f6a: $9a
	ld d, l                                          ; $5f6b: $55
	and d                                            ; $5f6c: $a2
	ld b, l                                          ; $5f6d: $45
	ld a, [bc]                                       ; $5f6e: $0a

jr_05a_5f6f:
	inc d                                            ; $5f6f: $14
	ld e, a                                          ; $5f70: $5f
	or b                                             ; $5f71: $b0
	sbc h                                            ; $5f72: $9c
	and d                                            ; $5f73: $a2
	ld b, h                                          ; $5f74: $44
	adc d                                            ; $5f75: $8a
	ld [hl], c                                       ; $5f76: $71
	ret nz                                           ; $5f77: $c0

	ld a, a                                          ; $5f78: $7f

jr_05a_5f79:
	halt                                             ; $5f79: $76
	ei                                               ; $5f7a: $fb
	ld a, e                                          ; $5f7b: $7b
	db $f4                                           ; $5f7c: $f4
	ld [hl], l                                       ; $5f7d: $75
	adc $9e                                          ; $5f7e: $ce $9e
	ld b, c                                          ; $5f80: $41
	ld h, a                                          ; $5f81: $67
	xor [hl]                                         ; $5f82: $ae
	halt                                             ; $5f83: $76

jr_05a_5f84:
	call nc, $ce7f                                   ; $5f84: $d4 $7f $ce
	sbc [hl]                                         ; $5f87: $9e
	adc d                                            ; $5f88: $8a
	ld e, [hl]                                       ; $5f89: $5e

jr_05a_5f8a:
	ret nc                                           ; $5f8a: $d0

	ld a, e                                          ; $5f8b: $7b
	ldh [c], a                                       ; $5f8c: $e2
	sbc h                                            ; $5f8d: $9c
	xor b                                            ; $5f8e: $a8
	ld d, h                                          ; $5f8f: $54

jr_05a_5f90:
	xor b                                            ; $5f90: $a8
	ld h, d                                          ; $5f91: $62
	sub b                                            ; $5f92: $90
	ld a, [hl]                                       ; $5f93: $7e
	ldh [c], a                                       ; $5f94: $e2
	sbc c                                            ; $5f95: $99
	jr z, jr_05a_5fe8                                ; $5f96: $28 $50

	jr nz, jr_05a_5fea                               ; $5f98: $20 $50

	and d                                            ; $5f9a: $a2
	ld b, h                                          ; $5f9b: $44
	ld sp, hl                                        ; $5f9c: $f9
	sbc h                                            ; $5f9d: $9c
	ld [bc], a                                       ; $5f9e: $02
	inc b                                            ; $5f9f: $04
	ld [$114b], sp                                   ; $5fa0: $08 $4b $11
	sbc d                                            ; $5fa3: $9a
	ld [bc], a                                       ; $5fa4: $02
	nop                                              ; $5fa5: $00
	nop                                              ; $5fa6: $00
	ld de, $6320                                     ; $5fa7: $11 $20 $63
	sub b                                            ; $5faa: $90
	ldh [$dc], a                                     ; $5fab: $e0 $dc
	ld a, h                                          ; $5fad: $7c
	cp c                                             ; $5fae: $b9
	sbc [hl]                                         ; $5faf: $9e
	rra                                              ; $5fb0: $1f
	ld e, [hl]                                       ; $5fb1: $5e
	jp nc, $1f99                                     ; $5fb2: $d2 $99 $1f

	ccf                                              ; $5fb5: $3f
	ld a, l                                          ; $5fb6: $7d
	or $d8                                           ; $5fb7: $f6 $d8

jr_05a_5fb9:
	ldh [$fd], a                                     ; $5fb9: $e0 $fd
	sbc d                                            ; $5fbb: $9a
	inc bc                                           ; $5fbc: $03
	ld c, $38                                        ; $5fbd: $0e $38
	ldh [$fa], a                                     ; $5fbf: $e0 $fa
	ld [hl], c                                       ; $5fc1: $71
	and e                                            ; $5fc2: $a3
	ld a, b                                          ; $5fc3: $78
	ld c, b                                          ; $5fc4: $48
	ld [hl], l                                       ; $5fc5: $75
	and e                                            ; $5fc6: $a3
	ld h, d                                          ; $5fc7: $62
	sbc $9e                                          ; $5fc8: $de $9e
	xor d                                            ; $5fca: $aa
	ld h, e                                          ; $5fcb: $63
	ld [hl], b                                       ; $5fcc: $70
	ld a, a                                          ; $5fcd: $7f
	add b                                            ; $5fce: $80
	ld a, d                                          ; $5fcf: $7a
	cp h                                             ; $5fd0: $bc
	sbc [hl]                                         ; $5fd1: $9e
	ld d, c                                          ; $5fd2: $51
	ld e, [hl]                                       ; $5fd3: $5e
	jr nz, jr_05a_6045                               ; $5fd4: $20 $6f

	ld [hl+], a                                      ; $5fd6: $22
	ld e, d                                          ; $5fd7: $5a
	db $10                                           ; $5fd8: $10
	ld [hl], a                                       ; $5fd9: $77
	ld [hl+], a                                      ; $5fda: $22
	ld a, c                                          ; $5fdb: $79

jr_05a_5fdc:
	adc $f5                                          ; $5fdc: $ce $f5
	ld d, [hl]                                       ; $5fde: $56
	inc a                                            ; $5fdf: $3c
	add [hl]                                         ; $5fe0: $86
	ld b, a                                          ; $5fe1: $47
	ld e, l                                          ; $5fe2: $5d
	ld [hl], h                                       ; $5fe3: $74
	db $10                                           ; $5fe4: $10
	add b                                            ; $5fe5: $80
	adc e                                            ; $5fe6: $8b
	add [hl]                                         ; $5fe7: $86

jr_05a_5fe8:
	cp d                                             ; $5fe8: $ba
	ld l, e                                          ; $5fe9: $6b

jr_05a_5fea:
	ld l, [hl]                                       ; $5fea: $6e
	ld a, b                                          ; $5feb: $78
	ld h, b                                          ; $5fec: $60
	ret nz                                           ; $5fed: $c0

	pop bc                                           ; $5fee: $c1
	rst GetHLinHL                                          ; $5fef: $cf
	call c, $1050                                    ; $5ff0: $dc $50 $10
	db $10                                           ; $5ff3: $10
	or b                                             ; $5ff4: $b0
	ld h, b                                          ; $5ff5: $60
	and b                                            ; $5ff6: $a0
	and b                                            ; $5ff7: $a0
	jr nz, jr_05a_5f8a                               ; $5ff8: $20 $90

	sbc $10                                          ; $5ffa: $de $10
	rst SubAFromDE                                          ; $5ffc: $df
	ldh [$df], a                                     ; $5ffd: $e0 $df
	jr nz, jr_05a_607e                               ; $5fff: $20 $7d

	or $9d                                           ; $6001: $f6 $9d
	ld [$7b04], sp                                   ; $6003: $08 $04 $7b
	ld [hl-], a                                      ; $6006: $32
	ld h, e                                          ; $6007: $63
	jr nc, @-$66                                     ; $6008: $30 $98

	ld a, [hl+]                                      ; $600a: $2a
	dec d                                            ; $600b: $15
	ld a, [hl+]                                      ; $600c: $2a
	ld d, h                                          ; $600d: $54
	xor b                                            ; $600e: $a8
	ld b, b                                          ; $600f: $40
	add b                                            ; $6010: $80
	ld h, c                                          ; $6011: $61
	ret nc                                           ; $6012: $d0

	sbc l                                            ; $6013: $9d
	adc b                                            ; $6014: $88
	ld de, $a27a                                     ; $6015: $11 $7a $a2
	sbc l                                            ; $6018: $9d
	ld b, b                                          ; $6019: $40
	adc b                                            ; $601a: $88
	ld a, c                                          ; $601b: $79
	ld e, d                                          ; $601c: $5a
	ld h, e                                          ; $601d: $63
	add b                                            ; $601e: $80
	ld a, l                                          ; $601f: $7d
	ret nz                                           ; $6020: $c0

	sbc h                                            ; $6021: $9c
	ld b, b                                          ; $6022: $40
	ld [bc], a                                       ; $6023: $02
	dec d                                            ; $6024: $15
	ld sp, hl                                        ; $6025: $f9
	ld a, a                                          ; $6026: $7f
	ret nz                                           ; $6027: $c0

	sbc [hl]                                         ; $6028: $9e
	jr z, jr_05a_60a6                                ; $6029: $28 $7b

	ldh a, [$9e]                                     ; $602b: $f0 $9e
	add b                                            ; $602d: $80
	ld e, c                                          ; $602e: $59
	sub b                                            ; $602f: $90
	ld a, a                                          ; $6030: $7f
	ret nz                                           ; $6031: $c0

	ld a, a                                          ; $6032: $7f
	jp nc, $be7e                                     ; $6033: $d2 $7e $be

	ld e, d                                          ; $6036: $5a
	ret nc                                           ; $6037: $d0

	ld a, a                                          ; $6038: $7f
	sbc [hl]                                         ; $6039: $9e
	sbc l                                            ; $603a: $9d
	ld de, $6002                                     ; $603b: $11 $02 $60
	ld d, b                                          ; $603e: $50
	sbc e                                            ; $603f: $9b
	add d                                            ; $6040: $82
	ld bc, $4502                                     ; $6041: $01 $02 $45
	ld d, a                                          ; $6044: $57

jr_05a_6045:
	ld b, b                                          ; $6045: $40
	ld b, [hl]                                       ; $6046: $46
	nop                                              ; $6047: $00
	sbc $77                                          ; $6048: $de $77
	sbc e                                            ; $604a: $9b
	ld [hl], d                                       ; $604b: $72
	daa                                              ; $604c: $27
	ld [hl], d                                       ; $604d: $72
	ld [hl+], a                                      ; $604e: $22
	db $db                                           ; $604f: $db
	ld [hl], a                                       ; $6050: $77
	sbc d                                            ; $6051: $9a
	ld [hl+], a                                      ; $6052: $22
	inc hl                                           ; $6053: $23
	ld [hl+], a                                      ; $6054: $22
	ld [hl+], a                                      ; $6055: $22
	daa                                              ; $6056: $27
	db $dd                                           ; $6057: $dd
	ld [hl], a                                       ; $6058: $77
	sbc e                                            ; $6059: $9b
	ld [hl], d                                       ; $605a: $72
	inc hl                                           ; $605b: $23
	ld b, [hl]                                       ; $605c: $46
	ld [hl-], a                                      ; $605d: $32
	ld h, a                                          ; $605e: $67
	or $9d                                           ; $605f: $f6 $9d
	ld h, [hl]                                       ; $6061: $66
	ld b, e                                          ; $6062: $43
	ld h, a                                          ; $6063: $67
	or $9d                                           ; $6064: $f6 $9d
	ld b, e                                          ; $6066: $43
	inc [hl]                                         ; $6067: $34
	ld l, e                                          ; $6068: $6b
	or $9c                                           ; $6069: $f6 $9c
	ld [hl+], a                                      ; $606b: $22
	dec [hl]                                         ; $606c: $35
	ld h, h                                          ; $606d: $64
	ld [hl], e                                       ; $606e: $73
	or $7f                                           ; $606f: $f6 $7f
	rst FarCall                                          ; $6071: $f7
	sbc h                                            ; $6072: $9c
	ld [hl+], a                                      ; $6073: $22
	inc [hl]                                         ; $6074: $34
	ld b, e                                          ; $6075: $43
	ld [hl], a                                       ; $6076: $77
	call nz, $f77b                                   ; $6077: $c4 $7b $f7
	ld a, a                                          ; $607a: $7f
	call nz, Call_05a_449e                           ; $607b: $c4 $9e $44

jr_05a_607e:
	ld [hl], e                                       ; $607e: $73
	cp l                                             ; $607f: $bd
	db $dd                                           ; $6080: $dd
	ld [hl+], a                                      ; $6081: $22
	ld h, a                                          ; $6082: $67
	or $df                                           ; $6083: $f6 $df
	ld [hl], a                                       ; $6085: $77
	ld l, e                                          ; $6086: $6b
	or $7b                                           ; $6087: $f6 $7b
	db $d3                                           ; $6089: $d3
	ld [hl], e                                       ; $608a: $73
	or $29                                           ; $608b: $f6 $29
	adc c                                            ; $608d: $89
	reti                                             ; $608e: $d9


	rst $38                                          ; $608f: $ff
	ld sp, hl                                        ; $6090: $f9
	inc bc                                           ; $6091: $03
	ldh a, [$03]                                     ; $6092: $f0 $03
	ldh a, [$03]                                     ; $6094: $f0 $03
	ldh a, [$9e]                                     ; $6096: $f0 $9e
	cp $dd                                           ; $6098: $fe $dd
	db $fc                                           ; $609a: $fc
	rst $38                                          ; $609b: $ff
	add b                                            ; $609c: $80
	ld bc, $0603                                     ; $609d: $01 $03 $06
	inc b                                            ; $60a0: $04
	inc c                                            ; $60a1: $0c
	inc e                                            ; $60a2: $1c
	ret z                                            ; $60a3: $c8

jr_05a_60a4:
	add $a3                                          ; $60a4: $c6 $a3

jr_05a_60a6:
	ld d, c                                          ; $60a6: $51
	jr z, @-$6a                                      ; $60a7: $28 $94

	adc d                                            ; $60a9: $8a
	push hl                                          ; $60aa: $e5
	add a                                            ; $60ab: $87
	add c                                            ; $60ac: $81
	ret nz                                           ; $60ad: $c0

	ldh [$f0], a                                     ; $60ae: $e0 $f0
	ld a, b                                          ; $60b0: $78
	ld a, h                                          ; $60b1: $7c
	ld e, $a2                                        ; $60b2: $1e $a2
	ld d, c                                          ; $60b4: $51
	add hl, hl                                       ; $60b5: $29
	sub h                                            ; $60b6: $94
	jp z, Jump_05a_72e5                              ; $60b7: $ca $e5 $72

	ld sp, $7bc1                                     ; $60ba: $31 $c1 $7b
	ldh a, [c]                                       ; $60bd: $f2
	sub e                                            ; $60be: $93
	inc a                                            ; $60bf: $3c
	ld e, $0f                                        ; $60c0: $1e $0f
	rrca                                             ; $60c2: $0f
	ret nz                                           ; $60c3: $c0

	jr nz, jr_05a_60d6                               ; $60c4: $20 $10

	adc b                                            ; $60c6: $88
	ld b, h                                          ; $60c7: $44
	inc hl                                           ; $60c8: $23
	and c                                            ; $60c9: $a1
	ld d, b                                          ; $60ca: $50
	sbc $ff                                          ; $60cb: $de $ff
	sub d                                            ; $60cd: $92

jr_05a_60ce:
	ld a, a                                          ; $60ce: $7f
	ccf                                              ; $60cf: $3f
	rra                                              ; $60d0: $1f
	rra                                              ; $60d1: $1f
	adc a                                            ; $60d2: $8f
	nop                                              ; $60d3: $00
	nop                                              ; $60d4: $00
	rlca                                             ; $60d5: $07

jr_05a_60d6:
	jr jr_05a_6139                                   ; $60d6: $18 $61

	add c                                            ; $60d8: $81
	rra                                              ; $60d9: $1f
	ldh [$dc], a                                     ; $60da: $e0 $dc
	rst $38                                          ; $60dc: $ff
	sub l                                            ; $60dd: $95
	cp $f8                                           ; $60de: $fe $f8
	rst $38                                          ; $60e0: $ff
	jr nc, jr_05a_60a4                               ; $60e1: $30 $c1

	ld c, $77                                        ; $60e3: $0e $77
	cp h                                             ; $60e5: $bc
	ldh a, [$80]                                     ; $60e6: $f0 $80
	ld [hl], a                                       ; $60e8: $77
	xor b                                            ; $60e9: $a8
	sub b                                            ; $60ea: $90
	ld hl, sp-$3d                                    ; $60eb: $f8 $c3
	rrca                                             ; $60ed: $0f
	ld a, a                                          ; $60ee: $7f
	rst $38                                          ; $60ef: $ff
	jr c, jr_05a_60ce                                ; $60f0: $38 $dc

	ldh a, [$80]                                     ; $60f2: $f0 $80
	ld bc, $1907                                     ; $60f4: $01 $07 $19
	ld l, c                                          ; $60f7: $69
	rst $38                                          ; $60f8: $ff
	db $e3                                           ; $60f9: $e3
	ld a, e                                          ; $60fa: $7b
	di                                               ; $60fb: $f3
	rst SubAFromDE                                          ; $60fc: $df
	rst $38                                          ; $60fd: $ff
	add c                                            ; $60fe: $81
	rst FarCall                                          ; $60ff: $f7
	inc l                                            ; $6100: $2c
	ld e, e                                          ; $6101: $5b
	or l                                             ; $6102: $b5
	jp hl                                            ; $6103: $e9


	jp nc, $a7d3                                     ; $6104: $d2 $d3 $a7

	xor e                                            ; $6107: $ab
	di                                               ; $6108: $f3
	rst SubAFromBC                                          ; $6109: $e7
	rst GetHLinHL                                          ; $610a: $cf
	sbc a                                            ; $610b: $9f
	ccf                                              ; $610c: $3f
	ld a, $7e                                        ; $610d: $3e $7e
	ld a, [hl]                                       ; $610f: $7e
	inc b                                            ; $6110: $04
	and h                                            ; $6111: $a4
	ld h, h                                          ; $6112: $64
	call nz, $8ace                                   ; $6113: $c4 $ce $8a
	sub d                                            ; $6116: $92
	sub e                                            ; $6117: $93
	rst $38                                          ; $6118: $ff
	rst SubAFromDE                                          ; $6119: $df
	sbc a                                            ; $611a: $9f
	ccf                                              ; $611b: $3f
	ccf                                              ; $611c: $3f
	sbc $7f                                          ; $611d: $de $7f
	sbc e                                            ; $611f: $9b
	jr jr_05a_612e                                   ; $6120: $18 $0c

	ld c, d                                          ; $6122: $4a
	ld c, c                                          ; $6123: $49
	sbc $68                                          ; $6124: $de $68
	sbc d                                            ; $6126: $9a
	ld [hl], h                                       ; $6127: $74
	rst $38                                          ; $6128: $ff
	rst $38                                          ; $6129: $ff
	cp a                                             ; $612a: $bf
	cp a                                             ; $612b: $bf
	sbc $9f                                          ; $612c: $de $9f

jr_05a_612e:
	sub l                                            ; $612e: $95
	adc a                                            ; $612f: $8f
	ret nz                                           ; $6130: $c0

	ld [hl], b                                       ; $6131: $70
	jr c, @+$1e                                      ; $6132: $38 $1c

	adc h                                            ; $6134: $8c
	ld h, h                                          ; $6135: $64
	jr nc, @+$1a                                     ; $6136: $30 $18

	inc bc                                           ; $6138: $03

jr_05a_6139:
	ld [hl], a                                       ; $6139: $77
	ld [hl], b                                       ; $613a: $70
	sbc l                                            ; $613b: $9d
	ld hl, sp-$02                                    ; $613c: $f8 $fe
	ld a, e                                          ; $613e: $7b
	adc d                                            ; $613f: $8a
	ld a, a                                          ; $6140: $7f
	adc c                                            ; $6141: $89
	rst SubAFromDE                                          ; $6142: $df
	ccf                                              ; $6143: $3f
	rst SubAFromDE                                          ; $6144: $df
	rra                                              ; $6145: $1f
	sbc h                                            ; $6146: $9c
	add b                                            ; $6147: $80
	ret nz                                           ; $6148: $c0

	ret nz                                           ; $6149: $c0

	sbc $60                                          ; $614a: $de $60
	rst SubAFromDE                                          ; $614c: $df
	jr nc, jr_05a_6196                               ; $614d: $30 $47

	jr nc, @+$01                                     ; $614f: $30 $ff

	sbc l                                            ; $6151: $9d
	ld a, [hl+]                                      ; $6152: $2a
	rst $38                                          ; $6153: $ff
	ld a, e                                          ; $6154: $7b
	jp c, $f063                                      ; $6155: $da $63 $f0

	sbc b                                            ; $6158: $98
	ccf                                              ; $6159: $3f
	rrca                                             ; $615a: $0f
	rst $38                                          ; $615b: $ff
	rst $38                                          ; $615c: $ff
	xor d                                            ; $615d: $aa
	ld b, b                                          ; $615e: $40
	cp $53                                           ; $615f: $fe $53
	nop                                              ; $6161: $00
	sbc e                                            ; $6162: $9b
	dec a                                            ; $6163: $3d
	nop                                              ; $6164: $00
	add b                                            ; $6165: $80
	push af                                          ; $6166: $f5
	ld e, e                                          ; $6167: $5b
	ldh a, [$9d]                                     ; $6168: $f0 $9d
	ld a, [$f655]                                    ; $616a: $fa $55 $f6
	sbc $ff                                          ; $616d: $de $ff
	sbc [hl]                                         ; $616f: $9e
	and c                                            ; $6170: $a1
	push af                                          ; $6171: $f5
	ld [hl], a                                       ; $6172: $77
	ldh [$f5], a                                     ; $6173: $e0 $f5
	sbc e                                            ; $6175: $9b
	db $fc                                           ; $6176: $fc
	ret nc                                           ; $6177: $d0

	db $fc                                           ; $6178: $fc
	add b                                            ; $6179: $80
	cp $9e                                           ; $617a: $fe $9e
	ld bc, $96fa                                     ; $617c: $01 $fa $96
	ld bc, $542c                                     ; $617f: $01 $2c $54
	ld d, e                                          ; $6182: $53
	ld l, d                                          ; $6183: $6a
	and l                                            ; $6184: $a5
	and l                                            ; $6185: $a5
	ldh [$7a], a                                     ; $6186: $e0 $7a
	ld a, e                                          ; $6188: $7b
	dec [hl]                                         ; $6189: $35
	sbc b                                            ; $618a: $98
	ld [hl], a                                       ; $618b: $77
	di                                               ; $618c: $f3
	di                                               ; $618d: $f3
	or e                                             ; $618e: $b3
	or c                                             ; $618f: $b1
	ld [hl], d                                       ; $6190: $72
	ld sp, $507b                                     ; $6191: $31 $7b $50
	sbc b                                            ; $6194: $98
	ld b, [hl]                                       ; $6195: $46

jr_05a_6196:
	and e                                            ; $6196: $a3
	ld d, c                                          ; $6197: $51
	rrca                                             ; $6198: $0f
	rrca                                             ; $6199: $0f
	rlca                                             ; $619a: $07
	inc bc                                           ; $619b: $03
	ld [hl], a                                       ; $619c: $77
	ld c, h                                          ; $619d: $4c
	add e                                            ; $619e: $83
	sbc b                                            ; $619f: $98
	ld e, h                                          ; $61a0: $5c
	xor h                                            ; $61a1: $ac
	ld e, [hl]                                       ; $61a2: $5e
	ld [hl], $1b                                     ; $61a3: $36 $1b
	dec c                                            ; $61a5: $0d
	adc [hl]                                         ; $61a6: $8e
	rlca                                             ; $61a7: $07
	add e                                            ; $61a8: $83
	jp $f9e1                                         ; $61a9: $c3 $e1 $f9


	db $fc                                           ; $61ac: $fc
	cp $7b                                           ; $61ad: $fe $7b
	or b                                             ; $61af: $b0
	ld e, b                                          ; $61b0: $58
	jr z, @+$16                                      ; $61b1: $28 $14

	ld [$8304], sp                                   ; $61b3: $08 $04 $83
	pop hl                                           ; $61b6: $e1
	rst GetHLinHL                                          ; $61b7: $cf
	rst SubAFromBC                                          ; $61b8: $e7
	rst FarCall                                          ; $61b9: $f7
	ei                                               ; $61ba: $fb
	ld a, e                                          ; $61bb: $7b
	inc sp                                           ; $61bc: $33
	sbc d                                            ; $61bd: $9a
	rra                                              ; $61be: $1f
	ld h, b                                          ; $61bf: $60
	db $10                                           ; $61c0: $10
	inc c                                            ; $61c1: $0c
	inc bc                                           ; $61c2: $03
	cp $6e                                           ; $61c3: $fe $6e
	ret nz                                           ; $61c5: $c0

	sbc $ff                                          ; $61c6: $de $ff
	sbc b                                            ; $61c8: $98
	ld bc, $3b06                                     ; $61c9: $01 $06 $3b
	call z, $1ce0                                    ; $61cc: $cc $e0 $1c
	inc bc                                           ; $61cf: $03
	ld a, e                                          ; $61d0: $7b
	adc b                                            ; $61d1: $88

Call_05a_61d2:
	sbc l                                            ; $61d2: $9d
	db $fc                                           ; $61d3: $fc
	di                                               ; $61d4: $f3
	db $dd                                           ; $61d5: $dd
	rst $38                                          ; $61d6: $ff
	sub h                                            ; $61d7: $94
	sub d                                            ; $61d8: $92
	ld b, e                                          ; $61d9: $43
	add e                                            ; $61da: $83
	ld b, $1a                                        ; $61db: $06 $1a
	ld h, e                                          ; $61dd: $63
	add e                                            ; $61de: $83
	ld [hl], d                                       ; $61df: $72
	rst AddAOntoHL                                          ; $61e0: $ef
	cp [hl]                                          ; $61e1: $be
	ld a, [hl]                                       ; $61e2: $7e
	call c, $96ff                                    ; $61e3: $dc $ff $96
	ldh a, [c]                                       ; $61e6: $f2
	ld b, h                                          ; $61e7: $44
	ld b, [hl]                                       ; $61e8: $46
	adc h                                            ; $61e9: $8c
	sub h                                            ; $61ea: $94
	inc h                                            ; $61eb: $24
	add $0f                                          ; $61ec: $c6 $0f
	ld a, [hl]                                       ; $61ee: $7e
	ld [hl], d                                       ; $61ef: $72
	ld c, d                                          ; $61f0: $4a
	rst SubAFromDE                                          ; $61f1: $df
	db $fc                                           ; $61f2: $fc
	sbc [hl]                                         ; $61f3: $9e
	sub e                                            ; $61f4: $93
	sbc $25                                          ; $61f5: $de $25
	rst SubAFromDE                                          ; $61f7: $df
	ld a, [hl+]                                      ; $61f8: $2a
	sbc l                                            ; $61f9: $9d
	ld c, d                                          ; $61fa: $4a
	ld c, h                                          ; $61fb: $4c
	halt                                             ; $61fc: $76
	and e                                            ; $61fd: $a3
	db $dd                                           ; $61fe: $dd
	rst $38                                          ; $61ff: $ff
	sub [hl]                                         ; $6200: $96
	ld d, h                                          ; $6201: $54
	inc c                                            ; $6202: $0c
	inc c                                            ; $6203: $0c
	adc [hl]                                         ; $6204: $8e
	adc [hl]                                         ; $6205: $8e
	add l                                            ; $6206: $85
	adc c                                            ; $6207: $89
	sbc b                                            ; $6208: $98
	adc a                                            ; $6209: $8f
	db $dd                                           ; $620a: $dd
	rst JumpTable                                          ; $620b: $c7
	sbc $cf                                          ; $620c: $de $cf
	sbc b                                            ; $620e: $98
	inc d                                            ; $620f: $14
	ld a, [hl+]                                      ; $6210: $2a
	ld h, $37                                        ; $6211: $26 $37
	scf                                              ; $6213: $37
	ccf                                              ; $6214: $3f
	inc sp                                           ; $6215: $33
	ld a, d                                          ; $6216: $7a
	and b                                            ; $6217: $a0
	sbc b                                            ; $6218: $98
	rst SubAFromDE                                          ; $6219: $df
	call $c4cd                                       ; $621a: $cd $cd $c4
	add $e6                                          ; $621d: $c6 $e6
	rra                                              ; $621f: $1f
	db $dd                                           ; $6220: $dd
	rrca                                             ; $6221: $0f
	rst SubAFromDE                                          ; $6222: $df
	adc a                                            ; $6223: $8f
	sbc d                                            ; $6224: $9a
	rst GetHLinHL                                          ; $6225: $cf
	db $10                                           ; $6226: $10
	sbc b                                            ; $6227: $98
	ret c                                            ; $6228: $d8

	ret c                                            ; $6229: $d8

	sbc $f8                                          ; $622a: $de $f8
	sbc [hl]                                         ; $622c: $9e
	ld a, b                                          ; $622d: $78
	ld bc, $4be0                                     ; $622e: $01 $e0 $4b
	ldh a, [$9e]                                     ; $6231: $f0 $9e
	ld a, [$ffde]                                    ; $6233: $fa $de $ff
	sbc [hl]                                         ; $6236: $9e
	db $f4                                           ; $6237: $f4
	ld e, e                                          ; $6238: $5b
	ldh a, [$99]                                     ; $6239: $f0 $99
	xor b                                            ; $623b: $a8
	rst $38                                          ; $623c: $ff
	ldh a, [rP1]                                     ; $623d: $f0 $00
	nop                                              ; $623f: $00
	ld [$8056], a                                    ; $6240: $ea $56 $80
	rst $38                                          ; $6243: $ff
	sbc e                                            ; $6244: $9b
	ld a, [bc]                                       ; $6245: $0a
	dec d                                            ; $6246: $15
	ld a, [$f5f8]                                    ; $6247: $fa $f8 $f5
	sbc h                                            ; $624a: $9c
	ld [bc], a                                       ; $624b: $02
	ld d, l                                          ; $624c: $55
	xor d                                            ; $624d: $aa
	ld h, d                                          ; $624e: $62

jr_05a_624f:
	sbc l                                            ; $624f: $9d
	sbc $01                                          ; $6250: $de $01
	sbc e                                            ; $6252: $9b
	ld d, l                                          ; $6253: $55
	xor e                                            ; $6254: $ab
	ld d, l                                          ; $6255: $55
	and c                                            ; $6256: $a1
	ld [hl], a                                       ; $6257: $77
	ld hl, sp-$23                                    ; $6258: $f8 $dd
	ld bc, $0080                                     ; $625a: $01 $80 $00
	ld [hl], b                                       ; $625d: $70
	xor l                                            ; $625e: $ad
	ld a, [hl-]                                      ; $625f: $3a
	inc h                                            ; $6260: $24
	and [hl]                                         ; $6261: $a6
	inc hl                                           ; $6262: $23

Jump_05a_6263:
	ld de, $b9d3                                     ; $6263: $11 $d3 $b9
	jr c, jr_05a_6294                                ; $6266: $38 $2c

	ld l, $27                                        ; $6268: $2e $27
	or a                                             ; $626a: $b7
	or e                                             ; $626b: $b3
	cp c                                             ; $626c: $b9
	ld l, h                                          ; $626d: $6c
	ld [hl-], a                                      ; $626e: $32
	dec e                                            ; $626f: $1d
	adc e                                            ; $6270: $8b
	ld b, l                                          ; $6271: $45
	dec h                                            ; $6272: $25
	sub d                                            ; $6273: $92
	reti                                             ; $6274: $d9


	ldh a, [$fc]                                     ; $6275: $f0 $fc
	cp $7f                                           ; $6277: $fe $7f
	ld a, $9e                                        ; $6279: $3e $9e
	ld a, [hl]                                       ; $627b: $7e
	jp c, $c782                                      ; $627c: $da $82 $c7

	ld h, e                                          ; $627f: $63
	pop af                                           ; $6280: $f1
	jr c, jr_05a_624f                                ; $6281: $38 $cc

	ei                                               ; $6283: $fb
	cp $ff                                           ; $6284: $fe $ff
	dec a                                            ; $6286: $3d
	ld e, $0f                                        ; $6287: $1e $0f
	rst JumpTable                                          ; $6289: $c7
	di                                               ; $628a: $f3
	inc a                                            ; $628b: $3c
	rlca                                             ; $628c: $07
	ld bc, $dc70                                     ; $628d: $01 $70 $dc
	ldh a, [$fc]                                     ; $6290: $f0 $fc
	ld a, a                                          ; $6292: $7f
	ccf                                              ; $6293: $3f

jr_05a_6294:
	rrca                                             ; $6294: $0f
	jp $e38f                                         ; $6295: $c3 $8f $e3


	ccf                                              ; $6298: $3f
	adc a                                            ; $6299: $8f
	jp $db7b                                         ; $629a: $c3 $7b $db


	ld a, a                                          ; $629d: $7f
	jp c, $f37d                                      ; $629e: $da $7d $f3

	sbc [hl]                                         ; $62a1: $9e
	adc a                                            ; $62a2: $8f
	db $dd                                           ; $62a3: $dd
	rst $38                                          ; $62a4: $ff
	sbc d                                            ; $62a5: $9a
	jp $f0e0                                         ; $62a6: $c3 $e0 $f0


	db $fc                                           ; $62a9: $fc
	ld a, [hl]                                       ; $62aa: $7e
	ld [hl], a                                       ; $62ab: $77
	ld c, a                                          ; $62ac: $4f
	rst SubAFromDE                                          ; $62ad: $df
	ret nz                                           ; $62ae: $c0

	sbc e                                            ; $62af: $9b
	pop de                                           ; $62b0: $d1
	ld sp, hl                                        ; $62b1: $f9
	ld sp, hl                                        ; $62b2: $f9
	jp hl                                            ; $62b3: $e9


	ld [hl], l                                       ; $62b4: $75
	ld h, b                                          ; $62b5: $60
	sub e                                            ; $62b6: $93
	ld l, a                                          ; $62b7: $6f
	daa                                              ; $62b8: $27
	daa                                              ; $62b9: $27
	scf                                              ; $62ba: $37
	rra                                              ; $62bb: $1f
	db $fc                                           ; $62bc: $fc
	ldh a, [$8d]                                     ; $62bd: $f0 $8d
	ld a, [hl]                                       ; $62bf: $7e
	ld a, [$c7ce]                                    ; $62c0: $fa $ce $c7
	db $dd                                           ; $62c3: $dd
	rst $38                                          ; $62c4: $ff
	sub e                                            ; $62c5: $93
	add a                                            ; $62c6: $87
	scf                                              ; $62c7: $37
	ld a, e                                          ; $62c8: $7b
	ld a, c                                          ; $62c9: $79
	dec [hl]                                         ; $62ca: $35
	ld b, l                                          ; $62cb: $45
	add l                                            ; $62cc: $85
	ld a, [bc]                                       ; $62cd: $0a
	ld [de], a                                       ; $62ce: $12
	ld [de], a                                       ; $62cf: $12
	ld de, $de25                                     ; $62d0: $11 $25 $de
	cp $dd                                           ; $62d3: $fe $dd
	rst $38                                          ; $62d5: $ff
	sbc [hl]                                         ; $62d6: $9e
	ei                                               ; $62d7: $fb
	sbc $54                                          ; $62d8: $de $54
	rst SubAFromDE                                          ; $62da: $df
	ld l, b                                          ; $62db: $68
	sbc h                                            ; $62dc: $9c
	ld c, b                                          ; $62dd: $48
	ld c, c                                          ; $62de: $49
	ld c, c                                          ; $62df: $49
	reti                                             ; $62e0: $d9


	rst $38                                          ; $62e1: $ff
	call c, $9c88                                    ; $62e2: $dc $88 $9c
	sbc h                                            ; $62e5: $9c
	inc e                                            ; $62e6: $1c
	inc a                                            ; $62e7: $3c
	sbc $df                                          ; $62e8: $de $df
	ld a, c                                          ; $62ea: $79
	ld d, d                                          ; $62eb: $52
	sub l                                            ; $62ec: $95
	rst FarCall                                          ; $62ed: $f7
	rst SubAFromBC                                          ; $62ee: $e7
	sub a                                            ; $62ef: $97
	sbc e                                            ; $62f0: $9b
	ld e, e                                          ; $62f1: $5b
	ld c, e                                          ; $62f2: $4b
	ld c, c                                          ; $62f3: $49
	ld l, c                                          ; $62f4: $69
	ld l, c                                          ; $62f5: $69
	pop hl                                           ; $62f6: $e1
	sbc $e2                                          ; $62f7: $de $e2
	sbc [hl]                                         ; $62f9: $9e
	ldh a, [c]                                       ; $62fa: $f2
	sbc $f3                                          ; $62fb: $de $f3
	sbc h                                            ; $62fd: $9c
	ld sp, hl                                        ; $62fe: $f9
	rst GetHLinHL                                          ; $62ff: $cf
	rst GetHLinHL                                          ; $6300: $cf
	db $dd                                           ; $6301: $dd
	rst AddAOntoHL                                          ; $6302: $ef
	rst SubAFromDE                                          ; $6303: $df
	rst $38                                          ; $6304: $ff
	rst SubAFromDE                                          ; $6305: $df
	ld a, b                                          ; $6306: $78
	db $dd                                           ; $6307: $dd
	jr c, @-$1f                                      ; $6308: $38 $df

	jr jr_05a_630e                                   ; $630a: $18 $02

	ret nz                                           ; $630c: $c0

	inc bc                                           ; $630d: $03

jr_05a_630e:
	ldh a, [$9d]                                     ; $630e: $f0 $9d
	ld a, [$57d1]                                    ; $6310: $fa $d1 $57
	ldh a, [$9b]                                     ; $6313: $f0 $9b
	ldh [$80], a                                     ; $6315: $e0 $80
	ld a, [hl+]                                      ; $6317: $2a
	ld d, a                                          ; $6318: $57
	ld d, a                                          ; $6319: $57
	ldh a, [$9c]                                     ; $631a: $f0 $9c
	jr z, jr_05a_631e                                ; $631c: $28 $00

jr_05a_631e:
	xor d                                            ; $631e: $aa
	ld d, e                                          ; $631f: $53
	ret nc                                           ; $6320: $d0

	sbc l                                            ; $6321: $9d
	add b                                            ; $6322: $80
	ld e, b                                          ; $6323: $58
	db $dd                                           ; $6324: $dd
	rst $38                                          ; $6325: $ff
	sbc l                                            ; $6326: $9d
	push af                                          ; $6327: $f5
	ld [bc], a                                       ; $6328: $02
	ld sp, hl                                        ; $6329: $f9
	sub l                                            ; $632a: $95
	sub b                                            ; $632b: $90
	adc b                                            ; $632c: $88
	call z, $c9ca                                    ; $632d: $cc $ca $c9
	db $e4                                           ; $6330: $e4
	and $b7                                          ; $6331: $e6 $b7
	db $fd                                           ; $6333: $fd
	cp $de                                           ; $6334: $fe $de
	ld a, a                                          ; $6336: $7f
	rst SubAFromDE                                          ; $6337: $df
	ccf                                              ; $6338: $3f
	sub c                                            ; $6339: $91
	dec e                                            ; $633a: $1d
	cp h                                             ; $633b: $bc
	ld l, d                                          ; $633c: $6a
	or a                                             ; $633d: $b7
	ld e, l                                          ; $633e: $5d
	xor a                                            ; $633f: $af
	ld h, e                                          ; $6340: $63
	rra                                              ; $6341: $1f
	add a                                            ; $6342: $87
	di                                               ; $6343: $f3
	db $dd                                           ; $6344: $dd
	ld l, [hl]                                       ; $6345: $6e
	or e                                             ; $6346: $b3
	call c, $6e78                                    ; $6347: $dc $78 $6e
	ld a, b                                          ; $634a: $78
	ld e, d                                          ; $634b: $5a
	sub h                                            ; $634c: $94
	sbc l                                            ; $634d: $9d
	ld a, [hl]                                       ; $634e: $7e
	set 7, a                                         ; $634f: $cb $ff
	rst $38                                          ; $6351: $ff
	add b                                            ; $6352: $80
	ret nz                                           ; $6353: $c0

	db $e3                                           ; $6354: $e3
	rst FarCall                                          ; $6355: $f7
	rst $38                                          ; $6356: $ff
	ld a, h                                          ; $6357: $7c
	ld [hl], h                                       ; $6358: $74
	ld l, b                                          ; $6359: $68
	sbc l                                            ; $635a: $9d
	rst SubAFromDE                                          ; $635b: $df
	rst FarCall                                          ; $635c: $f7
	db $dd                                           ; $635d: $dd
	rst $38                                          ; $635e: $ff
	sbc h                                            ; $635f: $9c
	ccf                                              ; $6360: $3f
	nop                                              ; $6361: $00
	ldh [$72], a                                     ; $6362: $e0 $72
	ld e, h                                          ; $6364: $5c
	reti                                             ; $6365: $d9


	rst $38                                          ; $6366: $ff
	ld [hl], l                                       ; $6367: $75
	dec hl                                           ; $6368: $2b
	db $fd                                           ; $6369: $fd
	sbc d                                            ; $636a: $9a
	ld sp, hl                                        ; $636b: $f9
	db $fd                                           ; $636c: $fd
	db $f4                                           ; $636d: $f4
	cp $fa                                           ; $636e: $fe $fa
	ld a, d                                          ; $6370: $7a
	xor c                                            ; $6371: $a9
	sbc d                                            ; $6372: $9a
	rla                                              ; $6373: $17
	inc de                                           ; $6374: $13
	dec de                                           ; $6375: $1b
	add hl, bc                                       ; $6376: $09
	dec c                                            ; $6377: $0d
	ld a, c                                          ; $6378: $79
	dec a                                            ; $6379: $3d
	halt                                             ; $637a: $76
	rst JumpTable                                          ; $637b: $c7
	adc b                                            ; $637c: $88
	cp a                                             ; $637d: $bf
	ld a, [hl]                                       ; $637e: $7e
	ld a, a                                          ; $637f: $7f
	ld a, l                                          ; $6380: $7d
	ld a, c                                          ; $6381: $79
	ld [hl], c                                       ; $6382: $71
	xor c                                            ; $6383: $a9
	xor c                                            ; $6384: $a9
	pop af                                           ; $6385: $f1
	db $d3                                           ; $6386: $d3
	db $d3                                           ; $6387: $d3
	rst JumpTable                                          ; $6388: $c7
	ld h, $26                                        ; $6389: $26 $26
	ld c, [hl]                                       ; $638b: $4e
	ld c, d                                          ; $638c: $4a
	ld a, [bc]                                       ; $638d: $0a
	adc h                                            ; $638e: $8c
	sbc h                                            ; $638f: $9c
	inc e                                            ; $6390: $1c
	ei                                               ; $6391: $fb
	ei                                               ; $6392: $fb
	di                                               ; $6393: $f3
	sbc $f7                                          ; $6394: $de $f7
	rst SubAFromDE                                          ; $6396: $df
	rst SubAFromBC                                          ; $6397: $e7
	sub a                                            ; $6398: $97
	cp c                                             ; $6399: $b9
	ld a, d                                          ; $639a: $7a
	ld a, [hl-]                                      ; $639b: $3a
	dec e                                            ; $639c: $1d
	ld a, $2c                                        ; $639d: $3e $2c
	ld l, h                                          ; $639f: $6c
	ld [hl], h                                       ; $63a0: $74
	db $dd                                           ; $63a1: $dd
	rst AddAOntoHL                                          ; $63a2: $ef
	sub c                                            ; $63a3: $91
	rst GetHLinHL                                          ; $63a4: $cf
	rst SubAFromDE                                          ; $63a5: $df
	sbc a                                            ; $63a6: $9f

jr_05a_63a7:
	sub a                                            ; $63a7: $97
	inc a                                            ; $63a8: $3c
	ld a, h                                          ; $63a9: $7c
	db $fd                                           ; $63aa: $fd
	db $fd                                           ; $63ab: $fd
	push bc                                          ; $63ac: $c5
	add l                                            ; $63ad: $85
	adc a                                            ; $63ae: $8f
	sbc a                                            ; $63af: $9f
	rst SubAFromBC                                          ; $63b0: $e7
	rst JumpTable                                          ; $63b1: $c7
	db $dd                                           ; $63b2: $dd
	add a                                            ; $63b3: $87
	rst SubAFromDE                                          ; $63b4: $df
	add [hl]                                         ; $63b5: $86
	sbc [hl]                                         ; $63b6: $9e
	pop hl                                           ; $63b7: $e1
	sbc $f1                                          ; $63b8: $de $f1
	db $dd                                           ; $63ba: $dd
	ei                                               ; $63bb: $fb
	sbc d                                            ; $63bc: $9a
	cp c                                             ; $63bd: $b9
	sbc e                                            ; $63be: $9b
	dec de                                           ; $63bf: $1b
	rra                                              ; $63c0: $1f
	ld e, $de                                        ; $63c1: $1e $de
	ld c, $d9                                        ; $63c3: $0e $d9
	rst $38                                          ; $63c5: $ff
	sbc [hl]                                         ; $63c6: $9e
	jr jr_05a_63a7                                   ; $63c7: $18 $de

	ld [$e002], sp                                   ; $63c9: $08 $02 $e0
	inc bc                                           ; $63cc: $03
	ldh a, [$03]                                     ; $63cd: $f0 $03
	ldh a, [rSCX]                                    ; $63cf: $f0 $43
	ldh a, [$9e]                                     ; $63d1: $f0 $9e
	push hl                                          ; $63d3: $e5
	db $dd                                           ; $63d4: $dd
	rst $38                                          ; $63d5: $ff
	ld a, d                                          ; $63d6: $7a
	dec b                                            ; $63d7: $05
	ld sp, hl                                        ; $63d8: $f9
	sbc [hl]                                         ; $63d9: $9e
	ld e, a                                          ; $63da: $5f
	db $dd                                           ; $63db: $dd
	rst $38                                          ; $63dc: $ff
	sbc d                                            ; $63dd: $9a
	xor d                                            ; $63de: $aa
	call nc, $0cfe                                   ; $63df: $d4 $fe $0c
	ld b, $6e                                        ; $63e2: $06 $6e
	xor l                                            ; $63e4: $ad
	db $dd                                           ; $63e5: $dd
	rst $38                                          ; $63e6: $ff
	sbc b                                            ; $63e7: $98
	ld [$0054], a                                    ; $63e8: $ea $54 $00
	nop                                              ; $63eb: $00
	ld a, a                                          ; $63ec: $7f
	rra                                              ; $63ed: $1f
	ld bc, $f063                                     ; $63ee: $01 $63 $f0

jr_05a_63f1:
	add e                                            ; $63f1: $83
	ld e, a                                          ; $63f2: $5f
	cpl                                              ; $63f3: $2f
	rla                                              ; $63f4: $17
	inc c                                            ; $63f5: $0c
	nop                                              ; $63f6: $00
	jp $8707                                         ; $63f7: $c3 $07 $87


	ld h, d                                          ; $63fa: $62
	jr nc, jr_05a_6415                               ; $63fb: $30 $18

	ld [$ffef], sp                                   ; $63fd: $08 $ef $ff
	dec de                                           ; $6400: $1b
	inc a                                            ; $6401: $3c
	or l                                             ; $6402: $b5
	db $f4                                           ; $6403: $f4
	xor $34                                          ; $6404: $ee $34
	di                                               ; $6406: $f3
	cp $9f                                           ; $6407: $fe $9f
	cp c                                             ; $6409: $b9
	cp h                                             ; $640a: $bc
	ld a, h                                          ; $640b: $7c
	ld [hl], $34                                     ; $640c: $36 $34
	sbc $ff                                          ; $640e: $de $ff
	ld a, a                                          ; $6410: $7f
	dec d                                            ; $6411: $15
	sbc h                                            ; $6412: $9c
	adc a                                            ; $6413: $8f
	rrca                                             ; $6414: $0f

jr_05a_6415:
	rrca                                             ; $6415: $0f
	ld b, a                                          ; $6416: $47
	sub b                                            ; $6417: $90
	ld a, c                                          ; $6418: $79
	dec h                                            ; $6419: $25
	ld l, a                                          ; $641a: $6f
	and b                                            ; $641b: $a0
	ld l, b                                          ; $641c: $68
	ld h, a                                          ; $641d: $67
	adc a                                            ; $641e: $8f
	rst AddAOntoHL                                          ; $641f: $ef
	db $e4                                           ; $6420: $e4
	ret nz                                           ; $6421: $c0

	ret nz                                           ; $6422: $c0

	ld b, b                                          ; $6423: $40
	ld b, b                                          ; $6424: $40
	nop                                              ; $6425: $00
	nop                                              ; $6426: $00
	sub h                                            ; $6427: $94
	sbc b                                            ; $6428: $98
	ret z                                            ; $6429: $c8

	ret nz                                           ; $642a: $c0

	ret nc                                           ; $642b: $d0

	ret c                                            ; $642c: $d8

	call c, Call_05a_79dd                            ; $642d: $dc $dd $79
	cp h                                             ; $6430: $bc
	sbc $7f                                          ; $6431: $de $7f
	rst SubAFromDE                                          ; $6433: $df
	ld [hl], a                                       ; $6434: $77
	sbc h                                            ; $6435: $9c
	ld d, d                                          ; $6436: $52
	ldh [c], a                                       ; $6437: $e2
	and c                                            ; $6438: $a1
	ld [hl], a                                       ; $6439: $77
	rst SubAFromBC                                          ; $643a: $e7
	sub c                                            ; $643b: $91
	jr nz, jr_05a_63f1                               ; $643c: $20 $b3

	inc hl                                           ; $643e: $23
	ld h, c                                          ; $643f: $61
	ld b, b                                          ; $6440: $40
	ld b, b                                          ; $6441: $40
	ret nz                                           ; $6442: $c0

	ret nz                                           ; $6443: $c0

	ldh [rIE], a                                     ; $6444: $e0 $ff
	ld a, a                                          ; $6446: $7f
	ld b, a                                          ; $6447: $47
	ret nz                                           ; $6448: $c0

jr_05a_6449:
	jr nz, jr_05a_6449                               ; $6449: $20 $fe

	sbc h                                            ; $644b: $9c
	add h                                            ; $644c: $84
	call nz, $73c0                                   ; $644d: $c4 $c0 $73
	ld hl, sp-$22                                    ; $6450: $f8 $de
	rst $38                                          ; $6452: $ff
	sbc b                                            ; $6453: $98
	rrca                                             ; $6454: $0f
	ld a, e                                          ; $6455: $7b
	dec [hl]                                         ; $6456: $35
	ld [bc], a                                       ; $6457: $02
	ld bc, $0c0c                                     ; $6458: $01 $0c $0c
	ld l, [hl]                                       ; $645b: $6e
	rst GetHLinHL                                          ; $645c: $cf
	call c, $9cff                                    ; $645d: $dc $ff $9c
	ld a, a                                          ; $6460: $7f
	xor e                                            ; $6461: $ab
	ld e, a                                          ; $6462: $5f
	inc bc                                           ; $6463: $03
	db $10                                           ; $6464: $10
	inc bc                                           ; $6465: $03
	ldh a, [$03]                                     ; $6466: $f0 $03
	ldh a, [rOCPD]                                   ; $6468: $f0 $6b
	ldh a, [$9e]                                     ; $646a: $f0 $9e
	db $fd                                           ; $646c: $fd
	sbc $ff                                          ; $646d: $de $ff
	sbc [hl]                                         ; $646f: $9e
	db $eb                                           ; $6470: $eb
	ld e, a                                          ; $6471: $5f
	ldh a, [$98]                                     ; $6472: $f0 $98
	xor d                                            ; $6474: $aa
	ld d, b                                          ; $6475: $50
	ldh [$f8], a                                     ; $6476: $e0 $f8
	rst $38                                          ; $6478: $ff
	xor d                                            ; $6479: $aa
	db $fd                                           ; $647a: $fd
	ld sp, hl                                        ; $647b: $f9
	sbc [hl]                                         ; $647c: $9e
	ldh a, [$71]                                     ; $647d: $f0 $71
	rst JumpTable                                          ; $647f: $c7
	ld h, l                                          ; $6480: $65
	jp nz, $9eef                                     ; $6481: $c2 $ef $9e

	inc c                                            ; $6484: $0c
	db $dd                                           ; $6485: $dd
	inc b                                            ; $6486: $04
	ld a, a                                          ; $6487: $7f
	ld b, h                                          ; $6488: $44
	ld a, [hl]                                       ; $6489: $7e
	rst JumpTable                                          ; $648a: $c7
	db $dd                                           ; $648b: $dd
	inc b                                            ; $648c: $04
	rst SubAFromDE                                          ; $648d: $df
	ld [$109d], sp                                   ; $648e: $08 $9d $10
	inc e                                            ; $6491: $1c
	ld [hl], d                                       ; $6492: $72
	ld a, [bc]                                       ; $6493: $0a

jr_05a_6494:
	sbc h                                            ; $6494: $9c
	nop                                              ; $6495: $00
	inc b                                            ; $6496: $04
	jr jr_05a_6494                                   ; $6497: $18 $fb

	sbc h                                            ; $6499: $9c
	inc b                                            ; $649a: $04
	rrca                                             ; $649b: $0f
	rrca                                             ; $649c: $0f
	sbc $07                                          ; $649d: $de $07
	sbc $03                                          ; $649f: $de $03
	inc bc                                           ; $64a1: $03
	ld [hl], b                                       ; $64a2: $70
	ld a, [$fddf]                                    ; $64a3: $fa $df $fd
	ld a, e                                          ; $64a6: $7b
	ld bc, $2c7d                                     ; $64a7: $01 $7d $2c
	add [hl]                                         ; $64aa: $86
	cp a                                             ; $64ab: $bf
	ld h, a                                          ; $64ac: $67
	daa                                              ; $64ad: $27
	ld h, $22                                        ; $64ae: $26 $22
	add d                                            ; $64b0: $82
	add b                                            ; $64b1: $80
	ret nz                                           ; $64b2: $c0

	ld b, b                                          ; $64b3: $40
	sub b                                            ; $64b4: $90
	add sp, -$64                                     ; $64b5: $e8 $9c
	ld b, b                                          ; $64b7: $40
	and b                                            ; $64b8: $a0
	ret nc                                           ; $64b9: $d0

	add sp, -$0c                                     ; $64ba: $e8 $f4
	ldh a, [$f8]                                     ; $64bc: $f0 $f8
	sbc h                                            ; $64be: $9c
	ret nz                                           ; $64bf: $c0

	ld h, b                                          ; $64c0: $60
	jr nc, jr_05a_64db                               ; $64c1: $30 $18

	inc c                                            ; $64c3: $0c
	db $fd                                           ; $64c4: $fd
	sbc e                                            ; $64c5: $9b
	ld [bc], a                                       ; $64c6: $02
	dec b                                            ; $64c7: $05
	ld a, [hl+]                                      ; $64c8: $2a
	add $fa                                          ; $64c9: $c6 $fa
	sub a                                            ; $64cb: $97
	add hl, sp                                       ; $64cc: $39
	nop                                              ; $64cd: $00
	dec b                                            ; $64ce: $05
	ld a, [hl+]                                      ; $64cf: $2a
	dec b                                            ; $64d0: $05
	xor d                                            ; $64d1: $aa
	ld d, a                                          ; $64d2: $57
	xor d                                            ; $64d3: $aa
	ld h, e                                          ; $64d4: $63
	ret nz                                           ; $64d5: $c0

	sbc h                                            ; $64d6: $9c
	dec hl                                           ; $64d7: $2b
	ld d, a                                          ; $64d8: $57
	xor a                                            ; $64d9: $af
	ld a, d                                          ; $64da: $7a

jr_05a_64db:
	ld l, [hl]                                       ; $64db: $6e
	ld e, a                                          ; $64dc: $5f
	ldh a, [$db]                                     ; $64dd: $f0 $db
	rst $38                                          ; $64df: $ff
	ld e, a                                          ; $64e0: $5f
	ldh a, [$7f]                                     ; $64e1: $f0 $7f
	or $73                                           ; $64e3: $f6 $73
	cp $9e                                           ; $64e5: $fe $9e
	ld d, l                                          ; $64e7: $55
	inc bc                                           ; $64e8: $03
	ldh a, [$03]                                     ; $64e9: $f0 $03
	ldh a, [$57]                                     ; $64eb: $f0 $57
	ldh a, [$9d]                                     ; $64ed: $f0 $9d
	cp b                                             ; $64ef: $b8
	ld h, b                                          ; $64f0: $60
	db $fc                                           ; $64f1: $fc
	sbc d                                            ; $64f2: $9a
	rlca                                             ; $64f3: $07
	rra                                              ; $64f4: $1f
	ccf                                              ; $64f5: $3f
	xor b                                            ; $64f6: $a8
	db $fc                                           ; $64f7: $fc
	ld [hl], a                                       ; $64f8: $77
	ldh a, [$9d]                                     ; $64f9: $f0 $9d
	ld a, d                                          ; $64fb: $7a
	dec e                                            ; $64fc: $1d
	db $fc                                           ; $64fd: $fc
	ld a, [hl]                                       ; $64fe: $7e
	ld de, $f09c                                     ; $64ff: $11 $9c $f0
	xor d                                            ; $6502: $aa
	ld a, a                                          ; $6503: $7f
	rrca                                             ; $6504: $0f
	ret nz                                           ; $6505: $c0

	sub a                                            ; $6506: $97
	adc a                                            ; $6507: $8f
	ret nz                                           ; $6508: $c0

	xor b                                            ; $6509: $a8
	push af                                          ; $650a: $f5
	xor b                                            ; $650b: $a8
	ret nz                                           ; $650c: $c0

	add b                                            ; $650d: $80
	ld d, l                                          ; $650e: $55
	ld h, l                                          ; $650f: $65
	sbc a                                            ; $6510: $9f
	adc a                                            ; $6511: $8f
	add h                                            ; $6512: $84
	call z, $3078                                    ; $6513: $cc $78 $30
	ld c, $07                                        ; $6516: $0e $07
	ld bc, $0400                                     ; $6518: $01 $00 $04
	adc b                                            ; $651b: $88
	ld d, b                                          ; $651c: $50
	jr nc, jr_05a_6527                               ; $651d: $30 $08

	ld b, $01                                        ; $651f: $06 $01
	nop                                              ; $6521: $00
	ld l, l                                          ; $6522: $6d
	sbc b                                            ; $6523: $98
	sbc l                                            ; $6524: $9d
	add b                                            ; $6525: $80
	pop bc                                           ; $6526: $c1

jr_05a_6527:
	ld a, [$809e]                                    ; $6527: $fa $9e $80
	sbc $ff                                          ; $652a: $de $ff
	sbc d                                            ; $652c: $9a
	ei                                               ; $652d: $fb
	db $ed                                           ; $652e: $ed
	jp nc, Jump_05a_41a3                             ; $652f: $d2 $a3 $41

	halt                                             ; $6532: $76
	and h                                            ; $6533: $a4
	sbc e                                            ; $6534: $9b
	ld e, $33                                        ; $6535: $1e $33
	ld h, d                                          ; $6537: $62
	pop bc                                           ; $6538: $c1
	sbc $ff                                          ; $6539: $de $ff
	rst SubAFromDE                                          ; $653b: $df
	rst FarCall                                          ; $653c: $f7
	sbc l                                            ; $653d: $9d
	db $e3                                           ; $653e: $e3
	ld b, e                                          ; $653f: $43
	ld l, d                                          ; $6540: $6a
	and b                                            ; $6541: $a0
	rst SubAFromDE                                          ; $6542: $df
	add b                                            ; $6543: $80
	call c, $9cbf                                    ; $6544: $dc $bf $9c
	ccf                                              ; $6547: $3f
	dec a                                            ; $6548: $3d
	dec sp                                           ; $6549: $3b
	call c, $9c40                                    ; $654a: $dc $40 $9c
	jp $c8c4                                         ; $654d: $c3 $c4 $c8


	ld a, e                                          ; $6550: $7b
	pop hl                                           ; $6551: $e1
	sbc l                                            ; $6552: $9d
	rst $38                                          ; $6553: $ff
	cp a                                             ; $6554: $bf
	sbc $ff                                          ; $6555: $de $ff
	sub a                                            ; $6557: $97
	inc bc                                           ; $6558: $03
	inc c                                            ; $6559: $0c
	db $10                                           ; $655a: $10
	ld h, b                                          ; $655b: $60
	add b                                            ; $655c: $80
	nop                                              ; $655d: $00
	rlca                                             ; $655e: $07
	jr jr_05a_65dc                                   ; $655f: $18 $7b

	ld l, l                                          ; $6561: $6d
	ld a, [hl]                                       ; $6562: $7e
	or l                                             ; $6563: $b5
	add l                                            ; $6564: $85
	ld hl, sp-$04                                    ; $6565: $f8 $fc
	db $fc                                           ; $6567: $fc
	rst $38                                          ; $6568: $ff
	ccf                                              ; $6569: $3f
	rra                                              ; $656a: $1f
	rra                                              ; $656b: $1f
	rrca                                             ; $656c: $0f
	ld a, a                                          ; $656d: $7f
	rrca                                             ; $656e: $0f
	rlca                                             ; $656f: $07
	ld a, [hl+]                                      ; $6570: $2a
	ld e, a                                          ; $6571: $5f
	ld a, [hl-]                                      ; $6572: $3a
	ld d, h                                          ; $6573: $54
	ld a, [hl+]                                      ; $6574: $2a
	add l                                            ; $6575: $85
	ld b, b                                          ; $6576: $40
	add b                                            ; $6577: $80
	add b                                            ; $6578: $80
	and b                                            ; $6579: $a0
	push bc                                          ; $657a: $c5
	xor e                                            ; $657b: $ab
	push de                                          ; $657c: $d5
	ld a, d                                          ; $657d: $7a
	cp a                                             ; $657e: $bf
	ld [hl], a                                       ; $657f: $77
	ld d, d                                          ; $6580: $52
	sbc e                                            ; $6581: $9b
	ld a, a                                          ; $6582: $7f
	cp a                                             ; $6583: $bf
	dec d                                            ; $6584: $15
	add hl, hl                                       ; $6585: $29
	ld [hl], e                                       ; $6586: $73
	or e                                             ; $6587: $b3
	sbc h                                            ; $6588: $9c
	ld b, b                                          ; $6589: $40
	ld [$6fd6], a                                    ; $658a: $ea $d6 $6f
	ld d, d                                          ; $658d: $52
	sbc h                                            ; $658e: $9c
	rst FarCall                                          ; $658f: $f7
	rst SubAFromDE                                          ; $6590: $df
	adc [hl]                                         ; $6591: $8e
	ei                                               ; $6592: $fb
	sbc e                                            ; $6593: $9b
	jr nz, jr_05a_6607                               ; $6594: $20 $71

	xor d                                            ; $6596: $aa
	ld d, l                                          ; $6597: $55
	ld l, a                                          ; $6598: $6f
	cp $63                                           ; $6599: $fe $63
	jr nc, @-$6b                                     ; $659b: $30 $93

	ld d, l                                          ; $659d: $55
	xor [hl]                                         ; $659e: $ae
	ld e, c                                          ; $659f: $59
	and d                                            ; $65a0: $a2
	ld c, c                                          ; $65a1: $49
	and h                                            ; $65a2: $a4
	ld d, d                                          ; $65a3: $52
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	ld b, $19                                        ; $65a6: $06 $19
	daa                                              ; $65a8: $27
	ld a, b                                          ; $65a9: $78
	or a                                             ; $65aa: $b7
	ld [hl], e                                       ; $65ab: $73
	ldh [c], a                                       ; $65ac: $e2
	sbc h                                            ; $65ad: $9c
	push de                                          ; $65ae: $d5
	ld [$6f7d], a                                    ; $65af: $ea $7d $6f
	ld [hl], d                                       ; $65b2: $72
	sbc l                                            ; $65b3: $9d
	ret nz                                           ; $65b4: $c0

	db $fc                                           ; $65b5: $fc
	ccf                                              ; $65b6: $3f
	ret nc                                           ; $65b7: $d0

	sbc d                                            ; $65b8: $9a
	xor e                                            ; $65b9: $ab
	ld d, l                                          ; $65ba: $55
	xor d                                            ; $65bb: $aa
	ld d, [hl]                                       ; $65bc: $56
	xor h                                            ; $65bd: $ac
	ld a, b                                          ; $65be: $78
	ld a, [hl]                                       ; $65bf: $7e
	rst SubAFromDE                                          ; $65c0: $df
	ld bc, $03df                                     ; $65c1: $01 $df $03
	rst SubAFromDE                                          ; $65c4: $df
	rlca                                             ; $65c5: $07
	sbc l                                            ; $65c6: $9d
	ld hl, sp-$7e                                    ; $65c7: $f8 $82
	ld a, e                                          ; $65c9: $7b
	rra                                              ; $65ca: $1f
	rst SubAFromDE                                          ; $65cb: $df
	adc b                                            ; $65cc: $88
	sbc d                                            ; $65cd: $9a
	ld [bc], a                                       ; $65ce: $02
	ld a, a                                          ; $65cf: $7f
	db $eb                                           ; $65d0: $eb
	push de                                          ; $65d1: $d5
	ei                                               ; $65d2: $fb
	ld a, b                                          ; $65d3: $78
	ld c, c                                          ; $65d4: $49
	sub [hl]                                         ; $65d5: $96
	rst $38                                          ; $65d6: $ff
	ld a, [bc]                                       ; $65d7: $0a
	dec a                                            ; $65d8: $3d
	ld a, [de]                                       ; $65d9: $1a
	sbc l                                            ; $65da: $9d
	ld a, [de]                                       ; $65db: $1a

jr_05a_65dc:
	dec d                                            ; $65dc: $15
	ld a, [de]                                       ; $65dd: $1a
	dec d                                            ; $65de: $15
	db $dd                                           ; $65df: $dd
	ld hl, sp-$23                                    ; $65e0: $f8 $dd
	ret nc                                           ; $65e2: $d0

	ccf                                              ; $65e3: $3f
	ret nz                                           ; $65e4: $c0

	ld [hl], e                                       ; $65e5: $73
	cp $9e                                           ; $65e6: $fe $9e
	ld h, l                                          ; $65e8: $65
	ld a, [$189e]                                    ; $65e9: $fa $9e $18
	ld l, a                                          ; $65ec: $6f
	ldh a, [$9d]                                     ; $65ed: $f0 $9d
	xor c                                            ; $65ef: $a9
	ld e, [hl]                                       ; $65f0: $5e
	ei                                               ; $65f1: $fb
	ld a, h                                          ; $65f2: $7c
	cp b                                             ; $65f3: $b8
	sub a                                            ; $65f4: $97
	add d                                            ; $65f5: $82
	ld d, l                                          ; $65f6: $55
	xor e                                            ; $65f7: $ab
	ld a, l                                          ; $65f8: $7d
	db $f4                                           ; $65f9: $f4
	and b                                            ; $65fa: $a0
	ld b, c                                          ; $65fb: $41
	and d                                            ; $65fc: $a2
	ld [hl], a                                       ; $65fd: $77
	di                                               ; $65fe: $f3

Jump_05a_65ff:
	adc [hl]                                         ; $65ff: $8e
	dec bc                                           ; $6600: $0b
	ld e, a                                          ; $6601: $5f
	cp [hl]                                          ; $6602: $be
	ld e, a                                          ; $6603: $5f
	ld h, e                                          ; $6604: $63
	ld e, a                                          ; $6605: $5f
	cp b                                             ; $6606: $b8

jr_05a_6607:
	ld d, h                                          ; $6607: $54
	xor b                                            ; $6608: $a8
	nop                                              ; $6609: $00
	dec b                                            ; $660a: $05
	adc $63                                          ; $660b: $ce $63
	ld e, $07                                        ; $660d: $1e $07
	dec hl                                           ; $660f: $2b
	ld d, a                                          ; $6610: $57
	sbc $ff                                          ; $6611: $de $ff
	add b                                            ; $6613: $80
	xor c                                            ; $6614: $a9
	ld d, h                                          ; $6615: $54
	jr z, @+$12                                      ; $6616: $28 $10

	nop                                              ; $6618: $00
	inc bc                                           ; $6619: $03
	inc b                                            ; $661a: $04
	adc h                                            ; $661b: $8c
	add c                                            ; $661c: $81
	ld bc, $cf83                                     ; $661d: $01 $83 $cf
	rst $38                                          ; $6620: $ff
	rst $38                                          ; $6621: $ff
	db $fc                                           ; $6622: $fc
	db $fc                                           ; $6623: $fc
	add d                                            ; $6624: $82
	add [hl]                                         ; $6625: $86
	add l                                            ; $6626: $85
	adc $f9                                          ; $6627: $ce $f9
	adc a                                            ; $6629: $8f
	ld a, a                                          ; $662a: $7f
	db $fc                                           ; $662b: $fc
	ld bc, $8381                                     ; $662c: $01 $81 $83
	add [hl]                                         ; $662f: $86
	ld hl, sp-$7f                                    ; $6630: $f8 $81
	ld b, $90                                        ; $6632: $06 $90
	ld a, b                                          ; $6634: $78
	scf                                              ; $6635: $37
	ld l, a                                          ; $6636: $6f
	sbc a                                            ; $6637: $9f
	ld a, h                                          ; $6638: $7c
	ld hl, sp-$20                                    ; $6639: $f8 $e0
	nop                                              ; $663b: $00
	db $10                                           ; $663c: $10
	ret nc                                           ; $663d: $d0

	pop hl                                           ; $663e: $e1
	add a                                            ; $663f: $87
	ld [$c030], sp                                   ; $6640: $08 $30 $c0
	ld h, l                                          ; $6643: $65
	ret nz                                           ; $6644: $c0

	rst SubAFromDE                                          ; $6645: $df
	ld a, a                                          ; $6646: $7f
	ld a, d                                          ; $6647: $7a
	jp $80df                                         ; $6648: $c3 $df $80


	sbc e                                            ; $664b: $9b
	ld b, a                                          ; $664c: $47
	ld e, b                                          ; $664d: $58
	ld h, b                                          ; $664e: $60
	cp $77                                           ; $664f: $fe $77
	ld e, e                                          ; $6651: $5b
	halt                                             ; $6652: $76
	or b                                             ; $6653: $b0
	sbc [hl]                                         ; $6654: $9e
	inc bc                                           ; $6655: $03
	sbc $01                                          ; $6656: $de $01
	sbc l                                            ; $6658: $9d
	jr nz, jr_05a_666b                               ; $6659: $20 $10

	ld l, l                                          ; $665b: $6d
	ld [de], a                                       ; $665c: $12
	ld a, e                                          ; $665d: $7b
	rla                                              ; $665e: $17
	reti                                             ; $665f: $d9


	rst $38                                          ; $6660: $ff
	sbc d                                            ; $6661: $9a
	ld hl, $0205                                     ; $6662: $21 $05 $02
	dec b                                            ; $6665: $05
	ld [bc], a                                       ; $6666: $02
	cp $9b                                           ; $6667: $fe $9b
	sbc $fa                                          ; $6669: $de $fa

jr_05a_666b:
	db $fd                                           ; $666b: $fd
	ld a, [$a674]                                    ; $666c: $fa $74 $a6
	sbc h                                            ; $666f: $9c
	sub h                                            ; $6670: $94
	ld [$7b10], sp                                   ; $6671: $08 $10 $7b
	adc a                                            ; $6674: $8f
	rst $38                                          ; $6675: $ff
	sbc d                                            ; $6676: $9a
	ld l, e                                          ; $6677: $6b
	rst FarCall                                          ; $6678: $f7
	rst AddAOntoHL                                          ; $6679: $ef
	rst SubAFromHL                                          ; $667a: $d7
	rst AddAOntoHL                                          ; $667b: $ef
	ld [hl], l                                       ; $667c: $75
	halt                                             ; $667d: $76
	ld a, a                                          ; $667e: $7f
	ld d, d                                          ; $667f: $52
	ld a, a                                          ; $6680: $7f
	inc a                                            ; $6681: $3c
	ld a, e                                          ; $6682: $7b
	cp $f9                                           ; $6683: $fe $f9
	ld a, a                                          ; $6685: $7f
	ld [hl], b                                       ; $6686: $70
	sub l                                            ; $6687: $95
	xor d                                            ; $6688: $aa
	ld [bc], a                                       ; $6689: $02
	xor e                                            ; $668a: $ab
	ld bc, $00ab                                     ; $668b: $01 $ab $00
	dec bc                                           ; $668e: $0b
	dec b                                            ; $668f: $05
	inc bc                                           ; $6690: $03
	ld [bc], a                                       ; $6691: $02
	sbc $01                                          ; $6692: $de $01
	sub l                                            ; $6694: $95
	nop                                              ; $6695: $00
	jp $8180                                         ; $6696: $c3 $80 $81


	add h                                            ; $6699: $84
	add e                                            ; $669a: $83
	ld b, b                                          ; $669b: $40
	ld c, h                                          ; $669c: $4c
	and [hl]                                         ; $669d: $a6
	di                                               ; $669e: $f3
	ld [hl], e                                       ; $669f: $73
	adc c                                            ; $66a0: $89
	ld a, [hl]                                       ; $66a1: $7e
	ld b, l                                          ; $66a2: $45
	sub e                                            ; $66a3: $93
	ld [$c71d], a                                    ; $66a4: $ea $1d $c7
	nop                                              ; $66a7: $00
	inc c                                            ; $66a8: $0c
	nop                                              ; $66a9: $00
	ld [hl-], a                                      ; $66aa: $32
	add hl, de                                       ; $66ab: $19
	ldh [$78], a                                     ; $66ac: $e0 $78
	rst AddAOntoHL                                          ; $66ae: $ef
	db $fd                                           ; $66af: $fd
	ld [hl], a                                       ; $66b0: $77
	add l                                            ; $66b1: $85
	sub e                                            ; $66b2: $93
	xor h                                            ; $66b3: $ac
	ld a, b                                          ; $66b4: $78
	ret                                              ; $66b5: $c9


	adc c                                            ; $66b6: $89
	ld c, e                                          ; $66b7: $4b
	ld a, [hl-]                                      ; $66b8: $3a

jr_05a_66b9:
	jr z, @-$56                                      ; $66b9: $28 $a8

	rlca                                             ; $66bb: $07
	ccf                                              ; $66bc: $3f
	ld c, a                                          ; $66bd: $4f
	rst GetHLinHL                                          ; $66be: $cf
	ld [hl], a                                       ; $66bf: $77
	or b                                             ; $66c0: $b0
	rst SubAFromDE                                          ; $66c1: $df
	ld [hl+], a                                      ; $66c2: $22
	ld a, h                                          ; $66c3: $7c
	add h                                            ; $66c4: $84
	sbc e                                            ; $66c5: $9b
	jr jr_05a_66d8                                   ; $66c6: $18 $10

	ld b, b                                          ; $66c8: $40
	ld b, c                                          ; $66c9: $41
	db $dd                                           ; $66ca: $dd
	rst $38                                          ; $66cb: $ff
	sbc $fe                                          ; $66cc: $de $fe
	add b                                            ; $66ce: $80
	db $fd                                           ; $66cf: $fd
	ld a, [de]                                       ; $66d0: $1a
	dec d                                            ; $66d1: $15
	ld a, [hl+]                                      ; $66d2: $2a
	jr nz, jr_05a_66ff                               ; $66d3: $20 $2a

	ld e, b                                          ; $66d5: $58
	add [hl]                                         ; $66d6: $86
	inc bc                                           ; $66d7: $03

jr_05a_66d8:
	sub b                                            ; $66d8: $90
	or b                                             ; $66d9: $b0
	and b                                            ; $66da: $a0
	jr nz, @+$62                                     ; $66db: $20 $60

	ld e, b                                          ; $66dd: $58
	add h                                            ; $66de: $84
	ld [bc], a                                       ; $66df: $02
	xor e                                            ; $66e0: $ab
	ld d, l                                          ; $66e1: $55
	xor b                                            ; $66e2: $a8
	jr jr_05a_66b9                                   ; $66e3: $18 $d4

	add d                                            ; $66e5: $82
	add b                                            ; $66e6: $80
	add b                                            ; $66e7: $80
	nop                                              ; $66e8: $00
	ld [bc], a                                       ; $66e9: $02
	rlca                                             ; $66ea: $07
	rlca                                             ; $66eb: $07
	dec hl                                           ; $66ec: $2b
	ld a, l                                          ; $66ed: $7d
	rst SubAFromDE                                          ; $66ee: $df
	ld a, a                                          ; $66ef: $7f
	sbc e                                            ; $66f0: $9b
	add c                                            ; $66f1: $81
	db $10                                           ; $66f2: $10
	xor c                                            ; $66f3: $a9
	ld [de], a                                       ; $66f4: $12
	ld a, e                                          ; $66f5: $7b
	ld c, a                                          ; $66f6: $4f
	sbc d                                            ; $66f7: $9a
	rrca                                             ; $66f8: $0f
	ld a, [hl]                                       ; $66f9: $7e
	rst AddAOntoHL                                          ; $66fa: $ef
	ld d, [hl]                                       ; $66fb: $56
	db $ed                                           ; $66fc: $ed
	db $dd                                           ; $66fd: $dd
	rst $38                                          ; $66fe: $ff

jr_05a_66ff:
	sub d                                            ; $66ff: $92
	db $fc                                           ; $6700: $fc
	ret c                                            ; $6701: $d8

	dec [hl]                                         ; $6702: $35
	inc bc                                           ; $6703: $03
	ld b, h                                          ; $6704: $44
	nop                                              ; $6705: $00
	add c                                            ; $6706: $81
	ld [hl+], a                                      ; $6707: $22
	inc bc                                           ; $6708: $03
	daa                                              ; $6709: $27
	jp z, $bbfc                                      ; $670a: $ca $fc $bb

	sbc $ff                                          ; $670d: $de $ff
	sbc b                                            ; $670f: $98
	dec b                                            ; $6710: $05
	ld a, [bc]                                       ; $6711: $0a
	inc b                                            ; $6712: $04
	xor d                                            ; $6713: $aa
	ld e, a                                          ; $6714: $5f

jr_05a_6715:
	cp e                                             ; $6715: $bb
	ld d, [hl]                                       ; $6716: $56
	ld [hl], l                                       ; $6717: $75
	sbc b                                            ; $6718: $98
	ld a, b                                          ; $6719: $78
	cp b                                             ; $671a: $b8
	rst SubAFromDE                                          ; $671b: $df
	rst $38                                          ; $671c: $ff
	sbc h                                            ; $671d: $9c
	ld a, l                                          ; $671e: $7d
	xor d                                            ; $671f: $aa
	ld b, b                                          ; $6720: $40
	ld a, d                                          ; $6721: $7a
	ld d, l                                          ; $6722: $55
	sbc l                                            ; $6723: $9d
	ld [bc], a                                       ; $6724: $02
	inc c                                            ; $6725: $0c
	db $db                                           ; $6726: $db
	rst $38                                          ; $6727: $ff
	sbc b                                            ; $6728: $98
	cp $fc                                           ; $6729: $fe $fc
	rla                                              ; $672b: $17
	jr nz, jr_05a_676e                               ; $672c: $20 $40

	ld b, b                                          ; $672e: $40
	add b                                            ; $672f: $80
	cp $9b                                           ; $6730: $fe $9b
	di                                               ; $6732: $f3
	ldh [$c0], a                                     ; $6733: $e0 $c0
	ret nz                                           ; $6735: $c0

	ld [hl], a                                       ; $6736: $77
	ld hl, sp+$7e                                    ; $6737: $f8 $7e
	db $dd                                           ; $6739: $dd
	sbc c                                            ; $673a: $99
	ld bc, $0e07                                     ; $673b: $01 $07 $0e
	jr jr_05a_67b0                                   ; $673e: $18 $70

	pop hl                                           ; $6740: $e1
	ld a, e                                          ; $6741: $7b
	db $f4                                           ; $6742: $f4
	ld a, a                                          ; $6743: $7f
	jp c, $8ffe                                      ; $6744: $da $fe $8f

	ld hl, $85c2                                     ; $6747: $21 $c2 $85
	add hl, de                                       ; $674a: $19
	inc sp                                           ; $674b: $33
	ld h, e                                          ; $674c: $63
	jp $0087                                         ; $674d: $c3 $87 $00


	nop                                              ; $6750: $00
	add c                                            ; $6751: $81
	ld bc, $2202                                     ; $6752: $01 $02 $22
	ld b, d                                          ; $6755: $42
	add h                                            ; $6756: $84
	ld [hl], e                                       ; $6757: $73
	cp e                                             ; $6758: $bb
	ld a, e                                          ; $6759: $7b
	rst JumpTable                                          ; $675a: $c7
	ld [hl], e                                       ; $675b: $73
	bit 7, e                                         ; $675c: $cb $7b
	call c, $f782                                    ; $675e: $dc $82 $f7
	di                                               ; $6761: $f3
	ei                                               ; $6762: $fb
	ld a, [$baba]                                    ; $6763: $fa $ba $ba

jr_05a_6766:
	sbc d                                            ; $6766: $9a
	sbc [hl]                                         ; $6767: $9e
	dec c                                            ; $6768: $0d
	rrca                                             ; $6769: $0f
	rlca                                             ; $676a: $07
	ld b, $46                                        ; $676b: $06 $46
	ld b, [hl]                                       ; $676d: $46

jr_05a_676e:
	ld h, [hl]                                       ; $676e: $66
	ld h, d                                          ; $676f: $62
	ld b, b                                          ; $6770: $40
	ld b, b                                          ; $6771: $40
	jr nz, jr_05a_6715                               ; $6772: $20 $a1

	and b                                            ; $6774: $a0
	ld h, b                                          ; $6775: $60
	ld h, b                                          ; $6776: $60
	jr nz, jr_05a_67f8                               ; $6777: $20 $7f

	ld a, a                                          ; $6779: $7f
	ccf                                              ; $677a: $3f
	cp a                                             ; $677b: $bf
	cp a                                             ; $677c: $bf
	ld a, e                                          ; $677d: $7b
	ei                                               ; $677e: $fb
	sub a                                            ; $677f: $97
	ld bc, $f643                                     ; $6780: $01 $43 $f6
	cp e                                             ; $6783: $bb
	ld a, h                                          ; $6784: $7c
	ld a, b                                          ; $6785: $78
	jr nz, jr_05a_6789                               ; $6786: $20 $01

	reti                                             ; $6788: $d9


jr_05a_6789:
	rst $38                                          ; $6789: $ff
	sub a                                            ; $678a: $97
	sub h                                            ; $678b: $94
	xor $9e                                          ; $678c: $ee $9e
	jr c, jr_05a_67c0                                ; $678e: $38 $30

	jr nz, @+$62                                     ; $6790: $20 $60

	ld b, h                                          ; $6792: $44
	reti                                             ; $6793: $d9


	rst $38                                          ; $6794: $ff
	adc a                                            ; $6795: $8f
	cp d                                             ; $6796: $ba
	ld b, b                                          ; $6797: $40
	ld [bc], a                                       ; $6798: $02
	jr jr_05a_67b7                                   ; $6799: $18 $1c

	dec a                                            ; $679b: $3d
	daa                                              ; $679c: $27
	ld b, $00                                        ; $679d: $06 $00
	or b                                             ; $679f: $b0
	ldh a, [$e0]                                     ; $67a0: $f0 $e0
	ldh [$c0], a                                     ; $67a2: $e0 $c0
	ret c                                            ; $67a4: $d8

	ld sp, hl                                        ; $67a5: $f9
	halt                                             ; $67a6: $76
	or h                                             ; $67a7: $b4
	sbc h                                            ; $67a8: $9c
	ld a, [hl+]                                      ; $67a9: $2a
	sub l                                            ; $67aa: $95
	inc bc                                           ; $67ab: $03
	ld l, l                                          ; $67ac: $6d
	nop                                              ; $67ad: $00
	add l                                            ; $67ae: $85
	ld h, b                                          ; $67af: $60

jr_05a_67b0:
	ld hl, sp-$01                                    ; $67b0: $f8 $ff
	sub b                                            ; $67b2: $90
	ld b, b                                          ; $67b3: $40
	and b                                            ; $67b4: $a0
	db $10                                           ; $67b5: $10
	xor b                                            ; $67b6: $a8

jr_05a_67b7:
	rst $38                                          ; $67b7: $ff
	add b                                            ; $67b8: $80
	rst $38                                          ; $67b9: $ff
	rst SubAFromDE                                          ; $67ba: $df
	ld h, a                                          ; $67bb: $67
	ld sp, $0c18                                     ; $67bc: $31 $18 $0c
	ld a, a                                          ; $67bf: $7f

jr_05a_67c0:
	add e                                            ; $67c0: $83
	rst $38                                          ; $67c1: $ff
	ld h, b                                          ; $67c2: $60
	jr c, @-$70                                      ; $67c3: $38 $8e

	rlca                                             ; $67c5: $07
	daa                                              ; $67c6: $27
	rst FarCall                                          ; $67c7: $f7
	cp $7a                                           ; $67c8: $fe $7a
	ld h, b                                          ; $67ca: $60
	sub c                                            ; $67cb: $91
	ld a, a                                          ; $67cc: $7f
	ld [hl], a                                       ; $67cd: $77
	rla                                              ; $67ce: $17
	rrca                                             ; $67cf: $0f
	db $fc                                           ; $67d0: $fc
	add b                                            ; $67d1: $80
	ld de, $1311                                     ; $67d2: $11 $11 $13
	xor b                                            ; $67d5: $a8
	jp hl                                            ; $67d6: $e9


	jp z, Jump_05a_5454                              ; $67d7: $ca $54 $54

	ld h, [hl]                                       ; $67da: $66
	jr z, jr_05a_6766                                ; $67db: $28 $89

	ld b, e                                          ; $67dd: $43
	rlca                                             ; $67de: $07
	rrca                                             ; $67df: $0f
	ccf                                              ; $67e0: $3f
	ld sp, hl                                        ; $67e1: $f9
	ei                                               ; $67e2: $fb
	adc $83                                          ; $67e3: $ce $83
	ld a, [$e8f7]                                    ; $67e5: $fa $f7 $e8
	ldh a, [$c9]                                     ; $67e8: $f0 $c9
	adc d                                            ; $67ea: $8a
	add h                                            ; $67eb: $84
	add b                                            ; $67ec: $80
	sub c                                            ; $67ed: $91
	ld sp, hl                                        ; $67ee: $f9
	db $fd                                           ; $67ef: $fd
	ld a, h                                          ; $67f0: $7c
	ld a, $fd                                        ; $67f1: $3e $fd
	ld a, e                                          ; $67f3: $7b
	ld d, a                                          ; $67f4: $57
	sbc e                                            ; $67f5: $9b
	add c                                            ; $67f6: $81

jr_05a_67f7:
	ld [hl], c                                       ; $67f7: $71

jr_05a_67f8:
	inc c                                            ; $67f8: $0c
	ld [hl+], a                                      ; $67f9: $22
	ld a, b                                          ; $67fa: $78
	adc d                                            ; $67fb: $8a
	ld a, a                                          ; $67fc: $7f
	ld [bc], a                                       ; $67fd: $02
	sbc c                                            ; $67fe: $99
	db $10                                           ; $67ff: $10
	adc b                                            ; $6800: $88
	sbc h                                            ; $6801: $9c
	xor [hl]                                         ; $6802: $ae
	db $dd                                           ; $6803: $dd
	ld a, [$bc74]                                    ; $6804: $fa $74 $bc
	db $dd                                           ; $6807: $dd
	rst $38                                          ; $6808: $ff
	sbc c                                            ; $6809: $99
	ld d, a                                          ; $680a: $57
	xor d                                            ; $680b: $aa
	ld d, l                                          ; $680c: $55
	add sp, $50                                      ; $680d: $e8 $50
	jr nz, @+$7b                                     ; $680f: $20 $79

	add sp, $7c                                      ; $6811: $e8 $7c
	jp c, $1f92                                      ; $6813: $da $92 $1f

	xor a                                            ; $6816: $af
	rst SubAFromDE                                          ; $6817: $df
	rst $38                                          ; $6818: $ff
	rst $38                                          ; $6819: $ff
	push bc                                          ; $681a: $c5
	and d                                            ; $681b: $a2
	ld b, h                                          ; $681c: $44
	ld e, $0f                                        ; $681d: $1e $0f
	rra                                              ; $681f: $1f
	dec e                                            ; $6820: $1d
	ld c, e                                          ; $6821: $4b
	reti                                             ; $6822: $d9


	rst $38                                          ; $6823: $ff
	sub a                                            ; $6824: $97
	ld d, b                                          ; $6825: $50
	ld l, $5f                                        ; $6826: $2e $5f
	cp a                                             ; $6828: $bf
	rst $38                                          ; $6829: $ff
	db $fc                                           ; $682a: $fc
	ld hl, sp+$70                                    ; $682b: $f8 $70
	call c, Call_05a_7fff                            ; $682d: $dc $ff $7f
	ld hl, sp-$7d                                    ; $6830: $f8 $83
	ldh a, [rAUD1SWEEP]                              ; $6832: $f0 $10
	jr nz, jr_05a_67f7                               ; $6834: $20 $c1

	add e                                            ; $6836: $83
	rlca                                             ; $6837: $07
	ld c, $3d                                        ; $6838: $0e $3d
	ld [hl], d                                       ; $683a: $72
	ldh a, [$e0]                                     ; $683b: $f0 $e0
	ret nz                                           ; $683d: $c0

	add b                                            ; $683e: $80
	ld bc, $0d02                                     ; $683f: $01 $02 $0d
	ld [de], a                                       ; $6842: $12
	inc bc                                           ; $6843: $03
	rst JumpTable                                          ; $6844: $c7
	add [hl]                                         ; $6845: $86
	sbc b                                            ; $6846: $98
	jr nz, jr_05a_6889                               ; $6847: $20 $40

	add h                                            ; $6849: $84
	dec b                                            ; $684a: $05
	nop                                              ; $684b: $00
	ld bc, $7b06                                     ; $684c: $01 $06 $7b
	ld hl, sp+$7e                                    ; $684f: $f8 $7e
	db $eb                                           ; $6851: $eb
	sub d                                            ; $6852: $92
	add e                                            ; $6853: $83
	ld b, $0c                                        ; $6854: $06 $0c
	jr jr_05a_6888                                   ; $6856: $18 $30

	ld h, b                                          ; $6858: $60
	jp nz, $0186                                     ; $6859: $c2 $86 $01

	ld [bc], a                                       ; $685c: $02
	inc b                                            ; $685d: $04
	ld [$7b10], sp                                   ; $685e: $08 $10 $7b
	rst AddAOntoHL                                          ; $6861: $ef
	rst SubAFromDE                                          ; $6862: $df
	rlca                                             ; $6863: $07
	rst SubAFromDE                                          ; $6864: $df
	rrca                                             ; $6865: $0f
	rst SubAFromDE                                          ; $6866: $df
	rra                                              ; $6867: $1f
	sbc b                                            ; $6868: $98
	ccf                                              ; $6869: $3f
	ld a, a                                          ; $686a: $7f
	inc b                                            ; $686b: $04
	inc b                                            ; $686c: $04
	ld [$1008], sp                                   ; $686d: $08 $08 $10
	ld a, e                                          ; $6870: $7b
	rst AddAOntoHL                                          ; $6871: $ef
	ld a, [hl]                                       ; $6872: $7e
	ld l, $9e                                        ; $6873: $2e $9e
	db $fd                                           ; $6875: $fd
	sbc $f9                                          ; $6876: $de $f9
	rst SubAFromDE                                          ; $6878: $df
	pop af                                           ; $6879: $f1
	ld a, a                                          ; $687a: $7f
	ldh [$9e], a                                     ; $687b: $e0 $9e
	ld [bc], a                                       ; $687d: $02
	sbc $06                                          ; $687e: $de $06
	rst SubAFromDE                                          ; $6880: $df
	ld c, $91                                        ; $6881: $0e $91
	sbc [hl]                                         ; $6883: $9e
	adc h                                            ; $6884: $8c
	adc h                                            ; $6885: $8c
	adc b                                            ; $6886: $88
	ret c                                            ; $6887: $d8

jr_05a_6888:
	ret nc                                           ; $6888: $d0

jr_05a_6889:
	ldh a, [$f0]                                     ; $6889: $f0 $f0
	ld h, h                                          ; $688b: $64
	ld [hl], h                                       ; $688c: $74
	ld a, b                                          ; $688d: $78
	ld a, b                                          ; $688e: $78
	ld [hl], b                                       ; $688f: $70
	ld [hl], b                                       ; $6890: $70
	ld a, d                                          ; $6891: $7a
	rst JumpTable                                          ; $6892: $c7
	sbc e                                            ; $6893: $9b
	jr nz, jr_05a_68fa                               ; $6894: $20 $64

	ld l, d                                          ; $6896: $6a
	ld a, a                                          ; $6897: $7f
	ld a, d                                          ; $6898: $7a
	sbc e                                            ; $6899: $9b
	reti                                             ; $689a: $d9


	ccf                                              ; $689b: $3f
	ld a, l                                          ; $689c: $7d
	add d                                            ; $689d: $82
	sbc e                                            ; $689e: $9b
	ld e, [hl]                                       ; $689f: $5e
	cp a                                             ; $68a0: $bf
	rst $38                                          ; $68a1: $ff
	cp $71                                           ; $68a2: $fe $71
	push de                                          ; $68a4: $d5
	call c, $97ff                                    ; $68a5: $dc $ff $97
	adc h                                            ; $68a8: $8c
	ld a, h                                          ; $68a9: $7c
	cp $fe                                           ; $68aa: $fe $fe
	ld a, h                                          ; $68ac: $7c
	db $ec                                           ; $68ad: $ec
	ld c, b                                          ; $68ae: $48
	inc bc                                           ; $68af: $03
	reti                                             ; $68b0: $d9


	rst $38                                          ; $68b1: $ff
	sub l                                            ; $68b2: $95
	jr jr_05a_68bd                                   ; $68b3: $18 $08

	add hl, bc                                       ; $68b5: $09
	ld d, c                                          ; $68b6: $51
	xor e                                            ; $68b7: $ab
	ld [hl], a                                       ; $68b8: $77
	rst $38                                          ; $68b9: $ff
	ld a, a                                          ; $68ba: $7f
	rst SubAFromBC                                          ; $68bb: $e7
	rst FarCall                                          ; $68bc: $f7

jr_05a_68bd:
	db $db                                           ; $68bd: $db
	rst $38                                          ; $68be: $ff
	sub e                                            ; $68bf: $93
	inc e                                            ; $68c0: $1c
	inc hl                                           ; $68c1: $23
	jr nz, jr_05a_68e0                               ; $68c2: $20 $1c

	ld b, e                                          ; $68c4: $43
	ret nz                                           ; $68c5: $c0

	cp c                                             ; $68c6: $b9
	ldh [c], a                                       ; $68c7: $e2
	db $fc                                           ; $68c8: $fc
	db $e3                                           ; $68c9: $e3
	ldh [$fc], a                                     ; $68ca: $e0 $fc
	halt                                             ; $68cc: $76
	ld e, b                                          ; $68cd: $58
	ld a, [hl]                                       ; $68ce: $7e
	add a                                            ; $68cf: $87
	sbc d                                            ; $68d0: $9a
	ld a, [hl]                                       ; $68d1: $7e
	nop                                              ; $68d2: $00
	pop hl                                           ; $68d3: $e1
	ld a, a                                          ; $68d4: $7f
	rst $38                                          ; $68d5: $ff
	ld a, e                                          ; $68d6: $7b
	nop                                              ; $68d7: $00
	ld a, a                                          ; $68d8: $7f
	ld hl, sp-$71                                    ; $68d9: $f8 $8f
	add b                                            ; $68db: $80
	ldh [rIE], a                                     ; $68dc: $e0 $ff
	nop                                              ; $68de: $00
	add b                                            ; $68df: $80

jr_05a_68e0:
	ld sp, hl                                        ; $68e0: $f9
	rst $38                                          ; $68e1: $ff
	ld a, a                                          ; $68e2: $7f
	ld sp, hl                                        ; $68e3: $f9
	ldh [hDisp0_SCY], a                                     ; $68e4: $e0 $83
	ccf                                              ; $68e6: $3f
	nop                                              ; $68e7: $00
	ret nz                                           ; $68e8: $c0

	jr c, jr_05a_68fa                                ; $68e9: $38 $0f

	ld [hl], h                                       ; $68eb: $74
	ldh a, [$9b]                                     ; $68ec: $f0 $9b
	rst SubAFromBC                                          ; $68ee: $e7
	or l                                             ; $68ef: $b5
	xor c                                            ; $68f0: $a9
	bit 6, l                                         ; $68f1: $cb $75
	and $9a                                          ; $68f3: $e6 $9a
	cp l                                             ; $68f5: $bd
	xor l                                            ; $68f6: $ad
	xor c                                            ; $68f7: $a9
	bit 7, [hl]                                      ; $68f8: $cb $7e

jr_05a_68fa:
	ld [hl], l                                       ; $68fa: $75
	dec b                                            ; $68fb: $05
	sbc l                                            ; $68fc: $9d
	ret nz                                           ; $68fd: $c0

	ldh a, [rPCM34]                                  ; $68fe: $f0 $77
	ret z                                            ; $6900: $c8

	ld a, a                                          ; $6901: $7f
	rst SubAFromHL                                          ; $6902: $d7
	ld a, e                                          ; $6903: $7b
	push af                                          ; $6904: $f5
	sbc [hl]                                         ; $6905: $9e
	ld [hl], b                                       ; $6906: $70
	ld a, [$c87f]                                    ; $6907: $fa $7f $c8
	sbc l                                            ; $690a: $9d
	ldh a, [$f8]                                     ; $690b: $f0 $f8
	ld sp, hl                                        ; $690d: $f9
	sub a                                            ; $690e: $97
	ld h, b                                          ; $690f: $60
	ld b, b                                          ; $6910: $40
	ld b, d                                          ; $6911: $42
	daa                                              ; $6912: $27
	inc hl                                           ; $6913: $23
	db $10                                           ; $6914: $10
	ld de, $de0b                                     ; $6915: $11 $0b $de
	ld a, a                                          ; $6918: $7f
	rst SubAFromDE                                          ; $6919: $df
	ccf                                              ; $691a: $3f
	rst SubAFromDE                                          ; $691b: $df
	rra                                              ; $691c: $1f
	sub a                                            ; $691d: $97
	rrca                                             ; $691e: $0f
	db $10                                           ; $691f: $10
	add hl, hl                                       ; $6920: $29
	ld e, [hl]                                       ; $6921: $5e
	xor a                                            ; $6922: $af
	rst SubAFromDE                                          ; $6923: $df
	cp a                                             ; $6924: $bf
	ld e, a                                          ; $6925: $5f
	ret c                                            ; $6926: $d8

	rst $38                                          ; $6927: $ff
	sub a                                            ; $6928: $97
	db $dd                                           ; $6929: $dd
	ei                                               ; $692a: $fb
	rst $38                                          ; $692b: $ff
	cp a                                             ; $692c: $bf
	cp $fc                                           ; $692d: $fe $fc
	db $fc                                           ; $692f: $fc
	ld a, b                                          ; $6930: $78
	ld l, l                                          ; $6931: $6d
	and d                                            ; $6932: $a2
	ld a, [hl]                                       ; $6933: $7e
	rst GetHLinHL                                          ; $6934: $cf
	sbc h                                            ; $6935: $9c
	and b                                            ; $6936: $a0
	pop bc                                           ; $6937: $c1
	add e                                            ; $6938: $83
	db $fc                                           ; $6939: $fc
	ld a, [hl]                                       ; $693a: $7e
	pop de                                           ; $693b: $d1
	ld l, a                                          ; $693c: $6f
	ld hl, sp-$64                                    ; $693d: $f8 $9c
	db $e4                                           ; $693f: $e4
	adc b                                            ; $6940: $88
	db $10                                           ; $6941: $10
	ld a, d                                          ; $6942: $7a
	sub d                                            ; $6943: $92
	sbc h                                            ; $6944: $9c
	ld bc, $640f                                     ; $6945: $01 $0f $64
	ld [hl], e                                       ; $6948: $73
	ld hl, sp-$01                                    ; $6949: $f8 $ff
	sbc [hl]                                         ; $694b: $9e
	dec b                                            ; $694c: $05
	halt                                             ; $694d: $76
	pop hl                                           ; $694e: $e1
	ld a, a                                          ; $694f: $7f
	add b                                            ; $6950: $80
	sbc h                                            ; $6951: $9c
	ldh a, [rP1]                                     ; $6952: $f0 $00
	ld bc, $ee7a                                     ; $6954: $01 $7a $ee
	sub b                                            ; $6957: $90
	dec b                                            ; $6958: $05
	ld c, $10                                        ; $6959: $0e $10
	adc h                                            ; $695b: $8c
	add hl, de                                       ; $695c: $19
	dec sp                                           ; $695d: $3b
	di                                               ; $695e: $f3
	rst SubAFromBC                                          ; $695f: $e7
	rst GetHLinHL                                          ; $6960: $cf
	rra                                              ; $6961: $1f

Jump_05a_6962:
	ccf                                              ; $6962: $3f
	add b                                            ; $6963: $80
	ld bc, $120a                                     ; $6964: $01 $0a $12
	ld a, e                                          ; $6967: $7b
	call c, $109e                                    ; $6968: $dc $9e $10
	ld l, c                                          ; $696b: $69
	sub c                                            ; $696c: $91
	sbc [hl]                                         ; $696d: $9e
	ld hl, sp+$69                                    ; $696e: $f8 $69
	sub c                                            ; $6970: $91
	add b                                            ; $6971: $80
	rlca                                             ; $6972: $07
	pop hl                                           ; $6973: $e1
	pop hl                                           ; $6974: $e1
	pop bc                                           ; $6975: $c1
	add e                                            ; $6976: $83
	inc bc                                           ; $6977: $03
	ld b, $01                                        ; $6978: $06 $01
	inc bc                                           ; $697a: $03
	ld e, $1e                                        ; $697b: $1e $1e
	ld a, $7c                                        ; $697d: $3e $7c
	db $fc                                           ; $697f: $fc
	ld sp, hl                                        ; $6980: $f9
	rst $38                                          ; $6981: $ff
	cp $f1                                           ; $6982: $fe $f1
	ld sp, hl                                        ; $6984: $f9
	ei                                               ; $6985: $fb
	rst $38                                          ; $6986: $ff
	rst $38                                          ; $6987: $ff
	sbc a                                            ; $6988: $9f
	sbc a                                            ; $6989: $9f
	rra                                              ; $698a: $1f
	jr nz, jr_05a_69ad                               ; $698b: $20 $20

	ld h, b                                          ; $698d: $60
	ld h, b                                          ; $698e: $60
	and b                                            ; $698f: $a0
	sub b                                            ; $6990: $90
	rst SubAFromDE                                          ; $6991: $df
	ld de, $fb98                                     ; $6992: $11 $98 $fb
	ld sp, hl                                        ; $6995: $f9
	db $e3                                           ; $6996: $e3
	push af                                          ; $6997: $f5
	db $eb                                           ; $6998: $eb
	rst SubAFromDE                                          ; $6999: $df
	rst AddAOntoHL                                          ; $699a: $ef
	ld a, c                                          ; $699b: $79
	or $6d                                           ; $699c: $f6 $6d
	ld d, [hl]                                       ; $699e: $56
	sbc b                                            ; $699f: $98
	db $fc                                           ; $69a0: $fc
	ld a, [$fefd]                                    ; $69a1: $fa $fd $fe
	xor a                                            ; $69a4: $af
	ld d, a                                          ; $69a5: $57
	xor e                                            ; $69a6: $ab
	ret c                                            ; $69a7: $d8

	rst $38                                          ; $69a8: $ff
	sbc b                                            ; $69a9: $98
	rlca                                             ; $69aa: $07
	xor [hl]                                         ; $69ab: $ae
	inc e                                            ; $69ac: $1c

jr_05a_69ad:
	or b                                             ; $69ad: $b0
	rst $38                                          ; $69ae: $ff
	cp $e0                                           ; $69af: $fe $e0
	ld [hl], h                                       ; $69b1: $74
	ldh a, [$dc]                                     ; $69b2: $f0 $dc
	rst $38                                          ; $69b4: $ff
	ld c, a                                          ; $69b5: $4f
	nop                                              ; $69b6: $00
	sbc $22                                          ; $69b7: $de $22
	sbc [hl]                                         ; $69b9: $9e
	daa                                              ; $69ba: $27
	call c, $9e55                                    ; $69bb: $dc $55 $9e
	ld [hl], d                                       ; $69be: $72
	sbc $22                                          ; $69bf: $de $22
	sbc [hl]                                         ; $69c1: $9e
	dec h                                            ; $69c2: $25
	ld c, a                                          ; $69c3: $4f
	or $9e                                           ; $69c4: $f6 $9e
	ld [hl], l                                       ; $69c6: $75
	ld [hl], a                                       ; $69c7: $77
	or $73                                           ; $69c8: $f6 $73
	ldh [c], a                                       ; $69ca: $e2
	sbc [hl]                                         ; $69cb: $9e
	ld [hl], a                                       ; $69cc: $77
	ld [hl], a                                       ; $69cd: $77
	or $73                                           ; $69ce: $f6 $73
	db $eb                                           ; $69d0: $eb
	ld [hl], e                                       ; $69d1: $73
	rst FarCall                                          ; $69d2: $f7
	ld [hl], e                                       ; $69d3: $73
	or $dd                                           ; $69d4: $f6 $dd
	ld [hl+], a                                      ; $69d6: $22
	sbc l                                            ; $69d7: $9d
	daa                                              ; $69d8: $27
	ld [hl], d                                       ; $69d9: $72
	ld [hl], a                                       ; $69da: $77
	pop hl                                           ; $69db: $e1
	sbc [hl]                                         ; $69dc: $9e
	ld [hl], $7b                                     ; $69dd: $36 $7b
	ld hl, sp+$7b                                    ; $69df: $f8 $7b
	sbc $8a                                          ; $69e1: $de $8a
	ld h, d                                          ; $69e3: $62
	dec h                                            ; $69e4: $25
	ld d, e                                          ; $69e5: $53
	inc sp                                           ; $69e6: $33
	ld h, [hl]                                       ; $69e7: $66
	daa                                              ; $69e8: $27
	ld [hl], a                                       ; $69e9: $77
	ld [hl], l                                       ; $69ea: $75
	ld [hl], d                                       ; $69eb: $72
	ld h, [hl]                                       ; $69ec: $66
	ld h, e                                          ; $69ed: $63
	inc sp                                           ; $69ee: $33
	inc [hl]                                         ; $69ef: $34
	ld b, e                                          ; $69f0: $43
	ld h, [hl]                                       ; $69f1: $66
	ld h, d                                          ; $69f2: $62
	ld [hl], l                                       ; $69f3: $75
	ld d, l                                          ; $69f4: $55
	ld d, d                                          ; $69f5: $52
	ld h, [hl]                                       ; $69f6: $66
	inc sp                                           ; $69f7: $33
	ld [hl], e                                       ; $69f8: $73
	or $df                                           ; $69f9: $f6 $df
	ld d, l                                          ; $69fb: $55
	sbc b                                            ; $69fc: $98
	ld d, d                                          ; $69fd: $52
	ld h, e                                          ; $69fe: $63
	inc sp                                           ; $69ff: $33
	inc sp                                           ; $6a00: $33
	ld b, h                                          ; $6a01: $44
	inc sp                                           ; $6a02: $33
	ld h, [hl]                                       ; $6a03: $66
	and e                                            ; $6a04: $a3
	adc d                                            ; $6a05: $8a
	sbc $ff                                          ; $6a06: $de $ff
	sbc $fe                                          ; $6a08: $de $fe
	rst SubAFromDE                                          ; $6a0a: $df
	db $fc                                           ; $6a0b: $fc
	reti                                             ; $6a0c: $d9


	rst $38                                          ; $6a0d: $ff
	sub d                                            ; $6a0e: $92
	inc bc                                           ; $6a0f: $03
	rst JumpTable                                          ; $6a10: $c7
	pop bc                                           ; $6a11: $c1
	ldh [$03], a                                     ; $6a12: $e0 $03
	ld bc, $0300                                     ; $6a14: $01 $00 $03
	db $fc                                           ; $6a17: $fc
	ld hl, sp-$02                                    ; $6a18: $f8 $fe
	rst $38                                          ; $6a1a: $ff
	db $fc                                           ; $6a1b: $fc
	ld a, e                                          ; $6a1c: $7b
	db $fd                                           ; $6a1d: $fd
	ld a, e                                          ; $6a1e: $7b
	rst SubAFromBC                                          ; $6a1f: $e7
	add b                                            ; $6a20: $80
	cp $f8                                           ; $6a21: $fe $f8
	db $e3                                           ; $6a23: $e3
	rst GetHLinHL                                          ; $6a24: $cf
	cp $06                                           ; $6a25: $fe $06
	inc bc                                           ; $6a27: $03
	ld bc, $1906                                     ; $6a28: $01 $06 $19
	cpl                                              ; $6a2b: $2f
	ld a, l                                          ; $6a2c: $7d
	ldh a, [c]                                       ; $6a2d: $f2
	ld [hl], e                                       ; $6a2e: $73
	add hl, sp                                       ; $6a2f: $39
	ld sp, hl                                        ; $6a30: $f9
	ld l, l                                          ; $6a31: $6d
	inc sp                                           ; $6a32: $33
	ret nz                                           ; $6a33: $c0

	jr jr_05a_6aa2                                   ; $6a34: $18 $6c

	ccf                                              ; $6a36: $3f
	sbc a                                            ; $6a37: $9f
	rst $38                                          ; $6a38: $ff
	rra                                              ; $6a39: $1f
	rst $38                                          ; $6a3a: $ff
	rst $38                                          ; $6a3b: $ff
	add a                                            ; $6a3c: $87
	rra                                              ; $6a3d: $1f
	ld a, b                                          ; $6a3e: $78
	ld h, c                                          ; $6a3f: $61
	sbc c                                            ; $6a40: $99
	ld h, [hl]                                       ; $6a41: $66
	ld l, c                                          ; $6a42: $69
	ccf                                              ; $6a43: $3f
	or l                                             ; $6a44: $b5
	ld h, $12                                        ; $6a45: $26 $12
	db $dd                                           ; $6a47: $dd
	cp a                                             ; $6a48: $bf
	sub e                                            ; $6a49: $93
	rst $38                                          ; $6a4a: $ff
	ei                                               ; $6a4b: $fb
	ld sp, hl                                        ; $6a4c: $f9
	db $fd                                           ; $6a4d: $fd
	db $e3                                           ; $6a4e: $e3
	add b                                            ; $6a4f: $80
	ld a, a                                          ; $6a50: $7f
	call c, $8001                                    ; $6a51: $dc $01 $80
	ld hl, sp-$49                                    ; $6a54: $f8 $b7
	ld a, e                                          ; $6a56: $7b
	ret z                                            ; $6a57: $c8

	add b                                            ; $6a58: $80
	ldh [$fe], a                                     ; $6a59: $e0 $fe
	rst $38                                          ; $6a5b: $ff
	rst $38                                          ; $6a5c: $ff
	rst GetHLinHL                                          ; $6a5d: $cf
	rla                                              ; $6a5e: $17
	ld [de], a                                       ; $6a5f: $12
	jp $0bbc                                         ; $6a60: $c3 $bc $0b


	inc hl                                           ; $6a63: $23
	inc b                                            ; $6a64: $04
	pop bc                                           ; $6a65: $c1
	rrca                                             ; $6a66: $0f
	pop hl                                           ; $6a67: $e1
	db $fc                                           ; $6a68: $fc
	ld a, a                                          ; $6a69: $7f
	rlca                                             ; $6a6a: $07
	ret nz                                           ; $6a6b: $c0

	ei                                               ; $6a6c: $fb
	rst $38                                          ; $6a6d: $ff
	ld [hl-], a                                      ; $6a6e: $32
	push bc                                          ; $6a6f: $c5
	and a                                            ; $6a70: $a7
	ld e, [hl]                                       ; $6a71: $5e
	sbc l                                            ; $6a72: $9d
	ld [hl], d                                       ; $6a73: $72
	call $c194                                       ; $6a74: $cd $94 $c1
	ld hl, sp-$77                                    ; $6a77: $f8 $89
	ld a, a                                          ; $6a79: $7f
	cp c                                             ; $6a7a: $b9
	di                                               ; $6a7b: $f3
	rst SubAFromBC                                          ; $6a7c: $e7
	sbc [hl]                                         ; $6a7d: $9e
	jr c, @+$01                                      ; $6a7e: $38 $ff

	ccf                                              ; $6a80: $3f
	ld a, a                                          ; $6a81: $7f
	sbc a                                            ; $6a82: $9f
	rra                                              ; $6a83: $1f
	inc de                                           ; $6a84: $13
	inc hl                                           ; $6a85: $23
	ld b, e                                          ; $6a86: $43
	ret nz                                           ; $6a87: $c0

	ldh [$f0], a                                     ; $6a88: $e0 $f0
	ld hl, sp-$64                                    ; $6a8a: $f8 $9c
	ld [hl-], a                                      ; $6a8c: $32
	ld h, d                                          ; $6a8d: $62
	jp $ffd9                                         ; $6a8e: $c3 $d9 $ff


	ld sp, hl                                        ; $6a91: $f9
	dec sp                                           ; $6a92: $3b
	ldh a, [hDisp0_WY]                                     ; $6a93: $f0 $88
	db $fc                                           ; $6a95: $fc
	di                                               ; $6a96: $f3
	db $ec                                           ; $6a97: $ec
	pop de                                           ; $6a98: $d1
	and [hl]                                         ; $6a99: $a6
	nop                                              ; $6a9a: $00
	nop                                              ; $6a9b: $00
	inc bc                                           ; $6a9c: $03
	inc c                                            ; $6a9d: $0c
	db $10                                           ; $6a9e: $10
	inc hl                                           ; $6a9f: $23
	ld c, h                                          ; $6aa0: $4c
	sub c                                            ; $6aa1: $91

jr_05a_6aa2:
	db $fc                                           ; $6aa2: $fc
	db $dd                                           ; $6aa3: $dd
	ld bc, $00ff                                     ; $6aa4: $01 $ff $00
	adc [hl]                                         ; $6aa7: $8e
	jp $3f33                                         ; $6aa8: $c3 $33 $3f


	db $e3                                           ; $6aab: $e3
	ld a, e                                          ; $6aac: $7b
	db $e4                                           ; $6aad: $e4
	add b                                            ; $6aae: $80
	ld bc, $0f3c                                     ; $6aaf: $01 $3c $0f
	add hl, bc                                       ; $6ab2: $09
	rst JumpTable                                          ; $6ab3: $c7
	or e                                             ; $6ab4: $b3
	xor $f3                                          ; $6ab5: $ee $f3
	daa                                              ; $6ab7: $27
	sbc a                                            ; $6ab8: $9f
	rst $38                                          ; $6ab9: $ff
	cp $fc                                           ; $6aba: $fe $fc
	ld a, a                                          ; $6abc: $7f
	rra                                              ; $6abd: $1f
	rrca                                             ; $6abe: $0f
	db $dd                                           ; $6abf: $dd
	ld a, b                                          ; $6ac0: $78
	cp [hl]                                          ; $6ac1: $be
	di                                               ; $6ac2: $f3
	ld a, a                                          ; $6ac3: $7f
	pop af                                           ; $6ac4: $f1
	adc [hl]                                         ; $6ac5: $8e
	and e                                            ; $6ac6: $a3
	jp hl                                            ; $6ac7: $e9


	db $f4                                           ; $6ac8: $f4
	ret                                              ; $6ac9: $c9


	ld b, c                                          ; $6aca: $41
	cp $e1                                           ; $6acb: $fe $e1
	db $10                                           ; $6acd: $10
	adc e                                            ; $6ace: $8b
	call z, $9972                                    ; $6acf: $cc $72 $99
	halt                                             ; $6ad2: $76
	rst $38                                          ; $6ad3: $ff
	ccf                                              ; $6ad4: $3f
	rst SubAFromDE                                          ; $6ad5: $df
	scf                                              ; $6ad6: $37
	sub d                                            ; $6ad7: $92
	ret                                              ; $6ad8: $c9


	db $e4                                           ; $6ad9: $e4
	ld [hl], d                                       ; $6ada: $72
	ldh [rAUD2LOW], a                                ; $6adb: $e0 $18
	db $e4                                           ; $6add: $e4
	db $db                                           ; $6ade: $db
	inc h                                            ; $6adf: $24
	ld [de], a                                       ; $6ae0: $12
	add hl, bc                                       ; $6ae1: $09
	add h                                            ; $6ae2: $84
	call c, $9cff                                    ; $6ae3: $dc $ff $9c
	ld a, a                                          ; $6ae6: $7f
	cp a                                             ; $6ae7: $bf
	rst SubAFromDE                                          ; $6ae8: $df
	db $fd                                           ; $6ae9: $fd
	sbc e                                            ; $6aea: $9b
	add b                                            ; $6aeb: $80
	ld b, b                                          ; $6aec: $40
	jr nz, jr_05a_6aff                               ; $6aed: $20 $10

	ld b, a                                          ; $6aef: $47
	sub b                                            ; $6af0: $90
	adc b                                            ; $6af1: $88
	ld hl, sp-$10                                    ; $6af2: $f8 $f0
	ldh [$f0], a                                     ; $6af4: $e0 $f0
	add b                                            ; $6af6: $80
	add c                                            ; $6af7: $81
	pop bc                                           ; $6af8: $c1
	ret nz                                           ; $6af9: $c0

	rlca                                             ; $6afa: $07
	rrca                                             ; $6afb: $0f
	rra                                              ; $6afc: $1f
	rrca                                             ; $6afd: $0f
	ld a, a                                          ; $6afe: $7f

jr_05a_6aff:
	ld a, a                                          ; $6aff: $7f
	ccf                                              ; $6b00: $3f
	ccf                                              ; $6b01: $3f
	nop                                              ; $6b02: $00
	ld e, $3f                                        ; $6b03: $1e $3f
	rrca                                             ; $6b05: $0f
	rst $38                                          ; $6b06: $ff
	rst AddAOntoHL                                          ; $6b07: $ef
	rst SubAFromDE                                          ; $6b08: $df
	ld a, e                                          ; $6b09: $7b
	inc b                                            ; $6b0a: $04
	jp c, Jump_05a_7eff                              ; $6b0b: $da $ff $7e

	db $db                                           ; $6b0e: $db
	sbc d                                            ; $6b0f: $9a
	db $e4                                           ; $6b10: $e4
	ldh [rIE], a                                     ; $6b11: $e0 $ff
	or a                                             ; $6b13: $b7
	ret nc                                           ; $6b14: $d0

	reti                                             ; $6b15: $d9


	rst $38                                          ; $6b16: $ff
	add b                                            ; $6b17: $80
	rlca                                             ; $6b18: $07
	inc bc                                           ; $6b19: $03
	inc de                                           ; $6b1a: $13
	rrca                                             ; $6b1b: $0f
	inc bc                                           ; $6b1c: $03
	ld de, $070f                                     ; $6b1d: $11 $0f $07
	ld hl, sp-$04                                    ; $6b20: $f8 $fc
	db $ec                                           ; $6b22: $ec
	ldh a, [$fc]                                     ; $6b23: $f0 $fc
	xor $f0                                          ; $6b25: $ee $f0
	ld sp, hl                                        ; $6b27: $f9
	db $fc                                           ; $6b28: $fc
	ld hl, sp-$0f                                    ; $6b29: $f8 $f1
	db $e3                                           ; $6b2b: $e3
	and $cc                                          ; $6b2c: $e6 $cc
	sbc b                                            ; $6b2e: $98
	ld hl, sp-$7c                                    ; $6b2f: $f8 $84
	dec bc                                           ; $6b31: $0b
	rla                                              ; $6b32: $17
	cpl                                              ; $6b33: $2f
	ld a, $7f                                        ; $6b34: $3e $7f
	rst $38                                          ; $6b36: $ff
	add d                                            ; $6b37: $82
	rst AddAOntoHL                                          ; $6b38: $ef
	cp h                                             ; $6b39: $bc
	ld [hl], b                                       ; $6b3a: $70
	and b                                            ; $6b3b: $a0
	ld c, c                                          ; $6b3c: $49
	sub c                                            ; $6b3d: $91
	ld hl, $db6b                                     ; $6b3e: $21 $6b $db
	ld [hl], e                                       ; $6b41: $73
	rst AddAOntoHL                                          ; $6b42: $ef
	sbc a                                            ; $6b43: $9f
	ccf                                              ; $6b44: $3f
	ld a, a                                          ; $6b45: $7f
	rst $38                                          ; $6b46: $ff
	db $dd                                           ; $6b47: $dd
	cp l                                             ; $6b48: $bd
	dec de                                           ; $6b49: $1b
	sbc d                                            ; $6b4a: $9a

jr_05a_6b4b:
	xor h                                            ; $6b4b: $ac
	dec l                                            ; $6b4c: $2d
	ld e, $1a                                        ; $6b4d: $1e $1a
	ld a, [bc]                                       ; $6b4f: $0a
	add hl, bc                                       ; $6b50: $09
	db $fc                                           ; $6b51: $fc
	db $fc                                           ; $6b52: $fc

jr_05a_6b53:
	sbc $de                                          ; $6b53: $de $de
	db $dd                                           ; $6b55: $dd
	rst GetHLinHL                                          ; $6b56: $cf
	sub [hl]                                         ; $6b57: $96
	adc c                                            ; $6b58: $89
	jp nz, $8db0                                     ; $6b59: $c2 $b0 $8d

	cp [hl]                                          ; $6b5c: $be
	and b                                            ; $6b5d: $a0
	sbc a                                            ; $6b5e: $9f
	rra                                              ; $6b5f: $1f
	ldh a, [$6e]                                     ; $6b60: $f0 $6e
	ld l, [hl]                                       ; $6b62: $6e
	sub d                                            ; $6b63: $92
	di                                               ; $6b64: $f3
	ccf                                              ; $6b65: $3f
	ld e, h                                          ; $6b66: $5c
	ld a, c                                          ; $6b67: $79
	or [hl]                                          ; $6b68: $b6
	jr jr_05a_6b4b                                   ; $6b69: $18 $e0

	ld bc, $feff                                     ; $6b6b: $01 $ff $fe
	jr c, jr_05a_6b53                                ; $6b6e: $38 $e3

	rst GetHLinHL                                          ; $6b70: $cf
	halt                                             ; $6b71: $76
	ld d, h                                          ; $6b72: $54
	add b                                            ; $6b73: $80
	jr z, jr_05a_6bc7                                ; $6b74: $28 $51

	db $e3                                           ; $6b76: $e3
	rst FarCall                                          ; $6b77: $f7
	ld e, $79                                        ; $6b78: $1e $79
	db $e3                                           ; $6b7a: $e3
	add $71                                          ; $6b7b: $c6 $71
	db $e3                                           ; $6b7d: $e3
	add [hl]                                         ; $6b7e: $86
	inc c                                            ; $6b7f: $0c
	ld sp, hl                                        ; $6b80: $f9
	rst FarCall                                          ; $6b81: $f7
	rst $38                                          ; $6b82: $ff
	ld a, a                                          ; $6b83: $7f
	add $8f                                          ; $6b84: $c6 $8f
	rra                                              ; $6b86: $1f
	cp a                                             ; $6b87: $bf
	ld [hl], a                                       ; $6b88: $77
	rst SubAFromHL                                          ; $6b89: $d7
	sub a                                            ; $6b8a: $97
	sub a                                            ; $6b8b: $97
	adc l                                            ; $6b8c: $8d
	ld e, $3a                                        ; $6b8d: $1e $3a
	ld a, d                                          ; $6b8f: $7a
	jp c, $1a9a                                      ; $6b90: $da $9a $1a

	adc [hl]                                         ; $6b93: $8e
	sbc d                                            ; $6b94: $9a
	rst $38                                          ; $6b95: $ff
	ld a, a                                          ; $6b96: $7f
	ld e, a                                          ; $6b97: $5f
	ld c, a                                          ; $6b98: $4f
	ld l, a                                          ; $6b99: $6f
	ld h, a                                          ; $6b9a: $67
	ld d, a                                          ; $6b9b: $57
	ld d, e                                          ; $6b9c: $53
	ret nz                                           ; $6b9d: $c0

	ldh [$50], a                                     ; $6b9e: $e0 $50
	ld c, b                                          ; $6ba0: $48
	ld l, b                                          ; $6ba1: $68
	ld h, h                                          ; $6ba2: $64
	ld d, h                                          ; $6ba3: $54
	ld d, d                                          ; $6ba4: $52
	ld a, e                                          ; $6ba5: $7b
	call $ff80                                       ; $6ba6: $cd $80 $ff
	db $fd                                           ; $6ba9: $fd
	cp $fe                                           ; $6baa: $fe $fe
	ld a, [$0101]                                    ; $6bac: $fa $01 $01
	inc bc                                           ; $6baf: $03
	ld [bc], a                                       ; $6bb0: $02
	ld b, $05                                        ; $6bb1: $06 $05
	dec b                                            ; $6bb3: $05
	dec c                                            ; $6bb4: $0d
	ld c, h                                          ; $6bb5: $4c
	sbc c                                            ; $6bb6: $99
	sub d                                            ; $6bb7: $92
	ld [hl-], a                                      ; $6bb8: $32
	ld h, $65                                        ; $6bb9: $26 $65
	ld d, l                                          ; $6bbb: $55
	call Call_05a_4422                               ; $6bbc: $cd $22 $44
	ld c, c                                          ; $6bbf: $49
	adc c                                            ; $6bc0: $89
	sub c                                            ; $6bc1: $91
	inc de                                           ; $6bc2: $13
	inc hl                                           ; $6bc3: $23
	ld [hl+], a                                      ; $6bc4: $22
	ld c, $14                                        ; $6bc5: $0e $14

jr_05a_6bc7:
	sbc b                                            ; $6bc7: $98
	add hl, hl                                       ; $6bc8: $29
	ld c, e                                          ; $6bc9: $4b
	sub [hl]                                         ; $6bca: $96
	sub [hl]                                         ; $6bcb: $96
	inc l                                            ; $6bcc: $2c
	inc l                                            ; $6bcd: $2c
	ld a, a                                          ; $6bce: $7f
	ld a, e                                          ; $6bcf: $7b
	rst SubAFromHL                                          ; $6bd0: $d7
	rst SubAFromDE                                          ; $6bd1: $df
	db $fc                                           ; $6bd2: $fc
	rst SubAFromDE                                          ; $6bd3: $df
	ld hl, sp-$66                                    ; $6bd4: $f8 $9a
	dec sp                                           ; $6bd6: $3b
	cp l                                             ; $6bd7: $bd
	ld e, d                                          ; $6bd8: $5a
	ld a, [bc]                                       ; $6bd9: $0a
	add hl, bc                                       ; $6bda: $09
	sbc $05                                          ; $6bdb: $de $05
	sbc d                                            ; $6bdd: $9a
	call $57e6                                       ; $6bde: $cd $e6 $57
	rrca                                             ; $6be1: $0f
	rrca                                             ; $6be2: $0f
	sbc $07                                          ; $6be3: $de $07
	add b                                            ; $6be5: $80
	and $f3                                          ; $6be6: $e6 $f3
	db $eb                                           ; $6be8: $eb
	push af                                          ; $6be9: $f5
	push de                                          ; $6bea: $d5
	ld e, d                                          ; $6beb: $5a
	ld l, d                                          ; $6bec: $6a
	db $ed                                           ; $6bed: $ed
	ld a, c                                          ; $6bee: $79
	cp h                                             ; $6bef: $bc
	cp h                                             ; $6bf0: $bc
	ld e, [hl]                                       ; $6bf1: $5e
	ld a, [hl]                                       ; $6bf2: $7e
	rst AddAOntoHL                                          ; $6bf3: $ef
	cp l                                             ; $6bf4: $bd
	or [hl]                                          ; $6bf5: $b6
	cp l                                             ; $6bf6: $bd
	ld e, h                                          ; $6bf7: $5c
	ld c, [hl]                                       ; $6bf8: $4e
	and [hl]                                         ; $6bf9: $a6
	or a                                             ; $6bfa: $b7
	db $d3                                           ; $6bfb: $d3
	db $db                                           ; $6bfc: $db
	ld l, c                                          ; $6bfd: $69
	ld b, d                                          ; $6bfe: $42
	and e                                            ; $6bff: $a3
	or c                                             ; $6c00: $b1
	ld e, c                                          ; $6c01: $59
	ld e, b                                          ; $6c02: $58
	inc l                                            ; $6c03: $2c
	inc l                                            ; $6c04: $2c
	adc [hl]                                         ; $6c05: $8e
	sub [hl]                                         ; $6c06: $96
	cpl                                              ; $6c07: $2f
	rst GetHLinHL                                          ; $6c08: $cf
	rst AddAOntoHL                                          ; $6c09: $ef
	ld [hl], a                                       ; $6c0a: $77
	ccf                                              ; $6c0b: $3f
	cp e                                             ; $6c0c: $bb
	sbc e                                            ; $6c0d: $9b
	db $dd                                           ; $6c0e: $dd
	ld c, b                                          ; $6c0f: $48
	inc h                                            ; $6c10: $24
	inc d                                            ; $6c11: $14
	sbc d                                            ; $6c12: $9a
	jp z, $edcd                                      ; $6c13: $ca $cd $ed

	ld h, a                                          ; $6c16: $67
	ld a, e                                          ; $6c17: $7b
	sub c                                            ; $6c18: $91
	ld [hl], l                                       ; $6c19: $75
	ret                                              ; $6c1a: $c9


	sbc l                                            ; $6c1b: $9d
	ld hl, sp+$00                                    ; $6c1c: $f8 $00
	ld a, c                                          ; $6c1e: $79
	cp h                                             ; $6c1f: $bc
	ld a, e                                          ; $6c20: $7b
	db $fd                                           ; $6c21: $fd
	sbc c                                            ; $6c22: $99
	rlca                                             ; $6c23: $07
	ldh [rP1], a                                     ; $6c24: $e0 $00
	rlca                                             ; $6c26: $07
	rrca                                             ; $6c27: $0f
	nop                                              ; $6c28: $00
	ld a, e                                          ; $6c29: $7b
	di                                               ; $6c2a: $f3
	ld h, [hl]                                       ; $6c2b: $66
	rst GetHLinHL                                          ; $6c2c: $cf
	sub a                                            ; $6c2d: $97
	ld c, $18                                        ; $6c2e: $0e $18
	add c                                            ; $6c30: $81
	inc bc                                           ; $6c31: $03
	dec bc                                           ; $6c32: $0b
	rst $38                                          ; $6c33: $ff
	rst $38                                          ; $6c34: $ff
	scf                                              ; $6c35: $37
	reti                                             ; $6c36: $d9


	rst $38                                          ; $6c37: $ff
	sub a                                            ; $6c38: $97
	add b                                            ; $6c39: $80
	add e                                            ; $6c3a: $83
	pop bc                                           ; $6c3b: $c1
	nop                                              ; $6c3c: $00
	ld [hl], b                                       ; $6c3d: $70
	jr c, @+$62                                      ; $6c3e: $38 $60

	ld h, b                                          ; $6c40: $60
	ld h, d                                          ; $6c41: $62
	ret nz                                           ; $6c42: $c0

	sub a                                            ; $6c43: $97
	sbc a                                            ; $6c44: $9f
	rst GetHLinHL                                          ; $6c45: $cf
	rlca                                             ; $6c46: $07
	daa                                              ; $6c47: $27
	rra                                              ; $6c48: $1f
	rrca                                             ; $6c49: $0f
	adc a                                            ; $6c4a: $8f
	ei                                               ; $6c4b: $fb
	ld a, c                                          ; $6c4c: $79
	ldh a, [$80]                                     ; $6c4d: $f0 $80
	ret c                                            ; $6c4f: $d8

	ldh [$f0], a                                     ; $6c50: $e0 $f0
	ld [hl], b                                       ; $6c52: $70
	pop af                                           ; $6c53: $f1
	ldh a, [c]                                       ; $6c54: $f2
	db $e4                                           ; $6c55: $e4
	db $ec                                           ; $6c56: $ec
	reti                                             ; $6c57: $d9


	db $db                                           ; $6c58: $db
	ei                                               ; $6c59: $fb
	ei                                               ; $6c5a: $fb
	rra                                              ; $6c5b: $1f
	rra                                              ; $6c5c: $1f
	ccf                                              ; $6c5d: $3f
	ccf                                              ; $6c5e: $3f
	ld a, a                                          ; $6c5f: $7f
	ld a, [hl]                                       ; $6c60: $7e
	ld l, [hl]                                       ; $6c61: $6e
	ld l, [hl]                                       ; $6c62: $6e
	add hl, sp                                       ; $6c63: $39
	ld a, c                                          ; $6c64: $79
	pop af                                           ; $6c65: $f1
	pop af                                           ; $6c66: $f1
	ldh a, [c]                                       ; $6c67: $f2
	ldh [c], a                                       ; $6c68: $e2
	and $e7                                          ; $6c69: $e6 $e7
	db $fd                                           ; $6c6b: $fd
	ret                                              ; $6c6c: $c9


	sbc e                                            ; $6c6d: $9b
	sbc [hl]                                         ; $6c6e: $9e
	sbc e                                            ; $6c6f: $9b
	ld a, e                                          ; $6c70: $7b
	db $ed                                           ; $6c71: $ed
	sub d                                            ; $6c72: $92
	ccf                                              ; $6c73: $3f
	add hl, de                                       ; $6c74: $19
	sbc c                                            ; $6c75: $99
	xor b                                            ; $6c76: $a8
	ld l, h                                          ; $6c77: $6c
	ld e, h                                          ; $6c78: $5c
	ld d, d                                          ; $6c79: $52
	ld [hl-], a                                      ; $6c7a: $32
	add hl, hl                                       ; $6c7b: $29
	rst GetHLinHL                                          ; $6c7c: $cf
	rst GetHLinHL                                          ; $6c7d: $cf
	rst SubAFromDE                                          ; $6c7e: $df
	rst SubAFromDE                                          ; $6c7f: $df
	db $dd                                           ; $6c80: $dd
	rst $38                                          ; $6c81: $ff
	add l                                            ; $6c82: $85
	ld sp, $2722                                     ; $6c83: $31 $22 $27
	ld l, l                                          ; $6c86: $6d
	ld l, a                                          ; $6c87: $6f
	ld a, e                                          ; $6c88: $7b
	ld a, a                                          ; $6c89: $7f
	ld [hl], $e1                                     ; $6c8a: $36 $e1
	db $e3                                           ; $6c8c: $e3
	ldh [c], a                                       ; $6c8d: $e2
	add $c5                                          ; $6c8e: $c6 $c5
	call $fada                                       ; $6c90: $cd $da $fa
	ldh a, [$61]                                     ; $6c93: $f0 $61
	ret nz                                           ; $6c95: $c0

	ret nz                                           ; $6c96: $c0

	add b                                            ; $6c97: $80
	add b                                            ; $6c98: $80
	nop                                              ; $6c99: $00
	nop                                              ; $6c9a: $00
	ldh [$c1], a                                     ; $6c9b: $e0 $c1
	ld [hl], a                                       ; $6c9d: $77
	ld a, [$7dff]                                    ; $6c9e: $fa $ff $7d
	and $94                                          ; $6ca1: $e6 $94
	sbc a                                            ; $6ca3: $9f
	cp [hl]                                          ; $6ca4: $be
	rst $38                                          ; $6ca5: $ff
	inc de                                           ; $6ca6: $13
	add hl, sp                                       ; $6ca7: $39
	cpl                                              ; $6ca8: $2f
	ld sp, hl                                        ; $6ca9: $f9
	ldh [rP1], a                                     ; $6caa: $e0 $00
	ld a, a                                          ; $6cac: $7f
	ld e, a                                          ; $6cad: $5f
	ld a, e                                          ; $6cae: $7b
	ld hl, sp-$74                                    ; $6caf: $f8 $8c
	push de                                          ; $6cb1: $d5
	ld d, l                                          ; $6cb2: $55
	push de                                          ; $6cb3: $d5
	db $dd                                           ; $6cb4: $dd
	ld e, l                                          ; $6cb5: $5d
	db $dd                                           ; $6cb6: $dd
	adc a                                            ; $6cb7: $8f
	jp c, $de9e                                      ; $6cb8: $da $9e $de

	ld e, [hl]                                       ; $6cbb: $5e
	ld d, $96                                        ; $6cbc: $16 $96
	sub [hl]                                         ; $6cbe: $96
	sbc $0f                                          ; $6cbf: $de $0f
	ld d, e                                          ; $6cc1: $53
	ld b, e                                          ; $6cc2: $43
	ld b, e                                          ; $6cc3: $43
	db $dd                                           ; $6cc4: $dd
	adc e                                            ; $6cc5: $8b
	sub c                                            ; $6cc6: $91
	sub a                                            ; $6cc7: $97
	jp c, $deda                                      ; $6cc8: $da $da $de

	adc $ee                                          ; $6ccb: $ce $ee
	xor $fe                                          ; $6ccd: $ee $fe
	db $fc                                           ; $6ccf: $fc
	db $fd                                           ; $6cd0: $fd
	db $fc                                           ; $6cd1: $fc
	db $fc                                           ; $6cd2: $fc
	db $f4                                           ; $6cd3: $f4
	ld a, [$f0de]                                    ; $6cd4: $fa $de $f0
	sbc $0a                                          ; $6cd7: $de $0a
	sbc [hl]                                         ; $6cd9: $9e
	ld a, [de]                                       ; $6cda: $1a
	db $dd                                           ; $6cdb: $dd
	inc d                                            ; $6cdc: $14
	add b                                            ; $6cdd: $80
	res 1, d                                         ; $6cde: $cb $8a
	sbc d                                            ; $6ce0: $9a
	sub l                                            ; $6ce1: $95
	inc d                                            ; $6ce2: $14
	inc [hl]                                         ; $6ce3: $34
	sub $d7                                          ; $6ce4: $d6 $d7
	ld h, $66                                        ; $6ce6: $26 $66
	ld b, [hl]                                       ; $6ce8: $46
	ld c, h                                          ; $6ce9: $4c
	call $adcd                                       ; $6cea: $cd $cd $ad
	xor l                                            ; $6ced: $ad
	inc l                                            ; $6cee: $2c
	jr c, jr_05a_6d6a                                ; $6cef: $38 $79

	ld a, e                                          ; $6cf1: $7b
	ld a, a                                          ; $6cf2: $7f
	rst SubAFromBC                                          ; $6cf3: $e7
	call $f8df                                       ; $6cf4: $cd $df $f8
	ldh a, [$d1]                                     ; $6cf7: $f0 $d1
	jp $8cc6                                         ; $6cf9: $c3 $c6 $8c


	sbc e                                            ; $6cfc: $9b
	sbc h                                            ; $6cfd: $9c
	scf                                              ; $6cfe: $37
	rlca                                             ; $6cff: $07
	ld l, a                                          ; $6d00: $6f
	ld a, b                                          ; $6d01: $78
	or b                                             ; $6d02: $b0
	add b                                            ; $6d03: $80
	ld hl, sp-$0c                                    ; $6d04: $f8 $f4
	add sp, $02                                      ; $6d06: $e8 $02
	ld h, d                                          ; $6d08: $62
	add d                                            ; $6d09: $82
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00

Jump_05a_6d0c:
	inc c                                            ; $6d0c: $0c
	ld hl, sp-$20                                    ; $6d0d: $f8 $e0
	or [hl]                                          ; $6d0f: $b6
	xor e                                            ; $6d10: $ab
	or a                                             ; $6d11: $b7
	ld d, h                                          ; $6d12: $54
	ld e, h                                          ; $6d13: $5c
	ld e, [hl]                                       ; $6d14: $5e
	ld e, a                                          ; $6d15: $5f
	dec sp                                           ; $6d16: $3b
	ei                                               ; $6d17: $fb
	db $fd                                           ; $6d18: $fd
	rst AddAOntoHL                                          ; $6d19: $ef
	ld l, a                                          ; $6d1a: $6f
	ld h, a                                          ; $6d1b: $67
	ld h, l                                          ; $6d1c: $65
	ld h, h                                          ; $6d1d: $64
	inc h                                            ; $6d1e: $24
	xor l                                            ; $6d1f: $ad
	ld d, h                                          ; $6d20: $54
	and [hl]                                         ; $6d21: $a6
	sub $83                                          ; $6d22: $d6 $83
	xor [hl]                                         ; $6d24: $ae
	sbc a                                            ; $6d25: $9f
	sub $d2                                          ; $6d26: $d6 $d2
	ld d, [hl]                                       ; $6d28: $56
	xor e                                            ; $6d29: $ab
	db $db                                           ; $6d2a: $db
	db $eb                                           ; $6d2b: $eb
	rst FarCall                                          ; $6d2c: $f7
	ld sp, hl                                        ; $6d2d: $f9
	cp a                                             ; $6d2e: $bf
	cp a                                             ; $6d2f: $bf
	db $dd                                           ; $6d30: $dd
	db $ed                                           ; $6d31: $ed
	ld l, a                                          ; $6d32: $6f
	cpl                                              ; $6d33: $2f
	ld h, $b6                                        ; $6d34: $26 $b6
	or d                                             ; $6d36: $b2
	sub d                                            ; $6d37: $92
	ld h, [hl]                                       ; $6d38: $66
	ld [hl], $32                                     ; $6d39: $36 $32
	ld [hl-], a                                      ; $6d3b: $32
	inc sp                                           ; $6d3c: $33
	inc de                                           ; $6d3d: $13
	ld de, $6411                                     ; $6d3e: $11 $11 $64
	ld [hl], a                                       ; $6d41: $77
	sbc [hl]                                         ; $6d42: $9e
	add e                                            ; $6d43: $83
	jp c, $ff80                                      ; $6d44: $da $80 $ff

	ld a, c                                          ; $6d47: $79
	ld a, a                                          ; $6d48: $7f
	sbc d                                            ; $6d49: $9a
	cp $f0                                           ; $6d4a: $fe $f0
	ld hl, sp-$01                                    ; $6d4c: $f8 $ff
	rst $38                                          ; $6d4e: $ff
	ld a, c                                          ; $6d4f: $79
	ld a, a                                          ; $6d50: $7f
	sub l                                            ; $6d51: $95
	ld bc, $070f                                     ; $6d52: $01 $0f $07
	inc l                                            ; $6d55: $2c
	nop                                              ; $6d56: $00
	inc a                                            ; $6d57: $3c
	ld a, e                                          ; $6d58: $7b
	rst SubAFromBC                                          ; $6d59: $e7
	sbc a                                            ; $6d5a: $9f
	ccf                                              ; $6d5b: $3f
	ld h, c                                          ; $6d5c: $61
	add b                                            ; $6d5d: $80
	add h                                            ; $6d5e: $84
	jr nz, @+$06                                     ; $6d5f: $20 $04

	nop                                              ; $6d61: $00
	ld b, d                                          ; $6d62: $42
	ld bc, $1381                                     ; $6d63: $01 $81 $13
	ld a, a                                          ; $6d66: $7f
	rst $38                                          ; $6d67: $ff
	ei                                               ; $6d68: $fb
	rst $38                                          ; $6d69: $ff

jr_05a_6d6a:
	cp l                                             ; $6d6a: $bd
	cp $7e                                           ; $6d6b: $fe $7e
	db $ec                                           ; $6d6d: $ec
	add b                                            ; $6d6e: $80
	ccf                                              ; $6d6f: $3f
	rra                                              ; $6d70: $1f
	ccf                                              ; $6d71: $3f
	ld a, [$eaf5]                                    ; $6d72: $fa $f5 $ea
	rst $38                                          ; $6d75: $ff
	rst $38                                          ; $6d76: $ff
	ret nz                                           ; $6d77: $c0

	ldh [$c0], a                                     ; $6d78: $e0 $c0
	ld h, b                                          ; $6d7a: $60
	ret nz                                           ; $6d7b: $c0

	sbc b                                            ; $6d7c: $98
	ld e, a                                          ; $6d7d: $5f
	cp d                                             ; $6d7e: $ba
	call nc, $4cef                                   ; $6d7f: $d4 $ef $4c
	ld b, h                                          ; $6d82: $44
	inc b                                            ; $6d83: $04
	db $fd                                           ; $6d84: $fd
	add [hl]                                         ; $6d85: $86
	rrca                                             ; $6d86: $0f
	and $ee                                          ; $6d87: $e6 $ee
	xor $ff                                          ; $6d89: $ee $ff
	ld d, l                                          ; $6d8b: $55
	cp e                                             ; $6d8c: $bb
	nop                                              ; $6d8d: $00
	ldh [$3f], a                                     ; $6d8e: $e0 $3f
	dec sp                                           ; $6d90: $3b
	dec sp                                           ; $6d91: $3b
	ld sp, $1111                                     ; $6d92: $31 $11 $11
	nop                                              ; $6d95: $00
	ldh [$a9], a                                     ; $6d96: $e0 $a9
	and h                                            ; $6d98: $a4
	ld b, h                                          ; $6d99: $44
	ld b, d                                          ; $6d9a: $42
	ld hl, $9121                                     ; $6d9b: $21 $21 $91
	push de                                          ; $6d9e: $d5
	jp c, $96ff                                      ; $6d9f: $da $ff $96

	cp a                                             ; $6da2: $bf
	ld d, $ac                                        ; $6da3: $16 $ac
	ld l, b                                          ; $6da5: $68
	ld a, b                                          ; $6da6: $78
	ld hl, sp-$10                                    ; $6da7: $f8 $f0
	ldh a, [$f4]                                     ; $6da9: $f0 $f4
	ld a, c                                          ; $6dab: $79
	push af                                          ; $6dac: $f5
	sbc l                                            ; $6dad: $9d
	ret nc                                           ; $6dae: $d0

	sub b                                            ; $6daf: $90
	sbc $08                                          ; $6db0: $de $08
	pop af                                           ; $6db2: $f1
	sbc e                                            ; $6db3: $9b
	ld [hl], $3c                                     ; $6db4: $36 $3c
	add hl, de                                       ; $6db6: $19
	ld [bc], a                                       ; $6db7: $02
	db $fd                                           ; $6db8: $fd
	sbc l                                            ; $6db9: $9d
	ld l, $1c                                        ; $6dba: $2e $1c
	ld l, a                                          ; $6dbc: $6f
	push hl                                          ; $6dbd: $e5
	sub [hl]                                         ; $6dbe: $96
	adc d                                            ; $6dbf: $8a
	ld a, [bc]                                       ; $6dc0: $0a
	ld d, c                                          ; $6dc1: $51
	or c                                             ; $6dc2: $b1
	ld d, e                                          ; $6dc3: $53
	dec e                                            ; $6dc4: $1d
	dec c                                            ; $6dc5: $0d
	ld a, [hl-]                                      ; $6dc6: $3a
	rrca                                             ; $6dc7: $0f
	ld a, b                                          ; $6dc8: $78
	rst SubAFromDE                                          ; $6dc9: $df
	rst SubAFromDE                                          ; $6dca: $df
	rra                                              ; $6dcb: $1f
	sub l                                            ; $6dcc: $95
	rrca                                             ; $6dcd: $0f
	ld e, $97                                        ; $6dce: $1e $97
	rra                                              ; $6dd0: $1f
	rra                                              ; $6dd1: $1f
	ld e, a                                          ; $6dd2: $5f
	ld e, a                                          ; $6dd3: $5f
	cp a                                             ; $6dd4: $bf
	xor a                                            ; $6dd5: $af
	rst SubAFromHL                                          ; $6dd6: $d7
	ld a, e                                          ; $6dd7: $7b
	ret nz                                           ; $6dd8: $c0

	rst SubAFromDE                                          ; $6dd9: $df
	ldh a, [$df]                                     ; $6dda: $f0 $df
	ldh [$80], a                                     ; $6ddc: $e0 $80
	ret nz                                           ; $6dde: $c0

	ldh a, [$fa]                                     ; $6ddf: $f0 $fa
	ld a, [$fffb]                                    ; $6de1: $fa $fb $ff
	rst $38                                          ; $6de4: $ff
	db $fd                                           ; $6de5: $fd
	db $fd                                           ; $6de6: $fd
	inc d                                            ; $6de7: $14
	inc d                                            ; $6de8: $14
	ld d, $16                                        ; $6de9: $16 $16
	ld [de], a                                       ; $6deb: $12
	ld [de], a                                       ; $6dec: $12
	dec bc                                           ; $6ded: $0b
	dec bc                                           ; $6dee: $0b
	push de                                          ; $6def: $d5
	push de                                          ; $6df0: $d5
	push bc                                          ; $6df1: $c5
	jp nz, Jump_05a_6962                             ; $6df2: $c2 $62 $69

	cp c                                             ; $6df5: $b9
	or l                                             ; $6df6: $b5
	xor a                                            ; $6df7: $af

Call_05a_6df8:
	xor a                                            ; $6df8: $af
	cp a                                             ; $6df9: $bf
	cp a                                             ; $6dfa: $bf
	rst SubAFromDE                                          ; $6dfb: $df
	rst SubAFromDE                                          ; $6dfc: $df
	rst SubAFromDE                                          ; $6dfd: $df
	ld l, a                                          ; $6dfe: $6f
	ld a, a                                          ; $6dff: $7f
	db $10                                           ; $6e00: $10
	sub [hl]                                         ; $6e01: $96
	or e                                             ; $6e02: $b3
	add c                                            ; $6e03: $81
	add b                                            ; $6e04: $80
	ret nz                                           ; $6e05: $c0

	ld h, b                                          ; $6e06: $60
	and b                                            ; $6e07: $a0
	inc a                                            ; $6e08: $3c
	dec bc                                           ; $6e09: $0b
	ld bc, $f87b                                     ; $6e0a: $01 $7b $f8
	sbc d                                            ; $6e0d: $9a
	add b                                            ; $6e0e: $80
	ldh [$a0], a                                     ; $6e0f: $e0 $a0
	and b                                            ; $6e11: $a0
	ld b, b                                          ; $6e12: $40
	ld [hl], d                                       ; $6e13: $72
	ld e, b                                          ; $6e14: $58
	ld a, a                                          ; $6e15: $7f
	rst FarCall                                          ; $6e16: $f7
	ld a, a                                          ; $6e17: $7f
	di                                               ; $6e18: $f3
	db $fd                                           ; $6e19: $fd
	sub a                                            ; $6e1a: $97
	dec hl                                           ; $6e1b: $2b
	add hl, hl                                       ; $6e1c: $29
	ld hl, $3a30                                     ; $6e1d: $21 $30 $3a
	add hl, sp                                       ; $6e20: $39
	add hl, hl                                       ; $6e21: $29

jr_05a_6e22:
	add hl, hl                                       ; $6e22: $29
	call c, $9124                                    ; $6e23: $dc $24 $91
	ld h, $36                                        ; $6e26: $26 $36
	ld [hl], $52                                     ; $6e28: $36 $52
	ld e, d                                          ; $6e2a: $5a
	ld a, d                                          ; $6e2b: $7a
	ld a, $3e                                        ; $6e2c: $3e $3e
	ld l, $0e                                        ; $6e2e: $2e $0e
	rst SubAFromDE                                          ; $6e30: $df
	cp a                                             ; $6e31: $bf
	or a                                             ; $6e32: $b7
	sub a                                            ; $6e33: $97
	sbc $93                                          ; $6e34: $de $93
	rst SubAFromDE                                          ; $6e36: $df
	sub c                                            ; $6e37: $91
	sub [hl]                                         ; $6e38: $96
	ld [de], a                                       ; $6e39: $12
	ld e, b                                          ; $6e3a: $58
	ld e, c                                          ; $6e3b: $59
	ld e, l                                          ; $6e3c: $5d
	ld [hl], l                                       ; $6e3d: $75
	ld [hl], l                                       ; $6e3e: $75
	dec [hl]                                         ; $6e3f: $35
	dec d                                            ; $6e40: $15
	sub c                                            ; $6e41: $91
	sbc $93                                          ; $6e42: $de $93
	rst SubAFromDE                                          ; $6e44: $df
	sbc e                                            ; $6e45: $9b
	ld a, l                                          ; $6e46: $7d
	rst SubAFromHL                                          ; $6e47: $d7
	ld h, c                                          ; $6e48: $61
	xor b                                            ; $6e49: $a8
	ld [hl], e                                       ; $6e4a: $73
	jp nz, Jump_05a_7fff                             ; $6e4b: $c2 $ff $7f

	cp d                                             ; $6e4e: $ba
	adc c                                            ; $6e4f: $89
	jr z, jr_05a_6e22                                ; $6e50: $28 $d0

	sub b                                            ; $6e52: $90
	ld b, $4c                                        ; $6e53: $06 $4c
	ld hl, sp+$3f                                    ; $6e55: $f8 $3f
	ld a, a                                          ; $6e57: $7f
	rst SubAFromHL                                          ; $6e58: $d7
	cpl                                              ; $6e59: $2f
	ld a, a                                          ; $6e5a: $7f
	ld sp, hl                                        ; $6e5b: $f9
	or e                                             ; $6e5c: $b3
	rlca                                             ; $6e5d: $07
	ld h, a                                          ; $6e5e: $67
	rst AddAOntoHL                                          ; $6e5f: $ef
	rst SubAFromDE                                          ; $6e60: $df
	dec e                                            ; $6e61: $1d
	daa                                              ; $6e62: $27
	rlca                                             ; $6e63: $07
	adc $84                                          ; $6e64: $ce $84
	ret c                                            ; $6e66: $d8

	rst $38                                          ; $6e67: $ff
	sub b                                            ; $6e68: $90
	ccf                                              ; $6e69: $3f
	adc a                                            ; $6e6a: $8f
	rst GetHLinHL                                          ; $6e6b: $cf
	rst SubAFromBC                                          ; $6e6c: $e7
	rlca                                             ; $6e6d: $07
	cp a                                             ; $6e6e: $bf
	rra                                              ; $6e6f: $1f
	nop                                              ; $6e70: $00
	ret nz                                           ; $6e71: $c0

	ldh a, [$f0]                                     ; $6e72: $f0 $f0
	ld hl, sp-$08                                    ; $6e74: $f8 $f8
	ret nz                                           ; $6e76: $c0

	ldh [$de], a                                     ; $6e77: $e0 $de
	rst $38                                          ; $6e79: $ff
	add b                                            ; $6e7a: $80
	ld sp, hl                                        ; $6e7b: $f9
	pop af                                           ; $6e7c: $f1
	db $e3                                           ; $6e7d: $e3
	add $86                                          ; $6e7e: $c6 $86
	nop                                              ; $6e80: $00
	inc bc                                           ; $6e81: $03
	inc b                                            ; $6e82: $04
	ld [$2010], sp                                   ; $6e83: $08 $10 $20
	ld b, b                                          ; $6e86: $40
	add b                                            ; $6e87: $80
	ld sp, hl                                        ; $6e88: $f9
	rst $38                                          ; $6e89: $ff
	ldh a, [$78]                                     ; $6e8a: $f0 $78
	ld a, h                                          ; $6e8c: $7c
	ld a, h                                          ; $6e8d: $7c
	inc l                                            ; $6e8e: $2c
	ld h, $f7                                        ; $6e8f: $26 $f7
	add b                                            ; $6e91: $80
	ld h, b                                          ; $6e92: $60
	jr nc, jr_05a_6ebd                               ; $6e93: $30 $28

	jr z, @+$06                                      ; $6e95: $28 $04

	inc b                                            ; $6e97: $04
	inc e                                            ; $6e98: $1c
	jp $f87f                                         ; $6e99: $c3 $7f $f8


	add b                                            ; $6e9c: $80
	jr @+$0a                                         ; $6e9d: $18 $08

	inc c                                            ; $6e9f: $0c
	inc b                                            ; $6ea0: $04
	db $fc                                           ; $6ea1: $fc
	rst FarCall                                          ; $6ea2: $f7
	dec sp                                           ; $6ea3: $3b
	dec e                                            ; $6ea4: $1d
	dec c                                            ; $6ea5: $0d
	ld c, $06                                        ; $6ea6: $0e $06
	rlca                                             ; $6ea8: $07
	ld a, a                                          ; $6ea9: $7f
	cp a                                             ; $6eaa: $bf
	ld a, a                                          ; $6eab: $7f
	rrca                                             ; $6eac: $0f
	ld b, $02                                        ; $6ead: $06 $02
	inc bc                                           ; $6eaf: $03
	ld bc, $b655                                     ; $6eb0: $01 $55 $b6
	db $f4                                           ; $6eb3: $f4
	ld hl, sp-$04                                    ; $6eb4: $f8 $fc
	cp $fe                                           ; $6eb6: $fe $fe
	ld a, a                                          ; $6eb8: $7f
	ld hl, sp-$06                                    ; $6eb9: $f8 $fa
	db $e4                                           ; $6ebb: $e4
	db $fd                                           ; $6ebc: $fd

jr_05a_6ebd:
	ld a, a                                          ; $6ebd: $7f
	jp nz, $049d                                     ; $6ebe: $c2 $9d $04

	ld [bc], a                                       ; $6ec1: $02
	ld [hl], d                                       ; $6ec2: $72
	ret c                                            ; $6ec3: $d8

	pop af                                           ; $6ec4: $f1
	add b                                            ; $6ec5: $80
	rra                                              ; $6ec6: $1f
	ld a, a                                          ; $6ec7: $7f
	ld c, [hl]                                       ; $6ec8: $4e
	ld d, a                                          ; $6ec9: $57
	ld l, a                                          ; $6eca: $6f
	add hl, sp                                       ; $6ecb: $39
	ld d, e                                          ; $6ecc: $53
	ld h, a                                          ; $6ecd: $67
	rrca                                             ; $6ece: $0f
	dec a                                            ; $6ecf: $3d
	ld a, a                                          ; $6ed0: $7f
	ld l, a                                          ; $6ed1: $6f
	ld [hl], $1c                                     ; $6ed2: $36 $1c
	ld h, c                                          ; $6ed4: $61
	inc bc                                           ; $6ed5: $03
	ld a, [$f8f4]                                    ; $6ed6: $fa $f4 $f8
	add sp, -$18                                     ; $6ed9: $e8 $e8
	call nc, Call_05a_40cc                           ; $6edb: $d4 $cc $40
	ld c, $9c                                        ; $6ede: $0e $9c
	sbc b                                            ; $6ee0: $98
	jr c, jr_05a_6f5b                                ; $6ee1: $38 $78

	call c, $96cc                                    ; $6ee3: $dc $cc $96
	ret nz                                           ; $6ee6: $c0

	xor d                                            ; $6ee7: $aa
	sub l                                            ; $6ee8: $95
	inc bc                                           ; $6ee9: $03
	dec d                                            ; $6eea: $15
	inc bc                                           ; $6eeb: $03
	dec d                                            ; $6eec: $15
	cpl                                              ; $6eed: $2f
	ld bc, $4067                                     ; $6eee: $01 $67 $40
	sbc h                                            ; $6ef1: $9c
	rst $38                                          ; $6ef2: $ff
	ld e, [hl]                                       ; $6ef3: $5e
	cp $dd                                           ; $6ef4: $fe $dd
	rst $38                                          ; $6ef6: $ff
	sbc [hl]                                         ; $6ef7: $9e
	ld a, a                                          ; $6ef8: $7f
	ld a, b                                          ; $6ef9: $78
	ld l, h                                          ; $6efa: $6c
	rst SubAFromDE                                          ; $6efb: $df
	ld [bc], a                                       ; $6efc: $02
	rst SubAFromDE                                          ; $6efd: $df
	ld bc, $0080                                     ; $6efe: $01 $80 $00
	inc e                                            ; $6f01: $1c
	sbc $af                                          ; $6f02: $de $af
	ld c, a                                          ; $6f04: $4f
	rst AddAOntoHL                                          ; $6f05: $ef
	ld [hl], a                                       ; $6f06: $77
	cp a                                             ; $6f07: $bf
	rst $38                                          ; $6f08: $ff
	rst FarCall                                          ; $6f09: $f7
	cp e                                             ; $6f0a: $bb
	rst SubAFromDE                                          ; $6f0b: $df
	ei                                               ; $6f0c: $fb
	ld a, c                                          ; $6f0d: $79
	db $dd                                           ; $6f0e: $dd
	ld l, h                                          ; $6f0f: $6c
	and h                                            ; $6f10: $a4
	ldh [$60], a                                     ; $6f11: $e0 $60
	pop af                                           ; $6f13: $f1
	daa                                              ; $6f14: $27
	ld a, [hl]                                       ; $6f15: $7e
	cp b                                             ; $6f16: $b8
	cp d                                             ; $6f17: $ba
	ld e, h                                          ; $6f18: $5c
	ldh [$c0], a                                     ; $6f19: $e0 $c0
	pop hl                                           ; $6f1b: $e1
	jp nz, $c08c                                     ; $6f1c: $c2 $8c $c0

	sbc e                                            ; $6f1f: $9b
	call nz, JoypadTransitionInterrupt               ; $6f20: $c4 $60 $00
	nop                                              ; $6f23: $00
	ld l, e                                          ; $6f24: $6b
	rst JumpTable                                          ; $6f25: $c7
	ld a, [$24dd]                                    ; $6f26: $fa $dd $24
	rst SubAFromDE                                          ; $6f29: $df
	dec h                                            ; $6f2a: $25
	sbc l                                            ; $6f2b: $9d
	ld h, l                                          ; $6f2c: $65
	push hl                                          ; $6f2d: $e5
	reti                                             ; $6f2e: $d9


	ccf                                              ; $6f2f: $3f
	add a                                            ; $6f30: $87
	db $db                                           ; $6f31: $db
	di                                               ; $6f32: $f3
	pop af                                           ; $6f33: $f1
	jp hl                                            ; $6f34: $e9


	ld h, l                                          ; $6f35: $65
	ld h, e                                          ; $6f36: $63
	ld h, a                                          ; $6f37: $67
	ld l, a                                          ; $6f38: $6f
	sub l                                            ; $6f39: $95
	sbc l                                            ; $6f3a: $9d
	sbc a                                            ; $6f3b: $9f
	xor a                                            ; $6f3c: $af
	and a                                            ; $6f3d: $a7
	and d                                            ; $6f3e: $a2
	and h                                            ; $6f3f: $a4
	xor b                                            ; $6f40: $a8
	ld de, $1313                                     ; $6f41: $11 $13 $13
	ld [hl], e                                       ; $6f44: $73
	rst $38                                          ; $6f45: $ff
	rst SubAFromBC                                          ; $6f46: $e7
	add c                                            ; $6f47: $81
	nop                                              ; $6f48: $00
	ld a, c                                          ; $6f49: $79
	ld c, d                                          ; $6f4a: $4a
	sbc h                                            ; $6f4b: $9c
	cp $8e                                           ; $6f4c: $fe $8e
	inc bc                                           ; $6f4e: $03
	ld l, l                                          ; $6f4f: $6d
	ret nc                                           ; $6f50: $d0

	db $dd                                           ; $6f51: $dd
	rst $38                                          ; $6f52: $ff
	ei                                               ; $6f53: $fb
	sbc d                                            ; $6f54: $9a
	add b                                            ; $6f55: $80
	ld b, b                                          ; $6f56: $40
	ld hl, sp-$03                                    ; $6f57: $f8 $fd
	rst $38                                          ; $6f59: $ff
	ld [hl], l                                       ; $6f5a: $75

jr_05a_6f5b:
	ld l, l                                          ; $6f5b: $6d
	sbc e                                            ; $6f5c: $9b
	cp $07                                           ; $6f5d: $fe $07
	ld [bc], a                                       ; $6f5f: $02
	nop                                              ; $6f60: $00
	ld a, e                                          ; $6f61: $7b
	ldh [c], a                                       ; $6f62: $e2
	ld a, h                                          ; $6f63: $7c
	scf                                              ; $6f64: $37
	rst SubAFromDE                                          ; $6f65: $df
	add b                                            ; $6f66: $80
	sub d                                            ; $6f67: $92
	ld [$0109], sp                                   ; $6f68: $08 $09 $01
	call nz, $0084                                   ; $6f6b: $c4 $84 $00
	ld a, a                                          ; $6f6e: $7f
	ld a, a                                          ; $6f6f: $7f
	rst FarCall                                          ; $6f70: $f7
	or $fe                                           ; $6f71: $f6 $fe
	dec sp                                           ; $6f73: $3b
	ld a, e                                          ; $6f74: $7b
	ld [hl], a                                       ; $6f75: $77
	push hl                                          ; $6f76: $e5
	rst SubAFromDE                                          ; $6f77: $df
	db $fc                                           ; $6f78: $fc
	adc a                                            ; $6f79: $8f
	ld hl, sp-$07                                    ; $6f7a: $f8 $f9
	rst $38                                          ; $6f7c: $ff
	ld bc, $0402                                     ; $6f7d: $01 $02 $04
	ld [$1008], sp                                   ; $6f80: $08 $08 $10
	db $10                                           ; $6f83: $10
	jr nz, jr_05a_6f92                               ; $6f84: $20 $0c

	ld [$3018], sp                                   ; $6f86: $08 $18 $30
	ld h, b                                          ; $6f89: $60
	ld a, b                                          ; $6f8a: $78
	adc l                                            ; $6f8b: $8d
	ld sp, hl                                        ; $6f8c: $f9
	sbc $26                                          ; $6f8d: $de $26
	call c, $7606                                    ; $6f8f: $dc $06 $76

jr_05a_6f92:
	ldh a, [rPCM12]                                  ; $6f92: $f0 $76
	xor $7a                                          ; $6f94: $ee $7a
	call nc, $d37e                                   ; $6f96: $d4 $7e $d3
	rst SubAFromDE                                          ; $6f99: $df
	ld bc, $089e                                     ; $6f9a: $01 $9e $08
	ld [hl], e                                       ; $6f9d: $73
	ld a, [$95fe]                                    ; $6f9e: $fa $fe $95
	add hl, sp                                       ; $6fa1: $39
	inc a                                            ; $6fa2: $3c
	ld a, $1e                                        ; $6fa3: $3e $1e
	ld e, [hl]                                       ; $6fa5: $5e
	rst SubAFromDE                                          ; $6fa6: $df
	adc a                                            ; $6fa7: $8f
	xor a                                            ; $6fa8: $af
	ld b, a                                          ; $6fa9: $47
	inc bc                                           ; $6faa: $03
	sbc $81                                          ; $6fab: $de $81
	ld a, l                                          ; $6fad: $7d
	rst $38                                          ; $6fae: $ff
	sub l                                            ; $6faf: $95
	ret nz                                           ; $6fb0: $c0

	add e                                            ; $6fb1: $83
	add e                                            ; $6fb2: $83
	add a                                            ; $6fb3: $87
	rst JumpTable                                          ; $6fb4: $c7
	ld c, a                                          ; $6fb5: $4f
	ld c, a                                          ; $6fb6: $4f
	ld a, a                                          ; $6fb7: $7f
	ccf                                              ; $6fb8: $3f
	nop                                              ; $6fb9: $00
	sbc $80                                          ; $6fba: $de $80
	sub e                                            ; $6fbc: $93
	pop bc                                           ; $6fbd: $c1
	jp $edc5                                         ; $6fbe: $c3 $c5 $ed


	add b                                            ; $6fc1: $80
	ldh [$50], a                                     ; $6fc2: $e0 $50
	db $fd                                           ; $6fc4: $fd
	sub a                                            ; $6fc5: $97
	ld e, c                                          ; $6fc6: $59
	ld a, e                                          ; $6fc7: $7b
	rst FarCall                                          ; $6fc8: $f7
	ld a, c                                          ; $6fc9: $79
	xor $7c                                          ; $6fca: $ee $7c
	db $fc                                           ; $6fcc: $fc
	rst SubAFromDE                                          ; $6fcd: $df
	or a                                             ; $6fce: $b7
	adc e                                            ; $6fcf: $8b
	cp a                                             ; $6fd0: $bf
	dec c                                            ; $6fd1: $0d
	dec e                                            ; $6fd2: $1d
	ld [hl], l                                       ; $6fd3: $75
	ld h, l                                          ; $6fd4: $65
	rst SubAFromBC                                          ; $6fd5: $e7
	cpl                                              ; $6fd6: $2f
	scf                                              ; $6fd7: $37
	ld a, a                                          ; $6fd8: $7f
	rlca                                             ; $6fd9: $07
	rrca                                             ; $6fda: $0f
	ccf                                              ; $6fdb: $3f
	rst $38                                          ; $6fdc: $ff
	cp l                                             ; $6fdd: $bd
	or l                                             ; $6fde: $b5
	or l                                             ; $6fdf: $b5
	or [hl]                                          ; $6fe0: $b6
	ld b, d                                          ; $6fe1: $42
	ld d, l                                          ; $6fe2: $55
	ld a, a                                          ; $6fe3: $7f
	call c, $ddff                                    ; $6fe4: $dc $ff $dd
	ret nz                                           ; $6fe7: $c0

	sub e                                            ; $6fe8: $93
	ld b, b                                          ; $6fe9: $40
	jr nz, jr_05a_6fec                               ; $6fea: $20 $00

jr_05a_6fec:
	add b                                            ; $6fec: $80
	xor e                                            ; $6fed: $ab
	ld e, a                                          ; $6fee: $5f
	rst $38                                          ; $6fef: $ff
	push af                                          ; $6ff0: $f5
	ld [$aac0], a                                    ; $6ff1: $ea $c0 $aa
	push af                                          ; $6ff4: $f5
	ld sp, hl                                        ; $6ff5: $f9
	rst SubAFromDE                                          ; $6ff6: $df
	rst $38                                          ; $6ff7: $ff
	sbc c                                            ; $6ff8: $99
	ld [$8040], a                                    ; $6ff9: $ea $40 $80
	ld d, b                                          ; $6ffc: $50
	nop                                              ; $6ffd: $00
	ld d, l                                          ; $6ffe: $55
	ld sp, hl                                        ; $6fff: $f9
	sbc h                                            ; $7000: $9c
	cp $f9                                           ; $7001: $fe $f9
	xor d                                            ; $7003: $aa
	db $fd                                           ; $7004: $fd

jr_05a_7005:
	sbc h                                            ; $7005: $9c
	db $10                                           ; $7006: $10
	ld d, b                                          ; $7007: $50
	jr c, jr_05a_7005                                ; $7008: $38 $fb

jr_05a_700a:
	sbc d                                            ; $700a: $9a
	jr c, jr_05a_7025                                ; $700b: $38 $18

	inc c                                            ; $700d: $0c
	rlca                                             ; $700e: $07
	ld [bc], a                                       ; $700f: $02
	ld a, e                                          ; $7010: $7b
	ld [hl], a                                       ; $7011: $77
	sbc d                                            ; $7012: $9a
	jr nz, jr_05a_7025                               ; $7013: $20 $10

	ld [$0304], sp                                   ; $7015: $08 $04 $03
	ld a, e                                          ; $7018: $7b
	ld hl, sp-$69                                    ; $7019: $f8 $97
	ld bc, $0703                                     ; $701b: $01 $03 $07
	rra                                              ; $701e: $1f
	rst $38                                          ; $701f: $ff
	di                                               ; $7020: $f3
	ld [hl+], a                                      ; $7021: $22
	ld [hl+], a                                      ; $7022: $22
	ld [hl], b                                       ; $7023: $70
	db $d3                                           ; $7024: $d3

jr_05a_7025:
	ld a, l                                          ; $7025: $7d
	db $e3                                           ; $7026: $e3
	sbc l                                            ; $7027: $9d
	ccf                                              ; $7028: $3f
	jp hl                                            ; $7029: $e9


	sbc $ea                                          ; $702a: $de $ea
	sbc e                                            ; $702c: $9b
	db $d3                                           ; $702d: $d3
	sub $d7                                          ; $702e: $d6 $d7
	sub $dd                                          ; $7030: $d6 $dd
	ccf                                              ; $7032: $3f
	rst SubAFromDE                                          ; $7033: $df
	ld a, a                                          ; $7034: $7f
	rst SubAFromDE                                          ; $7035: $df
	rst $38                                          ; $7036: $ff
	sub d                                            ; $7037: $92
	call c, $fcfa                                    ; $7038: $dc $fa $fc
	ld hl, sp-$10                                    ; $703b: $f8 $f0
	ldh [$c0], a                                     ; $703d: $e0 $c0
	inc b                                            ; $703f: $04
	ld d, b                                          ; $7040: $50
	ld h, b                                          ; $7041: $60
	ret z                                            ; $7042: $c8

	sub b                                            ; $7043: $90
	jr nz, jr_05a_70b2                               ; $7044: $20 $6c

	sbc l                                            ; $7046: $9d
	db $f4                                           ; $7047: $f4
	ld a, [hl]                                       ; $7048: $7e
	ld d, [hl]                                       ; $7049: $56
	rst SubAFromDE                                          ; $704a: $df
	ld a, a                                          ; $704b: $7f
	sub e                                            ; $704c: $93
	ld l, a                                          ; $704d: $6f
	ld a, a                                          ; $704e: $7f
	ld [hl], a                                       ; $704f: $77
	cpl                                              ; $7050: $2f
	ld h, b                                          ; $7051: $60
	jr nc, jr_05a_7084                               ; $7052: $30 $30

	jr z, jr_05a_708a                                ; $7054: $28 $34

	inc [hl]                                         ; $7056: $34
	ld a, [hl-]                                      ; $7057: $3a
	ld a, [hl-]                                      ; $7058: $3a
	ld [hl], d                                       ; $7059: $72
	ld b, d                                          ; $705a: $42
	ld a, d                                          ; $705b: $7a
	db $db                                           ; $705c: $db
	ld [hl], a                                       ; $705d: $77
	inc d                                            ; $705e: $14
	halt                                             ; $705f: $76
	ret nz                                           ; $7060: $c0

	sub c                                            ; $7061: $91
	jr nc, jr_05a_700a                               ; $7062: $30 $a6

	nop                                              ; $7064: $00
	add b                                            ; $7065: $80
	call z, $00c5                                    ; $7066: $cc $c5 $00
	inc bc                                           ; $7069: $03
	rst GetHLinHL                                          ; $706a: $cf
	ld e, c                                          ; $706b: $59
	rst $38                                          ; $706c: $ff
	ld a, a                                          ; $706d: $7f
	ccf                                              ; $706e: $3f
	ccf                                              ; $706f: $3f
	ld [hl], d                                       ; $7070: $72
	pop bc                                           ; $7071: $c1
	call c, Call_05a_6df8                            ; $7072: $dc $f8 $6d
	ld a, [bc]                                       ; $7075: $0a
	ld a, e                                          ; $7076: $7b
	rst SubAFromDE                                          ; $7077: $df
	ld a, [hl]                                       ; $7078: $7e
	or a                                             ; $7079: $b7
	rst SubAFromDE                                          ; $707a: $df
	ld [bc], a                                       ; $707b: $02
	sbc h                                            ; $707c: $9c
	ld b, $0c                                        ; $707d: $06 $0c
	inc e                                            ; $707f: $1c
	ld sp, hl                                        ; $7080: $f9
	call c, $7806                                    ; $7081: $dc $06 $78

jr_05a_7084:
	and h                                            ; $7084: $a4
	ld l, e                                          ; $7085: $6b
	ldh [c], a                                       ; $7086: $e2
	sbc [hl]                                         ; $7087: $9e
	ld [bc], a                                       ; $7088: $02
	ld a, d                                          ; $7089: $7a

jr_05a_708a:
	and d                                            ; $708a: $a2
	ld a, a                                          ; $708b: $7f
	push de                                          ; $708c: $d5
	sbc l                                            ; $708d: $9d
	db $fc                                           ; $708e: $fc
	ldh a, [rOCPD]                                   ; $708f: $f0 $6b
	add [hl]                                         ; $7091: $86
	ld a, a                                          ; $7092: $7f
	ld sp, hl                                        ; $7093: $f9
	call c, $9eef                                    ; $7094: $dc $ef $9e
	db $e3                                           ; $7097: $e3
	ld a, e                                          ; $7098: $7b
	inc b                                            ; $7099: $04
	call c, $9d40                                    ; $709a: $dc $40 $9d
	ld h, b                                          ; $709d: $60
	ld a, h                                          ; $709e: $7c
	ld h, l                                          ; $709f: $65
	ld a, [hl+]                                      ; $70a0: $2a
	rst SubAFromDE                                          ; $70a1: $df
	ld a, [hl-]                                      ; $70a2: $3a
	rst SubAFromDE                                          ; $70a3: $df
	inc d                                            ; $70a4: $14
	rst SubAFromDE                                          ; $70a5: $df
	ld [de], a                                       ; $70a6: $12
	rst SubAFromDE                                          ; $70a7: $df
	add hl, de                                       ; $70a8: $19
	sbc [hl]                                         ; $70a9: $9e
	or a                                             ; $70aa: $b7
	jp c, $9bff                                      ; $70ab: $da $ff $9b

	db $fd                                           ; $70ae: $fd
	db $ed                                           ; $70af: $ed
	ld c, c                                          ; $70b0: $49
	ld c, e                                          ; $70b1: $4b

jr_05a_70b2:
	ld [hl], h                                       ; $70b2: $74
	ld c, [hl]                                       ; $70b3: $4e
	ld [hl], a                                       ; $70b4: $77
	inc a                                            ; $70b5: $3c
	db $dd                                           ; $70b6: $dd
	rst $38                                          ; $70b7: $ff
	sbc e                                            ; $70b8: $9b
	reti                                             ; $70b9: $d9


	ret c                                            ; $70ba: $d8

	sub b                                            ; $70bb: $90
	db $10                                           ; $70bc: $10
	ld l, [hl]                                       ; $70bd: $6e
	ldh [rBCPS], a                                   ; $70be: $e0 $68
	ret nc                                           ; $70c0: $d0

	sbc [hl]                                         ; $70c1: $9e
	ld b, b                                          ; $70c2: $40
	ei                                               ; $70c3: $fb
	sbc l                                            ; $70c4: $9d
	xor $fd                                          ; $70c5: $ee $fd
	ld d, [hl]                                       ; $70c7: $56
	nop                                              ; $70c8: $00
	rst $38                                          ; $70c9: $ff
	sbc h                                            ; $70ca: $9c
	xor d                                            ; $70cb: $aa
	ld d, l                                          ; $70cc: $55
	xor a                                            ; $70cd: $af
	ld c, e                                          ; $70ce: $4b
	ldh a, [$9a]                                     ; $70cf: $f0 $9a
	xor [hl]                                         ; $70d1: $ae
	ld a, l                                          ; $70d2: $7d
	rst $38                                          ; $70d3: $ff
	db $fd                                           ; $70d4: $fd
	ld [$f063], a                                    ; $70d5: $ea $63 $f0
	ld a, b                                          ; $70d8: $78
	ld d, c                                          ; $70d9: $51
	sbc d                                            ; $70da: $9a
	ld d, b                                          ; $70db: $50
	xor b                                            ; $70dc: $a8
	ld d, h                                          ; $70dd: $54
	db $fd                                           ; $70de: $fd
	ld d, d                                          ; $70df: $52
	ld h, a                                          ; $70e0: $67
	ld h, b                                          ; $70e1: $60

jr_05a_70e2:
	rst SubAFromDE                                          ; $70e2: $df
	ld [hl+], a                                      ; $70e3: $22
	sub a                                            ; $70e4: $97
	inc de                                           ; $70e5: $13
	ld e, $1e                                        ; $70e6: $1e $1e
	ld a, [hl]                                       ; $70e8: $7e
	sbc a                                            ; $70e9: $9f
	cp $3f                                           ; $70ea: $fe $3f
	ccf                                              ; $70ec: $3f
	sbc $1f                                          ; $70ed: $de $1f
	sub h                                            ; $70ef: $94
	ld a, d                                          ; $70f0: $7a
	add a                                            ; $70f1: $87
	inc a                                            ; $70f2: $3c
	sub $ac                                          ; $70f3: $d6 $ac
	xor b                                            ; $70f5: $a8
	ld a, b                                          ; $70f6: $78
	pop af                                           ; $70f7: $f1
	inc sp                                           ; $70f8: $33
	db $fc                                           ; $70f9: $fc
	ld e, b                                          ; $70fa: $58

jr_05a_70fb:
	ld a, e                                          ; $70fb: $7b
	ld a, [de]                                       ; $70fc: $1a
	sub [hl]                                         ; $70fd: $96
	ldh a, [$d0]                                     ; $70fe: $f0 $d0
	jr nz, jr_05a_70e2                               ; $7100: $20 $e0

	ld h, b                                          ; $7102: $60
	inc c                                            ; $7103: $0c
	jr @+$52                                         ; $7104: $18 $50

	and b                                            ; $7106: $a0
	ei                                               ; $7107: $fb
	ld a, b                                          ; $7108: $78
	and e                                            ; $7109: $a3
	db $fd                                           ; $710a: $fd
	ld a, e                                          ; $710b: $7b
	ld [de], a                                       ; $710c: $12
	ld a, a                                          ; $710d: $7f
	ld de, $3d9d                                     ; $710e: $11 $9d $3d
	ld e, l                                          ; $7111: $5d
	ld a, [$209e]                                    ; $7112: $fa $9e $20
	sbc $6d                                          ; $7115: $de $6d
	call c, $deed                                    ; $7117: $dc $ed $de
	add hl, sp                                       ; $711a: $39
	sbc [hl]                                         ; $711b: $9e
	jr jr_05a_70fb                                   ; $711c: $18 $dd

	ld e, b                                          ; $711e: $58
	ld e, c                                          ; $711f: $59
	ld [hl], b                                       ; $7120: $70
	db $dd                                           ; $7121: $dd
	add b                                            ; $7122: $80
	sbc d                                            ; $7123: $9a
	ld b, b                                          ; $7124: $40
	rst JumpTable                                          ; $7125: $c7
	sub b                                            ; $7126: $90
	nop                                              ; $7127: $00
	ldh [c], a                                       ; $7128: $e2
	ld a, c                                          ; $7129: $79
	adc [hl]                                         ; $712a: $8e
	sub [hl]                                         ; $712b: $96
	ld sp, hl                                        ; $712c: $f9
	ccf                                              ; $712d: $3f
	ld l, a                                          ; $712e: $6f
	rst $38                                          ; $712f: $ff
	rra                                              ; $7130: $1f
	ld bc, $0303                                     ; $7131: $01 $03 $03
	ld b, $de                                        ; $7134: $06 $de
	ldh a, [$9a]                                     ; $7136: $f0 $9a
	pop af                                           ; $7138: $f1
	rst $38                                          ; $7139: $ff
	rst $38                                          ; $713a: $ff
	ei                                               ; $713b: $fb
	cp $72                                           ; $713c: $fe $72
	ldh a, [c]                                       ; $713e: $f2
	sub h                                            ; $713f: $94
	jr nc, jr_05a_714e                               ; $7140: $30 $0c

	rlca                                             ; $7142: $07
	inc e                                            ; $7143: $1c
	jr c, jr_05a_71be                                ; $7144: $38 $78

	ldh a, [$f0]                                     ; $7146: $f0 $f0
	ldh [$e3], a                                     ; $7148: $e0 $e3
	rst JumpTable                                          ; $714a: $c7
	ld h, a                                          ; $714b: $67
	ld [hl], b                                       ; $714c: $70
	ld a, [hl]                                       ; $714d: $7e

jr_05a_714e:
	ld c, e                                          ; $714e: $4b
	sub [hl]                                         ; $714f: $96
	ld a, h                                          ; $7150: $7c
	ld a, b                                          ; $7151: $78
	rst $38                                          ; $7152: $ff
	rst $38                                          ; $7153: $ff
	db $fc                                           ; $7154: $fc
	ldh a, [$0c]                                     ; $7155: $f0 $0c
	db $10                                           ; $7157: $10
	jr nz, jr_05a_71cd                               ; $7158: $20 $73

	adc a                                            ; $715a: $8f
	halt                                             ; $715b: $76
	rst JumpTable                                          ; $715c: $c7
	ld a, e                                          ; $715d: $7b
	db $fc                                           ; $715e: $fc
	ld l, d                                          ; $715f: $6a
	ld [hl], c                                       ; $7160: $71
	ld a, a                                          ; $7161: $7f
	ld hl, sp-$6c                                    ; $7162: $f8 $94
	ld b, b                                          ; $7164: $40
	ld a, b                                          ; $7165: $78
	rst $38                                          ; $7166: $ff
	jp $f0c0                                         ; $7167: $c3 $c0 $f0


	db $fd                                           ; $716a: $fd
	ret nz                                           ; $716b: $c0

	rst $38                                          ; $716c: $ff

Jump_05a_716d:
	rst $38                                          ; $716d: $ff
	add a                                            ; $716e: $87
	db $dd                                           ; $716f: $dd
	add b                                            ; $7170: $80
	adc [hl]                                         ; $7171: $8e
	nop                                              ; $7172: $00
	jr jr_05a_7191                                   ; $7173: $18 $1c

	ld e, $c9                                        ; $7175: $1e $c9
	add sp, $78                                      ; $7177: $e8 $78
	cp b                                             ; $7179: $b8
	ld hl, sp+$1f                                    ; $717a: $f8 $1f
	rst SubAFromDE                                          ; $717c: $df
	rst $38                                          ; $717d: $ff
	rst $38                                          ; $717e: $ff
	ld a, c                                          ; $717f: $79
	jr c, @+$20                                      ; $7180: $38 $1e

	rrca                                             ; $7182: $0f
	ld a, b                                          ; $7183: $78
	add l                                            ; $7184: $85
	ld a, d                                          ; $7185: $7a
	dec l                                            ; $7186: $2d
	sbc h                                            ; $7187: $9c
	ld e, a                                          ; $7188: $5f
	sbc a                                            ; $7189: $9f
	add b                                            ; $718a: $80
	ld a, c                                          ; $718b: $79
	ld h, h                                          ; $718c: $64
	ld a, a                                          ; $718d: $7f
	ld b, d                                          ; $718e: $42
	sbc l                                            ; $718f: $9d
	ld [hl], b                                       ; $7190: $70

jr_05a_7191:
	ldh a, [$4c]                                     ; $7191: $f0 $4c
	ldh [rLY], a                                     ; $7193: $e0 $44
	ret nc                                           ; $7195: $d0

	scf                                              ; $7196: $37
	ldh a, [$9a]                                     ; $7197: $f0 $9a
	ld [$ea54], a                                    ; $7199: $ea $54 $ea
	push de                                          ; $719c: $d5
	cp $63                                           ; $719d: $fe $63
	ldh a, [$98]                                     ; $719f: $f0 $98
	cp $d5                                           ; $71a1: $fe $d5
	and b                                            ; $71a3: $a0
	nop                                              ; $71a4: $00
	xor b                                            ; $71a5: $a8
	ld d, l                                          ; $71a6: $55
	rst AddAOntoHL                                          ; $71a7: $ef
	ld h, a                                          ; $71a8: $67
	ldh a, [hDisp0_LCDC]                                     ; $71a9: $f0 $82
	ld bc, $0b05                                     ; $71ab: $01 $05 $0b
	dec bc                                           ; $71ae: $0b
	ld e, $2c                                        ; $71af: $1e $2c
	jr c, jr_05a_71eb                                ; $71b1: $38 $38

	cp h                                             ; $71b3: $bc
	inc b                                            ; $71b4: $04
	add hl, bc                                       ; $71b5: $09
	add hl, bc                                       ; $71b6: $09
	inc de                                           ; $71b7: $13
	daa                                              ; $71b8: $27
	cpl                                              ; $71b9: $2f
	cpl                                              ; $71ba: $2f
	xor a                                            ; $71bb: $af
	rst SubAFromBC                                          ; $71bc: $e7
	cp c                                             ; $71bd: $b9

jr_05a_71be:
	rst SubAFromDE                                          ; $71be: $df
	ld l, c                                          ; $71bf: $69
	inc a                                            ; $71c0: $3c
	ld [de], a                                       ; $71c1: $12
	add hl, bc                                       ; $71c2: $09
	ld [$21c7], sp                                   ; $71c3: $08 $c7 $21
	sbc a                                            ; $71c6: $9f
	rst GetHLinHL                                          ; $71c7: $cf
	db $dd                                           ; $71c8: $dd
	rst $38                                          ; $71c9: $ff
	add a                                            ; $71ca: $87
	and b                                            ; $71cb: $a0
	ret nz                                           ; $71cc: $c0

jr_05a_71cd:
	pop hl                                           ; $71cd: $e1
	inc sp                                           ; $71ce: $33
	rla                                              ; $71cf: $17
	ccf                                              ; $71d0: $3f
	ld a, $bf                                        ; $71d1: $3e $bf
	ret nz                                           ; $71d3: $c0

	nop                                              ; $71d4: $00
	ret nz                                           ; $71d5: $c0

	ldh [$f0], a                                     ; $71d6: $e0 $f0
	ret nc                                           ; $71d8: $d0

	ret z                                            ; $71d9: $c8

	call nz, wInitialA                                   ; $71da: $c4 $00 $c1
	jp $0e87                                         ; $71dd: $c3 $87 $0e


	ld a, $7e                                        ; $71e0: $3e $7e
	db $fd                                           ; $71e2: $fd
	ld l, l                                          ; $71e3: $6d
	call nc, $007f                                   ; $71e4: $d4 $7f $00
	sbc h                                            ; $71e7: $9c
	db $db                                           ; $71e8: $db
	cp a                                             ; $71e9: $bf
	cp a                                             ; $71ea: $bf

jr_05a_71eb:
	halt                                             ; $71eb: $76
	ld l, $9c                                        ; $71ec: $2e $9c
	db $fd                                           ; $71ee: $fd
	jr nz, @+$42                                     ; $71ef: $20 $40

	ld a, e                                          ; $71f1: $7b
	ld [hl+], a                                      ; $71f2: $22
	ld a, a                                          ; $71f3: $7f
	ld de, $069e                                     ; $71f4: $11 $9e $06
	reti                                             ; $71f7: $d9


	db $fd                                           ; $71f8: $fd
	rst SubAFromDE                                          ; $71f9: $df
	ld c, b                                          ; $71fa: $48
	sbc $88                                          ; $71fb: $de $88
	sbc $08                                          ; $71fd: $de $08
	db $dd                                           ; $71ff: $dd
	rst $38                                          ; $7200: $ff
	sbc e                                            ; $7201: $9b
	rst AddAOntoHL                                          ; $7202: $ef
	push de                                          ; $7203: $d5
	jp z, $d9c1                                      ; $7204: $ca $c1 $d9

	ld b, b                                          ; $7207: $40
	jp c, $9eff                                      ; $7208: $da $ff $9e

	ld e, a                                          ; $720b: $5f
	ld sp, hl                                        ; $720c: $f9
	add c                                            ; $720d: $81
	db $fd                                           ; $720e: $fd
	cp [hl]                                          ; $720f: $be
	sbc a                                            ; $7210: $9f
	rst GetHLinHL                                          ; $7211: $cf
	rst SubAFromBC                                          ; $7212: $e7
	db $e3                                           ; $7213: $e3
	ld [hl], c                                       ; $7214: $71
	jr c, @+$05                                      ; $7215: $38 $03

	ld b, c                                          ; $7217: $41
	ld h, b                                          ; $7218: $60
	jr nc, jr_05a_7233                               ; $7219: $30 $18

	inc e                                            ; $721b: $1c
	adc [hl]                                         ; $721c: $8e
	rst JumpTable                                          ; $721d: $c7
	ld a, a                                          ; $721e: $7f
	cp a                                             ; $721f: $bf
	ld a, [hl]                                       ; $7220: $7e
	db $fc                                           ; $7221: $fc
	cp b                                             ; $7222: $b8
	jr nc, jr_05a_7235                               ; $7223: $30 $10

	db $10                                           ; $7225: $10
	add h                                            ; $7226: $84
	ret z                                            ; $7227: $c8

	ret nc                                           ; $7228: $d0

	ld h, b                                          ; $7229: $60
	ld h, b                                          ; $722a: $60
	ldh [$7a], a                                     ; $722b: $e0 $7a
	or l                                             ; $722d: $b5
	ld a, d                                          ; $722e: $7a
	call z, $ec78                                    ; $722f: $cc $78 $ec
	sbc [hl]                                         ; $7232: $9e

jr_05a_7233:
	ld c, $f9                                        ; $7233: $0e $f9

jr_05a_7235:
	sbc b                                            ; $7235: $98
	rla                                              ; $7236: $17
	ld hl, wPastTitleScreen                                     ; $7237: $21 $41 $c1
	add c                                            ; $723a: $81
	add c                                            ; $723b: $81
	ld bc, $847b                                     ; $723c: $01 $7b $84
	db $db                                           ; $723f: $db
	ld bc, $809c                                     ; $7240: $01 $9c $80
	or b                                             ; $7243: $b0
	db $fc                                           ; $7244: $fc
	ld [hl], c                                       ; $7245: $71
	dec e                                            ; $7246: $1d
	cp $8f                                           ; $7247: $fe $8f
	ld a, b                                          ; $7249: $78
	add h                                            ; $724a: $84
	inc bc                                           ; $724b: $03
	add c                                            ; $724c: $81
	ret nz                                           ; $724d: $c0

	ld a, h                                          ; $724e: $7c
	inc a                                            ; $724f: $3c
	dec a                                            ; $7250: $3d
	dec e                                            ; $7251: $1d
	rrca                                             ; $7252: $0f
	sbc a                                            ; $7253: $9f
	adc $e4                                          ; $7254: $ce $e4
	rla                                              ; $7256: $17
	rrca                                             ; $7257: $0f
	rrca                                             ; $7258: $0f
	sbc $07                                          ; $7259: $de $07
	adc l                                            ; $725b: $8d
	adc [hl]                                         ; $725c: $8e
	call nz, $8f8f                                   ; $725d: $c4 $8f $8f
	add a                                            ; $7260: $87
	add e                                            ; $7261: $83
	db $e3                                           ; $7262: $e3
	ld sp, hl                                        ; $7263: $f9
	ld h, l                                          ; $7264: $65
	ld b, d                                          ; $7265: $42
	ld hl, sp-$48                                    ; $7266: $f8 $b8
	adc h                                            ; $7268: $8c
	and $fa                                          ; $7269: $e6 $fa
	rst $38                                          ; $726b: $ff
	ld h, a                                          ; $726c: $67
	ld b, e                                          ; $726d: $43
	ld c, d                                          ; $726e: $4a
	ldh [$9e], a                                     ; $726f: $e0 $9e
	add b                                            ; $7271: $80
	ld [bc], a                                       ; $7272: $02
	ret nz                                           ; $7273: $c0

	ld c, e                                          ; $7274: $4b
	ldh a, [$7a]                                     ; $7275: $f0 $7a
	inc b                                            ; $7277: $04
	rst SubAFromDE                                          ; $7278: $df
	add sp, -$21                                     ; $7279: $e8 $df
	ret nc                                           ; $727b: $d0

	sub h                                            ; $727c: $94
	ldh [rSC], a                                     ; $727d: $e0 $02
	inc b                                            ; $727f: $04
	inc e                                            ; $7280: $1c
	jr z, jr_05a_72ab                                ; $7281: $28 $28

	ld d, b                                          ; $7283: $50
	ld d, b                                          ; $7284: $50
	ld h, b                                          ; $7285: $60
	rst $38                                          ; $7286: $ff
	ld sp, hl                                        ; $7287: $f9
	ld a, b                                          ; $7288: $78
	ld [hl], d                                       ; $7289: $72
	ld a, e                                          ; $728a: $7b
	ld e, h                                          ; $728b: $5c
	sbc l                                            ; $728c: $9d
	ld l, e                                          ; $728d: $6b
	ld sp, $217a                                     ; $728e: $31 $7a $21
	ld a, e                                          ; $7291: $7b
	ld hl, sp-$80                                    ; $7292: $f8 $80
	add hl, sp                                       ; $7294: $39
	ld a, c                                          ; $7295: $79
	cp l                                             ; $7296: $bd
	ld e, l                                          ; $7297: $5d
	ccf                                              ; $7298: $3f
	rra                                              ; $7299: $1f
	rla                                              ; $729a: $17
	rra                                              ; $729b: $1f
	add $86                                          ; $729c: $c6 $86
	jp nz, $2062                                     ; $729e: $c2 $62 $20

	db $10                                           ; $72a1: $10
	jr jr_05a_72bc                                   ; $72a2: $18 $18

	dec e                                            ; $72a4: $1d
	sbc a                                            ; $72a5: $9f
	rst SubAFromDE                                          ; $72a6: $df
	sbc $cd                                          ; $72a7: $de $cd
	ret                                              ; $72a9: $c9


	ret                                              ; $72aa: $c9


jr_05a_72ab:
	ld bc, $62e6                                     ; $72ab: $01 $e6 $62
	ld [hl+], a                                      ; $72ae: $22
	inc hl                                           ; $72af: $23
	inc sp                                           ; $72b0: $33
	scf                                              ; $72b1: $37
	scf                                              ; $72b2: $37
	ld a, [hl]                                       ; $72b3: $7e
	rst SubAFromHL                                          ; $72b4: $d7
	add a                                            ; $72b5: $87
	ld sp, hl                                        ; $72b6: $f9
	di                                               ; $72b7: $f3
	call c, $a6f0                                    ; $72b8: $dc $f0 $a6
	ld l, a                                          ; $72bb: $6f

jr_05a_72bc:
	xor a                                            ; $72bc: $af
	ld b, $0e                                        ; $72bd: $06 $0e
	rra                                              ; $72bf: $1f
	ccf                                              ; $72c0: $3f
	ccf                                              ; $72c1: $3f
	ld a, c                                          ; $72c2: $79
	ldh a, [$f0]                                     ; $72c3: $f0 $f0
	ei                                               ; $72c5: $fb
	rst FarCall                                          ; $72c6: $f7
	xor $1f                                          ; $72c7: $ee $1f
	ld e, e                                          ; $72c9: $5b
	ld l, e                                          ; $72ca: $6b
	ld h, l                                          ; $72cb: $65
	or h                                             ; $72cc: $b4
	inc e                                            ; $72cd: $1c
	ld a, c                                          ; $72ce: $79
	ret                                              ; $72cf: $c9


	sbc d                                            ; $72d0: $9a
	or b                                             ; $72d1: $b0
	sbc b                                            ; $72d2: $98
	sbc b                                            ; $72d3: $98
	ld c, b                                          ; $72d4: $48
	cp l                                             ; $72d5: $bd
	sbc $39                                          ; $72d6: $de $39
	sbc e                                            ; $72d8: $9b
	dec e                                            ; $72d9: $1d
	inc e                                            ; $72da: $1c
	sbc [hl]                                         ; $72db: $9e
	sbc [hl]                                         ; $72dc: $9e
	call c, $df10                                    ; $72dd: $dc $10 $df
	ld [$049a], sp                                   ; $72e0: $08 $9a $04
	ret nz                                           ; $72e3: $c0

	ret nz                                           ; $72e4: $c0

Jump_05a_72e5:
	ld [$def5], a                                    ; $72e5: $ea $f5 $de
	rst $38                                          ; $72e8: $ff
	sbc [hl]                                         ; $72e9: $9e
	ld a, d                                          ; $72ea: $7a
	ld h, d                                          ; $72eb: $62
	ret nz                                           ; $72ec: $c0

	sbc [hl]                                         ; $72ed: $9e
	ld d, a                                          ; $72ee: $57
	ld [hl], b                                       ; $72ef: $70
	ldh a, [$9e]                                     ; $72f0: $f0 $9e
	cp a                                             ; $72f2: $bf
	ld hl, sp+$7d                                    ; $72f3: $f8 $7d
	add sp, -$66                                     ; $72f5: $e8 $9a
	ldh [$71], a                                     ; $72f7: $e0 $71
	ld a, $38                                        ; $72f9: $3e $38
	db $10                                           ; $72fb: $10
	ld a, c                                          ; $72fc: $79
	ret c                                            ; $72fd: $d8

	ld a, a                                          ; $72fe: $7f
	adc c                                            ; $72ff: $89
	rst SubAFromDE                                          ; $7300: $df
	rrca                                             ; $7301: $0f
	sub [hl]                                         ; $7302: $96
	rra                                              ; $7303: $1f
	db $10                                           ; $7304: $10
	jr nz, jr_05a_7347                               ; $7305: $20 $40

	adc b                                            ; $7307: $88
	jr nc, jr_05a_736b                               ; $7308: $30 $61

	pop bc                                           ; $730a: $c1
	add e                                            ; $730b: $83
	ld a, d                                          ; $730c: $7a
	add $77                                          ; $730d: $c6 $77
	ld l, c                                          ; $730f: $69
	sbc [hl]                                         ; $7310: $9e
	nop                                              ; $7311: $00
	ld a, c                                          ; $7312: $79
	ld [hl], b                                       ; $7313: $70
	sbc d                                            ; $7314: $9a
	ld [hl], b                                       ; $7315: $70
	ldh [$c0], a                                     ; $7316: $e0 $c0
	ret nz                                           ; $7318: $c0

	add c                                            ; $7319: $81
	push af                                          ; $731a: $f5
	halt                                             ; $731b: $76
	cp l                                             ; $731c: $bd
	ld sp, hl                                        ; $731d: $f9
	sbc l                                            ; $731e: $9d
	ccf                                              ; $731f: $3f
	rrca                                             ; $7320: $0f
	ld a, e                                          ; $7321: $7b
	ld a, b                                          ; $7322: $78
	sbc c                                            ; $7323: $99
	ld a, h                                          ; $7324: $7c
	ld hl, sp-$20                                    ; $7325: $f8 $e0
	ldh a, [rIE]                                     ; $7327: $f0 $ff
	ld hl, sp+$7b                                    ; $7329: $f8 $7b
	adc $7f                                          ; $732b: $ce $7f
	call $f49d                                       ; $732d: $cd $9d $f4
	db $fc                                           ; $7330: $fc
	ld a, d                                          ; $7331: $7a
	ld d, b                                          ; $7332: $50
	add h                                            ; $7333: $84
	ld l, a                                          ; $7334: $6f
	rst GetHLinHL                                          ; $7335: $cf
	rst SubAFromDE                                          ; $7336: $df
	inc h                                            ; $7337: $24
	sbc h                                            ; $7338: $9c
	ld a, a                                          ; $7339: $7f
	ld [hl+], a                                      ; $733a: $22
	ld b, e                                          ; $733b: $43
	ld b, l                                          ; $733c: $45
	adc h                                            ; $733d: $8c
	adc b                                            ; $733e: $88
	ld h, e                                          ; $733f: $63
	ld sp, hl                                        ; $7340: $f9
	ld sp, hl                                        ; $7341: $f9
	pop bc                                           ; $7342: $c1
	db $e3                                           ; $7343: $e3
	di                                               ; $7344: $f3
	di                                               ; $7345: $f3
	rst $38                                          ; $7346: $ff

jr_05a_7347:
	ld b, c                                          ; $7347: $41
	ldh [rAUD1SWEEP], a                              ; $7348: $e0 $10
	add b                                            ; $734a: $80
	ld b, b                                          ; $734b: $40
	jr nz, @-$6d                                     ; $734c: $20 $91

	adc c                                            ; $734e: $89
	ld h, b                                          ; $734f: $60
	ld d, b                                          ; $7350: $50
	call c, $0280                                    ; $7351: $dc $80 $02
	ret nc                                           ; $7354: $d0

	ld l, a                                          ; $7355: $6f
	ldh a, [$df]                                     ; $7356: $f0 $df
	cp $9e                                           ; $7358: $fe $9e
	db $fc                                           ; $735a: $fc
	ld [hl], c                                       ; $735b: $71
	pop de                                           ; $735c: $d1
	rst SubAFromDE                                          ; $735d: $df
	ld [bc], a                                       ; $735e: $02
	sbc [hl]                                         ; $735f: $9e
	inc b                                            ; $7360: $04
	sbc $e0                                          ; $7361: $de $e0
	sbc $c0                                          ; $7363: $de $c0
	sbc d                                            ; $7365: $9a
	pop hl                                           ; $7366: $e1
	rst SubAFromBC                                          ; $7367: $e7
	and b                                            ; $7368: $a0
	and b                                            ; $7369: $a0
	ret nz                                           ; $736a: $c0

jr_05a_736b:
	ld a, c                                          ; $736b: $79
	adc $7b                                          ; $736c: $ce $7b
	cp [hl]                                          ; $736e: $be
	sbc e                                            ; $736f: $9b
	ld bc, $0f07                                     ; $7370: $01 $07 $0f
	rra                                              ; $7373: $1f
	ld a, c                                          ; $7374: $79
	cp [hl]                                          ; $7375: $be
	ld h, l                                          ; $7376: $65
	ld [hl], b                                       ; $7377: $70
	sbc h                                            ; $7378: $9c
	ld a, b                                          ; $7379: $78
	ld hl, sp-$08                                    ; $737a: $f8 $f8
	db $dd                                           ; $737c: $dd
	db $fc                                           ; $737d: $fc
	sbc [hl]                                         ; $737e: $9e
	rst $38                                          ; $737f: $ff
	db $dd                                           ; $7380: $dd
	rrca                                             ; $7381: $0f
	ld a, a                                          ; $7382: $7f
	ld h, [hl]                                       ; $7383: $66
	sbc l                                            ; $7384: $9d
	rst SubAFromBC                                          ; $7385: $e7
	and e                                            ; $7386: $a3
	sbc $01                                          ; $7387: $de $01
	sbc d                                            ; $7389: $9a
	inc hl                                           ; $738a: $23
	daa                                              ; $738b: $27
	ccf                                              ; $738c: $3f
	ccf                                              ; $738d: $3f
	db $fd                                           ; $738e: $fd
	call c, $99ff                                    ; $738f: $dc $ff $99
	ld sp, hl                                        ; $7392: $f9
	ldh [$f0], a                                     ; $7393: $e0 $f0
	and a                                            ; $7395: $a7
	and a                                            ; $7396: $a7
	and $de                                          ; $7397: $e6 $de
	or $9b                                           ; $7399: $f6 $9b
	rst FarCall                                          ; $739b: $f7
	rst $38                                          ; $739c: $ff
	ld hl, sp-$28                                    ; $739d: $f8 $d8
	sbc $18                                          ; $739f: $de $18
	rst SubAFromDE                                          ; $73a1: $df
	sbc b                                            ; $73a2: $98
	sbc d                                            ; $73a3: $9a
	adc b                                            ; $73a4: $88
	db $f4                                           ; $73a5: $f4
	halt                                             ; $73a6: $76
	ld a, $3e                                        ; $73a7: $3e $3e
	ld a, e                                          ; $73a9: $7b
	ld [$079b], sp                                   ; $73aa: $08 $9b $07
	ld c, b                                          ; $73ad: $48
	jr z, jr_05a_73d0                                ; $73ae: $28 $20

	ld a, d                                          ; $73b0: $7a
	ret nc                                           ; $73b1: $d0

	rst SubAFromDE                                          ; $73b2: $df
	inc b                                            ; $73b3: $04
	sbc l                                            ; $73b4: $9d
	adc a                                            ; $73b5: $8f
	ld c, a                                          ; $73b6: $4f
	db $dd                                           ; $73b7: $dd
	rlca                                             ; $73b8: $07
	sbc c                                            ; $73b9: $99
	add e                                            ; $73ba: $83
	add c                                            ; $73bb: $81
	inc b                                            ; $73bc: $04
	ld [bc], a                                       ; $73bd: $02
	ld [bc], a                                       ; $73be: $02
	ld bc, $9b74                                     ; $73bf: $01 $74 $9b
	sbc l                                            ; $73c2: $9d
	ld [hl], l                                       ; $73c3: $75
	ld a, d                                          ; $73c4: $7a
	db $db                                           ; $73c5: $db
	rst $38                                          ; $73c6: $ff
	db $dd                                           ; $73c7: $dd
	ld b, b                                          ; $73c8: $40
	db $dd                                           ; $73c9: $dd
	add b                                            ; $73ca: $80
	sbc [hl]                                         ; $73cb: $9e

jr_05a_73cc:
	ld e, a                                          ; $73cc: $5f
	ld c, e                                          ; $73cd: $4b
	ld h, b                                          ; $73ce: $60
	add a                                            ; $73cf: $87

jr_05a_73d0:
	jr nc, @+$22                                     ; $73d0: $30 $20

	jr nc, jr_05a_741c                               ; $73d2: $30 $48

	ret nz                                           ; $73d4: $c0

	add c                                            ; $73d5: $81
	add b                                            ; $73d6: $80
	nop                                              ; $73d7: $00
	ld e, $3c                                        ; $73d8: $1e $3c
	jr c, jr_05a_7458                                ; $73da: $38 $7c

	ld [hl], d                                       ; $73dc: $72
	pop af                                           ; $73dd: $f1
	pop hl                                           ; $73de: $e1
	db $e3                                           ; $73df: $e3
	rlca                                             ; $73e0: $07
	rrca                                             ; $73e1: $0f
	ld e, $3c                                        ; $73e2: $1e $3c
	ld a, b                                          ; $73e4: $78
	ld hl, sp-$10                                    ; $73e5: $f8 $f0
	ldh a, [rOCPS]                                   ; $73e7: $f0 $6a
	and e                                            ; $73e9: $a3
	sub [hl]                                         ; $73ea: $96
	ld b, b                                          ; $73eb: $40
	inc bc                                           ; $73ec: $03
	inc bc                                           ; $73ed: $03
	ld b, $0e                                        ; $73ee: $06 $0e
	inc e                                            ; $73f0: $1c
	jr @+$3a                                         ; $73f1: $18 $38

	ld a, b                                          ; $73f3: $78
	ld sp, hl                                        ; $73f4: $f9
	db $dd                                           ; $73f5: $dd
	inc bc                                           ; $73f6: $03
	rst SubAFromDE                                          ; $73f7: $df
	ld [bc], a                                       ; $73f8: $02
	rst SubAFromDE                                          ; $73f9: $df

Call_05a_73fa:
	ld b, $65                                        ; $73fa: $06 $65
	ld a, a                                          ; $73fc: $7f
	sbc [hl]                                         ; $73fd: $9e
	ret nz                                           ; $73fe: $c0

	ld a, c                                          ; $73ff: $79
	ld [hl], d                                       ; $7400: $72
	sbc d                                            ; $7401: $9a
	di                                               ; $7402: $f3
	dec bc                                           ; $7403: $0b
	rrca                                             ; $7404: $0f
	rlca                                             ; $7405: $07
	add b                                            ; $7406: $80
	sbc $01                                          ; $7407: $de $01
	sub d                                            ; $7409: $92
	ldh a, [c]                                       ; $740a: $f2
	ld a, [$fffc]                                    ; $740b: $fa $fc $ff
	rst SubAFromDE                                          ; $740e: $df
	sbc [hl]                                         ; $740f: $9e
	sbc [hl]                                         ; $7410: $9e
	cp [hl]                                          ; $7411: $be
	ld a, $7b                                        ; $7412: $3e $7b

jr_05a_7414:
	ei                                               ; $7414: $fb
	cp e                                             ; $7415: $bb
	adc b                                            ; $7416: $88
	call c, $9d10                                    ; $7417: $dc $10 $9d
	jr nz, jr_05a_73cc                               ; $741a: $20 $b0

jr_05a_741c:
	ld a, d                                          ; $741c: $7a
	ld l, b                                          ; $741d: $68
	rst SubAFromDE                                          ; $741e: $df
	ld a, a                                          ; $741f: $7f
	sub h                                            ; $7420: $94
	ld l, l                                          ; $7421: $6d
	cpl                                              ; $7422: $2f
	scf                                              ; $7423: $37
	ld b, c                                          ; $7424: $41
	ld b, l                                          ; $7425: $45
	daa                                              ; $7426: $27
	ld e, $09                                        ; $7427: $1e $09
	ld [$0505], sp                                   ; $7429: $08 $05 $05
	ld d, d                                          ; $742c: $52
	ldh [rSC], a                                     ; $742d: $e0 $02
	ret nz                                           ; $742f: $c0

	rst $38                                          ; $7430: $ff
	sbc $fc                                          ; $7431: $de $fc
	ld [hl], c                                       ; $7433: $71
	jr nz, jr_05a_7414                               ; $7434: $20 $de

	inc b                                            ; $7436: $04
	ld a, a                                          ; $7437: $7f
	cpl                                              ; $7438: $2f
	ld h, e                                          ; $7439: $63
	ldh [$97], a                                     ; $743a: $e0 $97
	ld a, h                                          ; $743c: $7c
	ld bc, $8080                                     ; $743d: $01 $80 $80
	ld b, b                                          ; $7440: $40
	jr nc, jr_05a_7452                               ; $7441: $30 $0f

	add e                                            ; $7443: $83
	db $db                                           ; $7444: $db
	rst $38                                          ; $7445: $ff
	ld a, [hl]                                       ; $7446: $7e
	and d                                            ; $7447: $a2
	rst SubAFromDE                                          ; $7448: $df
	db $f4                                           ; $7449: $f4
	sbc b                                            ; $744a: $98
	ld [bc], a                                       ; $744b: $02
	inc c                                            ; $744c: $0c
	inc e                                            ; $744d: $1c
	ld [hl], h                                       ; $744e: $74
	db $f4                                           ; $744f: $f4
	ret nc                                           ; $7450: $d0

	sub b                                            ; $7451: $90

jr_05a_7452:
	ld a, c                                          ; $7452: $79
	ld hl, sp-$77                                    ; $7453: $f8 $89
	rst $38                                          ; $7455: $ff
	sbc $de                                          ; $7456: $de $de

jr_05a_7458:
	adc $6e                                          ; $7458: $ce $6e
	ld l, a                                          ; $745a: $6f
	db $10                                           ; $745b: $10
	sub b                                            ; $745c: $90
	sub b                                            ; $745d: $90
	sbc b                                            ; $745e: $98
	adc b                                            ; $745f: $88
	ret z                                            ; $7460: $c8

	ld c, b                                          ; $7461: $48
	ld h, h                                          ; $7462: $64
	db $fc                                           ; $7463: $fc
	db $ec                                           ; $7464: $ec
	inc c                                            ; $7465: $0c
	inc b                                            ; $7466: $04
	ld c, $3e                                        ; $7467: $0e $3e
	rst $38                                          ; $7469: $ff
	ei                                               ; $746a: $fb
	ld a, c                                          ; $746b: $79
	or l                                             ; $746c: $b5
	rst SubAFromDE                                          ; $746d: $df
	inc b                                            ; $746e: $04
	sbc d                                            ; $746f: $9a
	ld a, $7f                                        ; $7470: $3e $7f
	sbc c                                            ; $7472: $99
	ld a, a                                          ; $7473: $7f
	ld a, a                                          ; $7474: $7f
	sbc $3f                                          ; $7475: $de $3f
	ld a, d                                          ; $7477: $7a
	sub b                                            ; $7478: $90

Call_05a_7479:
	ld a, [hl]                                       ; $7479: $7e
	ret nc                                           ; $747a: $d0

	sub h                                            ; $747b: $94
	inc l                                            ; $747c: $2c
	inc d                                            ; $747d: $14
	inc h                                            ; $747e: $24
	ld h, h                                          ; $747f: $64
	ret nz                                           ; $7480: $c0

	jr nz, jr_05a_748a                               ; $7481: $20 $07

	inc bc                                           ; $7483: $03
	add e                                            ; $7484: $83
	add c                                            ; $7485: $81
	add b                                            ; $7486: $80
	sbc $c0                                          ; $7487: $de $c0
	ld l, d                                          ; $7489: $6a

jr_05a_748a:
	pop de                                           ; $748a: $d1
	ld a, c                                          ; $748b: $79
	or c                                             ; $748c: $b1
	ld a, l                                          ; $748d: $7d
	or b                                             ; $748e: $b0
	ld a, [hl]                                       ; $748f: $7e
	sbc d                                            ; $7490: $9a
	sbc [hl]                                         ; $7491: $9e
	ld [hl], b                                       ; $7492: $70
	ld [hl], e                                       ; $7493: $73
	db $10                                           ; $7494: $10
	ld a, e                                          ; $7495: $7b
	sbc h                                            ; $7496: $9c
	ld a, b                                          ; $7497: $78
	ld d, b                                          ; $7498: $50
	sbc $7f                                          ; $7499: $de $7f
	ld a, l                                          ; $749b: $7d
	and [hl]                                         ; $749c: $a6
	sbc [hl]                                         ; $749d: $9e
	rra                                              ; $749e: $1f
	sbc $40                                          ; $749f: $de $40
	sbc $20                                          ; $74a1: $de $20
	rst SubAFromDE                                          ; $74a3: $df
	db $10                                           ; $74a4: $10
	ld b, a                                          ; $74a5: $47
	ld h, b                                          ; $74a6: $60
	ld h, b                                          ; $74a7: $60
	nop                                              ; $74a8: $00
	sbc d                                            ; $74a9: $9a
	ld [hl+], a                                      ; $74aa: $22
	ld b, l                                          ; $74ab: $45
	ld d, l                                          ; $74ac: $55
	ld d, l                                          ; $74ad: $55
	ld b, [hl]                                       ; $74ae: $46
	sbc $66                                          ; $74af: $de $66
	sbc $22                                          ; $74b1: $de $22
	ld a, e                                          ; $74b3: $7b
	or $97                                           ; $74b4: $f6 $97
	ld d, h                                          ; $74b6: $54
	ld h, [hl]                                       ; $74b7: $66
	halt                                             ; $74b8: $76
	ld h, [hl]                                       ; $74b9: $66
	ld h, d                                          ; $74ba: $62
	ld [hl+], a                                      ; $74bb: $22
	ld [hl+], a                                      ; $74bc: $22
	ld b, h                                          ; $74bd: $44
	ld [hl], a                                       ; $74be: $77
	or $9e                                           ; $74bf: $f6 $9e
	ld [hl], l                                       ; $74c1: $75
	ld h, e                                          ; $74c2: $63
	or $9e                                           ; $74c3: $f6 $9e
	ld d, a                                          ; $74c5: $57
	ld a, e                                          ; $74c6: $7b
	or $92                                           ; $74c7: $f6 $92
	ld h, $66                                        ; $74c9: $26 $66
	ld [hl], l                                       ; $74cb: $75
	ld d, l                                          ; $74cc: $55
	ld d, [hl]                                       ; $74cd: $56
	ld h, [hl]                                       ; $74ce: $66
	ld d, l                                          ; $74cf: $55
	halt                                             ; $74d0: $76
	ld h, [hl]                                       ; $74d1: $66
	ld [hl+], a                                      ; $74d2: $22
	ld h, [hl]                                       ; $74d3: $66

Call_05a_74d4:
	ld h, [hl]                                       ; $74d4: $66
	ld h, a                                          ; $74d5: $67
	ld a, e                                          ; $74d6: $7b
	adc $9e                                          ; $74d7: $ce $9e
	ld d, a                                          ; $74d9: $57
	ld [hl], e                                       ; $74da: $73
	or $9d                                           ; $74db: $f6 $9d
	ld h, h                                          ; $74dd: $64
	ld b, h                                          ; $74de: $44
	ld a, e                                          ; $74df: $7b
	ldh a, [c]                                       ; $74e0: $f2
	rst SubAFromDE                                          ; $74e1: $df
	ld h, [hl]                                       ; $74e2: $66
	sbc e                                            ; $74e3: $9b
	ld h, d                                          ; $74e4: $62
	ld h, [hl]                                       ; $74e5: $66
	ld h, [hl]                                       ; $74e6: $66
	scf                                              ; $74e7: $37
	sbc $66                                          ; $74e8: $de $66
	sbc [hl]                                         ; $74ea: $9e
	ld [hl], a                                       ; $74eb: $77
	call c, $9e66                                    ; $74ec: $dc $66 $9e
	inc sp                                           ; $74ef: $33
	ld a, e                                          ; $74f0: $7b
	jp hl                                            ; $74f1: $e9


	ld a, a                                          ; $74f2: $7f
	sub $df                                          ; $74f3: $d6 $df
	ld h, [hl]                                       ; $74f5: $66
	ld a, a                                          ; $74f6: $7f
	rst SubAFromDE                                          ; $74f7: $df
	sbc c                                            ; $74f8: $99
	inc sp                                           ; $74f9: $33
	ld [hl], $66                                     ; $74fa: $36 $66
	ld b, l                                          ; $74fc: $45
	ld d, a                                          ; $74fd: $57
	ld [hl], $6b                                     ; $74fe: $36 $6b
	or $9e                                           ; $7500: $f6 $9e
	ld b, a                                          ; $7502: $47
	ld a, e                                          ; $7503: $7b

jr_05a_7504:
	db $fc                                           ; $7504: $fc
	sbc [hl]                                         ; $7505: $9e
	ld h, [hl]                                       ; $7506: $66
	pop bc                                           ; $7507: $c1
	adc b                                            ; $7508: $88
	ei                                               ; $7509: $fb
	sbc l                                            ; $750a: $9d
	ld [bc], a                                       ; $750b: $02
	inc bc                                           ; $750c: $03
	ldh [$c9], a                                     ; $750d: $e0 $c9
	sbc $03                                          ; $750f: $de $03
	sbc d                                            ; $7511: $9a
	add e                                            ; $7512: $83
	jp $efc7                                         ; $7513: $c3 $c7 $ef


	ld a, a                                          ; $7516: $7f
	jp c, $8002                                      ; $7517: $da $02 $80

	inc bc                                           ; $751a: $03
	xor b                                            ; $751b: $a8
	xor b                                            ; $751c: $a8
	and h                                            ; $751d: $a4
	and h                                            ; $751e: $a4
	sub d                                            ; $751f: $92
	cp a                                             ; $7520: $bf
	sbc $7c                                          ; $7521: $de $7c
	cp b                                             ; $7523: $b8
	cp b                                             ; $7524: $b8
	cp h                                             ; $7525: $bc
	cp h                                             ; $7526: $bc
	sbc [hl]                                         ; $7527: $9e
	cp a                                             ; $7528: $bf
	pop hl                                           ; $7529: $e1
	add e                                            ; $752a: $83
	ld [bc], a                                       ; $752b: $02
	inc b                                            ; $752c: $04
	add hl, bc                                       ; $752d: $09
	add hl, bc                                       ; $752e: $09
	ld [de], a                                       ; $752f: $12
	inc h                                            ; $7530: $24
	rst $38                                          ; $7531: $ff
	add $03                                          ; $7532: $c6 $03
	rlca                                             ; $7534: $07
	rrca                                             ; $7535: $0f
	rrca                                             ; $7536: $0f
	rra                                              ; $7537: $1f
	ccf                                              ; $7538: $3f
	sub l                                            ; $7539: $95
	rst $38                                          ; $753a: $ff
	ld hl, sp+$40                                    ; $753b: $f8 $40
	add e                                            ; $753d: $83
	inc c                                            ; $753e: $0c
	db $10                                           ; $753f: $10
	ld h, c                                          ; $7540: $61
	adc [hl]                                         ; $7541: $8e
	jr nc, jr_05a_7504                               ; $7542: $30 $c0

	reti                                             ; $7544: $d9


	rst $38                                          ; $7545: $ff
	sbc d                                            ; $7546: $9a
	rst JumpTable                                          ; $7547: $c7
	nop                                              ; $7548: $00
	inc bc                                           ; $7549: $03
	inc a                                            ; $754a: $3c
	jp $9efe                                         ; $754b: $c3 $fe $9e


	ld hl, sp-$22                                    ; $754e: $f8 $de
	rst $38                                          ; $7550: $ff
	sbc [hl]                                         ; $7551: $9e
	db $fc                                           ; $7552: $fc
	sbc $ff                                          ; $7553: $de $ff
	sbc c                                            ; $7555: $99
	ld hl, sp+$00                                    ; $7556: $f8 $00
	rst JumpTable                                          ; $7558: $c7
	ldh [rIE], a                                     ; $7559: $e0 $ff
	rlca                                             ; $755b: $07
	cp $7b                                           ; $755c: $fe $7b
	or $77                                           ; $755e: $f6 $77
	db $eb                                           ; $7560: $eb
	add b                                            ; $7561: $80
	ret z                                            ; $7562: $c8

	inc b                                            ; $7563: $04
	or d                                             ; $7564: $b2
	cpl                                              ; $7565: $2f
	dec b                                            ; $7566: $05
	ldh a, [c]                                       ; $7567: $f2
	pop hl                                           ; $7568: $e1
	ld b, $3f                                        ; $7569: $06 $3f
	rst $38                                          ; $756b: $ff
	ld a, a                                          ; $756c: $7f
	rra                                              ; $756d: $1f
	inc bc                                           ; $756e: $03
	ld bc, $ff1f                                     ; $756f: $01 $1f $ff
	xor h                                            ; $7572: $ac
	ld d, d                                          ; $7573: $52
	dec l                                            ; $7574: $2d
	ld [de], a                                       ; $7575: $12
	cp e                                             ; $7576: $bb
	add l                                            ; $7577: $85
	jp z, $dc22                                      ; $7578: $ca $22 $dc

	cp [hl]                                          ; $757b: $be
	di                                               ; $757c: $f3
	pop hl                                           ; $757d: $e1
	rst JumpTable                                          ; $757e: $c7
	cp $fc                                           ; $757f: $fe $fc
	sbc [hl]                                         ; $7581: $9e
	db $fd                                           ; $7582: $fd
	cp $9a                                           ; $7583: $fe $9a
	add b                                            ; $7585: $80
	ldh [$50], a                                     ; $7586: $e0 $50
	cp b                                             ; $7588: $b8
	db $fc                                           ; $7589: $fc
	ld [hl], e                                       ; $758a: $73
	ld hl, sp-$66                                    ; $758b: $f8 $9a
	jr nc, jr_05a_75d7                               ; $758d: $30 $48

	db $f4                                           ; $758f: $f4
	xor e                                            ; $7590: $ab
	ld e, a                                          ; $7591: $5f
	ld [hl], a                                       ; $7592: $77
	cp $f7                                           ; $7593: $fe $f7
	sbc e                                            ; $7595: $9b
	push de                                          ; $7596: $d5
	add b                                            ; $7597: $80
	call nc, $dea0                                   ; $7598: $d4 $a0 $de
	add b                                            ; $759b: $80
	sbc [hl]                                         ; $759c: $9e
	sub l                                            ; $759d: $95
	reti                                             ; $759e: $d9


	add b                                            ; $759f: $80
	sbc l                                            ; $75a0: $9d
	dec d                                            ; $75a1: $15
	jr z, jr_05a_761f                                ; $75a2: $28 $7b

	ld [de], a                                       ; $75a4: $12
	sbc [hl]                                         ; $75a5: $9e
	ld d, l                                          ; $75a6: $55
	ld e, a                                          ; $75a7: $5f
	sbc $9a                                          ; $75a8: $de $9a
	ld a, a                                          ; $75aa: $7f
	rst $38                                          ; $75ab: $ff
	dec hl                                           ; $75ac: $2b
	dec b                                            ; $75ad: $05
	xor a                                            ; $75ae: $af
	sbc $ff                                          ; $75af: $de $ff
	ld sp, hl                                        ; $75b1: $f9
	reti                                             ; $75b2: $d9


	rst $38                                          ; $75b3: $ff
	pop af                                           ; $75b4: $f1
	reti                                             ; $75b5: $d9


	add b                                            ; $75b6: $80
	ld sp, hl                                        ; $75b7: $f9
	jp c, $972f                                      ; $75b8: $da $2f $97

	ccf                                              ; $75bb: $3f
	rlca                                             ; $75bc: $07
	rst $38                                          ; $75bd: $ff
	rst $38                                          ; $75be: $ff
	xor d                                            ; $75bf: $aa
	ld d, l                                          ; $75c0: $55
	nop                                              ; $75c1: $00
	ld d, l                                          ; $75c2: $55
	ld a, e                                          ; $75c3: $7b
	rst JumpTable                                          ; $75c4: $c7
	ld h, e                                          ; $75c5: $63
	cp a                                             ; $75c6: $bf
	rlca                                             ; $75c7: $07
	ldh a, [$9a]                                     ; $75c8: $f0 $9a
	xor e                                            ; $75ca: $ab
	ld d, l                                          ; $75cb: $55
	inc bc                                           ; $75cc: $03
	ld d, a                                          ; $75cd: $57
	inc bc                                           ; $75ce: $03
	ld l, e                                          ; $75cf: $6b
	ldh a, [hDisp1_SCX]                                     ; $75d0: $f0 $91
	ld bc, $f0fd                                     ; $75d2: $01 $fd $f0
	ldh [$c1], a                                     ; $75d5: $e0 $c1

jr_05a_75d7:
	jp $8e86                                         ; $75d7: $c3 $86 $8e


	inc e                                            ; $75da: $1c
	ld c, $ff                                        ; $75db: $0e $ff
	ccf                                              ; $75dd: $3f
	ld a, a                                          ; $75de: $7f
	ld a, a                                          ; $75df: $7f
	sbc $ff                                          ; $75e0: $de $ff
	sub d                                            ; $75e2: $92
	pop bc                                           ; $75e3: $c1
	scf                                              ; $75e4: $37
	jp c, Jump_05a_46b2                              ; $75e5: $da $b2 $46

	add [hl]                                         ; $75e8: $86
	inc c                                            ; $75e9: $0c
	inc e                                            ; $75ea: $1c
	ccf                                              ; $75eb: $3f
	rst $38                                          ; $75ec: $ff
	rst SubAFromBC                                          ; $75ed: $e7
	rst GetHLinHL                                          ; $75ee: $cf
	cp a                                             ; $75ef: $bf
	ld a, e                                          ; $75f0: $7b
	rst AddAOntoHL                                          ; $75f1: $ef
	add b                                            ; $75f2: $80
	ld hl, $f458                                     ; $75f3: $21 $58 $f4
	db $d3                                           ; $75f6: $d3
	rst SubAFromHL                                          ; $75f7: $d7
	push af                                          ; $75f8: $f5
	ld d, a                                          ; $75f9: $57
	ld d, h                                          ; $75fa: $54
	cp $bf                                           ; $75fb: $fe $bf
	rra                                              ; $75fd: $1f
	rra                                              ; $75fe: $1f

Jump_05a_75ff:
	dec de                                           ; $75ff: $1b
	dec de                                           ; $7600: $1b
	cp c                                             ; $7601: $b9
	cp c                                             ; $7602: $b9
	inc hl                                           ; $7603: $23
	call c, $9f28                                    ; $7604: $dc $28 $9f
	call z, $b66c                                    ; $7607: $cc $6c $b6
	sub $3f                                          ; $760a: $d6 $3f
	rra                                              ; $760c: $1f
	rst GetHLinHL                                          ; $760d: $cf
	rst AddAOntoHL                                          ; $760e: $ef
	rst FarCall                                          ; $760f: $f7
	rst FarCall                                          ; $7610: $f7
	ei                                               ; $7611: $fb
	sbc [hl]                                         ; $7612: $9e
	ei                                               ; $7613: $fb
	ld a, d                                          ; $7614: $7a
	call nc, $ff9d                                   ; $7615: $d4 $9d $ff
	rra                                              ; $7618: $1f
	ld a, d                                          ; $7619: $7a
	ld b, d                                          ; $761a: $42
	ld a, [hl]                                       ; $761b: $7e
	pop de                                           ; $761c: $d1

jr_05a_761d:
	rst SubAFromDE                                          ; $761d: $df
	rst $38                                          ; $761e: $ff

jr_05a_761f:
	sbc [hl]                                         ; $761f: $9e
	ldh [$7a], a                                     ; $7620: $e0 $7a
	cp a                                             ; $7622: $bf
	add b                                            ; $7623: $80
	ldh [$cf], a                                     ; $7624: $e0 $cf
	ld a, $c0                                        ; $7626: $3e $c0
	ccf                                              ; $7628: $3f
	db $fd                                           ; $7629: $fd
	ld [hl], c                                       ; $762a: $71
	ld [bc], a                                       ; $762b: $02
	rst $38                                          ; $762c: $ff
	ccf                                              ; $762d: $3f
	pop bc                                           ; $762e: $c1
	rst $38                                          ; $762f: $ff
	rst $38                                          ; $7630: $ff
	inc bc                                           ; $7631: $03
	adc a                                            ; $7632: $8f
	rst $38                                          ; $7633: $ff
	add hl, de                                       ; $7634: $19
	and $4d                                          ; $7635: $e6 $4d
	adc [hl]                                         ; $7637: $8e
	sbc d                                            ; $7638: $9a
	inc a                                            ; $7639: $3c
	add hl, sp                                       ; $763a: $39
	ld [hl], d                                       ; $763b: $72
	cp $f8                                           ; $763c: $fe $f8
	ldh a, [$f1]                                     ; $763e: $f0 $f1
	pop hl                                           ; $7640: $e1
	jp $80c7                                         ; $7641: $c3 $c7 $80


	adc a                                            ; $7644: $8f
	ld d, c                                          ; $7645: $51
	ld e, h                                          ; $7646: $5c
	ld [hl+], a                                      ; $7647: $22
	ld c, l                                          ; $7648: $4d
	sbc d                                            ; $7649: $9a
	sub d                                            ; $764a: $92
	ld sp, $3f26                                     ; $764b: $31 $26 $3f
	ccf                                              ; $764e: $3f
	rst $38                                          ; $764f: $ff
	di                                               ; $7650: $f3
	pop hl                                           ; $7651: $e1
	pop hl                                           ; $7652: $e1
	jp $2cc3                                         ; $7653: $c3 $c3 $2c


	ld b, [hl]                                       ; $7656: $46
	rrca                                             ; $7657: $0f
	ld [bc], a                                       ; $7658: $02
	and d                                            ; $7659: $a2
	reti                                             ; $765a: $d9


	ld h, h                                          ; $765b: $64
	ld l, [hl]                                       ; $765c: $6e
	call z, $f182                                    ; $765d: $cc $82 $f1
	db $fc                                           ; $7660: $fc
	db $fc                                           ; $7661: $fc
	cp $9d                                           ; $7662: $fe $9d
	rst $38                                          ; $7664: $ff
	or e                                             ; $7665: $b3
	ld [hl], e                                       ; $7666: $73
	dec d                                            ; $7667: $15
	sbc h                                            ; $7668: $9c
	ld b, b                                          ; $7669: $40
	ld b, c                                          ; $766a: $41
	ld hl, $f86f                                     ; $766b: $21 $6f $f8
	sbc h                                            ; $766e: $9c
	ld b, b                                          ; $766f: $40
	jr nz, jr_05a_761d                               ; $7670: $20 $ab

	call c, $9eff                                    ; $7672: $dc $ff $9e
	rst FarCall                                          ; $7675: $f7
	jp c, $9e80                                      ; $7676: $da $80 $9e

	adc b                                            ; $7679: $88
	reti                                             ; $767a: $d9


	rst $38                                          ; $767b: $ff
	sbc [hl]                                         ; $767c: $9e
	scf                                              ; $767d: $37
	ld a, [$c89e]                                    ; $767e: $fa $9e $c8
	jp c, Jump_05a_77ff                              ; $7681: $da $ff $77

	ret z                                            ; $7684: $c8

	db $fd                                           ; $7685: $fd
	sbc [hl]                                         ; $7686: $9e
	ld c, h                                          ; $7687: $4c
	db $db                                           ; $7688: $db
	rst $38                                          ; $7689: $ff
	sbc l                                            ; $768a: $9d
	db $fd                                           ; $768b: $fd
	adc b                                            ; $768c: $88
	ld l, c                                          ; $768d: $69
	xor b                                            ; $768e: $a8
	sbc [hl]                                         ; $768f: $9e
	ld [hl], a                                       ; $7690: $77
	ei                                               ; $7691: $fb

jr_05a_7692:
	sbc l                                            ; $7692: $9d
	jr nz, jr_05a_7692                               ; $7693: $20 $fd

	ld c, [hl]                                       ; $7695: $4e

Jump_05a_7696:
	pop bc                                           ; $7696: $c1
	sbc d                                            ; $7697: $9a
	ld bc, $205b                                     ; $7698: $01 $5b $20
	jr nz, jr_05a_76dc                               ; $769b: $20 $3f

	push af                                          ; $769d: $f5
	ld h, d                                          ; $769e: $62
	ldh [c], a                                       ; $769f: $e2
	rlca                                             ; $76a0: $07
	ld hl, sp-$22                                    ; $76a1: $f8 $de
	rlca                                             ; $76a3: $07
	sbc $0f                                          ; $76a4: $de $0f
	ld a, l                                          ; $76a6: $7d
	ld hl, sp-$23                                    ; $76a7: $f8 $dd
	ld bc, $f077                                     ; $76a9: $01 $77 $f0
	add a                                            ; $76ac: $87
	jr jr_05a_76e7                                   ; $76ad: $18 $38

	ld a, b                                          ; $76af: $78
	ld [hl], b                                       ; $76b0: $70
	pop af                                           ; $76b1: $f1
	di                                               ; $76b2: $f3
	rst SubAFromBC                                          ; $76b3: $e7
	rst SubAFromBC                                          ; $76b4: $e7
	rst $38                                          ; $76b5: $ff
	rst AddAOntoHL                                          ; $76b6: $ef
	rst GetHLinHL                                          ; $76b7: $cf
	rst SubAFromDE                                          ; $76b8: $df
	sbc a                                            ; $76b9: $9f
	sbc a                                            ; $76ba: $9f
	cp a                                             ; $76bb: $bf
	rst $38                                          ; $76bc: $ff
	inc d                                            ; $76bd: $14
	inc [hl]                                         ; $76be: $34
	ld h, h                                          ; $76bf: $64
	db $e4                                           ; $76c0: $e4
	call nz, $8ccc                                   ; $76c1: $c4 $cc $8c
	adc h                                            ; $76c4: $8c
	reti                                             ; $76c5: $d9


	rst $38                                          ; $76c6: $ff
	sub e                                            ; $76c7: $93
	ld d, c                                          ; $76c8: $51
	ld [de], a                                       ; $76c9: $12
	jr c, jr_05a_7705                                ; $76ca: $38 $39

	inc a                                            ; $76cc: $3c
	ld e, h                                          ; $76cd: $5c
	ld e, h                                          ; $76ce: $5c
	ld e, [hl]                                       ; $76cf: $5e
	cp h                                             ; $76d0: $bc
	db $fc                                           ; $76d1: $fc
	cp $fe                                           ; $76d2: $fe $fe
	db $dd                                           ; $76d4: $dd
	rst $38                                          ; $76d5: $ff
	sub a                                            ; $76d6: $97
	cp d                                             ; $76d7: $ba
	adc l                                            ; $76d8: $8d
	push bc                                          ; $76d9: $c5
	ld h, d                                          ; $76da: $62
	ld [hl], d                                       ; $76db: $72

jr_05a_76dc:
	ld a, d                                          ; $76dc: $7a
	ld c, [hl]                                       ; $76dd: $4e
	ld b, c                                          ; $76de: $41
	ld e, [hl]                                       ; $76df: $5e
	jr @-$61                                         ; $76e0: $18 $9d

	ldh [rAUD3LEVEL], a                              ; $76e2: $e0 $1c
	ld a, d                                          ; $76e4: $7a

jr_05a_76e5:
	pop bc                                           ; $76e5: $c1
	sbc [hl]                                         ; $76e6: $9e

jr_05a_76e7:
	inc bc                                           ; $76e7: $03
	reti                                             ; $76e8: $d9


	rst $38                                          ; $76e9: $ff
	rst SubAFromDE                                          ; $76ea: $df
	inc b                                            ; $76eb: $04
	sbc d                                            ; $76ec: $9a
	ld [$e010], sp                                   ; $76ed: $08 $10 $e0
	ld b, b                                          ; $76f0: $40
	add b                                            ; $76f1: $80
	ld h, e                                          ; $76f2: $63
	ldh a, [hDisp1_BGP]                                     ; $76f3: $f0 $92
	ld h, d                                          ; $76f5: $62
	call nz, $0884                                   ; $76f6: $c4 $84 $08
	ld de, $e331                                     ; $76f9: $11 $31 $e3
	ld b, d                                          ; $76fc: $42
	sbc a                                            ; $76fd: $9f
	ccf                                              ; $76fe: $3f
	ld a, a                                          ; $76ff: $7f
	rst $38                                          ; $7700: $ff
	cp $79                                           ; $7701: $fe $79
	sub b                                            ; $7703: $90
	add b                                            ; $7704: $80

jr_05a_7705:
	ld h, d                                          ; $7705: $62
	ld l, h                                          ; $7706: $6c
	ld [hl], l                                       ; $7707: $75
	jp hl                                            ; $7708: $e9


	pop de                                           ; $7709: $d1
	or e                                             ; $770a: $b3
	ld h, e                                          ; $770b: $63
	rst JumpTable                                          ; $770c: $c7
	add a                                            ; $770d: $87
	add a                                            ; $770e: $87
	adc [hl]                                         ; $770f: $8e
	ld e, $3e                                        ; $7710: $1e $3e
	ld a, h                                          ; $7712: $7c
	db $fc                                           ; $7713: $fc
	ld hl, sp-$21                                    ; $7714: $f8 $df
	push af                                          ; $7716: $f5
	sub h                                            ; $7717: $94
	or h                                             ; $7718: $b4
	ld d, l                                          ; $7719: $55
	and h                                            ; $771a: $a4
	and $e7                                          ; $771b: $e6 $e7
	ld sp, $1819                                     ; $771d: $31 $19 $18
	jr jr_05a_775a                                   ; $7720: $18 $38

	ld a, c                                          ; $7722: $79
	add hl, sp                                       ; $7723: $39
	sbc h                                            ; $7724: $9c
	ld a, c                                          ; $7725: $79
	ld hl, $de21                                     ; $7726: $21 $21 $de
	and c                                            ; $7729: $a1
	sbc d                                            ; $772a: $9a
	and d                                            ; $772b: $a2
	and e                                            ; $772c: $a3
	ld b, d                                          ; $772d: $42
	jr nz, jr_05a_7750                               ; $772e: $20 $20

	sbc $a0                                          ; $7730: $de $a0
	adc d                                            ; $7732: $8a
	and c                                            ; $7733: $a1
	and b                                            ; $7734: $a0
	ld b, c                                          ; $7735: $41
	sub b                                            ; $7736: $90
	cp c                                             ; $7737: $b9
	rst $38                                          ; $7738: $ff
	rst SubAFromHL                                          ; $7739: $d7
	xor e                                            ; $773a: $ab
	sub a                                            ; $773b: $97
	cp $c9                                           ; $773c: $fe $c9
	rst AddAOntoHL                                          ; $773e: $ef
	add $80                                          ; $773f: $c6 $80
	xor b                                            ; $7741: $a8
	call nc, $81e8                                   ; $7742: $d4 $e8 $81
	or [hl]                                          ; $7745: $b6
	ld b, b                                          ; $7746: $40
	ld a, [hl]                                       ; $7747: $7e
	ld a, c                                          ; $7748: $79
	jr jr_05a_76e5                                   ; $7749: $18 $9a

	halt                                             ; $774b: $76
	rst $38                                          ; $774c: $ff
	ld a, a                                          ; $774d: $7f
	cp a                                             ; $774e: $bf
	add c                                            ; $774f: $81

jr_05a_7750:
	ld a, e                                          ; $7750: $7b
	adc e                                            ; $7751: $8b
	add b                                            ; $7752: $80
	adc c                                            ; $7753: $89
	nop                                              ; $7754: $00
	add b                                            ; $7755: $80
	ld b, b                                          ; $7756: $40
	db $fc                                           ; $7757: $fc
	db $eb                                           ; $7758: $eb
	ld [de], a                                       ; $7759: $12

jr_05a_775a:
	ld b, b                                          ; $775a: $40
	nop                                              ; $775b: $00
	add $ef                                          ; $775c: $c6 $ef
	cp a                                             ; $775e: $bf
	inc bc                                           ; $775f: $03
	inc d                                            ; $7760: $14
	db $ed                                           ; $7761: $ed
	cp a                                             ; $7762: $bf
	rst $38                                          ; $7763: $ff
	add hl, sp                                       ; $7764: $39
	db $10                                           ; $7765: $10
	ld bc, $fddf                                     ; $7766: $01 $df $fd
	adc $11                                          ; $7769: $ce $11
	nop                                              ; $776b: $00
	add l                                            ; $776c: $85
	xor a                                            ; $776d: $af
	cp $20                                           ; $776e: $fe $20
	ld [bc], a                                       ; $7770: $02
	ld sp, $ee80                                     ; $7771: $31 $80 $ee
	rst $38                                          ; $7774: $ff
	ld a, d                                          ; $7775: $7a
	ld d, b                                          ; $7776: $50
	ld d, e                                          ; $7777: $53
	rst $38                                          ; $7778: $ff
	rst $38                                          ; $7779: $ff
	xor a                                            ; $777a: $af
	ld d, a                                          ; $777b: $57
	dec bc                                           ; $777c: $0b
	ld e, [hl]                                       ; $777d: $5e
	rst $38                                          ; $777e: $ff
	xor h                                            ; $777f: $ac
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	ld d, b                                          ; $7782: $50
	xor b                                            ; $7783: $a8
	db $f4                                           ; $7784: $f4
	and c                                            ; $7785: $a1
	nop                                              ; $7786: $00
	ldh [$c6], a                                     ; $7787: $e0 $c6
	rst AddAOntoHL                                          ; $7789: $ef
	rst $38                                          ; $778a: $ff
	xor [hl]                                         ; $778b: $ae
	ld d, l                                          ; $778c: $55
	xor [hl]                                         ; $778d: $ae
	db $dd                                           ; $778e: $dd
	rra                                              ; $778f: $1f
	add hl, sp                                       ; $7790: $39
	db $10                                           ; $7791: $10
	sbc d                                            ; $7792: $9a
	nop                                              ; $7793: $00
	ld d, c                                          ; $7794: $51
	xor d                                            ; $7795: $aa
	ld d, c                                          ; $7796: $51
	ld [hl+], a                                      ; $7797: $22
	ld l, c                                          ; $7798: $69
	and d                                            ; $7799: $a2
	ld e, [hl]                                       ; $779a: $5e
	or a                                             ; $779b: $b7
	inc bc                                           ; $779c: $03
	ldh a, [$9c]                                     ; $779d: $f0 $9c
	ld e, l                                          ; $779f: $5d
	add hl, bc                                       ; $77a0: $09
	ld d, l                                          ; $77a1: $55
	ld l, [hl]                                       ; $77a2: $6e
	call nz, $105d                                   ; $77a3: $c4 $5d $10
	sbc h                                            ; $77a6: $9c
	rst SubAFromDE                                          ; $77a7: $df
	rst GetHLinHL                                          ; $77a8: $cf
	rst GetHLinHL                                          ; $77a9: $cf
	sbc $2d                                          ; $77aa: $de $2d
	sbc $15                                          ; $77ac: $de $15
	rst SubAFromDE                                          ; $77ae: $df
	dec b                                            ; $77af: $05
	sub a                                            ; $77b0: $97
	inc c                                            ; $77b1: $0c
	ld c, $0e                                        ; $77b2: $0e $0e
	ld e, $1f                                        ; $77b4: $1e $1f
	dec sp                                           ; $77b6: $3b
	dec sp                                           ; $77b7: $3b
	ld a, [hl-]                                      ; $77b8: $3a
	reti                                             ; $77b9: $d9


	rst $38                                          ; $77ba: $ff
	rst SubAFromDE                                          ; $77bb: $df
	ld d, [hl]                                       ; $77bc: $56
	rst SubAFromDE                                          ; $77bd: $df
	ld e, d                                          ; $77be: $5a
	rst SubAFromDE                                          ; $77bf: $df
	ld d, [hl]                                       ; $77c0: $56
	sbc l                                            ; $77c1: $9d
	ld d, d                                          ; $77c2: $52
	sub e                                            ; $77c3: $93
	reti                                             ; $77c4: $d9


	rst $38                                          ; $77c5: $ff
	sbc b                                            ; $77c6: $98
	ld b, b                                          ; $77c7: $40
	ld h, b                                          ; $77c8: $60
	ld d, b                                          ; $77c9: $50
	ld c, c                                          ; $77ca: $49
	ld h, a                                          ; $77cb: $67
	cp c                                             ; $77cc: $b9
	adc a                                            ; $77cd: $8f
	ld a, c                                          ; $77ce: $79
	add hl, bc                                       ; $77cf: $09
	db $db                                           ; $77d0: $db
	rst $38                                          ; $77d1: $ff
	sbc b                                            ; $77d2: $98
	adc h                                            ; $77d3: $8c
	ld [hl], b                                       ; $77d4: $70
	rst $38                                          ; $77d5: $ff
	rst $38                                          ; $77d6: $ff
	db $db                                           ; $77d7: $db
	db $eb                                           ; $77d8: $eb
	or $77                                           ; $77d9: $f6 $77
	ldh [hDisp0_BGP], a                                     ; $77db: $e0 $85
	adc h                                            ; $77dd: $8c
	dec c                                            ; $77de: $0d
	ld l, l                                          ; $77df: $6d
	dec de                                           ; $77e0: $1b
	ld a, d                                          ; $77e1: $7a
	dec c                                            ; $77e2: $0d
	rst FarCall                                          ; $77e3: $f7
	sbc $fc                                          ; $77e4: $de $fc
	ei                                               ; $77e6: $fb
	db $fd                                           ; $77e7: $fd
	rst $38                                          ; $77e8: $ff
	rst $38                                          ; $77e9: $ff
	cp $f9                                           ; $77ea: $fe $f9
	db $e3                                           ; $77ec: $e3
	add a                                            ; $77ed: $87

jr_05a_77ee:
	rrca                                             ; $77ee: $0f
	ld e, $00                                        ; $77ef: $1e $00
	nop                                              ; $77f1: $00
	add e                                            ; $77f2: $83
	rlca                                             ; $77f3: $07
	ld a, [de]                                       ; $77f4: $1a
	db $ec                                           ; $77f5: $ec
	ld a, e                                          ; $77f6: $7b
	ld [hl], b                                       ; $77f7: $70

Call_05a_77f8:
	ld h, $7d                                        ; $77f8: $26 $7d
	cp e                                             ; $77fa: $bb
	sbc [hl]                                         ; $77fb: $9e
	adc h                                            ; $77fc: $8c
	ld a, c                                          ; $77fd: $79
	ld d, a                                          ; $77fe: $57

Jump_05a_77ff:
	add b                                            ; $77ff: $80
	adc a                                            ; $7800: $8f
	rra                                              ; $7801: $1f
	ccf                                              ; $7802: $3f

jr_05a_7803:
	rst $38                                          ; $7803: $ff
	rst $38                                          ; $7804: $ff
	sbc $ec                                          ; $7805: $de $ec
	cp b                                             ; $7807: $b8
	ldh a, [$e0]                                     ; $7808: $f0 $e0
	jp $300c                                         ; $780a: $c3 $0c $30


	ldh [$f0], a                                     ; $780d: $e0 $f0
	ld [hl], b                                       ; $780f: $70
	rst JumpTable                                          ; $7810: $c7
	and $ae                                          ; $7811: $e6 $ae
	ld l, $2d                                        ; $7813: $2e $2d
	dec l                                            ; $7815: $2d
	ld c, c                                          ; $7816: $49
	ld e, c                                          ; $7817: $59
	ld a, c                                          ; $7818: $79
	cp e                                             ; $7819: $bb
	inc sp                                           ; $781a: $33
	inc sp                                           ; $781b: $33
	scf                                              ; $781c: $37
	scf                                              ; $781d: $37
	ld a, a                                          ; $781e: $7f
	adc l                                            ; $781f: $8d
	ld l, a                                          ; $7820: $6f
	ld b, e                                          ; $7821: $43
	add d                                            ; $7822: $82
	add a                                            ; $7823: $87
	add [hl]                                         ; $7824: $86
	rrca                                             ; $7825: $0f
	ld c, $1f                                        ; $7826: $0e $1f
	ld e, $40                                        ; $7828: $1e $40
	add c                                            ; $782a: $81
	add b                                            ; $782b: $80
	add c                                            ; $782c: $81
	nop                                              ; $782d: $00
	ld bc, $0100                                     ; $782e: $01 $00 $01
	adc c                                            ; $7831: $89
	db $db                                           ; $7832: $db
	add b                                            ; $7833: $80
	sbc l                                            ; $7834: $9d
	ret                                              ; $7835: $c9


	or $db                                           ; $7836: $f6 $db
	rst $38                                          ; $7838: $ff
	adc c                                            ; $7839: $89
	or [hl]                                          ; $783a: $b6
	dec sp                                           ; $783b: $3b
	sub l                                            ; $783c: $95
	ld [hl+], a                                      ; $783d: $22
	nop                                              ; $783e: $00
	ld bc, $5702                                     ; $783f: $01 $02 $57
	rst $38                                          ; $7842: $ff
	call nz, $dd6a                                   ; $7843: $c4 $6a $dd
	rst $38                                          ; $7846: $ff
	cp $fd                                           ; $7847: $fe $fd
	xor b                                            ; $7849: $a8
	nop                                              ; $784a: $00
	rst $38                                          ; $784b: $ff
	ld a, a                                          ; $784c: $7f
	ccf                                              ; $784d: $3f
	ld a, e                                          ; $784e: $7b
	cp l                                             ; $784f: $bd
	halt                                             ; $7850: $76
	jr c, jr_05a_77ee                                ; $7851: $38 $9b

	add b                                            ; $7853: $80
	ret nz                                           ; $7854: $c0

	add h                                            ; $7855: $84
	ld b, d                                          ; $7856: $42
	ld l, a                                          ; $7857: $6f
	jr nc, jr_05a_78d8                               ; $7858: $30 $7e

	ret nc                                           ; $785a: $d0

	ld a, [hl]                                       ; $785b: $7e
	or a                                             ; $785c: $b7
	ld [hl], l                                       ; $785d: $75
	ret nc                                           ; $785e: $d0

	ld a, [hl]                                       ; $785f: $7e
	ret nc                                           ; $7860: $d0

	ld a, [hl]                                       ; $7861: $7e
	and a                                            ; $7862: $a7
	ld l, a                                          ; $7863: $6f
	jr nz, jr_05a_7803                               ; $7864: $20 $9d

	reti                                             ; $7866: $d9


	sub b                                            ; $7867: $90
	ld a, e                                          ; $7868: $7b
	or $fe                                           ; $7869: $f6 $fe
	sub [hl]                                         ; $786b: $96
	ld h, $6f                                        ; $786c: $26 $6f
	cp a                                             ; $786e: $bf
	rst $38                                          ; $786f: $ff
	rst AddAOntoHL                                          ; $7870: $ef
	rst SubAFromDE                                          ; $7871: $df
	db $eb                                           ; $7872: $eb
	sbc l                                            ; $7873: $9d
	ld c, d                                          ; $7874: $4a
	cp $9a                                           ; $7875: $fe $9a
	db $10                                           ; $7877: $10
	jr nz, jr_05a_788e                               ; $7878: $20 $14

	ld h, d                                          ; $787a: $62
	or l                                             ; $787b: $b5
	ld [hl], e                                       ; $787c: $73
	ret c                                            ; $787d: $d8

	ld [hl], b                                       ; $787e: $70
	ld e, h                                          ; $787f: $5c
	ld e, c                                          ; $7880: $59
	sbc d                                            ; $7881: $9a
	sbc l                                            ; $7882: $9d
	inc b                                            ; $7883: $04
	inc c                                            ; $7884: $0c
	ld c, a                                          ; $7885: $4f
	ldh a, [rHDMA3]                                  ; $7886: $f0 $53
	ldh [$6d], a                                     ; $7888: $e0 $6d
	adc d                                            ; $788a: $8a
	ld h, a                                          ; $788b: $67
	ldh a, [$98]                                     ; $788c: $f0 $98

jr_05a_788e:
	ld a, [hl+]                                      ; $788e: $2a
	nop                                              ; $788f: $00
	adc a                                            ; $7890: $8f
	add a                                            ; $7891: $87
	add a                                            ; $7892: $87
	rlca                                             ; $7893: $07
	dec b                                            ; $7894: $05
	ld a, e                                          ; $7895: $7b
	adc h                                            ; $7896: $8c
	call c, Call_05a_7b05                            ; $7897: $dc $05 $7b
	ld sp, hl                                        ; $789a: $f9
	sbc $72                                          ; $789b: $de $72
	sbc l                                            ; $789d: $9d
	ldh a, [c]                                       ; $789e: $f2
	or $de                                           ; $789f: $f6 $de
	cp $de                                           ; $78a1: $fe $de
	rst SubAFromDE                                          ; $78a3: $df
	rst SubAFromDE                                          ; $78a4: $df
	sbc a                                            ; $78a5: $9f
	rst SubAFromDE                                          ; $78a6: $df
	dec de                                           ; $78a7: $1b
	sbc b                                            ; $78a8: $98
	inc de                                           ; $78a9: $13
	sbc e                                            ; $78aa: $9b
	inc [hl]                                         ; $78ab: $34
	ld a, [hl-]                                      ; $78ac: $3a
	ld a, d                                          ; $78ad: $7a
	ld a, l                                          ; $78ae: $7d
	ld a, h                                          ; $78af: $7c
	ld [hl], l                                       ; $78b0: $75
	add l                                            ; $78b1: $85
	ld a, l                                          ; $78b2: $7d
	ld e, a                                          ; $78b3: $5f
	rst SubAFromDE                                          ; $78b4: $df
	rst JumpTable                                          ; $78b5: $c7
	sub l                                            ; $78b6: $95
	add e                                            ; $78b7: $83
	add c                                            ; $78b8: $81
	inc bc                                           ; $78b9: $03
	add c                                            ; $78ba: $81
	ld b, c                                          ; $78bb: $41
	ld hl, $8a12                                     ; $78bc: $21 $12 $8a
	ld c, c                                          ; $78bf: $49
	dec h                                            ; $78c0: $25
	reti                                             ; $78c1: $d9


	rst $38                                          ; $78c2: $ff
	sub b                                            ; $78c3: $90
	di                                               ; $78c4: $f3
	rst SubAFromHL                                          ; $78c5: $d7
	push af                                          ; $78c6: $f5
	rst FarCall                                          ; $78c7: $f7
	ld [hl], a                                       ; $78c8: $77
	dec hl                                           ; $78c9: $2b
	cp a                                             ; $78ca: $bf
	ld a, a                                          ; $78cb: $7f
	ld a, d                                          ; $78cc: $7a
	ld a, d                                          ; $78cd: $7a
	ld e, $9c                                        ; $78ce: $1e $9c
	call c, Call_05a_48dc                            ; $78d0: $dc $dc $48
	ld h, b                                          ; $78d3: $60
	sbc a                                            ; $78d4: $9f
	ld e, [hl]                                       ; $78d5: $5e
	ld h, b                                          ; $78d6: $60
	add b                                            ; $78d7: $80

jr_05a_78d8:
	rst SubAFromBC                                          ; $78d8: $e7
	sbc $fe                                          ; $78d9: $de $fe
	and $6d                                          ; $78db: $e6 $6d
	xor l                                            ; $78dd: $ad
	nop                                              ; $78de: $00
	nop                                              ; $78df: $00
	ccf                                              ; $78e0: $3f
	ld a, $12                                        ; $78e1: $3e $12
	ld b, $07                                        ; $78e3: $06 $07
	rlca                                             ; $78e5: $07
	db $f4                                           ; $78e6: $f4
	db $fc                                           ; $78e7: $fc
	ld hl, sp+$79                                    ; $78e8: $f8 $79
	ld a, d                                          ; $78ea: $7a
	or h                                             ; $78eb: $b4
	ld l, b                                          ; $78ec: $68
	ld [$0818], sp                                   ; $78ed: $08 $18 $08
	ret nz                                           ; $78f0: $c0

	pop hl                                           ; $78f1: $e1
	ld h, d                                          ; $78f2: $62
	call nz, $0808                                   ; $78f3: $c4 $08 $08
	ld c, c                                          ; $78f6: $49
	sub l                                            ; $78f7: $95
	call nc, Call_05a_61d2                           ; $78f8: $d4 $d2 $61
	ld h, b                                          ; $78fb: $60
	ld b, b                                          ; $78fc: $40
	ld b, b                                          ; $78fd: $40
	nop                                              ; $78fe: $00
	ld a, a                                          ; $78ff: $7f
	rst FarCall                                          ; $7900: $f7
	di                                               ; $7901: $f3
	ld [hl], e                                       ; $7902: $73
	ld hl, sp-$6a                                    ; $7903: $f8 $96
	ccf                                              ; $7905: $3f
	cp [hl]                                          ; $7906: $be
	cp a                                             ; $7907: $bf
	cp [hl]                                          ; $7908: $be
	rst SubAFromDE                                          ; $7909: $df
	ld e, $0f                                        ; $790a: $1e $0f
	ld c, $00                                        ; $790c: $0e $00
	ld a, d                                          ; $790e: $7a
	ret nz                                           ; $790f: $c0

	sbc [hl]                                         ; $7910: $9e
	ret nz                                           ; $7911: $c0

	ld a, d                                          ; $7912: $7a
	ret nz                                           ; $7913: $c0

	ld a, l                                          ; $7914: $7d
	jp nc, $d69c                                     ; $7915: $d2 $9c $d6

	jp nz, $dec0                                     ; $7918: $c2 $c0 $de

	add b                                            ; $791b: $80
	sbc e                                            ; $791c: $9b
	sub b                                            ; $791d: $90
	add b                                            ; $791e: $80
	xor c                                            ; $791f: $a9
	cp l                                             ; $7920: $bd
	ld a, d                                          ; $7921: $7a
	jp hl                                            ; $7922: $e9


	ld a, d                                          ; $7923: $7a
	inc d                                            ; $7924: $14
	sbc l                                            ; $7925: $9d
	adc $05                                          ; $7926: $ce $05
	ld l, h                                          ; $7928: $6c
	ld l, l                                          ; $7929: $6d
	sbc l                                            ; $792a: $9d
	ld sp, $dcfa                                     ; $792b: $31 $fa $dc
	rst $38                                          ; $792e: $ff
	sbc h                                            ; $792f: $9c
	xor e                                            ; $7930: $ab
	ld d, c                                          ; $7931: $51
	dec bc                                           ; $7932: $0b
	ld [hl], c                                       ; $7933: $71
	di                                               ; $7934: $f3
	sbc h                                            ; $7935: $9c
	ld d, h                                          ; $7936: $54
	xor [hl]                                         ; $7937: $ae
	db $f4                                           ; $7938: $f4
	ld [hl], b                                       ; $7939: $70
	rst SubAFromDE                                          ; $793a: $df
	sbc h                                            ; $793b: $9c
	rst $38                                          ; $793c: $ff
	ld e, d                                          ; $793d: $5a
	add l                                            ; $793e: $85
	ld l, [hl]                                       ; $793f: $6e
	db $d3                                           ; $7940: $d3
	sbc l                                            ; $7941: $9d
	and l                                            ; $7942: $a5
	ld a, d                                          ; $7943: $7a
	ld [hl], a                                       ; $7944: $77
	ret nc                                           ; $7945: $d0

	add b                                            ; $7946: $80
	and d                                            ; $7947: $a2
	rst $38                                          ; $7948: $ff
	rst $38                                          ; $7949: $ff
	ld a, a                                          ; $794a: $7f
	sbc [hl]                                         ; $794b: $9e
	ld [rRAMG], sp                                   ; $794c: $08 $00 $00
	ld e, l                                          ; $794f: $5d
	nop                                              ; $7950: $00
	nop                                              ; $7951: $00
	add b                                            ; $7952: $80
	ld h, c                                          ; $7953: $61
	rst FarCall                                          ; $7954: $f7
	rst $38                                          ; $7955: $ff
	rst $38                                          ; $7956: $ff
	cp c                                             ; $7957: $b9
	rst $38                                          ; $7958: $ff
	pop hl                                           ; $7959: $e1
	ld b, b                                          ; $795a: $40
	nop                                              ; $795b: $00
	ld [bc], a                                       ; $795c: $02
	dec b                                            ; $795d: $05
	jr nz, @+$48                                     ; $795e: $20 $46

	nop                                              ; $7960: $00
	ld e, $bf                                        ; $7961: $1e $bf
	rst $38                                          ; $7963: $ff
	db $fd                                           ; $7964: $fd
	ld a, [$df9e]                                    ; $7965: $fa $9e $df
	ld c, l                                          ; $7968: $4d
	and d                                            ; $7969: $a2
	rst $38                                          ; $796a: $ff
	scf                                              ; $796b: $37
	ldh a, [$7b]                                     ; $796c: $f0 $7b
	ld a, c                                          ; $796e: $79
	ld h, c                                          ; $796f: $61
	sub b                                            ; $7970: $90
	ld b, e                                          ; $7971: $43
	ldh [$9d], a                                     ; $7972: $e0 $9d
	dec b                                            ; $7974: $05
	ld d, l                                          ; $7975: $55
	db $dd                                           ; $7976: $dd
	rlca                                             ; $7977: $07
	sbc [hl]                                         ; $7978: $9e
	rrca                                             ; $7979: $0f
	reti                                             ; $797a: $d9


	dec b                                            ; $797b: $05
	sub l                                            ; $797c: $95
	ccf                                              ; $797d: $3f
	inc de                                           ; $797e: $13
	nop                                              ; $797f: $00
	add b                                            ; $7980: $80
	jp nc, $ffb5                                     ; $7981: $d2 $b5 $ff

	rst GetHLinHL                                          ; $7984: $cf
	pop de                                           ; $7985: $d1
	db $ed                                           ; $7986: $ed
	db $db                                           ; $7987: $db
	rst $38                                          ; $7988: $ff
	sub [hl]                                         ; $7989: $96
	cp d                                             ; $798a: $ba
	ld [$0101], sp                                   ; $798b: $08 $01 $01
	and d                                            ; $798e: $a2
	push bc                                          ; $798f: $c5
	xor $ff                                          ; $7990: $ee $ff
	ld b, l                                          ; $7992: $45
	ld a, e                                          ; $7993: $7b
	add h                                            ; $7994: $84
	db $dd                                           ; $7995: $dd
	rst $38                                          ; $7996: $ff
	sub l                                            ; $7997: $95
	and a                                            ; $7998: $a7
	or a                                             ; $7999: $b7
	rla                                              ; $799a: $17
	ld e, a                                          ; $799b: $5f
	ld d, a                                          ; $799c: $57
	rst SubAFromDE                                          ; $799d: $df
	rst AddAOntoHL                                          ; $799e: $ef
	rst $38                                          ; $799f: $ff
	rst $38                                          ; $79a0: $ff
	db $fd                                           ; $79a1: $fd
	sbc $fc                                          ; $79a2: $de $fc
	rst SubAFromDE                                          ; $79a4: $df
	ldh a, [$9e]                                     ; $79a5: $f0 $9e
	ldh [$d9], a                                     ; $79a7: $e0 $d9
	rst $38                                          ; $79a9: $ff
	sbc h                                            ; $79aa: $9c
	adc b                                            ; $79ab: $88
	add b                                            ; $79ac: $80
	add b                                            ; $79ad: $80
	ld e, l                                          ; $79ae: $5d
	jr nc, jr_05a_7a0b                               ; $79af: $30 $5a

	ret nz                                           ; $79b1: $c0

	sbc h                                            ; $79b2: $9c
	add [hl]                                         ; $79b3: $86
	call nz, $7bc0                                   ; $79b4: $c4 $c0 $7b
	ld bc, $9dff                                     ; $79b7: $01 $ff $9d
	ld b, $04                                        ; $79ba: $06 $04
	ei                                               ; $79bc: $fb
	sbc $10                                          ; $79bd: $de $10
	ld a, [hl]                                       ; $79bf: $7e
	push bc                                          ; $79c0: $c5
	sbc h                                            ; $79c1: $9c
	ld l, h                                          ; $79c2: $6c
	ld e, b                                          ; $79c3: $58
	ld h, b                                          ; $79c4: $60
	sbc $10                                          ; $79c5: $de $10
	rst SubAFromDE                                          ; $79c7: $df
	ld [$0494], sp                                   ; $79c8: $08 $94 $04
	jr c, jr_05a_7a2d                                ; $79cb: $38 $60

	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	ld [$3a14], sp                                   ; $79cf: $08 $14 $3a
	ld d, l                                          ; $79d2: $55
	ld a, [$f9d5]                                    ; $79d3: $fa $d5 $f9
	sbc h                                            ; $79d6: $9c
	rlca                                             ; $79d7: $07
	ld [bc], a                                       ; $79d8: $02
	inc bc                                           ; $79d9: $03
	ld a, e                                          ; $79da: $7b
	ld d, c                                          ; $79db: $51
	ld [hl], e                                       ; $79dc: $73

Call_05a_79dd:
	cp $77                                           ; $79dd: $fe $77
	db $fd                                           ; $79df: $fd
	ld a, a                                          ; $79e0: $7f
	ld [hl], e                                       ; $79e1: $73
	jp c, $d980                                      ; $79e2: $da $80 $d9

	rst $38                                          ; $79e5: $ff
	sbc e                                            ; $79e6: $9b
	ld [bc], a                                       ; $79e7: $02
	rla                                              ; $79e8: $17
	ccf                                              ; $79e9: $3f
	ld d, d                                          ; $79ea: $52
	ld d, a                                          ; $79eb: $57
	sbc b                                            ; $79ec: $98
	sbc h                                            ; $79ed: $9c
	ld bc, $a2c1                                     ; $79ee: $01 $c1 $a2
	ld c, a                                          ; $79f1: $4f
	adc b                                            ; $79f2: $88
	sbc l                                            ; $79f3: $9d
	add sp, -$30                                     ; $79f4: $e8 $d0
	ld d, e                                          ; $79f6: $53
	ldh a, [$9d]                                     ; $79f7: $f0 $9d
	ld [$fb10], sp                                   ; $79f9: $08 $10 $fb
	sbc [hl]                                         ; $79fc: $9e
	rst FarCall                                          ; $79fd: $f7
	ld a, e                                          ; $79fe: $7b
	ld c, l                                          ; $79ff: $4d
	db $dd                                           ; $7a00: $dd
	rst $38                                          ; $7a01: $ff
	sbc l                                            ; $7a02: $9d
	ld e, b                                          ; $7a03: $58
	xor b                                            ; $7a04: $a8
	ei                                               ; $7a05: $fb
	sbc l                                            ; $7a06: $9d
	and a                                            ; $7a07: $a7
	ld d, a                                          ; $7a08: $57
	ld l, e                                          ; $7a09: $6b
	ret nc                                           ; $7a0a: $d0

jr_05a_7a0b:
	ld a, c                                          ; $7a0b: $79
	or h                                             ; $7a0c: $b4
	ld [hl], d                                       ; $7a0d: $72
	db $ec                                           ; $7a0e: $ec
	ld e, c                                          ; $7a0f: $59
	sub h                                            ; $7a10: $94
	ld d, a                                          ; $7a11: $57
	ldh a, [$9e]                                     ; $7a12: $f0 $9e
	add hl, bc                                       ; $7a14: $09
	scf                                              ; $7a15: $37
	ldh [$9d], a                                     ; $7a16: $e0 $9d
	rrca                                             ; $7a18: $0f
	ld a, a                                          ; $7a19: $7f
	ld a, e                                          ; $7a1a: $7b
	ret z                                            ; $7a1b: $c8

	ei                                               ; $7a1c: $fb
	sub l                                            ; $7a1d: $95
	rra                                              ; $7a1e: $1f
	rst $38                                          ; $7a1f: $ff
	rst $38                                          ; $7a20: $ff
	db $fc                                           ; $7a21: $fc
	db $fc                                           ; $7a22: $fc
	ld hl, sp-$18                                    ; $7a23: $f8 $e8
	ret z                                            ; $7a25: $c8

	dec b                                            ; $7a26: $05
	rst $38                                          ; $7a27: $ff
	sbc $07                                          ; $7a28: $de $07
	ld a, h                                          ; $7a2a: $7c
	and h                                            ; $7a2b: $a4
	ld a, a                                          ; $7a2c: $7f

jr_05a_7a2d:
	rst SubAFromBC                                          ; $7a2d: $e7
	ld a, h                                          ; $7a2e: $7c
	ld e, [hl]                                       ; $7a2f: $5e
	sub l                                            ; $7a30: $95
	nop                                              ; $7a31: $00
	and b                                            ; $7a32: $a0
	nop                                              ; $7a33: $00
	nop                                              ; $7a34: $00
	ld b, b                                          ; $7a35: $40
	rst $38                                          ; $7a36: $ff
	rst $38                                          ; $7a37: $ff
	sbc a                                            ; $7a38: $9f
	sbc a                                            ; $7a39: $9f
	rra                                              ; $7a3a: $1f
	sbc $3f                                          ; $7a3b: $de $3f
	ld a, e                                          ; $7a3d: $7b
	reti                                             ; $7a3e: $d9


	ld a, [hl]                                       ; $7a3f: $7e
	and e                                            ; $7a40: $a3
	sbc h                                            ; $7a41: $9c
	rra                                              ; $7a42: $1f
	rla                                              ; $7a43: $17
	daa                                              ; $7a44: $27
	db $db                                           ; $7a45: $db
	rst $38                                          ; $7a46: $ff
	ld a, c                                          ; $7a47: $79
	ld l, b                                          ; $7a48: $68
	ld a, e                                          ; $7a49: $7b
	sbc $df                                          ; $7a4a: $de $df
	rst FarCall                                          ; $7a4c: $f7
	ld a, l                                          ; $7a4d: $7d
	ld [hl], e                                       ; $7a4e: $73
	sbc [hl]                                         ; $7a4f: $9e
	ldh [$72], a                                     ; $7a50: $e0 $72
	ld [$b17b], a                                    ; $7a52: $ea $7b $b1
	sub b                                            ; $7a55: $90

jr_05a_7a56:
	pop af                                           ; $7a56: $f1
	ldh a, [$f0]                                     ; $7a57: $f0 $f0
	ld hl, sp-$08                                    ; $7a59: $f8 $f8
	cp $fa                                           ; $7a5b: $fe $fa

jr_05a_7a5d:
	nop                                              ; $7a5d: $00
	ld c, $0f                                        ; $7a5e: $0e $0f
	rrca                                             ; $7a60: $0f
	rlca                                             ; $7a61: $07
	rlca                                             ; $7a62: $07
	ld bc, $7b01                                     ; $7a63: $01 $01 $7b
	db $dd                                           ; $7a66: $dd
	sbc $fe                                          ; $7a67: $de $fe
	ld a, l                                          ; $7a69: $7d
	adc e                                            ; $7a6a: $8b
	ld [hl], a                                       ; $7a6b: $77
	dec b                                            ; $7a6c: $05
	sub b                                            ; $7a6d: $90
	ldh [$f8], a                                     ; $7a6e: $e0 $f8
	cp $ff                                           ; $7a70: $fe $ff
	ld c, $03                                        ; $7a72: $0e $03
	ld b, $04                                        ; $7a74: $06 $04
	ld [$1008], sp                                   ; $7a76: $08 $08 $10
	ldh [rTMA], a                                    ; $7a79: $e0 $06
	ld bc, $7302                                     ; $7a7b: $01 $02 $73
	ld hl, sp+$7d                                    ; $7a7e: $f8 $7d

Jump_05a_7a80:
	ccf                                              ; $7a80: $3f
	ld a, a                                          ; $7a81: $7f
	or c                                             ; $7a82: $b1
	sbc e                                            ; $7a83: $9b
	rrca                                             ; $7a84: $0f
	ccf                                              ; $7a85: $3f
	cpl                                              ; $7a86: $2f
	ld a, a                                          ; $7a87: $7f
	ld [hl], a                                       ; $7a88: $77
	jp $257f                                         ; $7a89: $c3 $7f $25


	sbc e                                            ; $7a8c: $9b
	ld d, b                                          ; $7a8d: $50
	add b                                            ; $7a8e: $80
	ld a, [$6fd5]                                    ; $7a8f: $fa $d5 $6f
	cp $f9                                           ; $7a92: $fe $f9
	sub a                                            ; $7a94: $97
	add b                                            ; $7a95: $80
	ld b, c                                          ; $7a96: $41
	and b                                            ; $7a97: $a0
	ld d, c                                          ; $7a98: $51
	cp b                                             ; $7a99: $b8
	ld d, l                                          ; $7a9a: $55
	cp [hl]                                          ; $7a9b: $be
	ld d, a                                          ; $7a9c: $57
	ld h, e                                          ; $7a9d: $63
	ldh a, [rWY]                                     ; $7a9e: $f0 $4a
	ret nz                                           ; $7aa0: $c0

	db $fd                                           ; $7aa1: $fd
	sbc h                                            ; $7aa2: $9c
	ld h, h                                          ; $7aa3: $64
	jp c, Jump_05a_4e04                              ; $7aa4: $da $04 $4e

	ld e, b                                          ; $7aa7: $58
	ld a, e                                          ; $7aa8: $7b
	or e                                             ; $7aa9: $b3
	ld h, d                                          ; $7aaa: $62
	and b                                            ; $7aab: $a0
	sbc l                                            ; $7aac: $9d
	inc d                                            ; $7aad: $14
	ld a, [bc]                                       ; $7aae: $0a
	ld d, d                                          ; $7aaf: $52
	ret nz                                           ; $7ab0: $c0

	sbc l                                            ; $7ab1: $9d
	jr nz, @+$52                                     ; $7ab2: $20 $50

	ld h, a                                          ; $7ab4: $67
	add hl, bc                                       ; $7ab5: $09
	ld d, [hl]                                       ; $7ab6: $56
	jr z, jr_05a_7a56                                ; $7ab7: $28 $9d

	inc c                                            ; $7ab9: $0c
	ld a, $63                                        ; $7aba: $3e $63
	ldh a, [$dd]                                     ; $7abc: $f0 $dd
	jr nz, jr_05a_7a5d                               ; $7abe: $20 $9d

	ld [hl+], a                                      ; $7ac0: $22
	ld l, d                                          ; $7ac1: $6a
	ld h, d                                          ; $7ac2: $62
	ldh [c], a                                       ; $7ac3: $e2
	ld b, a                                          ; $7ac4: $47
	ld hl, sp-$63                                    ; $7ac5: $f8 $9d
	ld bc, $7703                                     ; $7ac7: $01 $03 $77
	ld c, a                                          ; $7aca: $4f
	ld a, [hl]                                       ; $7acb: $7e
	jp c, $c262                                      ; $7acc: $da $62 $c2

	ld a, e                                          ; $7acf: $7b
	rra                                              ; $7ad0: $1f
	sbc $fc                                          ; $7ad1: $de $fc
	sbc l                                            ; $7ad3: $9d
	ld hl, sp+$00                                    ; $7ad4: $f8 $00
	ld [hl], a                                       ; $7ad6: $77
	rst SubAFromBC                                          ; $7ad7: $e7
	rst SubAFromDE                                          ; $7ad8: $df
	rlca                                             ; $7ad9: $07
	sub [hl]                                         ; $7ada: $96
	rst $38                                          ; $7adb: $ff
	sub b                                            ; $7adc: $90
	db $10                                           ; $7add: $10
	ld [de], a                                       ; $7ade: $12
	jr nz, jr_05a_7b06                               ; $7adf: $20 $25

	jr nz, jr_05a_7b23                               ; $7ae1: $20 $40

	ld c, d                                          ; $7ae3: $4a
	ld [hl], a                                       ; $7ae4: $77
	ld [$f89b], a                                    ; $7ae5: $ea $9b $f8
	ld sp, hl                                        ; $7ae8: $f9
	ld sp, hl                                        ; $7ae9: $f9
	pop af                                           ; $7aea: $f1
	ld [hl], e                                       ; $7aeb: $73
	ld [hl], e                                       ; $7aec: $73
	cp $de                                           ; $7aed: $fe $de
	ld a, a                                          ; $7aef: $7f
	call c, Call_05a_7bff                            ; $7af0: $dc $ff $7b
	call nz, $1fdc                                   ; $7af3: $c4 $dc $1f
	ld a, a                                          ; $7af6: $7f
	db $e3                                           ; $7af7: $e3
	call c, Call_05a_7ef0                            ; $7af8: $dc $f0 $7e
	rst JumpTable                                          ; $7afb: $c7
	ld a, h                                          ; $7afc: $7c
	add hl, sp                                       ; $7afd: $39
	sbc l                                            ; $7afe: $9d
	adc a                                            ; $7aff: $8f
	sbc a                                            ; $7b00: $9f
	sbc $1f                                          ; $7b01: $de $1f
	cp $df                                           ; $7b03: $fe $df

Call_05a_7b05:
	ld b, b                                          ; $7b05: $40

jr_05a_7b06:
	sbc $c0                                          ; $7b06: $de $c0
	sub a                                            ; $7b08: $97
	di                                               ; $7b09: $f3
	pop af                                           ; $7b0a: $f1
	pop hl                                           ; $7b0b: $e1
	pop hl                                           ; $7b0c: $e1
	jp $0783                                         ; $7b0d: $c3 $83 $07


	rst JumpTable                                          ; $7b10: $c7
	ld a, [$019d]                                    ; $7b11: $fa $9d $01
	pop hl                                           ; $7b14: $e1
	db $dd                                           ; $7b15: $dd
	ret nz                                           ; $7b16: $c0

	ld a, d                                          ; $7b17: $7a
	and l                                            ; $7b18: $a5
	sbc $ff                                          ; $7b19: $de $ff
	ld [hl], e                                       ; $7b1b: $73
	cp [hl]                                          ; $7b1c: $be
	sbc d                                            ; $7b1d: $9a
	add d                                            ; $7b1e: $82
	push de                                          ; $7b1f: $d5
	ld a, d                                          ; $7b20: $7a
	ld a, l                                          ; $7b21: $7d
	ld a, [hl]                                       ; $7b22: $7e

jr_05a_7b23:
	ld a, e                                          ; $7b23: $7b
	rst FarCall                                          ; $7b24: $f7
	sub l                                            ; $7b25: $95
	ld b, c                                          ; $7b26: $41
	ld [$8eb5], a                                    ; $7b27: $ea $b5 $8e
	add e                                            ; $7b2a: $83
	add c                                            ; $7b2b: $81
	nop                                              ; $7b2c: $00
	nop                                              ; $7b2d: $00
	xor a                                            ; $7b2e: $af
	ld a, a                                          ; $7b2f: $7f
	ld a, e                                          ; $7b30: $7b
	cp $9a                                           ; $7b31: $fe $9a
	ld [bc], a                                       ; $7b33: $02
	ld [$50b5], a                                    ; $7b34: $ea $b5 $50
	add b                                            ; $7b37: $80
	ld a, e                                          ; $7b38: $7b
	cp $9c                                           ; $7b39: $fe $9c
	db $fd                                           ; $7b3b: $fd
	ret nz                                           ; $7b3c: $c0

	ld h, b                                          ; $7b3d: $60
	ld l, [hl]                                       ; $7b3e: $6e
	jp nz, $f57f                                     ; $7b3f: $c2 $7f $f5

	ld sp, hl                                        ; $7b42: $f9
	sbc b                                            ; $7b43: $98
	cp a                                             ; $7b44: $bf
	ld d, [hl]                                       ; $7b45: $56
	cp a                                             ; $7b46: $bf
	ld e, [hl]                                       ; $7b47: $5e
	cp a                                             ; $7b48: $bf
	xor b                                            ; $7b49: $a8
	ld a, [bc]                                       ; $7b4a: $0a
	ld l, l                                          ; $7b4b: $6d
	ld a, [hl]                                       ; $7b4c: $7e
	ld a, d                                          ; $7b4d: $7a
	cp d                                             ; $7b4e: $ba
	ld [hl], $c0                                     ; $7b4f: $36 $c0
	sbc h                                            ; $7b51: $9c
	nop                                              ; $7b52: $00
	dec b                                            ; $7b53: $05
	inc bc                                           ; $7b54: $03
	ld d, d                                          ; $7b55: $52
	ldh a, [$9c]                                     ; $7b56: $f0 $9c
	ld [bc], a                                       ; $7b58: $02
	ld e, e                                          ; $7b59: $5b
	rst $38                                          ; $7b5a: $ff
	ld l, a                                          ; $7b5b: $6f
	ld d, e                                          ; $7b5c: $53
	ld l, a                                          ; $7b5d: $6f
	ldh a, [$9a]                                     ; $7b5e: $f0 $9a
	db $10                                           ; $7b60: $10
	ld e, e                                          ; $7b61: $5b
	ld a, a                                          ; $7b62: $7f
	db $fd                                           ; $7b63: $fd
	or h                                             ; $7b64: $b4
	reti                                             ; $7b65: $d9


	rst $38                                          ; $7b66: $ff
	ld a, c                                          ; $7b67: $79
	ld [hl-], a                                      ; $7b68: $32
	ld a, [hl]                                       ; $7b69: $7e
	ld e, d                                          ; $7b6a: $5a
	ld a, c                                          ; $7b6b: $79
	ld l, h                                          ; $7b6c: $6c
	reti                                             ; $7b6d: $d9


	rst $38                                          ; $7b6e: $ff
	sbc h                                            ; $7b6f: $9c
	cp $7f                                           ; $7b70: $fe $7f
	ld [de], a                                       ; $7b72: $12
	ld d, d                                          ; $7b73: $52
	or b                                             ; $7b74: $b0
	ld a, c                                          ; $7b75: $79
	or d                                             ; $7b76: $b2
	ld [hl], a                                       ; $7b77: $77
	cp $f8                                           ; $7b78: $fe $f8
	ld l, e                                          ; $7b7a: $6b
	ldh a, [$60]                                     ; $7b7b: $f0 $60
	ld d, b                                          ; $7b7d: $50
	sbc h                                            ; $7b7e: $9c
	rst $38                                          ; $7b7f: $ff
	xor a                                            ; $7b80: $af
	ld a, a                                          ; $7b81: $7f
	ld [hl], e                                       ; $7b82: $73
	and e                                            ; $7b83: $a3
	ld sp, hl                                        ; $7b84: $f9
	sub a                                            ; $7b85: $97
	ld hl, sp-$0c                                    ; $7b86: $f8 $f4
	db $fc                                           ; $7b88: $fc
	push af                                          ; $7b89: $f5
	db $eb                                           ; $7b8a: $eb
	rst SubAFromHL                                          ; $7b8b: $d7
	jp z, Jump_05a_7696                              ; $7b8c: $ca $96 $76

	jp hl                                            ; $7b8f: $e9


	ld a, l                                          ; $7b90: $7d
	sub d                                            ; $7b91: $92
	ld a, a                                          ; $7b92: $7f
	and $df                                          ; $7b93: $e6 $df
	add b                                            ; $7b95: $80
	sub c                                            ; $7b96: $91
	sub h                                            ; $7b97: $94
	nop                                              ; $7b98: $00
	nop                                              ; $7b99: $00
	jr z, jr_05a_7b9c                                ; $7b9a: $28 $00

jr_05a_7b9c:
	nop                                              ; $7b9c: $00
	di                                               ; $7b9d: $f3
	di                                               ; $7b9e: $f3
	db $e3                                           ; $7b9f: $e3
	rst SubAFromBC                                          ; $7ba0: $e7
	rst SubAFromBC                                          ; $7ba1: $e7
	rst JumpTable                                          ; $7ba2: $c7
	rst GetHLinHL                                          ; $7ba3: $cf
	rst GetHLinHL                                          ; $7ba4: $cf
	ld h, e                                          ; $7ba5: $63
	ret z                                            ; $7ba6: $c8

	jp c, $9bff                                      ; $7ba7: $da $ff $9b

	add hl, de                                       ; $7baa: $19
	inc e                                            ; $7bab: $1c
	rra                                              ; $7bac: $1f

Jump_05a_7bad:
	rra                                              ; $7bad: $1f
	db $dd                                           ; $7bae: $dd
	db $10                                           ; $7baf: $10
	halt                                             ; $7bb0: $76
	call nz, $ffdf                                   ; $7bb1: $c4 $df $ff
	ld a, e                                          ; $7bb4: $7b
	db $fc                                           ; $7bb5: $fc
	ld a, l                                          ; $7bb6: $7d
	ld l, [hl]                                       ; $7bb7: $6e
	sbc l                                            ; $7bb8: $9d
	db $fc                                           ; $7bb9: $fc
	ld c, $7b                                        ; $7bba: $0e $7b
	ld l, e                                          ; $7bbc: $6b
	adc h                                            ; $7bbd: $8c
	ret nz                                           ; $7bbe: $c0

	ld bc, $f002                                     ; $7bbf: $01 $02 $f0
	db $fc                                           ; $7bc2: $fc
	cp $1f                                           ; $7bc3: $fe $1f
	add a                                            ; $7bc5: $87
	rst $38                                          ; $7bc6: $ff
	cp $fc                                           ; $7bc7: $fe $fc
	inc e                                            ; $7bc9: $1c
	jr c, @+$72                                      ; $7bca: $38 $70

	ldh a, [$e0]                                     ; $7bcc: $f0 $e0
	ld bc, $7f83                                     ; $7bce: $01 $83 $7f
	ld a, c                                          ; $7bd1: $79
	ld e, b                                          ; $7bd2: $58
	ld a, [hl]                                       ; $7bd3: $7e
	ld e, b                                          ; $7bd4: $58
	sub l                                            ; $7bd5: $95
	add hl, bc                                       ; $7bd6: $09
	dec de                                           ; $7bd7: $1b
	ccf                                              ; $7bd8: $3f
	ccf                                              ; $7bd9: $3f
	ld a, a                                          ; $7bda: $7f
	rst GetHLinHL                                          ; $7bdb: $cf
	sbc a                                            ; $7bdc: $9f
	rra                                              ; $7bdd: $1f
	or $e4                                           ; $7bde: $f6 $e4
	ld a, d                                          ; $7be0: $7a
	cp c                                             ; $7be1: $b9
	sbc h                                            ; $7be2: $9c
	jr nc, jr_05a_7c45                               ; $7be3: $30 $60

	ldh [rPCM34], a                                  ; $7be5: $e0 $77
	ld c, l                                          ; $7be7: $4d
	sbc e                                            ; $7be8: $9b
	db $fc                                           ; $7be9: $fc
	ld sp, hl                                        ; $7bea: $f9
	ld sp, hl                                        ; $7beb: $f9
	ldh a, [c]                                       ; $7bec: $f2
	ld h, [hl]                                       ; $7bed: $66
	and b                                            ; $7bee: $a0
	adc a                                            ; $7bef: $8f
	jp c, $2e8d                                      ; $7bf0: $da $8d $2e

	ld d, a                                          ; $7bf3: $57
	xor [hl]                                         ; $7bf4: $ae
	ld e, l                                          ; $7bf5: $5d
	cp a                                             ; $7bf6: $bf
	cp a                                             ; $7bf7: $bf
	jr nc, jr_05a_7c12                               ; $7bf8: $30 $18

	inc e                                            ; $7bfa: $1c
	ld a, [hl-]                                      ; $7bfb: $3a
	ld [hl], d                                       ; $7bfc: $72
	db $e3                                           ; $7bfd: $e3
	pop bc                                           ; $7bfe: $c1

Call_05a_7bff:
	pop bc                                           ; $7bff: $c1
	halt                                             ; $7c00: $76
	cp c                                             ; $7c01: $b9
	ld [hl], a                                       ; $7c02: $77
	cp $f9                                           ; $7c03: $fe $f9
	ld a, [hl]                                       ; $7c05: $7e
	add $6f                                          ; $7c06: $c6 $6f
	cp $51                                           ; $7c08: $fe $51
	add b                                            ; $7c0a: $80
	sbc h                                            ; $7c0b: $9c
	xor b                                            ; $7c0c: $a8
	push de                                          ; $7c0d: $d5
	ei                                               ; $7c0e: $fb
	ld c, l                                          ; $7c0f: $4d
	ret nz                                           ; $7c10: $c0

	sbc [hl]                                         ; $7c11: $9e

jr_05a_7c12:
	db $d3                                           ; $7c12: $d3

jr_05a_7c13:
	ret c                                            ; $7c13: $d8

	rst $38                                          ; $7c14: $ff
	sbc [hl]                                         ; $7c15: $9e
	jr nc, jr_05a_7c13                               ; $7c16: $30 $fb

	sbc [hl]                                         ; $7c18: $9e
	ret nz                                           ; $7c19: $c0

	reti                                             ; $7c1a: $d9


	rst $38                                          ; $7c1b: $ff
	sbc l                                            ; $7c1c: $9d
	ret nz                                           ; $7c1d: $c0

	ld b, b                                          ; $7c1e: $40
	dec [hl]                                         ; $7c1f: $35
	sub b                                            ; $7c20: $90
	ld b, e                                          ; $7c21: $43
	ldh a, [$9e]                                     ; $7c22: $f0 $9e
	ld b, h                                          ; $7c24: $44
	reti                                             ; $7c25: $d9


	rst $38                                          ; $7c26: $ff
	ld l, h                                          ; $7c27: $6c
	ld h, h                                          ; $7c28: $64
	ld a, [hl]                                       ; $7c29: $7e
	jp z, $8a65                                      ; $7c2a: $ca $65 $8a

	sub a                                            ; $7c2d: $97
	ld d, l                                          ; $7c2e: $55
	inc bc                                           ; $7c2f: $03
	ld d, a                                          ; $7c30: $57
	rlca                                             ; $7c31: $07
	rrca                                             ; $7c32: $0f
	rst $38                                          ; $7c33: $ff
	rst $38                                          ; $7c34: $ff
	cp a                                             ; $7c35: $bf
	ld h, a                                          ; $7c36: $67
	ldh a, [$6d]                                     ; $7c37: $f0 $6d
	sub b                                            ; $7c39: $90
	ld a, l                                          ; $7c3a: $7d
	jp $01df                                         ; $7c3b: $c3 $df $01


	ld a, c                                          ; $7c3e: $79
	sub b                                            ; $7c3f: $90
	ld a, l                                          ; $7c40: $7d
	or d                                             ; $7c41: $b2
	sbc e                                            ; $7c42: $9b
	rra                                              ; $7c43: $1f
	ld a, [bc]                                       ; $7c44: $0a

jr_05a_7c45:
	ld d, $02                                        ; $7c45: $16 $02
	sbc $04                                          ; $7c47: $de $04
	rst SubAFromDE                                          ; $7c49: $df
	ld b, h                                          ; $7c4a: $44
	reti                                             ; $7c4b: $d9


	rst $38                                          ; $7c4c: $ff
	sbc [hl]                                         ; $7c4d: $9e
	db $10                                           ; $7c4e: $10
	ld l, e                                          ; $7c4f: $6b
	sub b                                            ; $7c50: $90
	ld a, a                                          ; $7c51: $7f
	dec c                                            ; $7c52: $0d
	sbc $9f                                          ; $7c53: $de $9f
	ld a, d                                          ; $7c55: $7a
	ld a, [de]                                       ; $7c56: $1a
	db $fc                                           ; $7c57: $fc
	sbc h                                            ; $7c58: $9c
	db $10                                           ; $7c59: $10
	jp nz, Jump_05a_6d0c                             ; $7c5a: $c2 $0c $6d

	add e                                            ; $7c5d: $83
	sbc c                                            ; $7c5e: $99
	ld bc, $10f0                                     ; $7c5f: $01 $f0 $10
	jr nc, jr_05a_7cd4                               ; $7c62: $30 $70

	ld [hl], b                                       ; $7c64: $70
	ld a, b                                          ; $7c65: $78
	ld e, [hl]                                       ; $7c66: $5e
	sbc h                                            ; $7c67: $9c
	ld a, b                                          ; $7c68: $78
	rst $38                                          ; $7c69: $ff
	rst SubAFromDE                                          ; $7c6a: $df
	ld a, b                                          ; $7c6b: $78
	jr nc, @-$73                                     ; $7c6c: $30 $8b

	rra                                              ; $7c6e: $1f
	rrca                                             ; $7c6f: $0f
	rrca                                             ; $7c70: $0f
	ld [hl-], a                                      ; $7c71: $32
	ld a, e                                          ; $7c72: $7b
	ld a, e                                          ; $7c73: $7b

Call_05a_7c74:
	ld [hl], d                                       ; $7c74: $72
	ld h, h                                          ; $7c75: $64
	ld b, h                                          ; $7c76: $44
	ld [$c110], sp                                   ; $7c77: $08 $10 $c1
	add b                                            ; $7c7a: $80
	add l                                            ; $7c7b: $85
	adc a                                            ; $7c7c: $8f
	sbc a                                            ; $7c7d: $9f
	cp a                                             ; $7c7e: $bf
	rst $38                                          ; $7c7f: $ff
	rst $38                                          ; $7c80: $ff
	ld b, b                                          ; $7c81: $40
	ld l, l                                          ; $7c82: $6d
	ld d, c                                          ; $7c83: $51
	ld h, e                                          ; $7c84: $63
	ld h, b                                          ; $7c85: $60
	sbc l                                            ; $7c86: $9d
	ccf                                              ; $7c87: $3f
	inc bc                                           ; $7c88: $03
	ld l, e                                          ; $7c89: $6b
	cpl                                              ; $7c8a: $2f
	sbc [hl]                                         ; $7c8b: $9e
	db $fc                                           ; $7c8c: $fc
	ld [hl], d                                       ; $7c8d: $72
	ld [de], a                                       ; $7c8e: $12
	sub [hl]                                         ; $7c8f: $96
	db $fc                                           ; $7c90: $fc
	push hl                                          ; $7c91: $e5
	jp z, $14cc                                      ; $7c92: $ca $cc $14

	add hl, hl                                       ; $7c95: $29
	dec bc                                           ; $7c96: $0b
	inc de                                           ; $7c97: $13
	dec d                                            ; $7c98: $15
	ld a, c                                          ; $7c99: $79
	inc de                                           ; $7c9a: $13
	adc d                                            ; $7c9b: $8a
	adc a                                            ; $7c9c: $8f
	sbc [hl]                                         ; $7c9d: $9e
	inc a                                            ; $7c9e: $3c
	ld a, l                                          ; $7c9f: $7d
	ei                                               ; $7ca0: $fb
	ld a, a                                          ; $7ca1: $7f
	ld a, e                                          ; $7ca2: $7b
	rst SubAFromHL                                          ; $7ca3: $d7
	xor l                                            ; $7ca4: $ad
	ld e, e                                          ; $7ca5: $5b
	or e                                             ; $7ca6: $b3
	ld h, a                                          ; $7ca7: $67
	rst JumpTable                                          ; $7ca8: $c7
	add a                                            ; $7ca9: $87
	adc l                                            ; $7caa: $8d
	add hl, sp                                       ; $7cab: $39
	ld [hl], e                                       ; $7cac: $73
	push hl                                          ; $7cad: $e5
	call $3999                                       ; $7cae: $cd $99 $39
	db $dd                                           ; $7cb1: $dd
	rst $38                                          ; $7cb2: $ff
	ld a, l                                          ; $7cb3: $7d
	pop hl                                           ; $7cb4: $e1
	ld a, a                                          ; $7cb5: $7f
	cp $67                                           ; $7cb6: $fe $67
	inc h                                            ; $7cb8: $24
	db $dd                                           ; $7cb9: $dd
	rst $38                                          ; $7cba: $ff
	sbc [hl]                                         ; $7cbb: $9e
	dec bc                                           ; $7cbc: $0b
	ld a, d                                          ; $7cbd: $7a
	ret nz                                           ; $7cbe: $c0

	ld h, a                                          ; $7cbf: $67
	ldh a, [$9c]                                     ; $7cc0: $f0 $9c
	cp $d5                                           ; $7cc2: $fe $d5
	and b                                            ; $7cc4: $a0
	db $dd                                           ; $7cc5: $dd
	add b                                            ; $7cc6: $80
	ld h, d                                          ; $7cc7: $62
	ldh [$9c], a                                     ; $7cc8: $e0 $9c
	xor [hl]                                         ; $7cca: $ae
	ld d, h                                          ; $7ccb: $54
	jr nz, jr_05a_7d21                               ; $7ccc: $20 $53

	sub b                                            ; $7cce: $90
	sbc [hl]                                         ; $7ccf: $9e
	ld h, b                                          ; $7cd0: $60
	cp $9e                                           ; $7cd1: $fe $9e
	dec l                                            ; $7cd3: $2d

jr_05a_7cd4:
	ld a, d                                          ; $7cd4: $7a
	sub d                                            ; $7cd5: $92
	reti                                             ; $7cd6: $d9


	rst $38                                          ; $7cd7: $ff
	ld a, c                                          ; $7cd8: $79
	ld c, c                                          ; $7cd9: $49
	ld a, a                                          ; $7cda: $7f
	ld l, c                                          ; $7cdb: $69
	sbc [hl]                                         ; $7cdc: $9e
	ei                                               ; $7cdd: $fb
	ld [hl], c                                       ; $7cde: $71
	nop                                              ; $7cdf: $00
	call c, $9eff                                    ; $7ce0: $dc $ff $9e
	jp hl                                            ; $7ce3: $e9


	db $dd                                           ; $7ce4: $dd
	rst $38                                          ; $7ce5: $ff
	sbc h                                            ; $7ce6: $9c
	ld e, l                                          ; $7ce7: $5d
	ld a, [hl+]                                      ; $7ce8: $2a
	dec d                                            ; $7ce9: $15
	ld h, c                                          ; $7cea: $61
	add b                                            ; $7ceb: $80
	sbc b                                            ; $7cec: $98
	add sp, -$40                                     ; $7ced: $e8 $c0
	add b                                            ; $7cef: $80
	ldh [$74], a                                     ; $7cf0: $e0 $74
	xor b                                            ; $7cf2: $a8
	ld b, b                                          ; $7cf3: $40
	ld h, d                                          ; $7cf4: $62
	ret nz                                           ; $7cf5: $c0

	ld l, l                                          ; $7cf6: $6d
	sub b                                            ; $7cf7: $90
	sbc [hl]                                         ; $7cf8: $9e
	xor e                                            ; $7cf9: $ab
	ld sp, hl                                        ; $7cfa: $f9
	sbc l                                            ; $7cfb: $9d
	ld e, a                                          ; $7cfc: $5f
	cp a                                             ; $7cfd: $bf
	ld d, l                                          ; $7cfe: $55
	sub b                                            ; $7cff: $90
	rst SubAFromDE                                          ; $7d00: $df
	ld bc, $e67d                                     ; $7d01: $01 $7d $e6
	ld a, c                                          ; $7d04: $79
	ld hl, sp+$7c                                    ; $7d05: $f8 $7c
	ret z                                            ; $7d07: $c8

	sbc [hl]                                         ; $7d08: $9e
	ld bc, $9371                                     ; $7d09: $01 $71 $93
	sbc $ff                                          ; $7d0c: $de $ff
	sub a                                            ; $7d0e: $97
	daa                                              ; $7d0f: $27
	ld h, d                                          ; $7d10: $62
	or d                                             ; $7d11: $b2
	ld d, h                                          ; $7d12: $54
	xor h                                            ; $7d13: $ac
	ld e, h                                          ; $7d14: $5c
	xor b                                            ; $7d15: $a8
	ld e, b                                          ; $7d16: $58
	reti                                             ; $7d17: $d9


	rst $38                                          ; $7d18: $ff
	adc b                                            ; $7d19: $88
	db $fc                                           ; $7d1a: $fc
	rra                                              ; $7d1b: $1f
	add hl, sp                                       ; $7d1c: $39
	jr nc, jr_05a_7d92                               ; $7d1d: $30 $73

	ld h, a                                          ; $7d1f: $67
	ld [hl], a                                       ; $7d20: $77

jr_05a_7d21:
	ld a, a                                          ; $7d21: $7f
	rst $38                                          ; $7d22: $ff
	di                                               ; $7d23: $f3
	ldh [$e0], a                                     ; $7d24: $e0 $e0
	ret nz                                           ; $7d26: $c0

	jp $c0c0                                         ; $7d27: $c3 $c0 $c0


	nop                                              ; $7d2a: $00
	ldh [$fc], a                                     ; $7d2b: $e0 $fc
	ccf                                              ; $7d2d: $3f
	rrca                                             ; $7d2e: $0f
	add e                                            ; $7d2f: $83
	pop hl                                           ; $7d30: $e1
	ld a, c                                          ; $7d31: $79
	sub a                                            ; $7d32: $97
	sbc [hl]                                         ; $7d33: $9e
	rra                                              ; $7d34: $1f
	ld [hl], l                                       ; $7d35: $75
	sbc d                                            ; $7d36: $9a
	sub [hl]                                         ; $7d37: $96
	jr nz, jr_05a_7d52                               ; $7d38: $20 $18

	ret z                                            ; $7d3a: $c8

	ld hl, sp+$74                                    ; $7d3b: $f8 $74
	db $ed                                           ; $7d3d: $ed
	sbc [hl]                                         ; $7d3e: $9e
	call nz, $dee5                                   ; $7d3f: $c4 $e5 $de
	rrca                                             ; $7d42: $0f
	sub h                                            ; $7d43: $94
	adc a                                            ; $7d44: $8f
	rst FarCall                                          ; $7d45: $f7
	rst $38                                          ; $7d46: $ff
	ld a, a                                          ; $7d47: $7f
	ccf                                              ; $7d48: $3f
	db $10                                           ; $7d49: $10
	jr nz, jr_05a_7db0                               ; $7d4a: $20 $64

	ret nz                                           ; $7d4c: $c0

	ld [bc], a                                       ; $7d4d: $02
	nop                                              ; $7d4e: $00
	ld [hl], a                                       ; $7d4f: $77
	or l                                             ; $7d50: $b5
	sbc l                                            ; $7d51: $9d

jr_05a_7d52:
	jp Jump_05a_7a80                                 ; $7d52: $c3 $80 $7a


	db $dd                                           ; $7d55: $dd
	halt                                             ; $7d56: $76
	jp nz, $209b                                     ; $7d57: $c2 $9b $20

	ld [bc], a                                       ; $7d5a: $02
	db $10                                           ; $7d5b: $10
	ld [bc], a                                       ; $7d5c: $02
	ld [hl], l                                       ; $7d5d: $75
	ld h, e                                          ; $7d5e: $63
	adc l                                            ; $7d5f: $8d
	rra                                              ; $7d60: $1f
	ld bc, $fce0                                     ; $7d61: $01 $e0 $fc
	rst $38                                          ; $7d64: $ff
	dec b                                            ; $7d65: $05
	nop                                              ; $7d66: $00
	ld a, [bc]                                       ; $7d67: $0a
	nop                                              ; $7d68: $00
	ld bc, $024a                                     ; $7d69: $01 $4a $02
	add h                                            ; $7d6c: $84
	ld hl, sp-$07                                    ; $7d6d: $f8 $f9
	pop af                                           ; $7d6f: $f1
	di                                               ; $7d70: $f3
	rst SubAFromBC                                          ; $7d71: $e7
	ld a, c                                          ; $7d72: $79
	ld l, [hl]                                       ; $7d73: $6e
	sub l                                            ; $7d74: $95
	ld [hl+], a                                      ; $7d75: $22
	ld c, h                                          ; $7d76: $4c
	ld c, c                                          ; $7d77: $49
	sub d                                            ; $7d78: $92
	inc h                                            ; $7d79: $24
	jr z, jr_05a_7dcc                                ; $7d7a: $28 $50

	ld h, b                                          ; $7d7c: $60
	rst $38                                          ; $7d7d: $ff
	rst FarCall                                          ; $7d7e: $f7
	db $db                                           ; $7d7f: $db
	rst $38                                          ; $7d80: $ff
	adc [hl]                                         ; $7d81: $8e
	rrca                                             ; $7d82: $0f
	sbc a                                            ; $7d83: $9f
	rra                                              ; $7d84: $1f
	ccf                                              ; $7d85: $3f
	inc hl                                           ; $7d86: $23
	rlca                                             ; $7d87: $07
	rrca                                             ; $7d88: $0f
	ccf                                              ; $7d89: $3f
	pop af                                           ; $7d8a: $f1
	pop hl                                           ; $7d8b: $e1
	pop hl                                           ; $7d8c: $e1
	pop bc                                           ; $7d8d: $c1
	db $dd                                           ; $7d8e: $dd
	ld sp, hl                                        ; $7d8f: $f9
	pop af                                           ; $7d90: $f1
	ret nz                                           ; $7d91: $c0

jr_05a_7d92:
	add sp, -$26                                     ; $7d92: $e8 $da
	db $fc                                           ; $7d94: $fc
	ld a, h                                          ; $7d95: $7c
	rst SubAFromBC                                          ; $7d96: $e7
	db $db                                           ; $7d97: $db
	ld hl, sp-$62                                    ; $7d98: $f8 $9e
	dec bc                                           ; $7d9a: $0b
	jp c, $9e3f                                      ; $7d9b: $da $3f $9e

	nop                                              ; $7d9e: $00
	jp c, $9c3f                                      ; $7d9f: $da $3f $9c

	ldh [$f0], a                                     ; $7da2: $e0 $f0
	di                                               ; $7da4: $f3
	call nc, Call_05a_7fff                           ; $7da5: $d4 $ff $7f
	ld l, l                                          ; $7da8: $6d
	sbc l                                            ; $7da9: $9d
	ret nz                                           ; $7daa: $c0

	reti                                             ; $7dab: $d9


	ld d, e                                          ; $7dac: $53
	ldh a, [$78]                                     ; $7dad: $f0 $78
	ld h, c                                          ; $7daf: $61

jr_05a_7db0:
	sbc l                                            ; $7db0: $9d
	ldh a, [$f9]                                     ; $7db1: $f0 $f9
	ld d, e                                          ; $7db3: $53
	ldh a, [rIE]                                     ; $7db4: $f0 $ff
	sbc l                                            ; $7db6: $9d
	add c                                            ; $7db7: $81
	jp $f053                                         ; $7db8: $c3 $53 $f0


	sbc l                                            ; $7dbb: $9d
	db $10                                           ; $7dbc: $10
	ldh [$5f], a                                     ; $7dbd: $e0 $5f
	cp h                                             ; $7dbf: $bc
	ld a, e                                          ; $7dc0: $7b
	ld c, a                                          ; $7dc1: $4f
	ld a, l                                          ; $7dc2: $7d
	or [hl]                                          ; $7dc3: $b6
	sbc [hl]                                         ; $7dc4: $9e
	ld d, a                                          ; $7dc5: $57
	rst SubAFromHL                                          ; $7dc6: $d7
	rst $38                                          ; $7dc7: $ff
	ld c, c                                          ; $7dc8: $49
	nop                                              ; $7dc9: $00
	rst SubAFromDE                                          ; $7dca: $df
	inc sp                                           ; $7dcb: $33

jr_05a_7dcc:
	sbc [hl]                                         ; $7dcc: $9e
	dec [hl]                                         ; $7dcd: $35
	sbc $55                                          ; $7dce: $de $55
	sbc c                                            ; $7dd0: $99
	ld d, d                                          ; $7dd1: $52
	ld h, [hl]                                       ; $7dd2: $66
	ld h, [hl]                                       ; $7dd3: $66
	ld b, h                                          ; $7dd4: $44
	inc sp                                           ; $7dd5: $33
	inc sp                                           ; $7dd6: $33
	db $dd                                           ; $7dd7: $dd
	ld d, l                                          ; $7dd8: $55
	ld e, e                                          ; $7dd9: $5b
	or $de                                           ; $7dda: $f6 $de
	ld [hl+], a                                      ; $7ddc: $22
	ld l, e                                          ; $7ddd: $6b
	ldh [c], a                                       ; $7dde: $e2
	ld [hl], e                                       ; $7ddf: $73
	or $9d                                           ; $7de0: $f6 $9d
	inc [hl]                                         ; $7de2: $34
	ld b, l                                          ; $7de3: $45
	ld h, a                                          ; $7de4: $67
	or $9b                                           ; $7de5: $f6 $9b
	ld [hl-], a                                      ; $7de7: $32
	dec h                                            ; $7de8: $25
	ld d, l                                          ; $7de9: $55
	ld d, l                                          ; $7dea: $55
	db $dd                                           ; $7deb: $dd
	ld [hl+], a                                      ; $7dec: $22
	rst SubAFromDE                                          ; $7ded: $df
	inc sp                                           ; $7dee: $33
	sbc h                                            ; $7def: $9c
	ld [hl], $75                                     ; $7df0: $36 $75
	ld d, a                                          ; $7df2: $57
	ld [hl], a                                       ; $7df3: $77
	db $ed                                           ; $7df4: $ed
	ld a, e                                          ; $7df5: $7b
	or $9b                                           ; $7df6: $f6 $9b
	ld h, [hl]                                       ; $7df8: $66
	ld [hl], l                                       ; $7df9: $75
	ld d, a                                          ; $7dfa: $57
	ld h, d                                          ; $7dfb: $62
	ld l, e                                          ; $7dfc: $6b
	or $9b                                           ; $7dfd: $f6 $9b
	ld [hl], a                                       ; $7dff: $77
	halt                                             ; $7e00: $76
	ld h, [hl]                                       ; $7e01: $66
	ld h, [hl]                                       ; $7e02: $66
	ld [hl], a                                       ; $7e03: $77
	or $9e                                           ; $7e04: $f6 $9e
	ld [hl], $dd                                     ; $7e06: $36 $dd
	ld h, [hl]                                       ; $7e08: $66
	sbc [hl]                                         ; $7e09: $9e
	inc sp                                           ; $7e0a: $33
	ld [hl], e                                       ; $7e0b: $73
	or $7f                                           ; $7e0c: $f6 $7f
	db $eb                                           ; $7e0e: $eb
	ld l, a                                          ; $7e0f: $6f
	or $20                                           ; $7e10: $f6 $20
	adc e                                            ; $7e12: $8b
	ld sp, hl                                        ; $7e13: $f9
	reti                                             ; $7e14: $d9


	rst $38                                          ; $7e15: $ff
	ld a, [$809e]                                    ; $7e16: $fa $9e $80
	jp c, $80ff                                      ; $7e19: $da $ff $80

	ld a, a                                          ; $7e1c: $7f
	nop                                              ; $7e1d: $00
	ld [$0c08], sp                                   ; $7e1e: $08 $08 $0c
	inc c                                            ; $7e21: $0c
	ld a, [bc]                                       ; $7e22: $0a
	ld [bc], a                                       ; $7e23: $02
	dec b                                            ; $7e24: $05
	rst $38                                          ; $7e25: $ff
	rst FarCall                                          ; $7e26: $f7
	rst FarCall                                          ; $7e27: $f7
	di                                               ; $7e28: $f3
	di                                               ; $7e29: $f3
	pop af                                           ; $7e2a: $f1
	ld sp, hl                                        ; $7e2b: $f9
	ld hl, sp+$63                                    ; $7e2c: $f8 $63
	ld h, d                                          ; $7e2e: $62
	ld d, d                                          ; $7e2f: $52
	ld d, d                                          ; $7e30: $52
	ld c, d                                          ; $7e31: $4a
	ld c, d                                          ; $7e32: $4a
	ld h, $26                                        ; $7e33: $26 $26
	sbc h                                            ; $7e35: $9c
	sbc h                                            ; $7e36: $9c
	adc h                                            ; $7e37: $8c
	adc h                                            ; $7e38: $8c
	add h                                            ; $7e39: $84
	add h                                            ; $7e3a: $84
	rst SubAFromDE                                          ; $7e3b: $df
	ret nz                                           ; $7e3c: $c0

	sub h                                            ; $7e3d: $94
	ld de, $9999                                     ; $7e3e: $11 $99 $99
	sub l                                            ; $7e41: $95
	ld d, e                                          ; $7e42: $53
	ld h, d                                          ; $7e43: $62
	jr nz, jr_05a_7e46                               ; $7e44: $20 $00

jr_05a_7e46:
	xor $66                                          ; $7e46: $ee $66
	ld h, [hl]                                       ; $7e48: $66
	ld a, e                                          ; $7e49: $7b
	ld a, [$9aff]                                    ; $7e4a: $fa $ff $9a
	ldh a, [$e0]                                     ; $7e4d: $f0 $e0
	ret nz                                           ; $7e4f: $c0

	ld b, b                                          ; $7e50: $40
	ld b, b                                          ; $7e51: $40
	di                                               ; $7e52: $f3
	sbc d                                            ; $7e53: $9a
	inc bc                                           ; $7e54: $03
	inc c                                            ; $7e55: $0c
	inc [hl]                                         ; $7e56: $34
	ld d, b                                          ; $7e57: $50
	and d                                            ; $7e58: $a2
	ld [hl], a                                       ; $7e59: $77
	ld hl, sp-$7e                                    ; $7e5a: $f8 $82
	rrca                                             ; $7e5c: $0f
	jr c, jr_05a_7ebf                                ; $7e5d: $38 $60

	pop bc                                           ; $7e5f: $c1
	dec e                                            ; $7e60: $1d
	ld l, a                                          ; $7e61: $6f
	add a                                            ; $7e62: $87
	ld hl, sp+$7e                                    ; $7e63: $f8 $7e
	inc de                                           ; $7e65: $13
	add c                                            ; $7e66: $81
	ld h, e                                          ; $7e67: $63
	ld e, $70                                        ; $7e68: $1e $70
	rst $38                                          ; $7e6a: $ff
	rst $38                                          ; $7e6b: $ff
	add c                                            ; $7e6c: $81
	rrca                                             ; $7e6d: $0f
	ld a, [hl]                                       ; $7e6e: $7e
	add b                                            ; $7e6f: $80
	pop hl                                           ; $7e70: $e1
	nop                                              ; $7e71: $00
	ldh a, [rIF]                                     ; $7e72: $f0 $0f
	ld a, a                                          ; $7e74: $7f
	add b                                            ; $7e75: $80
	rst SubAFromBC                                          ; $7e76: $e7
	sbc b                                            ; $7e77: $98
	rra                                              ; $7e78: $1f
	call c, $81ff                                    ; $7e79: $dc $ff $81
	rra                                              ; $7e7c: $1f
	ld a, a                                          ; $7e7d: $7f
	rst JumpTable                                          ; $7e7e: $c7
	call $9ace                                       ; $7e7f: $cd $ce $9a
	sbc c                                            ; $7e82: $99
	sub c                                            ; $7e83: $91
	sub c                                            ; $7e84: $91

Call_05a_7e85:
	and c                                            ; $7e85: $a1
	ld hl, sp-$0e                                    ; $7e86: $f8 $f2
	di                                               ; $7e88: $f3
	rst SubAFromBC                                          ; $7e89: $e7
	rst SubAFromBC                                          ; $7e8a: $e7
	rst AddAOntoHL                                          ; $7e8b: $ef
	rst AddAOntoHL                                          ; $7e8c: $ef
	rst SubAFromDE                                          ; $7e8d: $df
	db $e3                                           ; $7e8e: $e3
	di                                               ; $7e8f: $f3
	ld sp, hl                                        ; $7e90: $f9
	db $f4                                           ; $7e91: $f4
	db $fc                                           ; $7e92: $fc
	ld a, [$7afa]                                    ; $7e93: $fa $fa $7a
	inc e                                            ; $7e96: $1c
	inc c                                            ; $7e97: $0c
	ld c, $0f                                        ; $7e98: $0e $0f
	sbc $07                                          ; $7e9a: $de $07

jr_05a_7e9c:
	sbc c                                            ; $7e9c: $99
	add a                                            ; $7e9d: $87
	ld [hl], c                                       ; $7e9e: $71
	inc a                                            ; $7e9f: $3c
	ccf                                              ; $7ea0: $3f
	rra                                              ; $7ea1: $1f
	rra                                              ; $7ea2: $1f
	ld a, e                                          ; $7ea3: $7b
	db $f4                                           ; $7ea4: $f4
	add a                                            ; $7ea5: $87
	ret nz                                           ; $7ea6: $c0

	ldh a, [$ec]                                     ; $7ea7: $f0 $ec
	di                                               ; $7ea9: $f3
	pop af                                           ; $7eaa: $f1
	ld hl, sp-$04                                    ; $7eab: $f8 $fc
	cp $fc                                           ; $7ead: $fe $fc
	ld h, [hl]                                       ; $7eaf: $66
	dec sp                                           ; $7eb0: $3b
	inc c                                            ; $7eb1: $0c
	adc a                                            ; $7eb2: $8f
	db $e3                                           ; $7eb3: $e3
	ld a, c                                          ; $7eb4: $79
	ld a, $c4                                        ; $7eb5: $3e $c4
	ld a, [hl-]                                      ; $7eb7: $3a
	dec e                                            ; $7eb8: $1d
	rst JumpTable                                          ; $7eb9: $c7
	di                                               ; $7eba: $f3
	ld a, l                                          ; $7ebb: $7d
	ld a, $17                                        ; $7ebc: $3e $17
	ld a, e                                          ; $7ebe: $7b

jr_05a_7ebf:
	ld b, l                                          ; $7ebf: $45
	sbc d                                            ; $7ec0: $9a
	ret nz                                           ; $7ec1: $c0

	ld h, b                                          ; $7ec2: $60
	or b                                             ; $7ec3: $b0
	ret nc                                           ; $7ec4: $d0

	ld hl, sp+$7b                                    ; $7ec5: $f8 $7b
	ld hl, sp-$66                                    ; $7ec7: $f8 $9a
	ld b, b                                          ; $7ec9: $40
	and b                                            ; $7eca: $a0
	ret nc                                           ; $7ecb: $d0

	ldh a, [rBCPS]                                   ; $7ecc: $f0 $68
	xor $9a                                          ; $7ece: $ee $9a
	ld bc, $0c07                                     ; $7ed0: $01 $07 $0c
	ld sp, $77e7                                     ; $7ed3: $31 $e7 $77
	ld hl, sp-$71                                    ; $7ed6: $f8 $8f
	ld b, $08                                        ; $7ed8: $06 $08
	jr nc, jr_05a_7e9c                               ; $7eda: $30 $c0

	inc bc                                           ; $7edc: $03
	ld c, $79                                        ; $7edd: $0e $79
	rst JumpTable                                          ; $7edf: $c7
	ld e, $79                                        ; $7ee0: $1e $79
	rst SubAFromBC                                          ; $7ee2: $e7
	call c, $0c03                                    ; $7ee3: $dc $03 $0c
	ld [hl], b                                       ; $7ee6: $70
	add b                                            ; $7ee7: $80
	ld [hl], a                                       ; $7ee8: $77
	ld e, l                                          ; $7ee9: $5d
	sub a                                            ; $7eea: $97
	sbc a                                            ; $7eeb: $9f
	ld a, b                                          ; $7eec: $78
	rst SubAFromBC                                          ; $7eed: $e7
	sbc a                                            ; $7eee: $9f
	ld [hl], e                                       ; $7eef: $73

Call_05a_7ef0:
	rst SubAFromBC                                          ; $7ef0: $e7
	dec bc                                           ; $7ef1: $0b
	dec d                                            ; $7ef2: $15
	ld a, e                                          ; $7ef3: $7b
	pop hl                                           ; $7ef4: $e1
	add b                                            ; $7ef5: $80
	rrca                                             ; $7ef6: $0f
	ld e, $fd                                        ; $7ef7: $1e $fd
	rst $38                                          ; $7ef9: $ff
	ei                                               ; $7efa: $fb
	rrca                                             ; $7efb: $0f
	ld a, h                                          ; $7efc: $7c

Call_05a_7efd:
	ldh [c], a                                       ; $7efd: $e2
	cp b                                             ; $7efe: $b8

Jump_05a_7eff:
	ld h, [hl]                                       ; $7eff: $66
	ei                                               ; $7f00: $fb
	ld l, [hl]                                       ; $7f01: $6e
	rst FarCall                                          ; $7f02: $f7
	inc bc                                           ; $7f03: $03
	ccf                                              ; $7f04: $3f
	db $fd                                           ; $7f05: $fd
	ld a, a                                          ; $7f06: $7f
	push bc                                          ; $7f07: $c5
	sub d                                            ; $7f08: $92
	cp e                                             ; $7f09: $bb
	ld a, [de]                                       ; $7f0a: $1a
	cpl                                              ; $7f0b: $2f
	ld d, l                                          ; $7f0c: $55
	and c                                            ; $7f0d: $a1
	ld [hl], e                                       ; $7f0e: $73
	xor [hl]                                         ; $7f0f: $ae
	ld a, l                                          ; $7f10: $7d
	xor d                                            ; $7f11: $aa
	ld d, l                                          ; $7f12: $55
	ret nc                                           ; $7f13: $d0

	and b                                            ; $7f14: $a0
	sbc c                                            ; $7f15: $99
	ld b, b                                          ; $7f16: $40
	add b                                            ; $7f17: $80
	ld b, c                                          ; $7f18: $41
	add d                                            ; $7f19: $82
	ld d, l                                          ; $7f1a: $55
	xor d                                            ; $7f1b: $aa
	ld b, [hl]                                       ; $7f1c: $46
	ret nz                                           ; $7f1d: $c0

	ld a, a                                          ; $7f1e: $7f
	adc d                                            ; $7f1f: $8a
	add b                                            ; $7f20: $80
	ld h, b                                          ; $7f21: $60
	jr nc, jr_05a_7f34                               ; $7f22: $30 $10

	jr @+$0e                                         ; $7f24: $18 $0c

	ld a, [bc]                                       ; $7f26: $0a
	ld a, a                                          ; $7f27: $7f
	cp a                                             ; $7f28: $bf
	sbc a                                            ; $7f29: $9f
	rst GetHLinHL                                          ; $7f2a: $cf
	rst AddAOntoHL                                          ; $7f2b: $ef
	rst SubAFromBC                                          ; $7f2c: $e7
	di                                               ; $7f2d: $f3
	pop af                                           ; $7f2e: $f1
	add l                                            ; $7f2f: $85
	call nz, $62c2                                   ; $7f30: $c4 $c2 $62
	ld d, d                                          ; $7f33: $52

jr_05a_7f34:
	add hl, hl                                       ; $7f34: $29
	add hl, hl                                       ; $7f35: $29
	dec [hl]                                         ; $7f36: $35
	ld a, b                                          ; $7f37: $78
	jr c, jr_05a_7f76                                ; $7f38: $38 $3c

	sbc h                                            ; $7f3a: $9c
	adc h                                            ; $7f3b: $8c
	add $c6                                          ; $7f3c: $c6 $c6
	jp nz, $9c22                                     ; $7f3e: $c2 $22 $9c

	and b                                            ; $7f41: $a0
	jr nz, @+$62                                     ; $7f42: $20 $60

	halt                                             ; $7f44: $76
	ret c                                            ; $7f45: $d8

	ld b, d                                          ; $7f46: $42
	jp c, Jump_05a_6263                              ; $7f47: $da $63 $62

	sbc c                                            ; $7f4a: $99
	inc bc                                           ; $7f4b: $03
	dec b                                            ; $7f4c: $05
	rlca                                             ; $7f4d: $07
	dec bc                                           ; $7f4e: $0b
	add hl, bc                                       ; $7f4f: $09
	rrca                                             ; $7f50: $0f
	ld a, e                                          ; $7f51: $7b
	ld hl, sp-$80                                    ; $7f52: $f8 $80
	rlca                                             ; $7f54: $07
	dec b                                            ; $7f55: $05
	dec c                                            ; $7f56: $0d
	rrca                                             ; $7f57: $0f
	rrca                                             ; $7f58: $0f
	adc c                                            ; $7f59: $89
	ld h, d                                          ; $7f5a: $62
	ld d, a                                          ; $7f5b: $57
	daa                                              ; $7f5c: $27
	ld e, b                                          ; $7f5d: $58
	and l                                            ; $7f5e: $a5
	ld b, e                                          ; $7f5f: $43
	or $c6                                           ; $7f60: $f6 $c6
	sbc h                                            ; $7f62: $9c
	cp b                                             ; $7f63: $b8
	rst $38                                          ; $7f64: $ff
	rst $38                                          ; $7f65: $ff
	cp $ff                                           ; $7f66: $fe $ff
	ld sp, hl                                        ; $7f68: $f9
	ld c, $31                                        ; $7f69: $0e $31
	add $99                                          ; $7f6b: $c6 $99
	ld h, [hl]                                       ; $7f6d: $66
	cp e                                             ; $7f6e: $bb
	ld l, h                                          ; $7f6f: $6c
	or d                                             ; $7f70: $b2
	ld bc, $910f                                     ; $7f71: $01 $0f $91
	ccf                                              ; $7f74: $3f
	rst $38                                          ; $7f75: $ff

jr_05a_7f76:
	rst $38                                          ; $7f76: $ff
	ld a, h                                          ; $7f77: $7c
	sbc a                                            ; $7f78: $9f
	rst GetHLinHL                                          ; $7f79: $cf
	ld h, a                                          ; $7f7a: $67
	sbc b                                            ; $7f7b: $98
	ld h, c                                          ; $7f7c: $61
	and d                                            ; $7f7d: $a2
	call z, $2910                                    ; $7f7e: $cc $10 $29
	ld d, c                                          ; $7f81: $51
	sbc $ff                                          ; $7f82: $de $ff
	sbc c                                            ; $7f84: $99
	rst SubAFromDE                                          ; $7f85: $df
	ccf                                              ; $7f86: $3f
	rst $38                                          ; $7f87: $ff
	rst FarCall                                          ; $7f88: $f7
	rst AddAOntoHL                                          ; $7f89: $ef
	and b                                            ; $7f8a: $a0
	db $dd                                           ; $7f8b: $dd
	add b                                            ; $7f8c: $80
	sbc e                                            ; $7f8d: $9b
	add h                                            ; $7f8e: $84
	ld c, $2e                                        ; $7f8f: $0e $2e
	rst SubAFromDE                                          ; $7f91: $df
	db $dd                                           ; $7f92: $dd
	rst $38                                          ; $7f93: $ff
	sbc h                                            ; $7f94: $9c
	ei                                               ; $7f95: $fb
	pop af                                           ; $7f96: $f1
	pop af                                           ; $7f97: $f1
	db $dd                                           ; $7f98: $dd
	cp $9b                                           ; $7f99: $fe $9b
	ld a, [hl]                                       ; $7f9b: $7e
	ld a, $3d                                        ; $7f9c: $3e $3d
	dec a                                            ; $7f9e: $3d
	call c, $de83                                    ; $7f9f: $dc $83 $de
	jp $07df                                         ; $7fa2: $c3 $df $07


	rst SubAFromDE                                          ; $7fa5: $df
	inc bc                                           ; $7fa6: $03
	rst SubAFromDE                                          ; $7fa7: $df
	ld bc, $505f                                     ; $7fa8: $01 $5f $50
	adc l                                            ; $7fab: $8d
	ld e, c                                          ; $7fac: $59
	adc h                                            ; $7fad: $8c
	ld h, [hl]                                       ; $7fae: $66
	ld a, [hl-]                                      ; $7faf: $3a
	dec [hl]                                         ; $7fb0: $35
	inc sp                                           ; $7fb1: $33
	sbc c                                            ; $7fb2: $99
	ret c                                            ; $7fb3: $d8

	adc c                                            ; $7fb4: $89
	db $f4                                           ; $7fb5: $f4
	ld a, [wCurrTilePixelIdx]                                    ; $7fb6: $fa $fe $d7
	jp nc, $e8e9                                     ; $7fb9: $d2 $e9 $e8

	ret c                                            ; $7fbc: $d8

	ld l, b                                          ; $7fbd: $68
	ld a, e                                          ; $7fbe: $7b
	ld h, d                                          ; $7fbf: $62
	sbc h                                            ; $7fc0: $9c
	add e                                            ; $7fc1: $83
	add a                                            ; $7fc2: $87
	adc c                                            ; $7fc3: $89
	ld l, a                                          ; $7fc4: $6f
	ld hl, sp-$7b                                    ; $7fc5: $f8 $85
	add l                                            ; $7fc7: $85
	adc b                                            ; $7fc8: $88
	ld bc, $0e03                                     ; $7fc9: $01 $03 $0e
	ld a, h                                          ; $7fcc: $7c
	sbc a                                            ; $7fcd: $9f
	sub $ee                                          ; $7fce: $d6 $ee
	db $eb                                           ; $7fd0: $eb
	ld bc, $0c02                                     ; $7fd1: $01 $02 $0c
	ld a, b                                          ; $7fd4: $78
	sub a                                            ; $7fd5: $97
	sbc d                                            ; $7fd6: $9a
	ld c, d                                          ; $7fd7: $4a
	xor [hl]                                         ; $7fd8: $ae
	adc a                                            ; $7fd9: $8f
	ld a, $79                                        ; $7fda: $3e $79
	rst $38                                          ; $7fdc: $ff

Jump_05a_7fdd:
	sbc $71                                          ; $7fdd: $de $71
	ld [$fe84], sp                                   ; $7fdf: $08 $84 $fe
	sub b                                            ; $7fe2: $90
	ccf                                              ; $7fe3: $3f
	ldh [c], a                                       ; $7fe4: $e2
	ld a, a                                          ; $7fe5: $7f
	rrca                                             ; $7fe6: $0f
	rlca                                             ; $7fe7: $07
	jr nc, @-$1e                                     ; $7fe8: $30 $e0

	add b                                            ; $7fea: $80
	rst $38                                          ; $7feb: $ff
	dec hl                                           ; $7fec: $2b
	ld a, [hl+]                                      ; $7fed: $2a
	push de                                          ; $7fee: $d5
	sbc d                                            ; $7fef: $9a
	rra                                              ; $7ff0: $1f
	ld a, a                                          ; $7ff1: $7f
	ld a, c                                          ; $7ff2: $79
	call nz, $9580                                   ; $7ff3: $c4 $80 $95
	adc d                                            ; $7ff6: $8a
	push bc                                          ; $7ff7: $c5
	ld a, [hl+]                                      ; $7ff8: $2a
	inc sp                                           ; $7ff9: $33
	ld c, h                                          ; $7ffa: $4c
	push de                                          ; $7ffb: $d5
	ld [$5ab9], a                                    ; $7ffc: $ea $b9 $5a

Call_05a_7fff:
Jump_05a_7fff:
	adc c                                            ; $7fff: $89
